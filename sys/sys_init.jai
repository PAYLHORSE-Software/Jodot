P_GET_PROC_ADDRESS: GDExtensionInterfaceGetProcAddress;
P_LIBRARY: GDExtensionClassLibraryPtr;

objects_gdt: [256] OpaqueClass;

jodot_ctx: Context;

pool: Flat_Pool;
jodot_allocator: Allocator;

temp_storage: Temporary_Storage;
temp_buffer: [1024] u8;

// [_ready, _process, _physics_process, _input, _enter_tree, _exit_tree]
vfn_stringnames: [6] StringName;

// == RAW PROCEDURES ==

print_error_with_message: GDExtensionInterfacePrintErrorWithMessage;
print_warning_with_message: GDExtensionInterfacePrintWarningWithMessage;
string_new_with_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;
string_to_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;
string_name_new_with_utf8_chars: GDExtensionInterfaceStringNameNewWithUtf8Chars;
object_set_instance: GDExtensionInterfaceObjectSetInstance;
classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass3;
classdb_get_class_tag: GDExtensionInterfaceClassdbGetClassTag;
classdb_register_extension_class_method: GDExtensionInterfaceClassdbRegisterExtensionClassMethod;
classdb_construct_object: GDExtensionInterfaceClassdbConstructObject;
classdb_get_method_bind: GDExtensionInterfaceClassdbGetMethodBind;
object_method_bind_call: GDExtensionInterfaceObjectMethodBindCall;
// object_method_bind_ptrcall: GDExtensionInterfaceObjectMethodBindPtrcall;
object_destroy: GDExtensionInterfaceObjectDestroy;
get_variant_from_type_constructor: GDExtensionInterfaceGetVariantFromTypeConstructor;
get_variant_to_type_constructor: GDExtensionInterfaceGetVariantToTypeConstructor;
global_get_singleton: GDExtensionInterfaceGlobalGetSingleton;

// == VARIANT PROCS ==

variant_from_Nil: GDExtensionVariantFromTypeConstructorFunc;
variant_from_bool: GDExtensionVariantFromTypeConstructorFunc;
variant_from_int: GDExtensionVariantFromTypeConstructorFunc;
variant_from_float: GDExtensionVariantFromTypeConstructorFunc;
variant_from_gstring: GDExtensionVariantFromTypeConstructorFunc;

variant_from_Vector2: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Vector2i: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Rect2: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Rect2i: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Vector3: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Vector3i: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Transform2D: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Vector4: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Vector4i: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Plane: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Quaternion: GDExtensionVariantFromTypeConstructorFunc;
variant_from_AABB: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Basis: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Tranform3D: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Projection: GDExtensionVariantFromTypeConstructorFunc;

variant_from_Color: GDExtensionVariantFromTypeConstructorFunc;
variant_from_StringName: GDExtensionVariantFromTypeConstructorFunc;
variant_from_NodePath: GDExtensionVariantFromTypeConstructorFunc;
variant_from_RID: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Object: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Callable: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Signal: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Dictionary: GDExtensionVariantFromTypeConstructorFunc;
variant_from_Array: GDExtensionVariantFromTypeConstructorFunc;

variant_from_PackedByteArray: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedInt32Array: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedInt64Array: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedFloat32Array: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedFloat64Array: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedStringArray: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedVector2Array: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedVector3Array: GDExtensionVariantFromTypeConstructorFunc;
variant_from_PackedColorArray: GDExtensionVariantFromTypeConstructorFunc;

