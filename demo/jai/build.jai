// == LOGGING ==
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

build :: () {
    w := compiler_create_workspace();

    options := get_build_options();

    using options;

    output_type = .DYNAMIC_LIBRARY;
    output_executable_name = "demo";
    output_path = "bin";
    entry_point_name = "jodot_init";
    runtime_support_definitions = .ONLY_INIT;
    import: [2] string;
    import[0] = "../../..";
    import[1] = "src";
    import_view: [] string;
    import_view = import;
    import_path = import_view;
    set_build_options(options, w);

    compiler_begin_intercept(w, .SKIP_EXPRESSIONS_WITHOUT_NOTES);

    add_build_file("src/main.jai", w);

    message_loop();

    compiler_end_intercept(w);

    set_build_options_dc(.{do_output=false});
}

message_loop :: () #expand {
    print_muted("\n==== METAPROGRAM ====\n");

    tagged_names : [..] string;
    jodot_import: Message_Import;
    jodot_module_file: Message_File;
    code: string;

    while true {

        message := compiler_wait_for_message();
        if message.kind == {
            case .FILE;
                message_file := cast(*Message_File) message;

                print_muted(tprint("  Loading file '%'.\n", message_file.fully_pathed_filename));


            case .IMPORT;
                import := cast(*Message_Import) message;
                print_muted(tprint("  Importing module '%'.\n", import.module_name));
                if equal(import.module_name, "Jodot") {
                    jodot_import = import;
                    print_affirm("DING!\n");
                }

            case .TYPECHECKED;
                typechecked := cast(*Message_Typechecked) message;

                for decl: typechecked.declarations {
                    for note: decl.expression.notes {
                        if equal(note.text, "godot") {
                            print_affirm(tprint("Found extension class declaration: %\n", decl.expression.name));
                            array_add(*tagged_names, copy_string(decl.expression.name));
                        }
                    }
                }
            case .PHASE;
                phase := cast(*Message_Phase) message;
                print_muted(tprint("--- Entering phase %. ---\n", phase.phase));
                if phase.phase == .TYPECHECKED_ALL_WE_CAN {
                    builder: String_Builder;
                    // print_to_builder(*builder, "#scope_module\n");
                    print_to_builder(*builder, "user_class_declarations: [%] ExtensionClass;\n", tagged_names.count);
                    list_builder: String_Builder;
                    for tagged_names {
                        print_to_builder(*list_builder, "user_class_declarations[%] = %.{};", it_index, it);
                    }
                    list := builder_to_string(*list_builder);
                    print_to_builder(*builder, "user_class_declaration_list :: \"%\";\n", list);
                    print_muted(tprint("ADDING BUILD STRING: %", builder_to_string(*builder)));
                    add_build_string(builder_to_string(*builder), `w, jodot_import);
                    array_reset(*tagged_names);
                }
          case .COMPLETE;
            break;
        }
    }
}


#run build();

#import "Basic";
#import "Compiler";
#import "String";
