// This script should generate bindings for Godot data types, from extension_api.json...
// ...henceforth referred to as the 'gdt' submodule.

GodotAPI :: struct {
    header: Header;
    builtin_class_sizes: [] SizeRef;
    builtin_class_member_offsets: [] OffsetRef;
    global_enums: [] Enum;
    // utility_functions
    // builtin_classes: [] Class;
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
        // indexing_return_type: *string;
        // is_keyed: *bool;
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

    print_muted("Parsing godot JSON...");
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

test :: enum s32 {} @something

gdt_bindings_codegen :: () {

    print_muted("Generating gdt reference code...");
    builder: String_Builder;
    init_string_builder(*builder);
    append(*builder, GDT_HEADER);

    // == ENUMS ==

    for godot_api.global_enums {

        if equal(it.name, "Variant.Type") print_to_builder(*builder, "\n    Variant_Type :: enum s32 {\n");
        else if equal(it.name, "Variant.Operator") print_to_builder(*builder, "\n    Variant_Operator :: enum s32 {\n");
        else print_to_builder(*builder, "\n    % :: enum s32 {\n", it.name);

        for it.values {

            print_to_builder(*builder, "        % :: %;\n", it.name, it.value.*);
        }

        if !it.is_bitfield print_to_builder(*builder, "    }\n");
        else print_to_builder(*builder, "    } @bitfield\n");
    }

    // == CLASSES ==

    for godot_api.classes {

        print_to_builder(*builder, "\n    % :: struct {", it.name);
        print_to_builder(*builder, "}\n");
    }

    append(*builder, GDT_FOOTER);

    code := builder_to_string(*builder);
    write_entire_file("gdt/gdt_bindings.jai", code);
    print_affirm("OK! generated 'gdt/gdt_bindings.jai'\n");
}

#run {

    fill_godot_api();
    gdt_bindings_codegen();
    // TODO: serialize the GodotAPI struct for now so we don't have to deal with the stupid json
}

#scope_file

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "Jaison";
#import "String";
#import "File";

print_muted :: (msg: string) {
    log("\x1b[38;5;246m%\x1b[0m", msg);
}

print_affirm :: (msg: string) {
    log("\x1b[1;38;5;144m%\x1b[0m", msg);
}

GDT_HEADER :: #string DONE
//  --------------------
// | JODOT GDT BINDINGS |
//  --------------------

gdt :: struct {

    Nil :: void;

    // bool, int and float should match native

    // TODO
    String :: struct { // 32
    }

    Vector2 :: Math.Vector2;

    Vector2i :: struct {
        x: s32;
        y: s32;
    }

    Rect2 :: struct {
        x: Vector2;
        y: Vector2;
    }

    Rect2i :: struct {
        x: Vector2i;
        y: Vector2i;
    }

    Vector3 :: Math.Vector3;

    Vector3i :: struct {
        x: s32;
        y: s32;
        z: s32;
    }

    Transform2D :: struct {
        x: Vector2;
        y: Vector2;
        origin: Vector2;
    }

    Vector4 :: Math.Vector4;

    Vector4i :: struct {
        x: u32;
        y: u32;
        z: u32;
        w: u32;
    }

    Plane :: struct {
        normal: Vector3;
        d: float;
    }

    Quaternion :: Math.Quaternion;

    AABB :: struct {
        position: Vector3;
        size: Vector3;
    }

    Basis :: struct {
        x: Vector3;
        y: Vector3;
        z: Vector3;
    }

    Transform3D :: struct {
        basis: Basis;
        origin: Vector3;
    }

    Projection :: struct {
        x: Vector4;
        y: Vector4;
        z: Vector4;
        w: Vector4;
    }

    Color :: struct {
        r: float;
        g: float;
        b: float;
        a: float;
    }

    // TODO
    StringName :: struct {}
    NodePath :: struct {}
    RID :: struct {}
    Callable :: struct {}
    Signal :: struct {}
    Dictionary :: struct {}
    Array :: struct {}
    PackedByteArray :: struct {}
    PackedInt32Array :: struct {}
    PackedInt64Array :: struct {}
    PackedFloat32Array :: struct {}
    PackedFloat64Array :: struct {}
    PackedStringArray :: struct {}
    PackedVector2Array :: struct {}
    PackedVector3Array :: struct {}
    PackedColorArray :: struct {}
DONE

GDT_FOOTER :: #string DONE
}

#scope_file

Math :: #import "Math";
DONE
