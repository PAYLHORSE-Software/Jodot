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

// arguments (comment)
// definition

// (p_description: *u8, p_message: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;
print_error_with_message: GDExtensionInterfacePrintErrorWithMessage;
// (p_description: *u8, p_message: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;
print_warning_with_message: GDExtensionInterfacePrintWarningWithMessage;
// (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u8) -> void #c_call;
string_new_with_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;
// (p_self: GDExtensionConstStringPtr, r_text: *u8, p_max_write_length: GDExtensionInt) -> GDExtensionInt #c_call;
string_to_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;

// GDExtensionInterfaceStringNameNewWithUtf8Chars :: #type (r_dest: GDExtensionUninitializedStringNamePtr, p_contents: *u8) -> void #c_call;
string_name_new_with_utf8_chars: GDExtensionInterfaceStringNameNewWithUtf8Chars;
// StringName is 4 bytes

// (p_classname: GDExtensionConstStringNamePtr) -> GDExtensionObjectPtr #c_call;
classdb_construct_object: GDExtensionInterfaceClassdbConstructObject;
// (p_o: GDExtensionObjectPtr, p_classname: GDExtensionConstStringNamePtr, p_instance: GDExtensionClassInstancePtr) -> void #c_call;
object_set_instance: GDExtensionInterfaceObjectSetInstance;

// (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo3) -> void #c_call;
classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass3;
// GDExtensionInterfaceClassdbGetClassTag :: #type (p_classname: GDExtensionConstStringNamePtr) -> *void #c_call;
classdb_get_class_tag: GDExtensionInterfaceClassdbGetClassTag;
// (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_method_info: *GDExtensionClassMethodInfo) -> void #c_call;
classdb_register_extension_class_method: GDExtensionInterfaceClassdbRegisterExtensionClassMethod;

// -------------------------
// CUSTOM CLASS REGISTRATION
// -------------------------

// user_class_declarations: [1] ExtensionClass;
// user_class_declaration_list :: "user_class_declarations[0] = Character.{};";

#placeholder user_class_declarations;
#placeholder user_class_declaration_list;

// Wrapper struct for extension classes:

ExtensionClass :: struct {
    type: Type = void;
    parent_type: Type;
    fld: Any;
    virtual: Any;

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
        get_virtual_func = get_virtual_func,
        //     get_virtual_call_data_func
        //     call_virtual_with_data_func
        //     get_rid_func
};

make_user_class_declarations :: () -> string {

    return "array_add(*user_class_declarations, .{type = JodotTestClass, parent_type = gdtp.Node});";
}

// message_loop :: () #expand {
//     print_muted("\n\n\n==== METAPROGRAM ====");

//     tagged_names : [..] string;
//     gen_code := false;

//     while true {

//         message := compiler_wait_for_message();
//         if message.kind == {
//             case .TYPECHECKED;
//                 typechecked := cast(*Message_Typechecked) message;

//                 for decl: typechecked.declarations {
//                     for note: decl.expression.notes {
//                         if equal(note.text, "godot") {
//                             print_affirm(tprint("Found extension class declaration: %", decl.expression.name));
//                             array_add(*tagged_names, copy_string(decl.expression.name));
//                         }
//                     }
//                 }
//             case .PHASE;
//                 phase := cast(*Message_Phase) message;
//                 if gen_code == false && phase.phase == .TYPECHECKED_ALL_WE_CAN {
//                     builder: String_Builder;
//                     // print_to_builder(*builder, "#scope_module\n");
//                     print_to_builder(*builder, "user_class_declarations: [%] ExtensionClass;\n", tagged_names.count);
//                     // print_to_builder(*builder, "important_array: [%] ExtensionClass;\n", tagged_names.count);
//                     list_builder: String_Builder;
//                     for tagged_names {
//                         print_to_builder(*list_builder, "user_class_declarations[%] = %.{};", it_index, it);
//                     }
//                     list := builder_to_string(*list_builder);
//                     print_to_builder(*builder, "user_class_declaration_list :: \"%\";", list);
//                     print_affirm(tprint("ADDING BUILD STRING: %", builder_to_string(*builder)));
//                     add_build_string(builder_to_string(*builder), `w);
//                     gen_code = true;
//                 }
//           case .COMPLETE;
//             break;
//         }
//     }
// }

// == MEMALLOC ==

pool: Flat_Pool;

buffer := [1024 * 1024] u8;

make_user_class_case :: () -> string {
    builder: String_Builder;
    init_string_builder(*builder);
    append(*builder, "if extension_class.type == {\n");
    for user_class_declarations {
        if it.type == void break;
        print_to_builder(*builder, "case %;\n", it.type);
        print_to_builder(*builder, "    user_class_instance = New(%,, a);\n", it.type);
        print_to_builder(*builder, "    print_affirm(\"Instantiated a %!\");", it.type);
    }
    append(*builder, "}\n");
    return builder_to_string(*builder);
}

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {

    extension_class: ExtensionClass;
    memcpy(*extension_class, p_class_userdata, size_of(ExtensionClass));

    p_object := classdb_construct_object(extension_class.p_parent_class_name);

    a: Allocator;
    a.proc = flat_pool_allocator_proc;
    a.data = *pool;

    new_context: Context;
    new_context.allocator = a;

    push_context new_context {

        user_class_instance: Any;

        #insert #run make_user_class_case();

        object_set_instance(p_object, extension_class.p_class_name, *user_class_instance);
    }

    return p_object;
}

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) #c_call {

    a: Allocator;
    a.proc = flat_pool_allocator_proc;
    a.data = *pool;

    new_context: Context;
    new_context.allocator = a;

    push_context new_context {
        // We probably shouldn't be using a Flat_Pool...
        free(p_instance);
    }
}

