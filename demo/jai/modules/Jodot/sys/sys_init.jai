P_GET_PROC_ADDRESS: GDExtensionInterfaceGetProcAddress;
P_LIBRARY: GDExtensionClassLibraryPtr;

objects_gdt: [1000] GodotClass;
cursor_gdt: u16;

jodot_ctx: #Context;

pool: Flat_Pool;
jodot_allocator: Allocator;

temp_storage: Temporary_Storage;
temp_buffer: [1024] u8;

// [_ready, _process, _physics_process, _input, _enter_tree, _exit_tree]
vfn_stringnames: [6] StringName;

// Raw procedures

print_error_with_message: GDExtensionInterfacePrintErrorWithMessage;
print_warning_with_message: GDExtensionInterfacePrintWarningWithMessage;
string_new_with_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars;
string_to_utf8_chars: GDExtensionInterfaceStringToUtf8Chars;
string_name_new_with_utf8_chars: GDExtensionInterfaceStringNameNewWithUtf8Chars;
object_set_instance: GDExtensionInterfaceObjectSetInstance;
object_get_instance_binding: GDExtensionInterfaceObjectGetInstanceBinding;
classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass3;
classdb_get_class_tag: GDExtensionInterfaceClassdbGetClassTag;
classdb_register_extension_class_method: GDExtensionInterfaceClassdbRegisterExtensionClassMethod;
classdb_construct_object2: GDExtensionInterfaceClassdbConstructObject2;
classdb_get_method_bind: GDExtensionInterfaceClassdbGetMethodBind;
object_method_bind_call: GDExtensionInterfaceObjectMethodBindCall;
// object_method_bind_ptrcall: GDExtensionInterfaceObjectMethodBindPtrcall;
object_get_instance_id: GDExtensionInterfaceObjectGetInstanceId;
object_get_instance_from_id: GDExtensionInterfaceObjectGetInstanceFromId;
object_get_class_name: GDExtensionInterfaceObjectGetClassName;
object_destroy: GDExtensionInterfaceObjectDestroy;
get_variant_from_type_constructor: GDExtensionInterfaceGetVariantFromTypeConstructor;
get_variant_to_type_constructor: GDExtensionInterfaceGetVariantToTypeConstructor;
global_get_singleton: GDExtensionInterfaceGlobalGetSingleton;
get_native_struct_size: GDExtensionInterfaceGetNativeStructSize;
variant_get_ptr_builtin_method: GDExtensionInterfaceVariantGetPtrBuiltinMethod;
variant_get_type: GDExtensionInterfaceVariantGetType;
variant_get_object_instance_id: GDExtensionInterfaceVariantGetObjectInstanceId;
variant_new_copy: GDExtensionInterfaceVariantNewCopy;
variant_new_nil: GDExtensionInterfaceVariantNewNil;
ref_get_object: GDExtensionInterfaceRefGetObject;

// Variant conversion

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
variant_from_Transform3D: GDExtensionVariantFromTypeConstructorFunc;
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
variant_from_PackedVector4Array: GDExtensionVariantFromTypeConstructorFunc;

