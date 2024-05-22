// These are constant once set.
P_GET_PROC_ADDRESS : GDExtensionInterfaceGetProcAddress;
P_LIBRARY : GDExtensionClassLibraryPtr;

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
// (p_o: GDExtensionObjectPtr, p_classname: GDExtensionConstStringNamePtr, p_instance: GDExtensionClassInstancePtr) -> void #c_call;
object_set_instance: GDExtensionInterfaceObjectSetInstance;

// (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo3) -> void #c_call;
classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass3;
// GDExtensionInterfaceClassdbGetClassTag :: #type (p_classname: GDExtensionConstStringNamePtr) -> *void #c_call;
classdb_get_class_tag: GDExtensionInterfaceClassdbGetClassTag;

// It seems we have to declare/allocate memory for everything in advance of godot entry.
class_userdata: ClassUserdata;

object: godot.Object;

// Here, we capture and interrogate the godot runtime for pointers.
initialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }

    // TODO: use godot_print
    // print("Hello from secret language!\n");
    // print("Initializing Jodot module...\n");

    get_godot_version: GDExtensionInterfaceGetGodotVersion = cast(GDExtensionInterfaceGetGodotVersion)P_GET_PROC_ADDRESS("get_godot_version");

    godot_version: GDExtensionGodotVersion;
    get_godot_version(*godot_version);

    // print("\nGODOT VERSION: %.%.%\n", godot_version.major, godot_version.minor, godot_version.patch);

    print_error_with_message = cast(GDExtensionInterfacePrintErrorWithMessage)P_GET_PROC_ADDRESS("print_error_with_message");
    print_warning_with_message = cast(GDExtensionInterfacePrintWarningWithMessage)P_GET_PROC_ADDRESS("print_warning_with_message");

    string_new_with_utf8_chars = cast(GDExtensionInterfaceStringNewWithUtf8Chars)P_GET_PROC_ADDRESS("string_new_with_utf8_chars");
    string_to_utf8_chars = cast(GDExtensionInterfaceStringNewWithUtf8Chars)P_GET_PROC_ADDRESS("string_to_utf8_chars");

    string_name_new_with_utf8_chars = cast(GDExtensionInterfaceStringNameNewWithUtf8Chars)P_GET_PROC_ADDRESS("string_name_new_with_utf8_chars");

    classdb_construct_object = cast(GDExtensionInterfaceClassdbConstructObject)P_GET_PROC_ADDRESS("classdb_construct_object");
    object_set_instance = cast(GDExtensionInterfaceObjectSetInstance)P_GET_PROC_ADDRESS("object_set_instance");

    classdb_register_extension_class = cast(GDExtensionInterfaceClassdbRegisterExtensionClass3)P_GET_PROC_ADDRESS("classdb_register_extension_class3");
    classdb_get_class_tag = cast(GDExtensionInterfaceClassdbGetClassTag)P_GET_PROC_ADDRESS("classdb_get_class_tag");

    // Test raw procedures?
    // print_error_with_message(null, "Test Error! Don't panic ;)", null, "Jodot", 0, 1);
    // print_warning_with_message(null, "Test Warning! Don't panic ;)", null, "Jodot", 0, 1);

    // Test custom class registration?

    // GDExtensionClassCreationInfo3 :: struct {
    //     is_virtual:                  GDExtensionBool;
    //     is_abstract:                 GDExtensionBool;
    //     is_exposed:                  GDExtensionBool;
    //     is_runtime:                  GDExtensionBool;
    //     set_func:                    GDExtensionClassSet;
    //     get_func:                    GDExtensionClassGet;
    //     get_property_list_func:      GDExtensionClassGetPropertyList;
    //     free_property_list_func:     GDExtensionClassFreePropertyList;
    //     property_can_revert_func:    GDExtensionClassPropertyCanRevert;
    //     property_get_revert_func:    GDExtensionClassPropertyGetRevert;
    //     validate_property_func:      GDExtensionClassValidateProperty;
    //     notification_func:           GDExtensionClassNotification2;
    //     to_string_func:              GDExtensionClassToString;
    //     reference_func:              GDExtensionClassReference;
    //     unreference_func:            GDExtensionClassUnreference;
    //     create_instance_func:        GDExtensionClassCreateInstance; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
    //     free_instance_func:          GDExtensionClassFreeInstance; // Destructor; mandatory.
    //     recreate_instance_func:      GDExtensionClassRecreateInstance;

    //     // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
    //     get_virtual_func:            GDExtensionClassGetVirtual; TODO

    //     // Paired with `call_virtual_with_data_func`, this is an alternative to `get_virtual_func` for extensions that
    //     // need or benefit from extra data when calling virtual functions.
    //     // Returns user data that will be passed to `call_virtual_with_data_func`.
    //     // Returning `NULL` from this function signals to Godot that the virtual function is not overridden.
    //     // Data returned from this function should be managed by the extension and must be valid until the extension is deinitialized.
    //     // You should supply either `get_virtual_func`, or `get_virtual_call_data_func` with `call_virtual_with_data_func`.
    //     get_virtual_call_data_func:  GDExtensionClassGetVirtualCallData;

    //     // Used to call virtual functions when `get_virtual_call_data_func` is not null.
    //     call_virtual_with_data_func: GDExtensionClassCallVirtualWithData;
    //     get_rid_func:                GDExtensionClassGetRID;
    //     class_userdata:              *void; // Per-class user data, later accessible in instance bindings.
    // }

    class_creation_info := GDExtensionClassCreationInfo3.{
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
        // get_virtual_func = default_get_virtual_func,
        //     get_virtual_call_data_func
        //     call_virtual_with_data_func
        //     get_rid_func
        //     class_userdata
    };

    // print("Success! All systems Jo :)\n");

    new_context: Context;
    push_context new_context {
        // Setup p_class_userdata:
        p_class_name := make_p_stringname("JodotTestClass");
        p_parent_class_name := make_p_stringname("Node");
        class_userdata = ClassUserdata.{p_class_name, p_parent_class_name};

        class_creation_info.class_userdata = *class_userdata;

        // Register class!
        classdb_register_extension_class(P_LIBRARY, p_class_name, p_parent_class_name, *class_creation_info);

        // Registration can fail silently, so check...
        tag := classdb_get_class_tag(p_class_name);
        if tag == null print_error_with_message(null, "Extension class registration failed!", null, "Jodot", 0, 1);
        print("Class registered with class tag: %\n", tag);

        print("Hello, Sailor?\n");

        print("All systems Jo :)\n");
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

    << r_initialization = godot_init_params;

    P_GET_PROC_ADDRESS = p_get_proc_address;
    P_LIBRARY = p_library;

    // ------ CUSTOM CLASS TEST ------
    // -------------------------------

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

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {
    new_context: Context;
    push_context new_context {
        print("JodotTestClass: creating class instance...\n");
    }
    memcpy(*class_userdata, p_class_userdata, size_of(ClassUserdata));
    p_object := classdb_construct_object(class_userdata.p_parent_class_name);
    // TODO: here, I presume we should create an *instance* of the class in the jai environment?
    object_set_instance(p_object, class_userdata.p_class_name, *class_userdata);
    // object_set_instance(class_userdata.p_object, class_userdata.p_class_name, *class_userdata);
    return p_object;
}

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) #c_call {
    // TODO: figure this out...
}

// default_get_virtual_func :: (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> GDExtensionClassCallVirtual #c_call {
// }

ClassUserdata :: struct {
    p_class_name: *void;
    p_parent_class_name: *void;
}

// --------------------
// CUSTOM CLASS EXAMPLE
// --------------------
JodotTestClass :: struct {
    // #as using base: Node;
    time_accumulator: float64;

    // Constructor?
    init :: (self: *JodotTestClass) {
        self.time_accumulator = 0.0;
    }

    // Process method
    _process :: (self: *JodotTestClass, delta: float32) {
        self.time_accumulator += delta;
    }

    // Binding methods
    _bind_methods :: () {
        // Register the _process method
        // register_method("JodotTestClass::_process", _process);
    }
}

#import "Basic";
