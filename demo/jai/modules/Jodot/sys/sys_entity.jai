//  ---------------------------
// | Custom Class Registration |
//  ---------------------------

// Wrapper struct for extension classes
ExtensionEntity :: struct {

    type : Type = void;
    parent_type: Type;

    ID : u16 = U16_MAX;

    _ready : #type (cast_me: *ExtensionEntity) = null;
    _process : #type (cast_me: *ExtensionEntity, delta: float64) = null;
    _physics_process : #type (cast_me: *ExtensionEntity, delta: float64) = null;
    _input : #type (cast_me: *ExtensionEntity, event: *InputEvent) = null;
    _enter_tree : #type (cast_me: *ExtensionEntity) = null;
    _exit_tree : #type (cast_me: *ExtensionEntity) = null;
}

class_create_info :: GDExtensionClassCreationInfo3.{
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

// ----------------------
// Node Virtual Functions

get_virtual_call_data_fn :: (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> *void #c_call {
    return p_class_userdata;
}

call_virtual_with_data_fn :: (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, p_virtual_call_userdata: *void, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) #c_call {
    push_context jodot_ctx {
        sn_vfn: StringName;
        memcpy(*sn_vfn, p_name, size_of(StringName));
        instance := p_instance.(*ExtensionEntity);
        entity := p_virtual_call_userdata.(*ExtensionEntity);

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

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {

    push_context jodot_ctx {
        extension_entity := p_class_userdata.(*ExtensionEntity);
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

    for it_index: 0..user_entity_declarations.count - 1 {
        if user_entity_declarations[it_index].type == void break;
        // TODO: verify that extension classes are valid?
        p_class_name := make_stringname(tprint("%", user_entity_declarations[it_index].type), null);
        p_parent_class_name := make_stringname(tprint("%", user_entity_declarations[it_index].parent_type), null);

        unique_class_create_info := class_create_info;
        unique_class_create_info.class_userdata = *user_entity_declarations[it_index];

        classdb_register_extension_class(
            P_LIBRARY,
            p_class_name,
            p_parent_class_name,
            *unique_class_create_info
        );

        tag := classdb_get_class_tag(p_class_name);
        if tag == null print_error_with_message(null, "Extension entity registration failed!", null, "Jodot", 0, 1);
        log_affirm(tprint("Extension entity registered: %", user_entity_declarations[it_index].type));
    }
}

//  -----------------------------
// | Godot Class Object Creation |
//  -----------------------------

// @ObjectLimit
GDT_OBJECT_LIMIT :: 1024;
gdt_objects: [GDT_OBJECT_LIMIT] GodotClass;
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