VARIANT_FROM : [38] *GDExtensionVariantFromTypeConstructorFunc : .[
    *variant_from_Nil,
    *variant_from_bool,
    *variant_from_int,
    *variant_from_float,
    *variant_from_gstring,
    *variant_from_Vector2,
    *variant_from_Vector2i,
    *variant_from_Rect2,
    *variant_from_Rect2i,
    *variant_from_Vector3,
    *variant_from_Vector3i,
    *variant_from_Transform2D,
    *variant_from_Vector4,
    *variant_from_Vector4i,
    *variant_from_Plane,
    *variant_from_Quaternion,
    *variant_from_AABB,
    *variant_from_Basis,
    *variant_from_Tranform3D,
    *variant_from_Projection,
    *variant_from_Color,
    *variant_from_StringName,
    *variant_from_NodePath,
    *variant_from_RID,
    *variant_from_Object,
    *variant_from_Callable,
    *variant_from_Signal,
    *variant_from_Dictionary,
    *variant_from_Array,
    *variant_from_PackedByteArray,
    *variant_from_PackedInt32Array,
    *variant_from_PackedInt64Array,
    *variant_from_PackedFloat32Array,
    *variant_from_PackedFloat64Array,
    *variant_from_PackedStringArray,
    *variant_from_PackedVector2Array,
    *variant_from_PackedVector3Array,
    *variant_from_PackedColorArray,
];

variant_to_Nil: GDExtensionTypeFromVariantConstructorFunc;
variant_to_bool: GDExtensionTypeFromVariantConstructorFunc;
variant_to_int: GDExtensionTypeFromVariantConstructorFunc;
variant_to_float: GDExtensionTypeFromVariantConstructorFunc;
variant_to_gstring: GDExtensionTypeFromVariantConstructorFunc;

variant_to_Vector2: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Vector2i: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Rect2: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Rect2i: GDExtensionTypeFromVariantConstructorFunc;

variant_to_Vector3: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Vector3i: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Transform2D: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Vector4: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Vector4i: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Plane: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Quaternion: GDExtensionTypeFromVariantConstructorFunc;
variant_to_AABB: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Basis: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Tranform3D: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Projection: GDExtensionTypeFromVariantConstructorFunc;

variant_to_Color: GDExtensionTypeFromVariantConstructorFunc;
variant_to_StringName: GDExtensionTypeFromVariantConstructorFunc;
variant_to_NodePath: GDExtensionTypeFromVariantConstructorFunc;
variant_to_RID: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Object: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Callable: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Signal: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Dictionary: GDExtensionTypeFromVariantConstructorFunc;
variant_to_Array: GDExtensionTypeFromVariantConstructorFunc;

variant_to_PackedByteArray: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedInt32Array: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedInt64Array: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedFloat32Array: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedFloat64Array: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedStringArray: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedVector2Array: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedVector3Array: GDExtensionTypeFromVariantConstructorFunc;
variant_to_PackedColorArray: GDExtensionTypeFromVariantConstructorFunc;

VARIANT_TO : [38] *GDExtensionTypeFromVariantConstructorFunc : .[
    *variant_to_Nil,
    *variant_to_bool,
    *variant_to_int,
    *variant_to_float,
    *variant_to_gstring,
    *variant_to_Vector2,
    *variant_to_Vector2i,
    *variant_to_Rect2,
    *variant_to_Rect2i,
    *variant_to_Vector3,
    *variant_to_Vector3i,
    *variant_to_Transform2D,
    *variant_to_Vector4,
    *variant_to_Vector4i,
    *variant_to_Plane,
    *variant_to_Quaternion,
    *variant_to_AABB,
    *variant_to_Basis,
    *variant_to_Tranform3D,
    *variant_to_Projection,
    *variant_to_Color,
    *variant_to_StringName,
    *variant_to_NodePath,
    *variant_to_RID,
    *variant_to_Object,
    *variant_to_Callable,
    *variant_to_Signal,
    *variant_to_Dictionary,
    *variant_to_Array,
    *variant_to_PackedByteArray,
    *variant_to_PackedInt32Array,
    *variant_to_PackedInt64Array,
    *variant_to_PackedFloat32Array,
    *variant_to_PackedFloat64Array,
    *variant_to_PackedStringArray,
    *variant_to_PackedVector2Array,
    *variant_to_PackedVector3Array,
    *variant_to_PackedColorArray,
];

//  ---------------------------
// | CUSTOM CLASS REGISTRATION |
//  ---------------------------

