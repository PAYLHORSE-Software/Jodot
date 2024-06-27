// These are constant once set.
P_GET_PROC_ADDRESS : GDExtensionInterfaceGetProcAddress;
P_LIBRARY : GDExtensionClassLibraryPtr;

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
classdb_construct_object: GDExtensionInterfaceClassdbConstructObject;
classdb_get_method_bind: GDExtensionInterfaceClassdbGetMethodBind;
object_method_bind_call: GDExtensionInterfaceObjectMethodBindCall;
objcet_method_bind_ptrcall: GDExtensionInterfaceObjectMethodBindPtrcall;
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

    _ready : #type (entity: *ExtensionEntity) = null;
    _process : #type (entity: *ExtensionEntity, delta: float) = null;
    _input : #type (entity: *ExtensionEntity, event: InputEvent) = null;
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

// --------
// MEMALLOC
// --------

jodot_ctx: Context;

pool: Flat_Pool;
jodot_allocator: Allocator;

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {

    extension_entity := cast(*ExtensionEntity) p_class_userdata;

    p_object := classdb_construct_object(extension_entity.p_parent_class_name);

    push_context jodot_ctx {

        print_muted(tprint("** New entity: % **", extension_entity.type));
        #insert user_entity_case;
    }

    return p_object;
}

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) #c_call {

    push_context jodot_ctx {
        // TODO: clear repective array index
    }
}

register_extension_entities :: () {

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
        if tag == null print_error_with_message(null, "Extension entity registration failed!", null, "Jodot", 0, 1);
        print_affirm(tprint("Extension entity registered: %", user_entity_declarations[it_index].type));
    }
}

create :: (gdt_type: $T) -> T {
    classdb_create_instance();
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

        gdt_call("Node.set_name");

        // print("The Flat Pool is at % bytes.\n", pool.current_point - pool.memory_base);

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

        classdb_get_method_bind = xx P_GET_PROC_ADDRESS("classdb_get_method_bind");

        // object_method_bind_call = xx P_GET_PROC_ADDRESS("object_method_bind_call");

        // object_method_bind_ptrcall = xx P_GET_PROC_ADDRESS("object_method_bind_ptrcall");

        #insert user_entity_declaration_list;

        register_extension_entities();

        print("All systems Jo :)\n");
    }
}

// NOTE: we use get_virtual_call_data_fn + call_virtual_with_data_fn instead of get_virtual_func simply for convenience

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
                if extension_entity._ready != null {
                    extension_entity._ready(extension_entity);
                }
        }
        // Sir, this is a Wendy's
        else if name[0] == process_name[0] &&
            name[1] == process_name[1] &&
            name[2] == process_name[2] &&
            name[3] == process_name[3] {

                // == PROCESS PROC ==
                if extension_entity._process != null {
                    delta := 0.0;
                    extension_entity._process(extension_entity, delta);
                }
        }
        else if name[0] == input_name[0] &&
            name[1] == input_name[1] &&
            name[2] == input_name[2] &&
            name[3] == input_name[3] {

                // == INPUT PROC ==
                if extension_entity._input != null {
                    event: InputEvent;
                    extension_entity._input(extension_entity, event);
                }
        }

        // TODO: _init, _physics_process, _enter_tree, _exit_tree
    }
}

deinitialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }
    // Perform any necessary cleanup!
}

gdt_call :: (method_name: string, args: .. Any) {
    // hash := table_find_pointer(*ALL_METHODS, method_name);
    // print_warn(tprint("HASH: %", hash.*));
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
#import "Hash_Table";
