//  -------------------------
//  Extension Entity Registration

// Wrapper struct for extension classes
Extension_Entity :: struct {

    type : Type = void;
    parent_type: Type;

    ID : u16 = U16_MAX;

    _ready : #type (cast_me: *Extension_Entity) = null;
    _process : #type (cast_me: *Extension_Entity, delta: float64) = null;
    _physics_process : #type (cast_me: *Extension_Entity, delta: float64) = null;
    _input : #type (cast_me: *Extension_Entity, event: *InputEvent) = null;
    _enter_tree : #type (cast_me: *Extension_Entity) = null;
    _exit_tree : #type (cast_me: *Extension_Entity) = null;

    brief_desc: string = "Extension Entity defined in Jodot.";
    desc: string;
}

// ----------------------
// Node Virtual Functions

get_virtual_call_data_fn :: (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr, p_hash: u32) -> *void #c_call {
    return p_class_userdata;
}

call_virtual_with_data_fn :: (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, p_virtual_call_userdata: *void, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) #c_call {
    push_context jodot_ctx {
        sn_vfn: StringName;
        memcpy(*sn_vfn, p_name, size_of(StringName));
        instance := p_instance.(*Extension_Entity);
        entity := p_virtual_call_userdata.(*Extension_Entity);

        // ready proc
        if sn_equal(sn_vfn, vfn_stringnames[0]) {
            if entity._ready != null {
                entity._ready(instance);
            }
        // process proc
        } else if sn_equal(sn_vfn, vfn_stringnames[1]) {
            if entity._process != null {
                delta: float64;
                memcpy(*delta, p_args.*, size_of(float64));
                entity._process(instance, delta);
            }
        // physics_process proc
        } else if sn_equal(sn_vfn, vfn_stringnames[2]) {
            if entity._physics_process != null {
                delta: float64;
                memcpy(*delta, p_args.*, size_of(float64));
                entity._physics_process(instance, delta);
            }
        // input proc
        } else if sn_equal(sn_vfn, vfn_stringnames[3]) {
            if entity._input != null {
                event: InputEvent;
                event.p_object = ref_get_object(p_args.*);
                entity._input(instance, *event);
            }
        // enter_tree proc
        } else if sn_equal(sn_vfn, vfn_stringnames[4]) {
            if entity._enter_tree != null {
                entity._enter_tree(instance);
            }
        // exit_tree proc
        } else if sn_equal(sn_vfn, vfn_stringnames[5]) {
            if entity._exit_tree != null {
                entity._exit_tree(instance);
            }
        }
    }
}

// --------
// Memalloc

class_create_instance :: (p_class_userdata: *void, p_notify_postinitialize: GDExtensionBool) -> GDExtensionObjectPtr #c_call {

    push_context jodot_ctx {
        extension_entity := p_class_userdata.(*Extension_Entity);
        p_class_name := make_stringname(tprint("%", extension_entity.type), null);
        p_parent_class_name := make_stringname(tprint("%", extension_entity.parent_type), null);
        p_object := classdb_construct_object2(p_parent_class_name);
        push_context jodot_ctx {
            // log_muted(tprint("** New extension entity: % **", extension_entity.type));
            #insert user_entity_case;
        }

        // if DEBUG print("++++++ p_object: % ++++++\n", p_object);
        return p_object;
    }
}

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) #c_call {

    push_context jodot_ctx {
        // TODO: free here once we have better allocation @Incomplete
    }
}

register_extension_entities :: () {

    class_creation_info := GDExtensionClassCreationInfo4.{
        is_virtual = 0,
        is_abstract = 0,
        is_exposed = 1,
        is_runtime = 1,
        create_instance_func = class_create_instance,
        free_instance_func = class_free_instance,
        //     recreate_instance_func
        //     get_virtual_func = get_virtual_func,
        get_virtual_call_data_func = get_virtual_call_data_fn,
        call_virtual_with_data_func = call_virtual_with_data_fn,
        //     get_rid_func
    };

    class_help_xml_list = NewArray(user_entity_declarations.count, string);

    for it_index: 0..user_entity_declarations.count - 1 {
        if user_entity_declarations[it_index].type == void break;
        // TODO: verify that extension classes are valid?
        class_name := tprint("%", user_entity_declarations[it_index].type);
        parent_class_name := tprint("%", user_entity_declarations[it_index].parent_type);
        p_class_name := make_stringname(class_name, null);
        p_parent_class_name := make_stringname(parent_class_name, null);

        class_creation_info.class_userdata = *user_entity_declarations[it_index];

        classdb_register_extension_class4(
            P_LIBRARY,
            p_class_name,
            p_parent_class_name,
            *class_creation_info
        );

        tag := classdb_get_class_tag(p_class_name);
        if tag == null print_error_with_message(null, "Extension entity registration failed!", null, "Jodot", 0, 1);
        log_affirm(tprint("Extension entity registered: %", user_entity_declarations[it_index].type));

        // Class Documentation
        class_help_xml_list[it_index] = sprint(class_help_xml, class_name, parent_class_name, user_entity_declarations[it_index].brief_desc, user_entity_declarations[it_index].desc);
    }
}

