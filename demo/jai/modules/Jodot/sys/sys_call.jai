sys_call :: (class_name: string, method_name: string, hash: s64, return_type: $T, object: OpaqueClass, args: .. Any) -> *void {

    // @Speed

    // if DEBUG print_warn("==== GDT CALL ====");
    // if DEBUG print_warn(tprint("CLASS: %", class_name));
    // if DEBUG print_warn(tprint("METHOD: %", method_name));
    // if DEBUG print_warn(tprint("HASH: %", hash));
    
    p_classname := make_stringname(class_name, null);
    p_methodname := make_stringname(method_name, null);
    p_method_bind := classdb_get_method_bind(p_classname, p_methodname, hash);

    arg_variants : [..] Variant;

    // VARIANT ARGUMENTS
    
    for args {
        type := (cast(*Type) *it.type).*;
        variant: Variant;
        if type == Variant {
            variant = (cast(*Variant) it.value_pointer).*;
            array_add(*arg_variants, variant);
            continue;
        }
        p_arg_var := New(Variant,, allocator=temp);
        using Type_Info_Tag;
        if it.type.*.type == {
            case INTEGER;
              p_val := cast(*int) it.value_pointer;
              variant_from_int(p_arg_var, p_val);
            case FLOAT;
              p_val := cast(*float64) it.value_pointer;
              variant_from_float(p_arg_var, p_val);
            case BOOL;
              p_val := cast(*bool) it.value_pointer;
              variant_from_bool(p_arg_var, p_val);
            case STRING;
              native_str := (cast(*string) it.value_pointer).*;
              // print_muted(native_str);
              p_val := make_gstring(native_str, null);
              variant_from_gstring(p_arg_var, p_val);
            case ENUM;
              p_val := cast(*int) it.value_pointer;
              variant_from_int(p_arg_var, p_val);
        }
        if type == {
            
            case Resource; #through;
            case Node;
              p_val := cast(*Node) it.value_pointer;
              p_object := ifx object.p_object != null then p_val.p_object else object_get_instance_from_id(p_val.object_id);
              print_muted("Creating variant from p_object: %", p_object);
              variant_from_Object(p_arg_var, *p_object);

            case gstring;
              p_val := cast(*gstring) it.value_pointer;
              variant_from_gstring(p_arg_var, p_val);
            case Vector2;
              p_val := cast(*Vector2) it.value_pointer;
              variant_from_Vector2(p_arg_var, p_val);
            case Vector2i;
              p_val := cast(*Vector2i) it.value_pointer;
              variant_from_Vector2i(p_arg_var, p_val);
            case Rect2;
              p_val := cast(*Rect2) it.value_pointer;
              variant_from_Rect2(p_arg_var, p_val);
            case Rect2i;
              p_val := cast(*Rect2i) it.value_pointer;
              variant_from_Rect2i(p_arg_var, p_val);
            case Vector3;
              p_val := cast(*Vector3) it.value_pointer;
              variant_from_Vector3(p_arg_var, p_val);
            case Vector3i;
              p_val := cast(*Vector3i) it.value_pointer;
              variant_from_Vector3i(p_arg_var, p_val);
            case Transform2D;
              p_val := cast(*Transform2D) it.value_pointer;
              variant_from_Transform2D(p_arg_var, p_val);
            case Vector4;
              p_val := cast(*Vector4) it.value_pointer;
              variant_from_Vector4(p_arg_var, p_val);
            case Vector4i;
              p_val := cast(*Vector4i) it.value_pointer;
              variant_from_Vector4i(p_arg_var, p_val);
            case Plane;
              p_val := cast(*Plane) it.value_pointer;
              variant_from_Plane(p_arg_var, p_val);
            case Quaternion;
              p_val := cast(*Quaternion) it.value_pointer;
              variant_from_Quaternion(p_arg_var, p_val);
            case AABB;
              p_val := cast(*AABB) it.value_pointer;
              variant_from_AABB(p_arg_var, p_val);
            case Basis;
              p_val := cast(*Basis) it.value_pointer;
              variant_from_Basis(p_arg_var, p_val);
            case Transform3D;
              p_val := cast(*Transform3D) it.value_pointer;
              variant_from_Transform3D(p_arg_var, p_val);
            case Projection;
              p_val := cast(*Projection) it.value_pointer;
              variant_from_Projection(p_arg_var, p_val);
            case Color;
              p_val := cast(*Color) it.value_pointer;
              variant_from_Color(p_arg_var, p_val);
            case StringName;
              p_val := cast(*StringName) it.value_pointer;
              variant_from_StringName(p_arg_var, p_val);
            case NodePath;
              p_val := cast(*NodePath) it.value_pointer;
              variant_from_NodePath(p_arg_var, p_val);
            case RID;
              p_val := cast(*RID) it.value_pointer;
              variant_from_RID(p_arg_var, p_val);
            case Object;
              p_val := cast(*Object) it.value_pointer;
              variant_from_Object(p_arg_var, p_val);
            case Callable;
              p_val := cast(*Callable) it.value_pointer;
              variant_from_Callable(p_arg_var, p_val);
            case Signal;
              p_val := cast(*Signal) it.value_pointer;
              variant_from_Signal(p_arg_var, p_val);
            case Dictionary;
              p_val := cast(*Dictionary) it.value_pointer;
              variant_from_Dictionary(p_arg_var, p_val);
            case Array;
              p_val := cast(*Array) it.value_pointer;
              variant_from_Array(p_arg_var, p_val);
            case PackedByteArray;
              p_val := cast(*PackedByteArray) it.value_pointer;
              variant_from_PackedByteArray(p_arg_var, p_val);
            case PackedInt32Array;
              p_val := cast(*PackedInt32Array) it.value_pointer;
              variant_from_PackedInt32Array(p_arg_var, p_val);
            case PackedInt64Array;
              p_val := cast(*PackedInt64Array) it.value_pointer;
              variant_from_PackedInt64Array(p_arg_var, p_val);
            case PackedFloat32Array;
              p_val := cast(*PackedFloat32Array) it.value_pointer;
              variant_from_PackedFloat32Array(p_arg_var, p_val);
            case PackedFloat64Array;
              p_val := cast(*PackedFloat64Array) it.value_pointer;
              variant_from_PackedFloat64Array(p_arg_var, p_val);
            case PackedStringArray;
              p_val := cast(*PackedStringArray) it.value_pointer;
              variant_from_PackedStringArray(p_arg_var, p_val);
            case PackedVector2Array;
              p_val := cast(*PackedVector2Array) it.value_pointer;
              variant_from_PackedVector2Array(p_arg_var, p_val);
            case PackedVector3Array;
              p_val := cast(*PackedVector3Array) it.value_pointer;
              variant_from_PackedVector3Array(p_arg_var, p_val);
            case PackedColorArray;
              p_val := cast(*PackedColorArray) it.value_pointer;
              variant_from_PackedColorArray(p_arg_var, p_val);
        }
        memcpy(*variant, *p_arg_var, size_of(Variant));
        array_add(*arg_variants, variant);
    }
    p_ret_var := alloc(size_of(Variant));
    err: GDExtensionCallError;
    p_object := ifx object.p_object != null then object.p_object else {
        assert(object.object_id != 0);
        print_warn("OBJECT ID: %", object.object_id);
        object_get_instance_from_id(object.object_id);
    }
    print_muted("Method call on p_object: %", p_object);
    assert(p_object != null, "Method call on null object!");
    object_method_bind_call(p_method_bind, p_object, cast(*void) arg_variants.data, arg_variants.count, p_ret_var, *err);
    handle_call_error(err);

    if return_type == Nil return null;

    // VARIANT TO RETURN VALUE

    // Builtin types:
    // if DEBUG print_warn(tprint("TI TYPE: %", return_type));
    if return_type == {
        case Variant;
          return p_ret_var;
        case gstring;
          p_gstr := alloc(size_of(gstring),, allocator=temp);
          variant_to_gstring(p_gstr, p_ret_var);
          native_str := break_gstring(p_gstr);
	  print_muted("[sys_call] Returning gstring: %", native_str);
          // return *native_str;
          return p_gstr;
        case Vector2;
          p_vec2 := alloc(size_of(Vector2),, allocator=temp);
          variant_to_Vector2(p_vec2, p_ret_var);
          vec2: Vector2;
          memcpy(*vec2, p_vec2, size_of(Vector2));
          return *vec2;
        case Vector2i;
          p_vec2 := alloc(size_of(Vector2i),, allocator=temp);
          variant_to_Vector2i(p_vec2, p_ret_var);
          vec2: Vector2i;
          memcpy(*vec2, p_vec2, size_of(Vector2i));
          return *vec2;
        case Rect2;
          p_rect2 := alloc(size_of(Rect2),, allocator=temp);
          variant_to_Rect2(p_rect2, p_ret_var);
          rect2: Rect2;
          memcpy(*rect2, p_rect2, size_of(Rect2));
          return *rect2;
        case Rect2i;
          p_rect2 := alloc(size_of(Rect2i),, allocator=temp);
          variant_to_Rect2i(p_rect2, p_ret_var);
          rect2: Rect2i;
          memcpy(*rect2, p_rect2, size_of(Rect2i));
          return *rect2;
        case Vector3;
          p_vec3 := alloc(size_of(Vector3),, allocator=temp);
          variant_to_Vector3(p_vec3, p_ret_var);
          vec3: Vector3;
          memcpy(*vec3, p_vec3, size_of(Vector3));
          return *vec3;
        case Vector3i;
          p_vec3 := alloc(size_of(Vector3i),, allocator=temp);
          variant_to_Vector3i(p_vec3, p_ret_var);
          vec3: Vector3i;
          memcpy(*vec3, p_vec3, size_of(Vector3i));
          return *vec3;
        case Transform2D;
          p_tsfm2d := alloc(size_of(Transform2D),, allocator=temp);
          variant_to_Transform2D(p_tsfm2d, p_ret_var);
          tsfm2d: Transform2D;
          memcpy(*tsfm2d, p_tsfm2d, size_of(Transform2D));
          return *tsfm2d;
        case Vector4;
          p_vec4 := alloc(size_of(Vector4),, allocator=temp);
          variant_to_Vector4(p_vec4, p_ret_var);
          vec4: Vector4;
          memcpy(*vec4, p_vec4, size_of(Vector4));
          return *vec4;
        case Vector4i;
          p_vec4 := alloc(size_of(Vector4i),, allocator=temp);
          variant_to_Vector4i(p_vec4, p_ret_var);
          vec4: Vector4i;
          memcpy(*vec4, p_vec4, size_of(Vector4i));
          return *vec4;
        case Plane;
          p_pln := alloc(size_of(Plane),, allocator=temp);
          variant_to_Plane(p_pln, p_ret_var);
          pln: Plane;
          memcpy(*pln, p_pln, size_of(Plane));
          return *pln;
        case Quaternion;
          p_qt := alloc(size_of(Quaternion),, allocator=temp);
          variant_to_Quaternion(p_qt, p_ret_var);
          qt: Quaternion;
          memcpy(*qt, p_qt, size_of(Quaternion));
          return *qt;
        case AABB;
          p_aabb := alloc(size_of(AABB),, allocator=temp);
          variant_to_AABB(p_aabb, p_ret_var);
          aabb: AABB;
          memcpy(*aabb, p_aabb, size_of(AABB));
          return *aabb;
        case Basis;
          p_basis := alloc(size_of(Basis),, allocator=temp);
          variant_to_Basis(p_basis, p_ret_var);
          basis: Basis;
          memcpy(*basis, p_basis, size_of(Basis));
          return *basis;
        case Transform3D;
          p_tsfm3d := alloc(size_of(Transform3D),, allocator=temp);
          variant_to_Transform3D(p_tsfm3d, p_ret_var);
          tsfm3d: Transform3D;
          memcpy(*tsfm3d, p_tsfm3d, size_of(Transform3D));
          return *tsfm3d;
        case Projection;
          p_proj := alloc(size_of(Projection),, allocator=temp);
          variant_to_Projection(p_proj, p_ret_var);
          proj: Projection;
          memcpy(*proj, p_proj, size_of(Projection));
          return *proj;
        case Color;
          p_clr := alloc(size_of(Color),, allocator=temp);
          variant_to_Color(p_clr, p_ret_var);
          clr: Color;
          memcpy(*clr, p_clr, size_of(Color));
          return *clr;
        case StringName;
          p_sn := alloc(size_of(StringName),, allocator=temp);
          variant_to_StringName(p_sn, p_ret_var);
          sn: StringName;
          memcpy(*sn, p_sn, size_of(StringName));
          return *sn;
        case NodePath;
          p_path := alloc(size_of(NodePath),, allocator=temp);
          variant_to_NodePath(p_path, p_ret_var);
          path: NodePath;
          memcpy(*path, p_path, size_of(NodePath));
          return *path;
        case RID;
          p_rid := alloc(size_of(RID),, allocator=temp);
          variant_to_RID(p_rid, p_ret_var);
          rid: RID;
          memcpy(*rid, p_rid, size_of(RID));
          return *rid;
        // case Object;
        //   p_obj := alloc(size_of(Object),, allocator=temp);
        //   variant_to_Object(p_obj, p_ret_var);
        //   obj: Object;
        //   memcpy(*obj, p_obj, size_of(Object));
        //   return *obj;
        case Callable;
          p_call := alloc(size_of(Callable),, allocator=temp);
          variant_to_Callable(p_call, p_ret_var);
          call: Callable;
          memcpy(*call, p_call, size_of(Callable));
          return *call;
        case Signal;
          p_signal := alloc(size_of(Signal),, allocator=temp);
          variant_to_Signal(p_signal, p_ret_var);
          signal: Signal;
          memcpy(*signal, p_signal, size_of(Signal));
          return *signal;
        case Dictionary;
          p_dict := alloc(size_of(Dictionary),, allocator=temp);
          variant_to_Dictionary(p_dict, p_ret_var);
          dict: Dictionary;
          memcpy(*dict, p_dict, size_of(Dictionary));
          return *dict;
        case Array;
          p_arr := alloc(size_of(Array),, allocator=temp);
          variant_to_Array(p_arr, p_ret_var);
          arr: Array;
          memcpy(*arr, p_arr, size_of(Array));
          return *arr;
        case PackedByteArray;
          p_arr_bytes := alloc(size_of(PackedByteArray),, allocator=temp);
          variant_to_PackedByteArray(p_arr_bytes, p_ret_var);
          arr_bytes: PackedByteArray;
          memcpy(*arr_bytes, p_arr_bytes, size_of(PackedByteArray));
          return *arr_bytes;
        case PackedInt32Array;
          p_arr_int32 := alloc(size_of(PackedInt32Array),, allocator=temp);
          variant_to_PackedInt32Array(p_arr_int32, p_ret_var);
          arr_int32: PackedInt32Array;
          memcpy(*arr_int32, p_arr_int32, size_of(PackedInt32Array));
          return *arr_int32;
        case PackedInt64Array;
          p_arr_int64 := alloc(size_of(PackedInt64Array),, allocator=temp);
          variant_to_PackedInt64Array(p_arr_int64, p_ret_var);
          arr_int64: PackedInt64Array;
          memcpy(*arr_int64, p_arr_int64, size_of(PackedInt64Array));
          return *arr_int64;
        case PackedFloat32Array;
          p_arr_float32 := alloc(size_of(PackedFloat32Array),, allocator=temp);
          variant_to_PackedFloat32Array(p_arr_float32, p_ret_var);
          arr_float32: PackedFloat32Array;
          memcpy(*arr_float32, p_arr_float32, size_of(PackedFloat32Array));
          return *arr_float32;
        case PackedFloat64Array;
          p_arr_float64 := alloc(size_of(PackedFloat64Array),, allocator=temp);
          variant_to_PackedFloat64Array(p_arr_float64, p_ret_var);
          arr_float64: PackedFloat64Array;
          memcpy(*arr_float64, p_arr_float64, size_of(PackedFloat64Array));
          return *arr_float64;
        case PackedStringArray;
          p_arr_str := alloc(size_of(PackedStringArray),, allocator=temp);
          variant_to_PackedStringArray(p_arr_str, p_ret_var);
          arr_str: PackedStringArray;
          memcpy(*arr_str, p_arr_str, size_of(PackedStringArray));
          return *arr_str;
        case PackedVector2Array;
          p_arr_vec2 := alloc(size_of(PackedVector2Array),, allocator=temp);
          variant_to_PackedVector2Array(p_arr_vec2, p_ret_var);
          arr_vec2: PackedVector2Array;
          memcpy(*arr_vec2, p_arr_vec2, size_of(PackedVector2Array));
          return *arr_vec2;
        case PackedVector3Array;
          p_arr_vec3 := alloc(size_of(PackedVector3Array),, allocator=temp);
          variant_to_PackedVector3Array(p_arr_vec3, p_ret_var);
          arr_vec3: PackedVector3Array;
          memcpy(*arr_vec3, p_arr_vec3, size_of(PackedVector3Array));
          return *arr_vec3;
        case PackedColorArray;
          p_arr_clr := alloc(size_of(PackedColorArray),, allocator=temp);
          variant_to_PackedColorArray(p_arr_clr, p_ret_var);
          arr_clr: PackedColorArray;
          memcpy(*arr_clr, p_arr_clr, size_of(PackedColorArray));
          return *arr_clr;
        
        // NOTE: assuming these types are always returned as reference
        
        case Material; #through;
        case Resource;
          
          // var_type := variant_get_type(p_ret_var);
          // print_muted("p_ret_var type: %", var_type);
        
          // opaque: OpaqueClass;
          opaque := New(OpaqueClass);
          object_id := variant_get_object_instance_id(p_ret_var);
          assert(object_id != 0, "Object returned is empty/invalid!");
          print_warn("OBJECT ID (REF): %", object_id);
          p_object := object_get_instance_from_id(object_id); 
        
          // ref: RefCounted;
          // ref.object_id = object_id;
          // ref_count := get_reference_count(*ref);
          // log("REFERENCE COUNT: %", ref_count);
          // ok := reference(*ref);
          // assert(ok);
          // ref_count = get_reference_count(*ref);
          // log("REFERENCE COUNT: %", ref_count);
        
          // p_object = ref_get_object(p_object);
        
          p_stringname := alloc(size_of(StringName),, allocator=temp);
          object_get_class_name(p_object, P_LIBRARY, p_stringname);
          class_name := p_stringname.(*StringName).*;
          print_muted("Return object class: %", class_name);

          assert(sn_equal(class_name, "ShaderMaterial"));
          print_affirm("It's a hit!!");
        
          // opaque.p_object = p_object;
          opaque.object_id = object_id;
          // opaque.object_id = object_get_instance_id(p_object);
          assert(opaque.object_id != 0, "Object unwrapped from returned Resource is empty/invalid!");
          print_warn("OBJECT ID: %", opaque.object_id);

          // res_name := get_name(opaque.(*Resource));

          return cast(*T) opaque;
    }

    // Generic types:
    ti := (cast(**Type_Info) *return_type).*;
    using Type_Info_Tag;
    // if DEBUG print_warn(tprint("TI TYPE: %", ti.type));
    if ti.type == {
        case INTEGER;
          p_integer := alloc(size_of(int));
          variant_to_int(p_integer, p_ret_var);
          integer: int;
          memcpy(*integer, p_integer, size_of(int));
          return *integer;
        case FLOAT;
          p_flt64 := alloc(size_of(float64));
          variant_to_float(p_flt64, p_ret_var);
          flt64: float64;
          memcpy(*flt64, p_flt64, size_of(float64));
          return *flt64;
        case BOOL;
          p_boolean := alloc(size_of(bool));
          variant_to_bool(p_boolean, p_ret_var);
          boolean: bool;
          memcpy(*boolean, p_boolean, size_of(bool));
          return *boolean;
        // --------------------------------
        case STRUCT;
          // @OpaqueClassReturn
          // NOTE: I can't for the life of me get variant_to_Object to work as intended. Thankfully, we can use variant_get_object_instance_id instead.
          opaque := New(OpaqueClass);
          // opaque: OpaqueClass;
          opaque.object_id = variant_get_object_instance_id(p_ret_var);
          return cast(*T) opaque;
        // --------------------------------
        case ENUM;
          p_integer := alloc(size_of(int));
          variant_to_int(p_integer, p_ret_var);
          integer: int;
          memcpy(*integer, p_integer, size_of(int));
          return *integer;
    }

    print_error("Failed to match return type! Returning null.");
    return null;
}
