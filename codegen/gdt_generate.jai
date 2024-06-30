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

        // Ignore?
        // is_refcounted: *bool;
        // is_instantiable: *bool;
        inherits: *string;
        //api_type: *string;

        constants: [] GenericValue;
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
}

#no_reset godot_api: GodotAPI;

fill_godot_api :: () {

    print_muted("Parsing godot JSON...");
    success: bool;
    success, godot_api = json_parse_file("codegen/gdextension/extension_api.json", GodotAPI);
    assert(success);
    assert(type_of(godot_api) == GodotAPI);
    print("JSON parsing successful!\n");
}

// =========
//  CODEGEN
// =========

gdt_bindings_codegen :: () {

    print_muted("Generating gdt reference code...");
    builder: String_Builder;
    init_string_builder(*builder);
    append(*builder, GDT_HEADER);

    // == ENUMS ==

    // TODO: do whatever Bindings_Generator does to clean up enums
    for godot_api.global_enums {
        if it.name == "Variant.Type" print_to_builder(*builder, "\nVariant_Type :: enum s32 {    // %\n", it_index);
        else if it.name == "Variant.Operator" print_to_builder(*builder, "\nVariant_Operator :: enum s32 {    // %\n", it_index);
        else print_to_builder(*builder, "\n% :: enum s32 {    // %\n", it.name, it_index);
        for it.values {
            print_to_builder(*builder, "    % :: %;\n", it.name, it.value.*);
        }
        if !it.is_bitfield print_to_builder(*builder, "}\n");
        else print_to_builder(*builder, "} @bitfield\n");
    }

    // == CLASSES ==

    for godot_api.classes {
        if it.name == "InputEvent" continue;
        if it.enums print_to_builder(*builder, "\n% :: struct {  // %\n\n        #as using base: OpaqueClass;", it.name, it_index);
        else print_to_builder(*builder, "\n% :: struct { #as using base: OpaqueClass; } // %\n", it.name, it_index);
        for it.enums {
            // A few class enums are bitfields with very large values
            if it.is_bitfield print_to_builder(*builder, "\n\n    % :: enum u64 {\n", it.name);
            else print_to_builder(*builder, "\n\n    % :: enum s32 {\n", it.name);
            for it.values {
                print_to_builder(*builder, "        % :: %;\n", it.name, it.value.*);
            }
            if !it.is_bitfield print_to_builder(*builder, "    }");
            else print_to_builder(*builder, "    } @bitfield");
        }
        if it.enums append(*builder, "\n}\n");
    }

    append(*builder, "\n// ====== PROCEDURES ======\n\n");

    // == PROCEDURES ==

    // NOTE: this gives us valid native procedures, it's just atrocious and not worth it.
    for class: godot_api.classes {
        for * class.methods {
            if it.is_virtual.* == true continue;
            if it.name == "remove" it.name = "_remove";
            if it.name == "push_context" it.name = "_push_context";
            print_to_builder(*builder, "% :: (main: %", it.name, class.name);
            for * it.arguments {
                if it.name == "operator" it.name = "_operator";
                if it.name == "enum" it.name = "_enum";
                if it.name == "interface" it.name = "_interface";
                if it.name == "context" it.name = "_context";
                if it.name == "RID" it.name = "rid";
                if it.name == "bool" it.name = "_bool";
                if it.name == "string" it.name = "_string";
                if contains(it.type.*, "enum::") {
                    it.type.*.data = * it.type.*[6];
                    it.type.*.count -= 6;
                }
                else if contains(it.type.*, "typedarray::") {
                    it.type.*.data = * it.type.*[12];
                    it.type.*.count -= 12;
                    it.type.* = join("[] ", it.type.*);
                }
                else if contains(it.type.*, "bitfield::") {
                    it.type.*.data = * it.type.*[10];
                    it.type.*.count -= 10;
                }
                if contains(it.type.*, "const") {
                    it.type.*.data = * it.type.*[6];
                    it.type.*.count -= 6;
                }
                if contains(it.type.*, "**") {
                    it.type.*.count -= 3;
                    it.type.* = join("*", it.type.*);
                }
                if contains(it.type.*, "**") {
                    it.type.*.data = * it.type.*[1];
                    it.type.*.count -= 1;
                    it.type.* = join("*", it.type.*);
                }                if contains(it.type.*, "*") {
                    it.type.*.count -= 1;
                    it.type.* = join("*", it.type.*);
                }
                if contains(it.type.*, "AudioFrame") ||
                    contains(it.type.*, "CaretInfo") ||
                    contains(it.type.*, "ExtensionRay") ||
                    contains(it.type.*, "ExtensionShape") ||
                    contains(it.type.*, "ExtensionMotion") ||
                    contains(it.type.*, "ScriptLanguageExtensionProfilingInfo") {
                        continue;
                    }
                if it.type.* == "Variant.Type" it.type.* = "Variant_Type";
                if it.type.* == "Vector2.Axis" it.type.* = "Vector2_Axis";
                if it.type.* == "Vector2i.Axis" it.type.* = "Vector2_Axis";
                if it.type.* == "Vector3.Axis" it.type.* = "Vector3_Axis";
                if it.type.* == "Vector3i.Axis" it.type.* = "Vector3_Axis";
                if it.type.* == "Vector4.Axis" it.type.* = "Vector4_Axis";
                if it.type.* == "Vector4i.Axis" it.type.* = "Vector4_Axis";
                if it.type.* == "Projection.Planes" it.type.* = "Projection_Planes";
                if it.type.* == "String" it.type.* = "string";
                if it.type.* == "[] String" it.type.* = "[] string";
                if it.type.* == "*int32_t" it.type.* = "*s32";
                if it.type.* == "**uint8_" it.type.* = "**u8";
                if it.type.* == "*uint8_t" it.type.* = "*u8";
                print_to_builder(*builder, ", %: %", it.name, it.type.*);
            }

            if it.return_value {
                append(*builder, ") -> ");
                // This is just awful... TODO refactor
                if contains(it.return_value.type.*, "enum::") {
                    it.return_value.type.*.data = * it.return_value.type.*[6];
                    it.return_value.type.*.count -= 6;
                }
                else if contains(it.return_value.type.*, "typedarray::") {
                    it.return_value.type.*.data = * it.return_value.type.*[12];
                    it.return_value.type.*.count -= 12;
                    it.return_value.type.* = join("[] ", it.return_value.type.*);
                }
                else if contains(it.return_value.type.*, "bitfield::") {
                    it.return_value.type.*.data = * it.return_value.type.*[10];
                    it.return_value.type.*.count -= 10;
                }
                if contains(it.return_value.type.*, "const") {
                    it.return_value.type.*.data = * it.return_value.type.*[6];
                    it.return_value.type.*.count -= 6;
                }
                if contains(it.return_value.type.*, "**") {
                    it.return_value.type.*.count -= 3;
                    it.return_value.type.* = join("*", it.return_value.type.*);
                }
                if contains(it.return_value.type.*, "**") {
                    it.return_value.type.*.data = * it.return_value.type.*[1];
                    it.return_value.type.*.count -= 1;
                    it.return_value.type.* = join("*", it.return_value.type.*);
                }                if contains(it.return_value.type.*, "*") {
                    it.return_value.type.*.count -= 1;
                    it.return_value.type.* = join("*", it.return_value.type.*);
                }
                // if contains(it.return_value.type.*, "AudioFrame") ||
                //     contains(it.return_value.type.*, "CaretInfo") ||
                //     contains(it.return_value.type.*, "ExtensionRay") ||
                //     contains(it.return_value.type.*, "ExtensionShape") ||
                //     contains(it.return_value.type.*, "ExtensionMotion") ||
                //     contains(it.return_value.type.*, "ScriptLanguageExtensionProfilingInfo") continue;
                if it.return_value.type.* == "Variant.Type" it.return_value.type.* = "Variant_Type";
                if it.return_value.type.* == "Vector2.Axis" it.return_value.type.* = "Vector2_Axis";
                if it.return_value.type.* == "Vector2i.Axis" it.return_value.type.* = "Vector2_Axis";
                if it.return_value.type.* == "Vector3.Axis" it.return_value.type.* = "Vector3_Axis";
                if it.return_value.type.* == "Vector3i.Axis" it.return_value.type.* = "Vector3_Axis";
                if it.return_value.type.* == "Vector4.Axis" it.return_value.type.* = "Vector4_Axis";
                if it.return_value.type.* == "Vector4i.Axis" it.return_value.type.* = "Vector4_Axis";
                if it.return_value.type.* == "Projection.Planes" it.return_value.type.* = "Projection_Planes";
                if it.return_value.type.* == "String" it.return_value.type.* = "string";
                if it.return_value.type.* == "[] String" it.return_value.type.* = "[] string";
                if it.return_value.type.* == "*int32_t" it.return_value.type.* = "*s32";
                if it.return_value.type.* == "**uint8_" it.return_value.type.* = "**u8";
                if it.return_value.type.* == "*uint8_t" it.return_value.type.* = "*u8";
                print_to_builder(*builder, "%", it.return_value.type.*);
            } else { append(*builder, ")"); }

            append(*builder, " { ");
            print_to_builder(*builder, "gdt_call(\"%\", \"%\", %, main", class.name, it.name, it.hash);
            for it.arguments {
                print_to_builder(*builder, ", %", it.name);
            }
            print_to_builder(*builder, "); }  // %\n", it_index);
        }

        append(*builder, "\n");
    }

    append(*builder, "// ====== SINGLETONS ======\n\n");

    // == SINGLETONS ==

    for godot_api.singletons {
        print_to_builder(*builder, "S_%: GDExtensionObjectPtr;\n", it.name);
    }

    // == SIZE/OFFSET ASSERTS ==

    append(*builder, "\n#run {\n");

    for godot_api.builtin_class_sizes {
        if it.build_configuration == "float_64" ||
            it.build_configuration == "double_32" ||
            it.build_configuration == "double_64" continue;
        for it.sizes {
            if it.name == "bool" ||
                it.name == "int" ||
                it.name == "float" ||
                it.name == "String" ||
                it.name == "Object" continue;
            print_to_builder(*builder, "    assert(size_of(%) == %);\n", it.name, it.size);
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
}

#scope_file

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "Jaison";
#import "File";
#import "String";

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

OpaqueClass :: struct {
    p_object: GDExtensionObjectPtr;
    variant: Variant;
}

InputEvent :: struct { // 329
    resource_local_to_scene: bool;
    resource_name: gstring;
    resource_path: gstring;
    device: int;
}
DONE

GDT_FOOTER :: #string DONE

#scope_file

// #import "Hash_Table";
DONE
