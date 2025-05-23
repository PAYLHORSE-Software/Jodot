message_loop :: (DEMO: bool = false) {

    log_muted("\n---- Jodot Metaprogram ----\n");

    tagged_names : [..] string;
    code: string;
    jodot_import: *Message_Import;

    gen_check := true;
    if DEMO gen_check = file_exists(tprint("%/sys/sys_bindings.jai", #filepath));

    while true {

        if !gen_check {
            log_warn("!! Make sure to run generate.jai! !!");
            break;
        }

        message := compiler_wait_for_message();
        if message.kind == {
            case .IMPORT;
                import := message.(*Message_Import);
                if equal(import.module_name, "Jodot") {
                    jodot_import = import;
                }

            case .TYPECHECKED;
                typechecked := message.(*Message_Typechecked);

                for decl: typechecked.declarations {
                    for note: decl.expression.notes {
                        if equal(note.text, "jodot") {
                            log_glow(tprint("Found extension entity declaration: %\n", decl.expression.name));
                            array_add(*tagged_names, copy_string(decl.expression.name));
                        }
                    }
                }
            case .PHASE;
                phase := message.(*Message_Phase);
                if phase.phase == .TYPECHECKED_ALL_WE_CAN {
                    builder: String_Builder;
                    print_to_builder(*builder, "user_entity_declarations: [%] ExtensionEntity;\n", tagged_names.count);
                    list_builder: String_Builder;
                    poke_builder: String_Builder;
                    for tagged_names {
                        // TODO: better allocation this is sad...
                        // See @shwa entity system: https://discord.com/channels/661732390355337246/784843664651190273/1253563063978692608
                        code := #string DONE
                        #placeholder %;
                        entities_%: [64] %;
                        cursor_%: u16;
                        DONE
                        print_to_builder(*builder, code, it, it, it, it);
                        print_to_builder(*list_builder, "user_entity_declarations[%] = %.{}; ", it_index, it);
                    }
                    list := builder_to_string(*list_builder);
                    print_to_builder(*builder, "user_entity_declaration_list :: \"%\";\n", list);
                    // ----------
                    case_builder: String_Builder;
                    init_string_builder(*case_builder);
                    append(*case_builder, "if extension_entity.type == {");
                    for tagged_names {
                        print_to_builder(*case_builder, "case %;", it);
                        print_to_builder(*case_builder, " object_set_instance(p_object, p_class_name, *entities_%[cursor_%]);", it, it);
                        print_to_builder(*case_builder, " entities_%[cursor_%].p_object = p_object;", it, it);
                        print_to_builder(*case_builder, " entities_%[cursor_%].object_id = object_get_instance_id(p_object);", it, it);
                        print_to_builder(*case_builder, " entities_%[cursor_%].ID = cursor_%;", it, it, it);
                        print_to_builder(*case_builder, " cursor_% += 1;", it);
                    }
                    append(*case_builder, "}");
                    cases := builder_to_string(*case_builder);
                    print_to_builder(*builder, "user_entity_case :: \"%\";\n", cases);
                    // ----------
                    code := builder_to_string(*builder);
                    log_muted(tprint("ADDING BUILD STRING: %", code));
                    add_build_string(code, jodot_import.workspace, jodot_import);
                    // array_reset(*tagged_names);
                    break;
                }
        }
    }
}

#scope_file

#import "Basic";
#import "Compiler";
#import "String";
#import "File_Utilities";

log_muted :: (msg: string) {
    log("\x1b[38;5;246m%\x1b[0m", msg);
}

log_warn :: (msg: string) {
    log("\x1b[38;5;180m%\x1b[0m", msg);
}

log_glow :: (msg: string) {
    log("\x1b[1;38;5;230m%\x1b[0m", msg);
}