// Wrapper struct for extension classes:
ExtensionEntity :: struct {

    type: Type = void;
    parent_type: Type;

    p_object: *void;

    _ready : #type (entity: *ExtensionEntity) = null;
    _process : #type (entity: *ExtensionEntity, delta: float64) = null;
    _physics_process : #type (entity: *ExtensionEntity, delta: float64) = null;
    _input : #type (entity: *ExtensionEntity, event: InputEvent) = null;
    _enter_tree : #type (entity: *ExtensionEntity) = null;
    _exit_tree : #type (entity: *ExtensionEntity) = null;
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

// ------------------------
// (NODE) VIRTUAL FUNCTIONS

// NOTE: using get_virtual_call_data_fn + call_virtual_with_data_fn instead of get_virtual_func is a convenience hack
// Using get_virtual_func, we'd have to define #c_call procs for each vfn and pass them back

get_virtual_call_data_fn :: (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> *void #c_call {
    return p_class_userdata;
}

call_virtual_with_data_fn :: (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, p_virtual_call_userdata: *void, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) #c_call {
    push_context jodot_ctx {
        sn_vfn: StringName;
        memcpy(*sn_vfn, p_name, size_of(StringName));
        entity := cast(*ExtensionEntity) p_instance;

        // == READY PROC ==
        if sn_equal(sn_vfn, vfn_stringnames[0]) {
            if entity._ready != null {
                entity._ready(entity);
            }
        // == PROCESS PROC ==
        } else if sn_equal(sn_vfn, vfn_stringnames[1]) {
            if entity._process != null {
                delta: float64;
                memcpy(*delta, p_args.*, size_of(float64));
                entity._process(entity, delta);
            }
        // == PHYSICS PROCESS PROC ==
        } else if sn_equal(sn_vfn, vfn_stringnames[2]) {
            if entity._physics_process != null {
                delta: float64;
                memcpy(*delta, p_args.*, size_of(float64));
                entity._physics_process(entity, delta);
            }
        // == INPUT PROC ==
        } else if sn_equal(sn_vfn, vfn_stringnames[3]) {
            if entity._input != null {
                event: InputEvent;
                memcpy(*event, p_args.*, size_of(InputEvent)); // CHECK THIS
                entity._input(entity, event);
            }
        // == ENTER TREE PROC ==
        } else if sn_equal(sn_vfn, vfn_stringnames[4]) {
            if entity._enter_tree != null {
                entity._enter_tree(entity);
            }
        // == EXIT TREE PROC ==
        } else if sn_equal(sn_vfn, vfn_stringnames[5]) {
            if entity._exit_tree != null {
                entity._exit_tree(entity);
            }
        }
    }
}

// --------
// MEMALLOC

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {

    push_context jodot_ctx {
        extension_entity := cast(*ExtensionEntity) p_class_userdata;
        p_class_name := make_stringname(tprint("%", extension_entity.type), null);
        p_parent_class_name := make_stringname(tprint("%", extension_entity.parent_type), null);
        p_object := classdb_construct_object(p_parent_class_name);
        push_context jodot_ctx {
            print_muted(tprint("** New entity: % **", extension_entity.type));
            #insert user_entity_case;
        }

        // print("++++++ P_OBJECT: % ++++++\n", p_object);
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
        print_affirm(tprint("Extension entity registered: %", user_entity_declarations[it_index].type));
    }
}

create :: (gdt_type: $T) -> T {
    classdb_create_instance();
}

//  -------------
// | ENTRY POINT |
//  -------------

initialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {

    if p_level != .INITIALIZATION_SCENE {
        return;
    }

    // TODO: replace pool allocator with custom allocator @Incomplete
    jodot_allocator.proc = flat_pool_allocator_proc;
    jodot_allocator.data = *pool;
    jodot_ctx.allocator = jodot_allocator;
    temp_storage.data = temp_buffer.data;
    temp_storage.size = size_of(type_of(temp_buffer));
    jodot_ctx.temporary_storage = *temp_storage;
    push_context jodot_ctx {
        // if DEBUG print("The Flat Pool is at % bytes.\n", pool.current_point - pool.memory_base);
        // if DEBUG print_warn(tprint("Temp Storage is at % bytes.\n", temp_storage.current_page_bytes_occupied));
        print("Hello from secret language!\n");
        print("Initializing Jodot module...\n");

        // Here, we interrogate the godot runtime for pointers.
        get_godot_version: GDExtensionInterfaceGetGodotVersion = xx P_GET_PROC_ADDRESS("get_godot_version");
        godot_version: GDExtensionGodotVersion;
        get_godot_version(*godot_version);
        print("\nGODOT VERSION: %.%.%\n", godot_version.major, godot_version.minor, godot_version.patch);

        print_error_with_message = xx P_GET_PROC_ADDRESS("print_error_with_message");
        print_warning_with_message = xx P_GET_PROC_ADDRESS("print_warning_with_message");
        string_new_with_utf8_chars = xx P_GET_PROC_ADDRESS("string_new_with_utf8_chars");
        string_to_utf8_chars = xx P_GET_PROC_ADDRESS("string_to_utf8_chars");
        // NOTE: STRINGNAMES CAN ONLY BE MADE *AFTER* THIS POINT
        string_name_new_with_utf8_chars = xx P_GET_PROC_ADDRESS("string_name_new_with_utf8_chars");
        classdb_construct_object = xx P_GET_PROC_ADDRESS("classdb_construct_object");
        object_set_instance = xx P_GET_PROC_ADDRESS("object_set_instance");
        classdb_register_extension_class = xx P_GET_PROC_ADDRESS("classdb_register_extension_class3");
        classdb_get_class_tag = xx P_GET_PROC_ADDRESS("classdb_get_class_tag");
        classdb_register_extension_class_method = xx P_GET_PROC_ADDRESS("classdb_register_extension_class_virtual_method");
        classdb_get_method_bind = xx P_GET_PROC_ADDRESS("classdb_get_method_bind");
        object_method_bind_call = xx P_GET_PROC_ADDRESS("object_method_bind_call");
        // object_method_bind_ptrcall = xx P_GET_PROC_ADDRESS("object_method_bind_ptrcall");
        get_variant_from_type_constructor = xx P_GET_PROC_ADDRESS("get_variant_from_type_constructor");
        get_variant_to_type_constructor = xx P_GET_PROC_ADDRESS("get_variant_to_type_constructor");
        global_get_singleton = xx P_GET_PROC_ADDRESS("global_get_singleton");

        // == VARIANT CONVERSION ==
        for enum_values_as_s64(GDExtensionVariantType) {
            if it == 0 continue;
            if it == 38 break;
            VARIANT_FROM[it].* = get_variant_from_type_constructor(cast(GDExtensionVariantType) it);
            VARIANT_TO[it].* = get_variant_to_type_constructor(cast(GDExtensionVariantType) it);
            // if DEBUG print_muted(tprint("Variant procs ready for: %", cast(GDExtensionVariantType) it));
        }

        // == STATIC STRINGNAMES ==
        make_stringname("_ready", *vfn_stringnames[0]);
        make_stringname("_process", *vfn_stringnames[1]);
        make_stringname("_physics_process", *vfn_stringnames[2]);
        make_stringname("_input", *vfn_stringnames[3]);
        make_stringname("_enter_tree", *vfn_stringnames[4]);
        make_stringname("_exit_tree", *vfn_stringnames[5]);

        // == ENGINE SINGLETONS ==
        // NOTE: copied over from gdt_bindings
        S_Performance = global_get_singleton(make_stringname("Performance", null));
        S_TextServerManager = global_get_singleton(make_stringname("TextServerManager", null));
        S_PhysicsServer2DManager = global_get_singleton(make_stringname("PhysicsServer2DManager", null));
        S_PhysicsServer3DManager = global_get_singleton(make_stringname("PhysicsServer3DManager", null));
        S_NavigationMeshGenerator = global_get_singleton(make_stringname("NavigationMeshGenerator", null));
        S_ProjectSettings = global_get_singleton(make_stringname("ProjectSettings", null));
        S_IP = global_get_singleton(make_stringname("IP", null));
        S_Geometry2D = global_get_singleton(make_stringname("Geometry2D", null));
        S_Geometry3D = global_get_singleton(make_stringname("Geometry3D", null));
        S_ResourceLoader = global_get_singleton(make_stringname("ResourceLoader", null));
        S_ResourceSaver = global_get_singleton(make_stringname("ResourceSaver", null));
        S_OS = global_get_singleton(make_stringname("OS", null));
        S_Engine = global_get_singleton(make_stringname("Engine", null));
        S_ClassDB = global_get_singleton(make_stringname("ClassDB", null));
        S_Marshalls = global_get_singleton(make_stringname("Marshalls", null));
        S_TranslationServer = global_get_singleton(make_stringname("TranslationServer", null));
        S_Input = global_get_singleton(make_stringname("Input", null));
        S_InputMap = global_get_singleton(make_stringname("InputMap", null));
        S_EngineDebugger = global_get_singleton(make_stringname("EngineDebugger", null));
        S_Time = global_get_singleton(make_stringname("Time", null));
        S_GDExtensionManager = global_get_singleton(make_stringname("GDExtensionManager", null));
        S_ResourceUID = global_get_singleton(make_stringname("ResourceUID", null));
        S_WorkerThreadPool = global_get_singleton(make_stringname("WorkerThreadPool", null));
        S_ThemeDB = global_get_singleton(make_stringname("ThemeDB", null));
        // For some reason, these return as non-existent @Incomplete
        // S_EditorInterface = global_get_singleton(make_stringname("EditorInterface", null));
        // S_JavaClassWrapper = global_get_singleton(make_stringname("JavaClassWrapper", null));
        // S_JavaScriptBridge = global_get_singleton(make_stringname("JavaScriptBridge", null));
        // S_AudioServer = global_get_singleton(make_stringname("AudioServer", null));
        // S_CameraServer = global_get_singleton(make_stringname("CameraServer", null));
        // S_DisplayServer = global_get_singleton(make_stringname("DisplayServer", null));
        // S_NativeMenu = global_get_singleton(make_stringname("NativeMenu", null));
        // S_NavigationServer2D = global_get_singleton(make_stringname("NavigationServer2D", null));
        // S_NavigationServer3D = global_get_singleton(make_stringname("NavigationServer3D", null));
        // S_RenderingServer = global_get_singleton(make_stringname("RenderingServer", null));
        // S_PhysicsServer2D = global_get_singleton(make_stringname("PhysicsServer2D", null));
        // S_PhysicsServer3D = global_get_singleton(make_stringname("PhysicsServer3D", null));
        // S_XRServer = global_get_singleton(make_stringname("XRServer", null));

        #insert user_entity_declaration_list;
        register_extension_entities();
        print("All systems Jo :)\n");
        reset_temporary_storage; // STRINGNAMES WIPED
        // if DEBUG print_warn(tprint("Temp Storage is at % bytes.\n", temp_storage.current_page_bytes_occupied));
    }
}

deinitialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }
    // Perform any necessary cleanup!
}

gdt_call :: (class_name: string, method_name: string, hash: s64, entity: OpaqueClass, args: .. Any) -> *Variant {

    p_classname := make_stringname(class_name, null);
    p_methodname := make_stringname(method_name, null);
    // if DEBUG print_warn("==== GDT CALL ====");
    // if DEBUG print_warn(tprint("CLASS: %", native_strings[0]));
    // if DEBUG print_warn(tprint("METHOD: %", native_strings[1]));
    // if DEBUG print_warn(tprint("HASH: %", hash));
    p_method_bind := classdb_get_method_bind(p_classname, p_methodname, hash);

    arg_variants : [..] Variant;

    for args {
        type : Type = (cast(*Type) *it.type).*;
        variant: Variant;
        if type == [24] u8 {
            variant = (cast(*Variant) it.value_pointer).*;
            array_add(*arg_variants, variant);
            continue;
        }
        var_holder := alloc(size_of(Variant),, allocator=temp);
        using Type_Info_Tag;
        if it.type.*.type == {
            case INTEGER;
              p_int := cast(*int) it.value_pointer;
              variant_from_int(var_holder, *p_int);
            case FLOAT;
              p_float := cast(*float64) it.value_pointer;
              variant_from_float(var_holder, *p_float);
            case BOOL;
              p_bool := cast(*bool) it.value_pointer;
              variant_from_bool(var_holder, *p_bool);
            case STRING;
              native_str := (cast(*string) it.value_pointer).*;
              p_var := make_gstring_var(native_str, *variant);
              array_add(*arg_variants, variant);
              continue;
            case ENUM;
              p_int := cast(*int) it.value_pointer;
              variant_from_int(var_holder, *p_int);
            // case;
              // print_error("gdt_call failed! unsupported argument");
              // return null;
        }
        if type == {
            case StringName;
              p_sn := cast(*StringName) it.value_pointer;
              variant_from_StringName(var_holder, p_sn);
        }
        memcpy(*variant, *var_holder, size_of(Variant));
        array_add(*arg_variants, variant);
    }
    ret := alloc(size_of(Variant));
    err: GDExtensionCallError;
    // print("++++++ % ++++++\n", arg_variants.data);
    // object_method_bind_call(p_method_bind, entity.p_object, cast(*void) arg_variants.data, arg_variants.count, ret, *err);
    // handle_call_error(err);
    return ret;
}