//  ---------------------------
//  Godot Class Object Creation

// @ObjectLimit
GDT_OBJECT_LIMIT :: 1024;
gdt_objects: [GDT_OBJECT_LIMIT] Godot_Class;
gdt_objects_cursor: u16;

new_gdt :: inline ($gdt_type: Type) -> *gdt_type {
    
    name := tprint("%", gdt_type);
    p_sn := make_stringname(name, null);
    p_object := classdb_construct_object2(p_sn);
    
    // Option: array allocation
    // if gdt_objects_cursor >= 1024 assert(false, "gdt object allocation limit reached! Increase limit at tag @ObjectLimit");
    // object := gdt_objects[gdt_objects_cursor];
    // gdt_objects_cursor += 1;
    
    // Option: stack allocation
    object: gdt_type;
    // object_set_instance(p_object, p_sn, object);
    object.p_object = p_object;
    object.object_id = object_get_instance_id(p_object);
    NOTIFICATION_POSTINITIALIZE :: 0;
    propagate_notification((*object).(*Node), NOTIFICATION_POSTINITIALIZE);
    
    return *object;
}

//  --------------------------------
//  Extension Entity 'Method' Registration

// NOTE: only single arguments or single returns supported for now
// (getters, setters and () procedures)
register_extension_entity_method :: (proc_name: string, entity_name: string, p_proc: *void, proc_type_info: Type_Info_Procedure) {
    
    arg_count := proc_type_info.argument_types.count;
    ret_count := proc_type_info.return_types.count;
    
    assert(ret_count <= 1, "Can't export an extension entity method with multiple return values!");
    assert(arg_count <= 2, "Extension entity method with greater than two arguments - only getters, setters and () procedures supported atm!");
    assert(!(arg_count == 2 && ret_count > 0), "Extension entity method with both arguments and return - only getters, setters and () procedures supported atm!");
    
    ret_var_type: GDExtensionVariantType;
    arg_var_type: GDExtensionVariantType;
    
    ret_property_info: GDExtensionPropertyInfo;
    arg_property_info: GDExtensionPropertyInfo;

    method_info: GDExtensionClassMethodInfo;

    p_empty_stringname := make_stringname("", null);
    
    if ret_count >= 1 {
        
        // getter
        
        if proc_type_info.return_types[0].type == {
            
            case .INTEGER;
              ret_var_type = .INT;
            case .FLOAT;
              ret_var_type = .FLOAT;
            case .BOOL;
              ret_var_type = .BOOL;
            case .STRING;
              ret_var_type = .STRING;
            
            // GodotClass?
            case .POINTER;
            case .STRUCT;
              
            case .ENUM;
        };
        
        if ret_var_type == .NIL assert(false, "Exported extension entity method has unsupported return value!");
        
        ret_property_info = .{
            type = ret_var_type,
            name = p_empty_stringname,
            hint_string = p_empty_stringname,
            class_name = p_empty_stringname,
            usage = xx PropertyUsageFlags.PROPERTY_USAGE_DEFAULT
        };

        method_info = make_method_info_getter(proc_name, p_proc, ret_property_info);
        
    } else if arg_count >= 2 {
        
        // setter
        
        assert(proc_type_info.argument_types[0].type == .POINTER, "Extension class method first argument should be a pointer to self!");
        
        if proc_type_info.argument_types[1].type == {
            
            case .INTEGER;
              arg_var_type = .INT;
            case .FLOAT;
              arg_var_type = .FLOAT;
            case .BOOL;
              arg_var_type = .BOOL;
            case .STRING;
              arg_var_type = .STRING;
            
            // GodotClass?
            case .POINTER;
            case .STRUCT;
              
            case .ENUM;
        };
        
        if arg_var_type == .NIL assert(false, "Exported extension entity method has unsupported return value!");
        
        arg_property_info = .{
            type = arg_var_type,
            name = p_empty_stringname,
            hint_string = p_empty_stringname,
            class_name = p_empty_stringname,
            usage = xx PropertyUsageFlags.PROPERTY_USAGE_DEFAULT
        };

        method_info = make_method_info_setter(proc_name, p_proc, arg_property_info);
        
    } else method_info = make_method_info_proc(proc_name, p_proc); // () procedure

    p_entity_stringname := make_stringname(entity_name, null);
    
    classdb_register_extension_class_method(P_LIBRARY, p_entity_stringname, *method_info);
}