VARIANT_FROM : [39] *GDExtensionVariantFromTypeConstructorFunc : .[
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
    *variant_from_Transform3D,
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
    *variant_from_PackedVector4Array
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
variant_to_Transform3D: GDExtensionTypeFromVariantConstructorFunc;
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
variant_to_PackedVector4Array: GDExtensionTypeFromVariantConstructorFunc;

VARIANT_TO : [39] *GDExtensionTypeFromVariantConstructorFunc : .[
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
    *variant_to_Transform3D,
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
    *variant_to_PackedVector4Array
];

get_gstring_length: GDExtensionPtrBuiltInMethod;
get_object_instance_id: GDExtensionPtrBuiltInMethod;

//  -------------
// | Entry Point |
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
        log("Hello from secret language!");
        log("Initializing Jodot module...");

        // Here, we interrogate the godot runtime for pointers.
        get_godot_version: GDExtensionInterfaceGetGodotVersion = xx P_GET_PROC_ADDRESS("get_godot_version");
        godot_version: GDExtensionGodotVersion;
        get_godot_version(*godot_version);
        print("\nGODOT VERSION: %.%.%\n", godot_version.major, godot_version.minor, godot_version.patch);

        print_error_with_message = xx P_GET_PROC_ADDRESS("print_error_with_message");
        print_warning_with_message = xx P_GET_PROC_ADDRESS("print_warning_with_message");
        string_new_with_utf8_chars = xx P_GET_PROC_ADDRESS("string_new_with_utf8_chars");
        string_to_utf8_chars = xx P_GET_PROC_ADDRESS("string_to_utf8_chars");
        // NOTE: StringNames can only be made *after* this point
        string_name_new_with_utf8_chars = xx P_GET_PROC_ADDRESS("string_name_new_with_utf8_chars");
        classdb_construct_object2 = xx P_GET_PROC_ADDRESS("classdb_construct_object2");
        object_set_instance = xx P_GET_PROC_ADDRESS("object_set_instance");
        object_get_instance_binding = xx P_GET_PROC_ADDRESS("object_get_instance_binding");
        classdb_register_extension_class = xx P_GET_PROC_ADDRESS("classdb_register_extension_class3");
        classdb_get_class_tag = xx P_GET_PROC_ADDRESS("classdb_get_class_tag");
        classdb_register_extension_class_method = xx P_GET_PROC_ADDRESS("classdb_register_extension_class_virtual_method");
        classdb_get_method_bind = xx P_GET_PROC_ADDRESS("classdb_get_method_bind");
        object_method_bind_call = xx P_GET_PROC_ADDRESS("object_method_bind_call");
        // object_method_bind_ptrcall = xx P_GET_PROC_ADDRESS("object_method_bind_ptrcall");
        object_get_instance_id = xx P_GET_PROC_ADDRESS("object_get_instance_id");
        object_get_instance_from_id = xx P_GET_PROC_ADDRESS("object_get_instance_from_id");
        object_get_class_name = xx P_GET_PROC_ADDRESS("object_get_class_name");
        get_variant_from_type_constructor = xx P_GET_PROC_ADDRESS("get_variant_from_type_constructor");
        get_variant_to_type_constructor = xx P_GET_PROC_ADDRESS("get_variant_to_type_constructor");
        global_get_singleton = xx P_GET_PROC_ADDRESS("global_get_singleton");
        get_native_struct_size = xx P_GET_PROC_ADDRESS("get_native_struct_size");
        variant_get_ptr_builtin_method = xx P_GET_PROC_ADDRESS("variant_get_ptr_builtin_method");
        variant_get_type = xx P_GET_PROC_ADDRESS("variant_get_type");
        variant_get_object_instance_id = xx P_GET_PROC_ADDRESS("variant_get_object_instance_id");
        variant_new_copy = xx P_GET_PROC_ADDRESS("variant_new_copy");
        variant_new_nil = xx P_GET_PROC_ADDRESS("variant_new_nil");
        ref_get_object = xx P_GET_PROC_ADDRESS("ref_get_object");

        // Variant conversion
        for enum_values_as_s64(GDExtensionVariantType) {
            if it == 0 continue;
            if it == 38 break;
            VARIANT_FROM[it].* = get_variant_from_type_constructor(cast(GDExtensionVariantType) it);
            VARIANT_TO[it].* = get_variant_to_type_constructor(cast(GDExtensionVariantType) it);
            // if DEBUG print_muted(tprint("Variant procs ready for: %", cast(GDExtensionVariantType) it));
        }

        // Static StringNames
        make_stringname("_ready", *vfn_stringnames[0]);
        make_stringname("_process", *vfn_stringnames[1]);
        make_stringname("_physics_process", *vfn_stringnames[2]);
        make_stringname("_input", *vfn_stringnames[3]);
        make_stringname("_enter_tree", *vfn_stringnames[4]);
        make_stringname("_exit_tree", *vfn_stringnames[5]);
        
        // TODO make a table of static StringNames for all GodotClasses
        // Then we can use object_get_class_name and sn_equal to check obejct classes!

        // Builtin methods (as needed)
        get_gstring_length = variant_get_ptr_builtin_method(GDExtensionVariantType.STRING, make_stringname("length", null), 3173160232);

        assert(get_native_struct_size(make_stringname("AudioFrame", null)) == size_of(AudioFrame));
        assert(get_native_struct_size(make_stringname("CaretInfo", null)) == size_of(CaretInfo));
        // assert(get_native_struct_size(make_stringname("Glyph", null)) == size_of(Glyph));
        assert(get_native_struct_size(make_stringname("ObjectID", null)) == size_of(ObjectID));
        // assert(get_native_struct_size(make_stringname("PhysicsServer2DExtensionMotionResult", null)) == size_of(PhysicsServer2DExtensionMotionResult));
        // assert(get_native_struct_size(make_stringname("PhysicsServer2DExtensionRayResult", null)) == size_of(PhysicsServer2DExtensionRayResult));
        // assert(get_native_struct_size(make_stringname("PhysicsServer2DExtensionShapeRestInfo", null)) == size_of(PhysicsServer2DExtensionShapeRestInfo));
        // assert(get_native_struct_size(make_stringname("PhysicsServer2DExtensionShapeResult", null)) == size_of(PhysicsServer2DExtensionShapeResult));
        // assert(get_native_struct_size(make_stringname("PhysicsServer3DExtensionMotionCollision", null)) == size_of(PhysicsServer3DExtensionMotionCollision));
        // assert(get_native_struct_size(make_stringname("PhysicsServer3DExtensionMotionResult", null)) == size_of(PhysicsServer3DExtensionMotionResult));
        // assert(get_native_struct_size(make_stringname("PhysicsServer3DExtensionRayResult", null)) == size_of(PhysicsServer3DExtensionRayResult));
        // assert(get_native_struct_size(make_stringname("PhysicsServer3DExtensionShapeRestInfo", null)) == size_of(PhysicsServer3DExtensionShapeRestInfo));
        // assert(get_native_struct_size(make_stringname("PhysicsServer3DExtensionShapeResult", null)) == size_of(PhysicsServer3DExtensionShapeResult));
        // assert(get_native_struct_size(make_stringname("ScriptLanguageExtensionProfilingInfo", null)) == size_of(ScriptLanguageExtensionProfilingInfo));

        // Singletons
        // NOTE: list copied over from gdt_bindings
        S_Performance.p_object = global_get_singleton(make_stringname("Performance", null));
        S_TextServerManager.p_object = global_get_singleton(make_stringname("TextServerManager", null));
        S_PhysicsServer2DManager.p_object = global_get_singleton(make_stringname("PhysicsServer2DManager", null));
        S_PhysicsServer3DManager.p_object = global_get_singleton(make_stringname("PhysicsServer3DManager", null));
        S_NavigationMeshGenerator.p_object = global_get_singleton(make_stringname("NavigationMeshGenerator", null));
        S_ProjectSettings.p_object = global_get_singleton(make_stringname("ProjectSettings", null));
        S_IP.p_object = global_get_singleton(make_stringname("IP", null));
        S_Geometry2D.p_object = global_get_singleton(make_stringname("Geometry2D", null));
        S_Geometry3D.p_object = global_get_singleton(make_stringname("Geometry3D", null));
        S_ResourceLoader.p_object = global_get_singleton(make_stringname("ResourceLoader", null));
        S_ResourceSaver.p_object = global_get_singleton(make_stringname("ResourceSaver", null));
        S_OS.p_object = global_get_singleton(make_stringname("OS", null));
        S_Engine.p_object = global_get_singleton(make_stringname("Engine", null));
        S_ClassDB.p_object = global_get_singleton(make_stringname("ClassDB", null));
        S_Marshalls.p_object = global_get_singleton(make_stringname("Marshalls", null));
        S_TranslationServer.p_object = global_get_singleton(make_stringname("TranslationServer", null));
        S_Input.p_object = global_get_singleton(make_stringname("Input", null));
        S_InputMap.p_object = global_get_singleton(make_stringname("InputMap", null));
        S_EngineDebugger.p_object = global_get_singleton(make_stringname("EngineDebugger", null));
        S_Time.p_object = global_get_singleton(make_stringname("Time", null));
        S_GDExtensionManager.p_object = global_get_singleton(make_stringname("GDExtensionManager", null));
        S_ResourceUID.p_object = global_get_singleton(make_stringname("ResourceUID", null));
        S_WorkerThreadPool.p_object = global_get_singleton(make_stringname("WorkerThreadPool", null));
        S_ThemeDB.p_object = global_get_singleton(make_stringname("ThemeDB", null));
        // For some reason these return as non-existent @Incomplete
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
        log("All systems Jo :)");
        reset_temporary_storage; // ! StringNames wiped !
        // if DEBUG print_warn(tprint("Temp Storage is at % bytes.\n", temp_storage.current_page_bytes_occupied));
    }
}

deinitialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        // TODO: cleanup!
        return;
    }
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

#import "Basic";
#import "Compiler";
#import "String";
#import "Flat_Pool";
// #import "Hash_Table";
#import "Math";