#program_export
jodot_init :: (p_get_proc_address: GDExtensionInterfaceGetProcAddress, p_library: GDExtensionClassLibraryPtr, r_initialization: *GDExtensionInitialization) -> GDExtensionBool #c_call {

    godot_init_params := GDExtensionInitialization.{
        minimum_initialization_level = .INITIALIZATION_SCENE,
        userdata = null,
        initialize = initialize_jodot_module,
        deinitialize = deinitialize_jodot_module,
    };

    r_initialization.* = godot_init_params;

    P_GET_PROC_ADDRESS = p_get_proc_address;
    P_LIBRARY = p_library;

    success: GDExtensionBool = 1;
    return success;
}

make_stringname :: (native_string: string, dst: *StringName) -> *StringName {
    c_string := to_c_string(native_string);
    p_stringname := alloc(size_of(StringName),, allocator=temp);
    string_name_new_with_utf8_chars(p_stringname, c_string);
    if dst != null memcpy(dst, p_stringname, size_of(StringName));
    // NOTE: For some reason, godot requires the *exact* pointer it generates here, as opposed to an arbitrary pointer to the StringName value.
    // So we return it, in case we need to capture.
    return p_stringname;
}

handle_call_error :: (err: GDExtensionCallError) {
    using GDExtensionCallErrorType;
    if err.error == {
        case OK;
            if DEBUG print_affirm("gdt_call OK!");
        case ERROR_INVALID_METHOD;
            print_error("gdt_call failed! invalid method");
        case ERROR_INVALID_ARGUMENT;
            print_error("gdt_call failed! invalid argument");
            print_muted(tprint("argument given: %", err.argument));
            print_muted(tprint("argument expected: %", err.expected));
        case ERROR_TOO_MANY_ARGUMENTS;
            print_error("gdt_call failed! too many arguments");
        case ERROR_TOO_FEW_ARGUMENTS;
            print_error("gdt_call failed! too few arguments");
        case ERROR_INSTANCE_IS_NULL;
            print_error("gdt_call failed! instance is null");
        case ERROR_METHOD_NOT_CONST;
            print_error("gdt_call failed! method not const");
    }
}

// ==== WRAPPERS ====

// TODO: these should push line number from the .jai source file
godot_error :: (message: string) {
    print_error_with_message(null, message, null, null, 0, 1);
}

godot_warn :: (message: string) {
    print_warning_with_message(null, message, null, null, 0, 1);
}

// TODO: these should be set up as casts instead of procs
make_gstring_var :: (native_string: string, dst: *Variant) -> *Variant {
    c_string := to_c_string(native_string);
    p_gstring_var := alloc(size_of(Variant),, allocator=temp);
    string_new_with_utf8_chars(p_gstring_var, c_string);
    if dst != null memcpy(dst, p_gstring_var, size_of(Variant));
    return p_gstring_var;
}

break_gstring :: (gstring: *u8) -> string {
    raw_string := string_to_utf8_chars(gstring);
    // This procedure already omits null terminator
    return (cast(string) raw_string);
}

#import "Basic";
#import "Compiler";
#import "String";
#import "Flat_Pool";
// #import "Hash_Table";
#import "Math";