make_method_info_proc :: inline (proc_name: string, p_proc: *void) -> GDExtensionClassMethodInfo {
    
    call_func := call_no_args_no_ret;
    ptrcall_func := ptrcall_no_args_no_ret;
    
    return .{
        name = make_stringname(proc_name, null),
        method_userdata = p_proc,
        call_func = call_func,
        ptrcall_func = ptrcall_func,
        method_flags = xx GDExtensionClassMethodFlags.FLAGS_DEFAULT
    };
}

make_method_info_getter :: inline (proc_name: string, p_proc: *void, ret_property_info: GDExtensionPropertyInfo) -> GDExtensionClassMethodInfo {

    call_func: GDExtensionClassMethodCall;
    ptrcall_func: GDExtensionClassMethodPtrCall;
    
    if ret_property_info.type == {
        case .INT;
        case .FLOAT;
          call_func = call_args_ret_float;
          ptrcall_func = ptrcall_args_ret_float;
        case .BOOL;
        case .STRING;
    }
    
    return .{
        name = make_stringname(proc_name, null),
        method_userdata = p_proc,
        call_func = call_func,
        ptrcall_func = ptrcall_func,
        method_flags = xx GDExtensionClassMethodFlags.FLAGS_DEFAULT,
        has_return_value = 1,
        return_value_info = *ret_property_info
    };
}

make_method_info_setter :: inline (proc_name: string, p_proc: *void, arg_property_info: GDExtensionPropertyInfo) -> GDExtensionClassMethodInfo {

    call_func: GDExtensionClassMethodCall;
    ptrcall_func: GDExtensionClassMethodPtrCall;
    
    if arg_property_info.type == {
        case .INT;
        case .FLOAT;
          call_func = call_float_arg_no_ret;
          ptrcall_func = ptrcall_float_arg_no_ret;
        case .BOOL;
        case .STRING;
    }
    
    arg_meta := GDExtensionClassMethodArgumentMetadata.NONE;
    
    return .{
        name = make_stringname(proc_name, null),
        method_userdata = p_proc,
        call_func = call_func,
        ptrcall_func = ptrcall_func,
        method_flags = xx GDExtensionClassMethodFlags.FLAGS_DEFAULT,
        argument_count = 1,
        arguments_info = *arg_property_info,
        arguments_metadata = *arg_meta
    };
}

// () procedure

ptrcall_no_args_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        // Cast method_userdata to function pointer
        proc := method_userdata.((*void));
        // Call function
        proc(p_instance);
    }    
}

call_no_args_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        proc := method_userdata.((*void));
        proc(p_instance);
    }
}
    
// int getter or setter

ptrcall_args_ret_int :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        // Cast method_userdata to function pointer
        proc := method_userdata.((*void) -> int);
        // Call function and store result in r_ret
        (r_ret.(*int)).* = proc(p_instance);
    }
}

ptrcall_int_arg_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        proc := method_userdata.((*void, int));
        proc(p_instance, p_args.(*int).*);
    }
}

call_args_ret_int :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        if p_argument_count != 0 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS;
            r_error.expected = 0;
            return;
        }

        proc := method_userdata.((*void) -> float64);
        result := proc(p_instance);

        variant_from_float(r_return, *result);
    }
}

call_int_arg_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        if p_argument_count < 1 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_FEW_ARGUMENTS;
            r_error.expected = 1;
            return;
        } else if p_argument_count > 1 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS;
            r_error.expected = 1;
            return;
        }
 
        type := variant_get_type(p_args);
        if type != .INT {
            r_error.error = .GDEXTENSION_CALL_ERROR_INVALID_ARGUMENT;
            r_error.expected = xx GDExtensionVariantType.INT;
            r_error.argument = 0;
            return;
        }

        arg: int;
        variant_to_float(*arg, p_args);

        proc := method_userdata.((*void, int));
        proc(p_instance, arg);
    }
}

// float getter or setter

