// Here, we capture and interrogate the godot runtime for pointers.

// These are constant once set.
P_GET_PROC_ADDRESS : GDExtensionInterfaceGetProcAddress;
P_LIBRARY : GDExtensionClassLibraryPtr;

guantanamo_bay: Context;

// ---- RAW PROCEDURES ----

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
// (p_o: GDExtensionObjectPtr) -> void #c_call;
object_destroy: GDExtensionInterfaceObjectDestroy;
// (p_o: GDExtensionObjectPtr, p_classname: GDExtensionConstStringNamePtr, p_instance: GDExtensionClassInstancePtr) -> void #c_call;
object_set_instance: GDExtensionInterfaceObjectSetInstance;
// (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo3) -> void #c_call;
classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass3;

#program_export
initialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }

    // TODO: set this up!
    // ClassDB::register_class();

    push_context guantanamo_bay {
        print("Hello from secret language!\n");
        print("Initializing Jodot module...\n");

        get_godot_version: GDExtensionInterfaceGetGodotVersion = cast(GDExtensionInterfaceGetGodotVersion)P_GET_PROC_ADDRESS("get_godot_version");

        godot_version: GDExtensionGodotVersion;
        get_godot_version(*godot_version);

        print("\nGODOT VERSION: %.%.%\n", godot_version.major, godot_version.minor, godot_version.patch);

        // Pull all the system procedure pointers we need out of the context.
        print_error_with_message = cast(GDExtensionInterfacePrintErrorWithMessage)P_GET_PROC_ADDRESS("print_error_with_message");
        print_warning_with_message = cast(GDExtensionInterfacePrintWarningWithMessage)P_GET_PROC_ADDRESS("print_warning_with_message");

        string_new_with_utf8_chars = cast(GDExtensionInterfaceStringNewWithUtf8Chars)P_GET_PROC_ADDRESS("string_new_with_utf8_chars");
        string_to_utf8_chars = cast(GDExtensionInterfaceStringNewWithUtf8Chars)P_GET_PROC_ADDRESS("string_to_utf8_chars");

        string_name_new_with_utf8_chars = cast(GDExtensionInterfaceStringNameNewWithUtf8Chars)P_GET_PROC_ADDRESS("string_name_new_with_utf8_chars");

        classdb_construct_object = cast(GDExtensionInterfaceClassdbConstructObject)P_GET_PROC_ADDRESS("classdb_construct_object");
        object_destroy = cast(GDExtensionInterfaceObjectDestroy)P_GET_PROC_ADDRESS("object_destroy");
        object_set_instance = cast(GDExtensionInterfaceObjectSetInstance)P_GET_PROC_ADDRESS("object_set_instance");

        classdb_register_extension_class = cast(GDExtensionInterfaceClassdbRegisterExtensionClass3)P_GET_PROC_ADDRESS("classdb_register_extension_class3");

        // Test raw procedures?
        print_error_with_message(null, "Test Error! Don't panic ;)", null, "Jodot", 0, 1);
        print_warning_with_message(null, "Test Warning! Don't panic ;)", null, "Jodot", 0, 1);

        print("Success! All systems Jo :)\n");
    }
}

#program_export
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

to_c_string :: (s: string) -> *u8 {
    result := cast(*u8) alloc(s.count + 1);
    memcpy(result, s.data, s.count);
    result[s.count] = 0;
    return result;
}

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

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {
    // p_class_userdata should point to all the info we need about our custom class
    // class_userdata: ClassUserdata = << p_class_userdata;
    // allocate 4 bytes of memory
    // string_name_new_with_utf8_chars(*memory, ext_class.name);
    memory := temporary_alloc(4);
    string_name_new_with_utf8_chars(*memory, "Node");
    // TODO: move StringName to p_class_userdata
    p_object := classdb_construct_object(*memory);
    // then push this outside so we can object_set_instance()
}

// object_set_instance()

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) -> GDExtensionObjectPtr #c_call {
    destroy_object
}

#import "Basic";
