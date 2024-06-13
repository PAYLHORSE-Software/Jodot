message_loop :: () {

    print_muted :: (msg: string) {
        log("\x1b[38;5;246m%\x1b[0m", msg);
    }

    print_muted("\n==== METAPROGRAM ====\n");

    tagged_names : [..] string;
    code: string;
    jodot_import: *Message_Import;

    while true {

        message := compiler_wait_for_message();
        if message.kind == {
            case .IMPORT;
                import := cast(*Message_Import) message;
                if equal(import.module_name, "Jodot") {
                    jodot_import = import;
                }

            case .TYPECHECKED;
                typechecked := cast(*Message_Typechecked) message;

                for decl: typechecked.declarations {
                    for note: decl.expression.notes {
                        if equal(note.text, "jodot") {
                            print_muted(tprint("Found extension entity declaration: %\n", decl.expression.name));
                            array_add(*tagged_names, copy_string(decl.expression.name));
                        }
                    }
                }
            case .PHASE;
                phase := cast(*Message_Phase) message;
                if phase.phase == .TYPECHECKED_ALL_WE_CAN {
                    builder: String_Builder;
                    print_to_builder(*builder, "user_class_declarations: [%] ExtensionEntity;\n", tagged_names.count);
                    list_builder: String_Builder;
                    for tagged_names {
                        print_to_builder(*builder, "#placeholder %;\n", it);
                        print_to_builder(*list_builder, "user_class_declarations[%] = %.{}; ", it_index, it);
                    }
                    list := builder_to_string(*list_builder);
                    print_to_builder(*builder, "user_class_declaration_list :: \"%\";\n", list);
                    code := builder_to_string(*builder);
                    print_muted(tprint("ADDING BUILD STRING: %", code));
                    add_build_string(code, jodot_import.workspace, jodot_import);
                    // array_reset(*tagged_names);
                    break;
                }
          case .COMPLETE;
            break;
        }
    }
}

#import "Basic";
#import "Compiler";
#import "String";