ptrcall_args_ret_float :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        proc := method_userdata.((*void) -> float64);
        (r_ret.(*float64)).* = proc(p_instance);
    }
}

ptrcall_float_arg_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        proc := method_userdata.((*void, float64));
        proc(p_instance, p_args.(*float64).*);
    }
}

call_args_ret_float :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        if p_argument_count != 0 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS;
            r_error.expected = 0;
            return;
        }

        proc := method_userdata.((*void) -> float64);
        result := proc(p_instance);

        variant_from_float(r_return, *result);
    }
}

call_float_arg_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        if p_argument_count < 1 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_FEW_ARGUMENTS;
            r_error.expected = 1;
            return;
        } else if p_argument_count > 1 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS;
            r_error.expected = 1;
            return;
        }
 
        type := variant_get_type(p_args);
        if type != .FLOAT {
            r_error.error = .GDEXTENSION_CALL_ERROR_INVALID_ARGUMENT;
            r_error.expected = xx GDExtensionVariantType.FLOAT;
            r_error.argument = 0;
            return;
        }

        arg: float64;
        variant_to_float(*arg, p_args);

        proc := method_userdata.((*void, float64));
        proc(p_instance, arg);
    }
}

// bool getter or setter

ptrcall_args_ret_bool :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        proc := method_userdata.((*void) -> bool);
        (r_ret.(*bool)).* = proc(p_instance);
    }
}

ptrcall_bool_arg_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void  #c_call {
    push_context jodot_ctx {

        proc := method_userdata.((*void, bool));
        proc(p_instance, p_args.(*bool).*);
    }
}

call_args_ret_bool :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        if p_argument_count != 0 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS;
            r_error.expected = 0;
            return;
        }

        proc := method_userdata.((*void) -> bool);
        result := proc(p_instance);

        variant_from_bool(r_return, *result);
    }
}

call_bool_arg_no_ret :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call {
    push_context jodot_ctx {

        if p_argument_count < 1 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_FEW_ARGUMENTS;
            r_error.expected = 1;
            return;
        } else if p_argument_count > 1 {
            r_error.error = .GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS;
            r_error.expected = 1;
            return;
        }
 
        type := variant_get_type(p_args);
        if type != .BOOL {
            r_error.error = .GDEXTENSION_CALL_ERROR_INVALID_ARGUMENT;
            r_error.expected = xx GDExtensionVariantType.BOOL;
            r_error.argument = 0;
            return;
        }

        arg: bool;
        variant_to_bool(*arg, p_args);

        proc := method_userdata.((*void, bool));
        proc(p_instance, arg);
    }
}

//  --------------------------------------
//  Extension Entity Property Registration

register_extension_entity_property :: (property_name: string, entity_name: string, property_type_info: Type_Info) {
 
    var_type: GDExtensionVariantType;
    
    if property_type_info.type == {
        
        case .INTEGER;
          var_type = .INT;
        case .FLOAT;
          var_type = .FLOAT;
        case .BOOL;
          var_type = .BOOL;
        case .STRING;
          var_type = .STRING;
        
        // GodotClass?
        case .POINTER;
        case .STRUCT;
          
        case .ENUM;
    };

    if var_type == .NIL assert(false, "Exported extension entity property is of unsupported type!");
    
    p_empty_stringname := make_stringname("", null);
    
    p_property_stringname := make_stringname(property_name, null);
    p_entity_stringname := make_stringname(entity_name, null);

    p_setter_stringname := make_stringname(tprint("set_%", property_name), null);
    p_getter_stringname := make_stringname(tprint("get_%", property_name), null);
    
    property_info := GDExtensionPropertyInfo.{
        type = var_type,
        name = p_property_stringname,
        hint_string = p_empty_stringname,
        class_name = p_empty_stringname,
        usage = xx PropertyUsageFlags.PROPERTY_USAGE_DEFAULT
    };
    
    classdb_register_extension_class_property(
        P_LIBRARY,
        p_entity_stringname,
        *property_info,
        p_setter_stringname,
        p_getter_stringname
    );
}

class_help_xml_list: [] string;

class_help_xml :: #string DONE
<?xml version="1.0" encoding="UTF-8" ?>
<class name="%" inherits="%" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="https://raw.githubusercontent.com/godotengine/godot/master/doc/class.xsd">
	<brief_description> %
	</brief_description>
	<description> %
	</description>
	<tutorials>
	</tutorials>
	<methods>
		<method name="get_testing">
			<return type="float" />
			<description>
			</description>
		</method>
	</methods>
</class>
DONE
