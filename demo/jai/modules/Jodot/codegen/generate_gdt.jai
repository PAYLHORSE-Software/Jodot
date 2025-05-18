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

        // constants: [] GenericValue;
        enums: [] Enum;
        methods: [] Method;
        // properties: [] GenericValue;
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

    print_muted("Parsing Extension API JSON...");
    success: bool;
    success, godot_api = json_parse_file("codegen/gdextension/extension_api.json", GodotAPI);
    assert(success);
    assert(type_of(godot_api) == GodotAPI);
    print("JSON parsing successful!\n");
}

// -------
// Codegen

gdt_bindings_codegen :: () {

    print_muted("Generating gdt bindings...");
    builder: String_Builder;
    init_string_builder(*builder);
    append(*builder, GDT_HEADER);

    godot_classes: [..] string;

    // Enums

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

    // Classes

    for * godot_api.classes {
        array_add(*godot_classes, it.name);
        if it.name == "Object" it.name = "_Object";
        if it.enums print_to_builder(*builder, "\n% :: struct {  // %\n\n        #as using base: GodotClass;", it.name, it_index);
        else print_to_builder(*builder, "\n% :: struct { #as using base: GodotClass; } // %\n", it.name, it_index);
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

    append(*builder, "\n// ------ Procedures ------\n\n");

    // Procedures

    all_classes: [..] GodotAPI.Class;

    // Group all builtin classes and classes together here:

    for godot_api.classes { array_add(*all_classes, it); }
    for godot_api.builtin_classes { array_add(*all_classes, it); }

    // print_muted(tprint("ALL CLASSES COUNT: %", all_classes.count));

    for class: godot_api.classes {
        for * method: class.methods {
            if method.is_virtual != null if method.is_virtual.* == true continue;
            if method.name == "remove" method.name = "_remove";
            if method.name == "push_context" method.name = "_push_context";
            print_to_builder(*builder, "% :: (main: *%", method.name, class.name);
            for * arg: method.arguments {
                if arg.default_value != null continue; // TEMP
                if arg.name == "operator" arg.name = "_operator";
                if arg.name == "enum" arg.name = "_enum";
                if arg.name == "interface" arg.name = "_interface";
                if arg.name == "context" arg.name = "_context";
                if arg.name == "RID" arg.name = "rid";
                if arg.name == "bool" arg.name = "_bool";
                if arg.name == "string" arg.name = "_string";
                
                // If GodotClass, then expect pointer
                is_godot_class := false;
                for godot_classes if arg.type.* == it {
                    print_to_builder(*builder, ", %: *%", arg.name, arg.type.*);
                    is_godot_class = true;
                    break;
                }
                if is_godot_class continue;
                
                if contains(arg.type.*, "enum::") {
                    arg.type.*.data = * arg.type.*[6];
                    arg.type.*.count -= 6;
                }
                else if contains(arg.type.*, "typedarray::") {
                    arg.type.*.data = * arg.type.*[12];
                    arg.type.*.count -= 12;
                    arg.type.* = join("[] ", arg.type.*);
                }
                else if contains(arg.type.*, "bitfield::") {
                    arg.type.*.data = * arg.type.*[10];
                    arg.type.*.count -= 10;
                }
                if contains(arg.type.*, "const") {
                    arg.type.*.data = * arg.type.*[6];
                    arg.type.*.count -= 6;
                }
                if contains(arg.type.*, "**") {
                    arg.type.*.count -= 3;
                    arg.type.* = join("*", arg.type.*);
                }
                if contains(arg.type.*, "**") {
                    arg.type.*.data = * arg.type.*[1];
                    arg.type.*.count -= 1;
                    arg.type.* = join("*", arg.type.*);
                }                if contains(arg.type.*, "*") {
                    arg.type.*.count -= 1;
                    arg.type.* = join("*", arg.type.*);
                }
                if contains(arg.type.*, "ExtensionRay") ||
                    contains(arg.type.*, "ExtensionShape") ||
                    contains(arg.type.*, "ExtensionMotion") ||
                    contains(arg.type.*, "ScriptLanguageExtensionProfilingInfo") continue;
                if arg.type.* == "NodePath" arg.type.* = "string";
                if arg.type.* == "Variant.Type" arg.type.* = "Variant_Type";
                if arg.type.* == "Vector2.Axis" arg.type.* = "Vector2_Axis";
                if arg.type.* == "Vector2i.Axis" arg.type.* = "Vector2_Axis";
                if arg.type.* == "Vector3.Axis" arg.type.* = "Vector3_Axis";
                if arg.type.* == "Vector3i.Axis" arg.type.* = "Vector3_Axis";
                if arg.type.* == "Vector4.Axis" arg.type.* = "Vector4_Axis";
                if arg.type.* == "Vector4i.Axis" arg.type.* = "Vector4_Axis";
                if arg.type.* == "Projection.Planes" arg.type.* = "Projection_Planes";
                if arg.type.* == "String" arg.type.* = "string";
                if arg.type.* == "[] String" arg.type.* = "[] string";
                if arg.type.* == "StringName" arg.type.* = "string";
                if arg.type.* == "[] StringName" arg.type.* = "[] string";
                if arg.type.* == "*int32_t" arg.type.* = "*s32";
                if arg.type.* == "**uint8_" arg.type.* = "**u8";
                if arg.type.* == "*uint8_t" arg.type.* = "*u8";
                print_to_builder(*builder, ", %: %", arg.name, arg.type.*);
                // if arg.default_value != null print_to_builder(*builder, " = %", arg.default_value);
            }

            if method.return_value {
                is_godot_class := false;
                for godot_classes {
                    if method.return_value.type.* == it is_godot_class = true;
                }
                if is_godot_class append(*builder, ") -> *");
                else append(*builder, ") -> ");
                // This is just awful... TODO refactor
                if contains(method.return_value.type.*, "enum::") {
                    method.return_value.type.*.data = * method.return_value.type.*[6];
                    method.return_value.type.*.count -= 6;
                }
                else if contains(method.return_value.type.*, "typedarray::") {
                    method.return_value.type.*.data = * method.return_value.type.*[12];
                    method.return_value.type.*.count -= 12;
                    method.return_value.type.* = join("[] ", method.return_value.type.*);
                }
                else if contains(method.return_value.type.*, "bitfield::") {
                    method.return_value.type.*.data = * method.return_value.type.*[10];
                    method.return_value.type.*.count -= 10;
                }
                if contains(method.return_value.type.*, "const") {
                    method.return_value.type.*.data = * method.return_value.type.*[6];
                    method.return_value.type.*.count -= 6;
                }
                if contains(method.return_value.type.*, "**") {
                    method.return_value.type.*.count -= 3;
                    method.return_value.type.* = join("*", method.return_value.type.*);
                }
                if contains(method.return_value.type.*, "**") {
                    method.return_value.type.*.data = * method.return_value.type.*[1];
                    method.return_value.type.*.count -= 1;
                    method.return_value.type.* = join("*", method.return_value.type.*);
                }                if contains(method.return_value.type.*, "*") {
                    method.return_value.type.*.count -= 1;
                    method.return_value.type.* = join("*", method.return_value.type.*);
                }
                if contains(method.return_value.type.*, "ExtensionRay") ||
                    contains(method.return_value.type.*, "ExtensionShape") ||
                    contains(method.return_value.type.*, "ExtensionMotion") ||
                    contains(method.return_value.type.*, "ScriptLanguageExtensionProfilingInfo") continue;
                if method.return_value.type.* == "Variant.Type" method.return_value.type.* = "Variant_Type";
                if method.return_value.type.* == "Vector2.Axis" method.return_value.type.* = "Vector2_Axis";
                if method.return_value.type.* == "Vector2i.Axis" method.return_value.type.* = "Vector2_Axis";
                if method.return_value.type.* == "Vector3.Axis" method.return_value.type.* = "Vector3_Axis";
                if method.return_value.type.* == "Vector3i.Axis" method.return_value.type.* = "Vector3_Axis";
                if method.return_value.type.* == "Vector4.Axis" method.return_value.type.* = "Vector4_Axis";
                if method.return_value.type.* == "Vector4i.Axis" method.return_value.type.* = "Vector4_Axis";
                if method.return_value.type.* == "Projection.Planes" method.return_value.type.* = "Projection_Planes";
                if method.return_value.type.* == "String" method.return_value.type.* = "gstring";
                if method.return_value.type.* == "[] String" method.return_value.type.* = "[] gstring";
                // if method.return_value.type.* == "String" method.return_value.type.* = "string";
                // if method.return_value.type.* == "[] String" method.return_value.type.* = "[] string";
                // if method.return_value.type.* == "StringName" method.return_value.type.* = "string";
                // if method.return_value.type.* == "[] StringName" method.return_value.type.* = "[] string";
                if method.return_value.type.* == "*int32_t" method.return_value.type.* = "*s32";
                if method.return_value.type.* == "**uint8_" method.return_value.type.* = "**u8";
                if method.return_value.type.* == "*uint8_t" method.return_value.type.* = "*u8";
                print_to_builder(*builder, "%", method.return_value.type.*);
		// NOTE: switch back for gstring
                // if method.return_value.type.* == "string" method.return_value.type.* = "gstring";
                // if method.return_value.type.* == "[] string" method.return_value.type.* = "[] gstring";
            } else { append(*builder, ")"); }

            append(*builder, " { ");
            if method.return_value print_to_builder(*builder, "call_ret := cast(*%) sys_call(\"%\", \"%\", %, %, main", method.return_value.type.*, class.name, method.name, method.hash, method.return_value.type.*);
            else print_to_builder(*builder, "sys_call(\"%\", \"%\", %, Nil, main", class.name, method.name, method.hash);
            for method.arguments {
                if it.default_value != null continue; // TEMP
                print_to_builder(*builder, ", %", it.name);
            }
            append(*builder, "); ");
            if method.return_value {
                is_godot_class := false;
                for godot_classes {
                    if method.return_value.type.* == it is_godot_class = true;
                }
                if is_godot_class append(*builder, "return call_ret;");
                else print_to_builder(*builder, "return call_ret.*;");
            }
            print_to_builder(*builder, " }  // %\n", it_index);
        }

        append(*builder, "\n");
    }

    for * class: godot_api.builtin_classes {
        // variant_get_ptr_builtin_method();
        // for * method: class.methods {
        //     if method.name == "remove" method.name = "_remove";
        //     if method.name == "push_context" method.name = "_push_context";
        //     if class.name == "String" class.name = "gstring";
        //     print_to_builder(*builder, "% :: (main: *%", method.name, class.name);
        //     for * method.arguments {
        //         if it.default_value != null continue; // TEMP
        //         if it.name == "operator" it.name = "_operator";
        //         if it.name == "enum" it.name = "_enum";
        //         if it.name == "interface" it.name = "_interface";
        //         if it.name == "context" it.name = "_context";
        //         if it.name == "RID" it.name = "rid";
        //         if it.name == "bool" it.name = "_bool";
        //         if it.name == "string" it.name = "_string";
        //         if contains(it.type.*, "enum::") {
        //             it.type.*.data = * it.type.*[6];
        //             it.type.*.count -= 6;
        //         }
        //         else if contains(it.type.*, "typedarray::") {
        //             it.type.*.data = * it.type.*[12];
        //             it.type.*.count -= 12;
        //             it.type.* = join("[] ", it.type.*);
        //         }
        //         else if contains(it.type.*, "bitfield::") {
        //             it.type.*.data = * it.type.*[10];
        //             it.type.*.count -= 10;
        //         }
        //         if contains(it.type.*, "const") {
        //             it.type.*.data = * it.type.*[6];
        //             it.type.*.count -= 6;
        //         }
        //         if contains(it.type.*, "**") {
        //             it.type.*.count -= 3;
        //             it.type.* = join("*", it.type.*);
        //         }
        //         if contains(it.type.*, "**") {
        //             it.type.*.data = * it.type.*[1];
        //             it.type.*.count -= 1;
        //             it.type.* = join("*", it.type.*);
        //         }                if contains(it.type.*, "*") {
        //             it.type.*.count -= 1;
        //             it.type.* = join("*", it.type.*);
        //         }
        //         if contains(it.type.*, "ExtensionRay") ||
        //             contains(it.type.*, "ExtensionShape") ||
        //             contains(it.type.*, "ExtensionMotion") ||
        //             contains(it.type.*, "ScriptLanguageExtensionProfilingInfo") continue;
        //         if it.type.* == "NodePath" it.type.* = "string";
        //         if it.type.* == "Variant.Type" it.type.* = "Variant_Type";
        //         if it.type.* == "Vector2.Axis" it.type.* = "Vector2_Axis";
        //         if it.type.* == "Vector2i.Axis" it.type.* = "Vector2_Axis";
        //         if it.type.* == "Vector3.Axis" it.type.* = "Vector3_Axis";
        //         if it.type.* == "Vector3i.Axis" it.type.* = "Vector3_Axis";
        //         if it.type.* == "Vector4.Axis" it.type.* = "Vector4_Axis";
        //         if it.type.* == "Vector4i.Axis" it.type.* = "Vector4_Axis";
        //         if it.type.* == "Projection.Planes" it.type.* = "Projection_Planes";
        //         if it.type.* == "String" it.type.* = "string";
        //         if it.type.* == "[] String" it.type.* = "[] string";
        //         if it.type.* == "StringName" it.type.* = "string";
        //         if it.type.* == "[] StringName" it.type.* = "[] string";
        //         if it.type.* == "*int32_t" it.type.* = "*s32";
        //         if it.type.* == "**uint8_" it.type.* = "**u8";
        //         if it.type.* == "*uint8_t" it.type.* = "*u8";
        //         print_to_builder(*builder, ", %: %", it.name, it.type.*);
        //     }

        //     if method.return_type {
        //         append(*builder, ") -> ");
        //         // This is just awful... TODO refactor
        //         if contains(method.return_type.*, "enum::") {
        //             method.return_type.*.data = * method.return_type.*[6];
        //             method.return_type.*.count -= 6;
        //         }
        //         else if contains(method.return_type.*, "typedarray::") {
        //             method.return_type.*.data = * method.return_type.*[12];
        //             method.return_type.*.count -= 12;
        //             method.return_type.* = join("[] ", method.return_type.*);
        //         }
        //         else if contains(method.return_type.*, "bitfield::") {
        //             method.return_type.*.data = * method.return_type.*[10];
        //             method.return_type.*.count -= 10;
        //         }
        //         if contains(method.return_type.*, "const") {
        //             method.return_type.*.data = * method.return_type.*[6];
        //             method.return_type.*.count -= 6;
        //         }
        //         if contains(method.return_type.*, "**") {
        //             method.return_type.*.count -= 3;
        //             method.return_type.* = join("*", method.return_type.*);
        //         }
        //         if contains(method.return_type.*, "**") {
        //             method.return_type.*.data = * method.return_type.*[1];
        //             method.return_type.*.count -= 1;
        //             method.return_type.* = join("*", method.return_type.*);
        //         }                if contains(method.return_type.*, "*") {
        //             method.return_type.*.count -= 1;
        //             method.return_type.* = join("*", method.return_type.*);
        //         }
        //         if contains(method.return_type.*, "ExtensionRay") ||
        //             contains(method.return_type.*, "ExtensionShape") ||
        //             contains(method.return_type.*, "ExtensionMotion") ||
        //             contains(method.return_type.*, "ScriptLanguageExtensionProfilingInfo") continue;
        //         if method.return_type.* == "Variant.Type" method.return_type.* = "Variant_Type";
        //         if method.return_type.* == "Vector2.Axis" method.return_type.* = "Vector2_Axis";
        //         if method.return_type.* == "Vector2i.Axis" method.return_type.* = "Vector2_Axis";
        //         if method.return_type.* == "Vector3.Axis" method.return_type.* = "Vector3_Axis";
        //         if method.return_type.* == "Vector3i.Axis" method.return_type.* = "Vector3_Axis";
        //         if method.return_type.* == "Vector4.Axis" method.return_type.* = "Vector4_Axis";
        //         if method.return_type.* == "Vector4i.Axis" method.return_type.* = "Vector4_Axis";
        //         if method.return_type.* == "Projection.Planes" method.return_type.* = "Projection_Planes";
        //         if method.return_type.* == "String" method.return_type.* = "gstring";
        //         if method.return_type.* == "[] String" method.return_type.* = "[] gstring";
        //         // if method.return_type.* == "StringName" method.return_type.* = "string";
        //         // if method.return_type.* == "[] StringName" method.return_type.* = "[] string";
        //         if method.return_type.* == "*int32_t" method.return_type.* = "*s32";
        //         if method.return_type.* == "**uint8_" method.return_type.* = "**u8";
        //         if method.return_type.* == "*uint8_t" method.return_type.* = "*u8";
        //         print_to_builder(*builder, "%", method.return_type.*);
        //     } else { append(*builder, ")"); }

        //     append(*builder, " { ");
        //     if class.name == "gstring" class.name = "String";
        //     if method.return_type print_to_builder(*builder, "call_ret := cast(*%) sys_call(\"%\", \"%\", %, %, main", method.return_type.*, class.name, method.name, method.hash, method.return_type.*);
        //     else print_to_builder(*builder, "sys_call(\"%\", \"%\", %, Nil, main", class.name, method.name, method.hash);
        //     for method.arguments {
        //         if it.default_value != null continue; // TEMP
        //         print_to_builder(*builder, ", %", it.name);
        //     }
        //     append(*builder, "); ");
        //     if method.return_type {
        //         append(*builder, "return call_ret.*;");
        //     }
        //     print_to_builder(*builder, " }  // %\n", it_index);
        // }

        append(*builder, "\n");
    }

    append(*builder, "// ------ Singletons ------\n\n");

    // Singletons

    for godot_api.singletons {
        print_to_builder(*builder, "S_%: %;\n", it.name, it.name);
    }

    // Size/offset asserts

    append(*builder, "\n#run {\n");

    for godot_api.builtin_class_sizes {
        if it.build_configuration == "float_64" ||
            it.build_configuration == "double_32" ||
            it.build_configuration == "double_64" continue;
        for it.sizes {
            if it.name == "bool" ||
                it.name == "int" ||
                it.name == "float" ||
                it.name == "String" continue;
            print_to_builder(*builder, "    assert(size_of(%) == %);\n", it.name, it.size);
        }
    }

    append(*builder, "}\n");

    append(*builder, GDT_FOOTER);
    code := builder_to_string(*builder);
    write_entire_file("gdt/gdt_bindings.jai", code);
    log("OK! generated 'gdt/gdt_bindings.jai'\n");
}

gdt_visitor :: () {}

#run {

    fill_godot_api();
    gdt_bindings_codegen();
    gdt_visitor();
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

GDT_HEADER :: #string DONE
//  --------------------
// | Jodot gdt bindings |
//  --------------------

DONE

GDT_FOOTER :: #string DONE

// #scope_file
// #import "Hash_Table";
DONE
