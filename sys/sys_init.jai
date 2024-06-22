// These are constant once set.
P_GET_PROC_ADDRESS : GDExtensionInterfaceGetProcAddress;
P_LIBRARY : GDExtensionClassLibraryPtr;

// == UTILITY ==

// -- LOGGING --
print_error :: (msg: string) {
    log_error("\x1b[1;38;5;9mERROR: %\n\x1b[0m", msg);
}

print_affirm :: (msg: string) {
    log("\x1b[1;38;5;144m%\x1b[0m", msg);
}

print_muted :: (msg: string) {
    log("\x1b[38;5;246m%\x1b[0m", msg);
}

print_warn :: (msg: string) {
    log("\x1b[38;5;180m%\x1b[0m", msg);
}

// == RAW PROCEDURES ==

print_error_with_message: GDExtensionInterfacePrintErrorWithMessage;
print_warning_with_message: GDExtensionInterfacePrintWarningWithMessage;
string_new_with_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;
string_to_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;
string_name_new_with_utf8_chars: GDExtensionInterfaceStringNameNewWithUtf8Chars;
object_set_instance: GDExtensionInterfaceObjectSetInstance;
classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass3;
classdb_get_class_tag: GDExtensionInterfaceClassdbGetClassTag;
classdb_register_extension_class_method: GDExtensionInterfaceClassdbRegisterExtensionClassMethod;
classdb_get_method_bind: GDExtensionInterfaceClassdbGetMethodBind;
object_method_bind_call: GDExtensionInterfaceObjectMethodBindCall;
classdb_construct_object: GDExtensionInterfaceClassdbConstructObject;
object_destroy: GDExtensionInterfaceObjectDestroy;

// -------------------------
// CUSTOM CLASS REGISTRATION
// -------------------------

// Wrapper struct for extension classes:
ExtensionEntity :: struct {

    type: Type = void;
    parent_type: Type;

    p_class_name: *void;
    p_parent_class_name: *void;
}

class_create_info :: GDExtensionClassCreationInfo3.{
        is_virtual = 0,
        is_abstract = 0,
        is_exposed = 1,
        is_runtime = 1,
        //     set_func
        //     get_func
        //     get_property_list_func
        //     free_property_list_func
        //     property_can_revert_func
        //     property_get_revert_func
        //     validate_property_func
        //     notification_func
        //     to_string_func
        //     reference_func
        //     unreference_func
        create_instance_func = class_create_instance,
        free_instance_func = class_free_instance,
        //     recreate_instance_func
        //     get_virtual_func = get_virtual_func,
        get_virtual_call_data_func = get_virtual_call_data_fn,
        call_virtual_with_data_func = call_virtual_with_data_fn,
        //     get_rid_func
};

// == MEMALLOC ==

jodot_ctx: Context;

pool: Flat_Pool;
jodot_allocator: Allocator;

make_user_entity_case :: () -> string {

}

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {

    extension_entity := cast(*ExtensionEntity) p_class_userdata;

    p_object := classdb_construct_object(extension_entity.p_parent_class_name);

    push_context jodot_ctx {

        print_muted(tprint("Instantiating type: %\n", extension_entity.type));
        #insert user_entity_case;
    }

    return p_object;
}

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) #c_call {

    push_context jodot_ctx {
        // We probably shouldn't be using a Flat_Pool...?
        free(p_instance);
    }
}

register_extension_entities :: () {

    // For some reason, using large-iterator and for * causes an access violation
    for it_index: 0..user_entity_declarations.count - 1 {

        if user_entity_declarations[it_index].type == void break;

        // TODO: verify that extension classes are valid?

        user_entity_declarations[it_index].p_class_name = make_p_stringname(tprint("%", user_entity_declarations[it_index].type));
        user_entity_declarations[it_index].p_parent_class_name = make_p_stringname(tprint("%", user_entity_declarations[it_index].parent_type));

        unique_class_create_info := class_create_info;
        unique_class_create_info.class_userdata = *user_entity_declarations[it_index];

        classdb_register_extension_class(
            P_LIBRARY,
            user_entity_declarations[it_index].p_class_name,
            user_entity_declarations[it_index].p_parent_class_name,
            *unique_class_create_info
        );

        // Registration can fail silently, so check...
        tag := classdb_get_class_tag(user_entity_declarations[it_index].p_class_name);
        if tag == null print_error_with_message(null, "Extension class registration failed!", null, "Jodot", 0, 1);
        print_affirm(tprint("Extension class registered: %", tag));
    }
}

// -----------
// ENTRY POINT
// -----------

