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

    SizeRef :: struct {
        build_configuration: string;
        sizes: [] Size;
    }

    Size :: struct {
        name: string;
        size: u8;
    }

    OffsetRef :: struct {
        build_configuration: string;
        classes: [] OffsetClass;
    }

    OffsetClass :: struct {
        name: string;
        members: [] OffsetClassMember;
    }

    OffsetClassMember :: struct {
        member: string;
        offset: u8;
        // meta:
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
        // indexing_return_type: *string;
        // is_keyed: *bool;
        // TODO: operators, constructor, destructor - not sure how these should be set up

        // Ignore?
        // is_refcounted: *bool;
        // is_instantiable: *bool;
        inherits: *string;
        //api_type: *string;

        enums: [] Enum;
        methods: [] Method;
        properties: [] GenericValue;
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
        arguments: [] GenericValue;
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
        if it.name == "Variant.Type" print_to_builder(*builder, "\n    Variant_Type :: enum s32 {\n");
        else if it.name == "Variant.Operator" print_to_builder(*builder, "\n    Variant_Operator :: enum s32 {\n");
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
        for it.enums {
            // A few class enums are bitfields with very large values
            if it.is_bitfield print_to_builder(*builder, "\n\n        % :: enum u64 {\n", it.name);
            else print_to_builder(*builder, "\n\n        % :: enum s32 {\n", it.name);
            for it.values {
                print_to_builder(*builder, "            % :: %;\n", it.name, it.value.*);
            }
            if !it.is_bitfield print_to_builder(*builder, "        }");
            else print_to_builder(*builder, "        } @bitfield");
        }
        print_to_builder(*builder, "\n    }\n");
    }

    append(*builder, "}\n");

    // == SIZE/OFFSET ASSERTS ==

    append(*builder, "\n#run {\n\n");

    for godot_api.builtin_class_sizes {
        if it.build_configuration == "float_64" ||
            it.build_configuration == "double_32" ||
            it.build_configuration == "double_64"
        continue;
        for it.sizes {
            if it.name == "bool" ||
                it.name == "int" ||
                it.name == "float" ||
                it.name == "String"
            continue;
            print_to_builder(*builder, "    assert(size_of(gdt.%) == %);\n", it.name, it.size);
        }
    }

    append(*builder, "}\n");

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

    // bool, int and float (float64) match native

    gstring :: u32; // ??

    Vector2 :: Math.Vector2;

    Vector2i :: struct {
        x: s32;
        y: s32;
    }

    Rect2 :: struct {
        position: Vector2;
        size: Vector2;
    }

    Rect2i :: struct {
        position: Vector2i;
        size: Vector2i;
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
        x: s32;
        y: s32;
        z: s32;
        w: s32;
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

    StringName :: u32; // ??
    NodePath :: u32;
    RID :: u64;
    // Object :: u32;
    Callable :: [16] u8;
    Signal :: [16] u8;
    Dictionary :: u32;
    Array :: u32;
    PackedByteArray :: *u8;
    PackedInt32Array :: *u8;
    PackedInt64Array :: *u8;
    PackedFloat32Array :: *u8;
    PackedFloat64Array :: *u8;
    PackedStringArray :: *u8;
    PackedVector2Array :: *u8;
    PackedVector3Array :: *u8;
    PackedColorArray :: *u8;
    Variant :: [24] u8;
DONE

GDT_FOOTER :: #string DONE

#scope_file

Math :: #import "Math";
DONE
