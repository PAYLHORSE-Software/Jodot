Extension_Entity_Declaration :: struct {
    name: string;
    export_members: [..] Type_Info_Struct_Member;
}

message_loop :: (DEMO: bool = false) {

    log_muted("\n---- Jodot Metaprogram ----\n");

    entity_declarations: [..] Extension_Entity_Declaration;
    method_declarations: [..] Code_Procedure_Header;
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
              
                message_tc := message.(*Message_Typechecked);

                for typechecked_struct: message_tc.structs {
                    struc := typechecked_struct.expression;
                    for note: struc.notes {
                        if equal(note.text, "jodot") {
                            
                            process_jodot_struct(struc);
                        }
                    }
                }

                for typechecked_proc: message_tc.procedure_headers {
                    proc := typechecked_proc.expression;
                    for note: proc.notes {
                        if equal(note.text, "method") {
                            
                            log("Found @method declaration: %", proc.name);
                            // TODO check that method is valid
                            array_add(*method_declarations, proc);
                        }
                    }
                }
            
            case .PHASE;
              
                message_p := message.(*Message_Phase);
                if message_p.phase == .TYPECHECKED_ALL_WE_CAN {
                    builder: String_Builder;
                    print_to_builder(*builder, "user_entity_declarations: [%] Extension_Entity;\n", entity_declarations.count);
                    list_builder: String_Builder;
                    export_builder: String_Builder;
                    
                    for entity_declarations {

                        name := it.name;
                        
                        // TODO: better allocation this is sad...
                        // See @shwa entity system: https://discord.com/channels/661732390355337246/784843664651190273/1253563063978692608
                        code := #string DONE
                        #placeholder %;
                        entities_%: [64] %;
                        cursor_%: u16;
                        DONE
                        print_to_builder(*builder, code, name, name, name, name);
                        print_to_builder(*list_builder, "user_entity_declarations[%] = %.{}; ", it_index, name);

                        // @export members
                        for member: it.export_members {
                            getter := tprint(getter_template, name, member.name, name, type_from_type_info(member.type), member.name);
                            setter := tprint(setter_template, name, member.name, name, type_from_type_info(member.type), member.name);
                            // Remove newline
                            getter.count -= 1;
                            setter.count -= 1;
                            append(*export_builder, getter);
                            append(*export_builder, setter);

                            print_to_builder(*export_builder, "register_extension_entity_method(\\\"get_%\\\", \\\"%\\\", xx _%_get_%, type_info(type_of(_%_get_%))); ", member.name, name, name, member.name, name, member.name);
                            print_to_builder(*export_builder, "register_extension_entity_method(\\\"set_%\\\", \\\"%\\\", xx _%_set_%, type_info(type_of(_%_set_%))); ", member.name, name, name, member.name, name, member.name);
                            
                            print_to_builder(*export_builder, "register_extension_entity_property(\\\"%\\\", \\\"%\\\", type_info(type_of(%.%))); ", member.name, name, name, member.name);
                        }

                        
                        // methods
                        for proc: method_declarations {
                            // Get type from *type
                            ti := proc.arguments[0].type.(*Type_Info_Pointer);
                            self_type := type_from_type_info(ti.pointer_to);
                            print_to_builder(*export_builder, "register_extension_entity_method(\\\"%\\\", \\\"%\\\", xx %, type_info(type_of(%))); ", proc.name, self_type, proc.name, proc.name);
                        }
                    }
                    
                    list := builder_to_string(*list_builder);
                    export := builder_to_string(*export_builder);
                    print_to_builder(*builder, "user_entity_declaration_list :: \"%\";\n", list);
                    print_to_builder(*builder, "user_entity_exports :: \"%\";\n", export);
                    // ----------
                    case_builder: String_Builder;
                    init_string_builder(*case_builder);
                    append(*case_builder, "if extension_entity.type == {");
                    
                    // NOTE: this lands within class_create_instance()
                    for entity_declarations {
                        name := it.name;
                        
                        print_to_builder(*case_builder, "case %;", name);
                        print_to_builder(*case_builder, " object_set_instance(p_object, p_class_name, *entities_%[cursor_%]);", name, name);
                        print_to_builder(*case_builder, " entities_%[cursor_%].p_object = p_object;", name, name);
                        print_to_builder(*case_builder, " entities_%[cursor_%].object_id = object_get_instance_id(p_object);", name, name);
                        print_to_builder(*case_builder, " entities_%[cursor_%].ID = cursor_%;", name, name, name);
                        print_to_builder(*case_builder, " cursor_% += 1;", name);
                    }
                    
                    append(*case_builder, "}");
                    cases := builder_to_string(*case_builder);
                    print_to_builder(*builder, "user_entity_case :: \"%\";\n", cases);
                    // ----------
                    code := builder_to_string(*builder);
                    log_muted("ADDING BUILD STRING:\n%", code);
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
#import "Global_Utilities";

process_jodot_struct :: (struc: *Code_Struct) #expand {
    
    declaration: Extension_Entity_Declaration;
    
    declaration.name = struc.defined_type.name;
    log_glow(tprint("Found @jodot extension entity declaration: %", declaration.name));
    
    for member: struc.defined_type.members {
        // log_glow(tprint("  Member: %\n", member.name));
        is_export := false;
        for note: member.notes {
            if equal(note, "export") {
                is_export = true;
            }
        }
        if !is_export continue;
        else array_add(*declaration.export_members, member);
        log_glow(tprint("  @export member: %\n", member.name));
    }
    
    array_add(*`entity_declarations, declaration);
}

getter_template :: #string DONE
_%_get_% :: (self: *%) -> % { return self.%; } 
DONE

setter_template :: #string DONE
_%_set_% :: (self: *%, arg: %) { self.% = arg; } 
DONE
