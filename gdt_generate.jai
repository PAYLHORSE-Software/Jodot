main :: () {}

#run,stallable {
    set_build_options_dc(.{do_output=false});

    // ---- JAISON ----

    // Optional fields as pointers, so they default to null?

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
        indexing_return_type: *string;
        is_keyed: *bool;
        // TODO: operators, constructor, destructor - not sure how these should be set up

        is_refcounted: *bool;
        is_instantiable: *bool;
        inherits: *string;
        api_type: *string;
        enums: *[] Enum;
        methods: *[] Method;
        properties: *[] GenericValue;
    }

    Method :: struct {
        name: string;

        // Builtin specific
        return_type: *string;

        is_const: bool;
        is_vararg: bool;
        is_static: bool;
        is_virtual: *bool;
        hash: u32;
        return_value: *GenericValue;
        arguments: *[] GenericValue;
    }

    GenericValue :: struct {
        name: string;
        type: *string;
        // C type
        meta: *string;
        value: *s64;
        default_value: *string;

        // Property specific
        setter: *string;
        getter: *string;
    }

    NativeStruct :: struct {
        // TODO: parsed but not sure how to metaprogram
        name: string;
        format: string;
    }

    success, result := json_parse_file("gdextension/extension_api.json", ExtensionAPI);
    assert(success);
    assert(type_of(result) == ExtensionAPI);
    print("JSON parsing successful!\n");

    // print("ExtensionAPI dump:\n %", result);

    print("This should be null: %\n", result.singletons[0].value);
    print("This should be null: %\n", result.singletons[0].meta);
    print("This should be null: %\n", result.classes[0].properties);

    print("Size of final struct: %\n", size_of(ExtensionAPI));

    // Now, we parse result, the ExtensionAPI struct, and generate native definitions.
    // Native definitions then go to jodot_init to be hooked to pointers.
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

// _ready, _process, _physics_process, _enter_tree, _exit_treem _input are all false, false, false, true (virtual)

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
