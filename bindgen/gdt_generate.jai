// This script should generate bindings for Godot data types, from extension_api.json...
// ...henceforth referred to as the 'gdt' submodule.

GodotAPI :: struct {
    header: Header;
    builtin_class_sizes: [] SizeRef;
    builtin_class_member_offsets: [] OffsetRef;
    global_enums: [] Enum;
    // utility_functions
    builtin_classes: [] Class;
    classes: [] Class;
    singletons: [] GenericValue;
    native_structure: [] NativeStruct;

    SizeRef :: struct {}

    OffsetRef :: struct {}

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
        // TODO: parsed but not sure how declare...
        name: string;
        format: string;
    }
}

#no_reset godot_api: GodotAPI;

fill_godot_api :: () {

    print("Parsing godot JSON...\n");
    success: bool;
    success, godot_api = json_parse_file("bindgen/gdextension/extension_api.json", GodotAPI);
    assert(success);
    assert(type_of(godot_api) == GodotAPI);
    print("JSON parsing successful!\n");
}

// =========
//  CODEGEN
// =========

// Now, we parse the GodotAPI struct, and generate a script of native definitions.

gdt_bindings_codegen :: () {

    print("Generating gdt reference code...\n");
    builder: String_Builder;
    init_string_builder(*builder);

    // == HEADER ==

    append(*builder, GDT_HEADER);
    append(*builder, "gdt :: struct {\n\n");

    assert(godot_api.builtin_classes.count != 0);

    // == BUILTIN CLASSES ==

    for godot_api.builtin_classes {

        if equal(it.name, "bool") || equal(it.name, "int") || equal(it.name, "float") continue;

        print_to_builder(*builder, "    % :: struct {", it.name);
        append(*builder, "}\n");
    }

    append(*builder, "\n}");

    code := builder_to_string(*builder);
    write_entire_file("gdt/gdt_reference.jai", code);
    print("'gdt/gdt_reference.jai' generated!\n");
}

#run {

    fill_godot_api();
    gdt_bindings_codegen();
}

#scope_file

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "Jaison";
#import "String";
#import "File";

GDT_HEADER :: #string DONE
//  ---------------------
// | JODOT GDT REFERENCE |
//  ---------------------

// Just a reference for now. Bindings are hand-copied over to gdt_bindings.

DONE