// Here, we capture and interrogate the godot runtime for pointers.
initialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {

    if p_level != .INITIALIZATION_SCENE {
        return;
    }

    jodot_allocator.proc = flat_pool_allocator_proc;
    jodot_allocator.data = *pool;
    jodot_ctx.allocator = jodot_allocator;

    push_context jodot_ctx {

        print("Size of % is: %\n", ExtensionEntity, size_of(ExtensionEntity));
        print("Size of % is: %\n", JodotTestEntity, size_of(JodotTestEntity));
        print("Size of % is: %\n", Character, size_of(Character));

        print("The Flat Pool is at % bytes.\n", pool.current_point - pool.memory_base);

        print("Hello from secret language!\n");
        print("Initializing Jodot module...\n");

        get_godot_version: GDExtensionInterfaceGetGodotVersion = xx P_GET_PROC_ADDRESS("get_godot_version");

        godot_version: GDExtensionGodotVersion;
        get_godot_version(*godot_version);

        print("\nGODOT VERSION: %.%.%\n", godot_version.major, godot_version.minor, godot_version.patch);

        print_error_with_message = xx P_GET_PROC_ADDRESS("print_error_with_message");
        print_warning_with_message = xx P_GET_PROC_ADDRESS("print_warning_with_message");

        string_new_with_utf8_chars = xx P_GET_PROC_ADDRESS("string_new_with_utf8_chars");
        string_to_utf8_chars = xx P_GET_PROC_ADDRESS("string_to_utf8_chars");

        string_name_new_with_utf8_chars = xx P_GET_PROC_ADDRESS("string_name_new_with_utf8_chars");

        classdb_construct_object = xx P_GET_PROC_ADDRESS("classdb_construct_object");
        object_set_instance = xx P_GET_PROC_ADDRESS("object_set_instance");

        classdb_register_extension_class = xx P_GET_PROC_ADDRESS("classdb_register_extension_class3");
        classdb_get_class_tag = xx P_GET_PROC_ADDRESS("classdb_get_class_tag");
        classdb_register_extension_class_method = xx P_GET_PROC_ADDRESS("classdb_register_extension_class_virtual_method");

        #insert user_entity_declaration_list;

        register_extension_entities();

        print("All systems Jo :)\n");
    }
}

VirtualFn :: enum {
    READY;
    PROCESS;
    INPUT;
}

get_virtual_call_data_fn :: (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> *void #c_call {
    return p_class_userdata;
}

call_virtual_with_data_fn :: (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, p_virtual_call_userdata: *void, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) #c_call {
    push_context jodot_ctx {

        name: [4] u8;
        memcpy(name.data, p_name, 4);
        // print_muted(tprint("GETTING VIRUAL FUNCTION: %", name));
        p_ready_stringname := make_p_stringname("_ready");
        ready_name: [4] u8;
        memcpy(ready_name.data, p_ready_stringname, 4);
        p_process_stringname := make_p_stringname("_process");
        process_name: [4] u8;
        memcpy(process_name.data, p_process_stringname, 4);
        p_input_stringname := make_p_stringname("_input");
        input_name: [4] u8;
        memcpy(input_name.data, p_input_stringname, 4);
        // print_muted(tprint("'_READY': %", ready_name));
        // print_muted(tprint("'_PROCESS': %", process_name));
        // print_muted(tprint("'_INPUT': %", input_name));

        // extension_entity := cast(ExtensionEntity) p_virtual_call_userdata;
        extension_entity := cast(*ExtensionEntity) p_instance;

        if name[0] == ready_name[0] &&
            name[1] == ready_name[1] &&
            name[2] == ready_name[2] &&
            name[3] == ready_name[3] {

                // == READY PROC ==

                #insert ready_user_entity_case;
        }
        // Sir, this is a Wendy's
        else if name[0] == process_name[0] &&
            name[1] == process_name[1] &&
            name[2] == process_name[2] &&
            name[3] == process_name[3] {

                // == PROCESS PROC ==

                // #insert process_user_entity_case;

                // extension_entity := cast(*JodotTestEntity) p_instance;
                // extension_entity.time_accumulator += 1.0;
                // print_muted(tprint("Greeter's Stopwatch: %", extension_entity.time_accumulator));
        }
        else if name[0] == input_name[0] &&
            name[1] == input_name[1] &&
            name[2] == input_name[2] &&
            name[3] == input_name[3] {

                // == INPUT PROC ==

        }
    }
}

deinitialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }
    // Perform any necessary cleanup!
}

#program_export
jodot_init :: (p_get_proc_address: GDExtensionInterfaceGetProcAddress, p_library: GDExtensionClassLibraryPtr, r_initialization: *GDExtensionInitialization) -> GDExtensionBool #c_call {

    godot_init_params := GDExtensionInitialization.{
        minimum_initialization_level = .INITIALIZATION_SCENE,
        userdata = null,
        initialize = initialize_jodot_module,
        deinitialize = deinitialize_jodot_module,
    };

    r_initialization.* = godot_init_params;

    P_GET_PROC_ADDRESS = p_get_proc_address;
    P_LIBRARY = p_library;

    success: GDExtensionBool = 1;
    return success;
}

// ==== WRAPPERS ====

// TODO: these should push line number from the .jai source file
godot_error :: (message: string) {
    print_error(null, message, null, null, 0, 1);
}

godot_warn :: (message: string) {
    print_warning(null, message, null, null, 0, 1);
}

// TODO: these should be set up as cast() calls instead of procedures
make_gstring :: (native_string: string) {
    c_string := to_c_string(native_string);
}

break_gstring :: (gstring: *u8) -> string {
    raw_string := string_to_utf8_chars(gstring);
    // This procedure already omits null terminator
    return (cast(string) raw_string);
}

make_p_stringname :: (native_string: string) -> *void {
    c_string := to_c_string(native_string);
    p_stringname := alloc(4);
    string_name_new_with_utf8_chars(p_stringname, c_string);
    return p_stringname;
}

p_stringname_to_string :: (p_stringname: *void) -> string {
    jai_string := to_string(<< p_stringname);
    return jai_string;
}

#import "Basic";
#import "Compiler";
#import "String";
#import "Flat_Pool";
