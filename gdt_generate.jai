main :: () {}

#run,stallable {
    set_build_options_dc(.{do_output=false});

    // ---- JAISON ----
    ExtensionAPI :: struct {
        header: Header;
        // builtin_class_sizes
        // builtin_class_member_offsets
        // global_constants
        global_enums: [] Enum;
        // utility_functions
        builtin_classes: [] Class;
        classes: [] Class;
        singletons: [] GenericValue;
        native_structure: [] NativeStruct;
    }

    Header :: struct {
        version_full_name: string;
    }

    Enum :: struct {
        name: string;
        is_bitfield: bool;
        values: [] GenericValue;
    }

    Class :: struct {
        name: string;

        // Builtin specific
        indexing_return_type: string;
        is_keyed: bool;

        is_refcounted: bool;
        is_instantiable: bool;
        inherits: string;
        api_type: string;
        enums: [] Enum;
        methods: [] Method;
        properties: [] Property;
    }

    Method :: struct {
        name: string;

        // Builtin specific
        return_type: string;

        is_const: bool;
        is_vararg: bool;
        is_static: bool;
        is_virtual: bool;
        hash: u32;
        return_value: GenericValue;
        arguments: [] GenericValue;
    }

    GenericValue :: struct {
        name: string;
        type: string;
        // C type
        meta: string;
        value: s64;
        default_value: string;
    }

    Property :: struct {
        type: string;
        name: string;
        setter: string;
        getter: string;
    }

    NativeStruct :: struct {
        name: string;
        format: string;
    }

    success, result := json_parse_file("gdextension/extension_api.json", ExtensionAPI);
    assert(success);
    assert(type_of(result) == ExtensionAPI);
    print("JSON parsing successful!\n");

    // print("ExtensionAPI dump:\n %", result);

    // Now, we parse the ExtensionAPI struct.
    // ---- BINDGEN METAPROGRAM ----

}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "Jaison";

// --------------------------
// JSON DESERIALIZATION NOTES
// --------------------------

// --- FUNC/METHOD ---

// JSON gives us:

// is_const: bool
// is_vararg: bool
// is_static: bool
// is_virtual: bool

// hash: u32

// return_value: Type

// category: string

// arguments
// // name: string
// // type: Type
// // default_value

// --- ENUM (enum) ---

// JSON gives us:

// is_bitfield: bool

// --- CLASS (struct) ---

// JSON gives us:

// is_refcounted: bool
// is_instantiable: bool

// inherits: struct ;))

// api_type: string

// constants
// seem to be u8s universally

// enums*

// methods*

// organize by api_type with comment?
example_class :: () {
    Object :: struct {
        // constants
        NOTIFICATION_POSTINITIALIZE: u8 : 0;
        NOTIFICATION_PREDELETE: u8 : 1;
        NOTIFICATION_EXTENSION_RELOADED: u8 : 2;

        // enums
        ConnectFlags :: enum u8 {
            CONNECT_DEFERRED :: 1;
            CONNECT_PERSIST :: 2;
            CONNECT_ONE_SHOT :: 4;
            CONNECT_REFERENCE_COUNTED :: 8;
        }

        // methods
    }
}