register_extension_classes :: () {

    // For some reason, using large-iterator and for * causes an access violation
    for it_index: 0..user_class_declarations.count - 1 {

        if user_class_declarations[it_index].type == void break;

        // TODO: verify that extension classes are valid?

        user_class_declarations[it_index].p_class_name = make_p_stringname(tprint("%", user_class_declarations[it_index].type));
        user_class_declarations[it_index].p_parent_class_name = make_p_stringname(tprint("%", user_class_declarations[it_index].parent_type));

        unique_class_create_info := class_create_info;
        unique_class_create_info.class_userdata = *user_class_declarations[it_index];

        classdb_register_extension_class(
            P_LIBRARY,
            user_class_declarations[it_index].p_class_name,
            user_class_declarations[it_index].p_parent_class_name,
            *unique_class_create_info
        );

        // Registration can fail silently, so check...
        tag := classdb_get_class_tag(user_class_declarations[it_index].p_class_name);
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

    new_context: Context;
    push_context new_context {

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

        #insert user_class_declaration_list;
        register_extension_classes();

        print("All systems Jo :)\n");
    }
}

get_virtual_func :: (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> GDExtensionClassCallVirtual #c_call {
    new_context: Context;
    push_context new_context {

        name: [4] u8;
        memcpy(name.data, p_name, 4);
        print_muted(tprint("GETTING VIRUAL FUNCTION: %", name));
        p_ready_stringname := make_p_stringname("_ready");
        ready_name: [4] u8;
        memcpy(ready_name.data, p_ready_stringname, 4);
        p_process_stringname := make_p_stringname("_process");
        process_name: [4] u8;
        memcpy(process_name.data, p_process_stringname, 4);
        p_input_stringname := make_p_stringname("_input");
        input_name: [4] u8;
        memcpy(input_name.data, p_input_stringname, 4);
        print_muted(tprint("'_READY': %", ready_name));
        print_muted(tprint("'_PROCESS': %", process_name));
        print_muted(tprint("'_INPUT': %", input_name));
        if name[0] == ready_name[0] &&
            name[1] == ready_name[1] &&
            name[2] == ready_name[2] &&
            name[3] == ready_name[3] {
                return method_ready;
            }
        // Sir, this is a Wendy's
        else if name[0] == process_name[0] &&
            name[1] == process_name[1] &&
            name[2] == process_name[2] &&
            name[3] == process_name[3] {
                return method_process;
            }
        else if name[0] == input_name[0] &&
            name[1] == input_name[1] &&
            name[2] == input_name[2] &&
            name[3] == input_name[3] {
                return method_input;
            }
        else return method_virtual_dummy;
    }
}

// GDExtensionClassCallVirtual :: #type (p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void #c_call;
method_init :: (
    p_instance: GDExtensionClassInstancePtr,
    p_args: *GDExtensionConstTypePtr,
    r_ret: GDExtensionTypePtr
) #c_call {

    // From some reddit post:

    /* First we get a pointer to the object which is calling the function */
    // MyClass *instance = static_cast<MyClass *>(p_instance);

    /* Then we unpack the arguments from p_args */
    // Node *arg1 = *static_cast<Node3D * const *>(p_args[0]);
    // int arg2 = *static_cast<const int *>(p_args[1]);

    /* Now we call the function on its arguments and get its result (if any)
     * You MUST use the call() function to invoke method() */
    // Variant return_var = instance->call("method", arg1, arg2);
    // int result = static_cast<int>(return_var);

    /* Finally, we return the output through the r_ret pointer */
    // *static_cast<int *>(r_ret) = result;

    new_context: Context;
    push_context new_context {
        print_muted("JODOT TEST CLASS _INIT METHOD!");
    }
}

method_ready :: (
    p_instance: GDExtensionClassInstancePtr,
    p_args: *GDExtensionConstTypePtr,
    r_ret: GDExtensionTypePtr
) #c_call {
    new_context: Context;
    push_context new_context {
        print_muted("JODOT TEST CLASS _READY METHOD!");
    }
}

method_process :: (
    p_instance: GDExtensionClassInstancePtr,
    p_args: *GDExtensionConstTypePtr,
    r_ret: GDExtensionTypePtr
) #c_call {
    new_context: Context;
    push_context new_context {
        // print_muted("JODOT TEST CLASS _PROCESS METHOD!");
    }
}

method_input :: (
    p_instance: GDExtensionClassInstancePtr,
    p_args: *GDExtensionConstTypePtr,
    r_ret: GDExtensionTypePtr
) #c_call {
    new_context: Context;
    push_context new_context {
        // print_muted("JODOT TEST CLASS _INPUT METHOD!");
    }
}

method_virtual_dummy :: (
    p_instance: GDExtensionClassInstancePtr,
    p_args: *GDExtensionConstTypePtr,
    r_ret: GDExtensionTypePtr
) #c_call {}

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

    << r_initialization = godot_init_params;

    P_GET_PROC_ADDRESS = p_get_proc_address;
    P_LIBRARY = p_library;

    gdext_bool: GDExtensionBool = 1;
    return gdext_bool;
}

// ---- WRAPPERS ----

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
