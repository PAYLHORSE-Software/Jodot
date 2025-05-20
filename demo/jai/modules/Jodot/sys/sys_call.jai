sys_call :: (class_name: string, method_name: string, hash: s64, return_type: $T, object: GodotClass, args: .. Any) -> *void {

    // @Speed

    // if DEBUG log_warn("---- sys call ----");
    // if DEBUG log_warn(tprint("class: %", class_name));
    // if DEBUG log_warn(tprint("method: %", method_name));
    // if DEBUG log_warn(tprint("hash: %", hash));
    
    p_classname := make_stringname(class_name, null);
    p_methodname := make_stringname(method_name, null);
    p_method_bind := classdb_get_method_bind(p_classname, p_methodname, hash);

    arg_variants := NewArray(args.count, *Variant);

    for * args {
        type := (*it.type).(*Type).*;
        variant: Variant;
        if type == Variant {
            arg_variants[it_index] = it.value_pointer.(*Variant);
            continue;
        }
        arg_var: Variant;
        using Type_Info_Tag;
        generic_hit := false;
        if it.type.*.type == {
            case INTEGER;
              p_val := it.value_pointer.(*int);
              variant_from_int(*arg_var, p_val);
            case FLOAT;
              p_val := it.value_pointer.(*float64);
              variant_from_float(*arg_var, p_val);
            case BOOL;
              p_val := it.value_pointer.(*bool);
              variant_from_bool(*arg_var, p_val);
            case STRING;
              native_str := (it.value_pointer).(*string).*;
              // log_muted(native_str);
              p_val := make_gstring(native_str, null);
              variant_from_gstring(*arg_var, p_val);
            case ENUM;
              p_val := it.value_pointer.(*int);
              variant_from_int(*arg_var, p_val);
        }
        if !generic_hit if type == {
            
            // @GodotClassArgs
            // TODO add all other godot classes that can be secondary args
            case *AudioStream; #through;
            case *Environment; #through;
            case *Image; #through;
            case *Resource; #through;
            case *Node;
              p_val := it.value_pointer.(**GodotClass).*;
              p_object := ifx object.p_object != null then p_val.p_object else {
                  assert(object.object_id != 0, "Method call on object without constant pointer or ID!");
                  object_get_instance_from_id(p_val.object_id);
              }
              // log_muted("Creating variant from p_object: %", p_object);
              assert(p_object != null, "Argument is null object!");
              variant_from_Object(*arg_var, *p_object);

            case gstring;
              p_val := it.value_pointer.(*gstring);
              variant_from_gstring(*arg_var, p_val);
            case Vector2;
              p_val := it.value_pointer.(*Vector2);
              variant_from_Vector2(*arg_var, p_val);
            case Vector2i;
              p_val := it.value_pointer.(*Vector2i);
              variant_from_Vector2i(*arg_var, p_val);
            case Rect2;
              p_val := it.value_pointer.(*Rect2);
              variant_from_Rect2(*arg_var, p_val);
            case Rect2i;
              p_val := it.value_pointer.(*Rect2i);
              variant_from_Rect2i(*arg_var, p_val);
            case Vector3;
              p_val := it.value_pointer.(*Vector3);
              variant_from_Vector3(*arg_var, p_val);
            case Vector3i;
              p_val := it.value_pointer.(*Vector3i);
              variant_from_Vector3i(*arg_var, p_val);
            case Transform2D;
              p_val := it.value_pointer.(*Transform2D);
              variant_from_Transform2D(*arg_var, p_val);
            case Vector4;
              p_val := it.value_pointer.(*Vector4);
              variant_from_Vector4(*arg_var, p_val);
            case Vector4i;
              p_val := it.value_pointer.(*Vector4i);
              variant_from_Vector4i(*arg_var, p_val);
            case Plane;
              p_val := it.value_pointer.(*Plane);
              variant_from_Plane(*arg_var, p_val);
            case Quaternion;
              p_val := it.value_pointer.(*Quaternion);
              variant_from_Quaternion(*arg_var, p_val);
            case AABB;
              p_val := it.value_pointer.(*AABB);
              variant_from_AABB(*arg_var, p_val);
            case Basis;
              p_val := it.value_pointer.(*Basis);
              variant_from_Basis(*arg_var, p_val);
            case Transform3D;
              p_val := it.value_pointer.(*Transform3D);
              variant_from_Transform3D(*arg_var, p_val);
            case Projection;
              p_val := it.value_pointer.(*Projection);
              variant_from_Projection(*arg_var, p_val);
            case Color;
              p_val := it.value_pointer.(*Color);
              variant_from_Color(*arg_var, p_val);
            case StringName;
              p_val := it.value_pointer.(*StringName);
              variant_from_StringName(*arg_var, p_val);
            case NodePath;
              p_val := it.value_pointer.(*NodePath);
              variant_from_NodePath(*arg_var, p_val);
            case RID;
              p_val := it.value_pointer.(*RID);
              variant_from_RID(*arg_var, p_val);
            case Object;
              p_val := it.value_pointer.(*Object);
              variant_from_Object(*arg_var, p_val);
            case Callable;
              p_val := it.value_pointer.(*Callable);
              variant_from_Callable(*arg_var, p_val);
            case Signal;
              p_val := it.value_pointer.(*Signal);
              variant_from_Signal(*arg_var, p_val);
            case Dictionary;
              p_val := it.value_pointer.(*Dictionary);
              variant_from_Dictionary(*arg_var, p_val);
            case Array;
              p_val := it.value_pointer.(*Array);
              variant_from_Array(*arg_var, p_val);
            case PackedByteArray;
              p_val := it.value_pointer.(*PackedByteArray);
              variant_from_PackedByteArray(*arg_var, p_val);
            case PackedInt32Array;
              p_val := it.value_pointer.(*PackedInt32Array);
              variant_from_PackedInt32Array(*arg_var, p_val);
            case PackedInt64Array;
              p_val := it.value_pointer.(*PackedInt64Array);
              variant_from_PackedInt64Array(*arg_var, p_val);
            case PackedFloat32Array;
              p_val := it.value_pointer.(*PackedFloat32Array);
              variant_from_PackedFloat32Array(*arg_var, p_val);
            case PackedFloat64Array;
              p_val := it.value_pointer.(*PackedFloat64Array);
              variant_from_PackedFloat64Array(*arg_var, p_val);
            case PackedStringArray;
              p_val := it.value_pointer.(*PackedStringArray);
              variant_from_PackedStringArray(*arg_var, p_val);
            case PackedVector2Array;
              p_val := it.value_pointer.(*PackedVector2Array);
              variant_from_PackedVector2Array(*arg_var, p_val);
            case PackedVector3Array;
              p_val := it.value_pointer.(*PackedVector3Array);
              variant_from_PackedVector3Array(*arg_var, p_val);
            case PackedColorArray;
              p_val := it.value_pointer.(*PackedColorArray);
              variant_from_PackedColorArray(*arg_var, p_val);
        }
        memcpy(*arg_variants[it_index], **arg_var, size_of(*Variant));
    }
    ret_var: Variant;
    err: GDExtensionCallError;
    p_object := ifx object.p_object != null then object.p_object else {
        assert(object.object_id != 0, "Method call on object without constant pointer or ID!");
        object_get_instance_from_id(object.object_id);
    }
    // log_muted("Method call on p_object: %", p_object);
    assert(p_object != null, "Method call on null object!");
    object_method_bind_call(p_method_bind, p_object, arg_variants.data.(*void), arg_variants.count, *ret_var, *err);
    handle_call_error(err);

    if return_type == Nil return null;

    // VARIANT TO RETURN VALUE

    // Builtin types:
    // if DEBUG log_warn(tprint("TI TYPE: %", return_type));
    if return_type == {
        case Variant;
          return *ret_var;
        case gstring;
          gstr: gstring;
          variant_to_gstring(*gstr, *ret_var);
          native_str := break_gstring(*gstr);
	  log_muted("[sys_call] Returning gstring: %", native_str);
          // return *native_str;
          return *gstr;
        case Vector2;
          vec2: Vector2;
          variant_to_Vector2(*vec2, *ret_var);
          return *vec2;
        case Vector2i;
          vec2: Vector2i;
          variant_to_Vector2i(*vec2, *ret_var);
          return *vec2;
        case Rect2;
          rect2: Rect2;
          variant_to_Rect2(*rect2, *ret_var);
          return *rect2;
        case Rect2i;
          rect2: Rect2i;
          variant_to_Rect2i(*rect2, *ret_var);
          return *rect2;
        case Vector3;
          vec3: Vector3;
          variant_to_Vector3(*vec3, *ret_var);
          return *vec3;
        case Vector3i;
          vec3: Vector3i;
          variant_to_Vector3i(*vec3, *ret_var);
          return *vec3;
        case Transform2D;
          tsfm2d: Transform2D;
          variant_to_Transform2D(*tsfm2d, *ret_var);
          return *tsfm2d;
        case Vector4;
          vec4: Vector4;
          variant_to_Vector4(*vec4, *ret_var);
          return *vec4;
        case Vector4i;
          vec4: Vector4i;
          variant_to_Vector4i(*vec4, *ret_var);
          return *vec4;
        case Plane;
          pln: Plane;
          variant_to_Plane(*pln, *ret_var);
          return *pln;
        case Quaternion;
          qt: Quaternion;
          variant_to_Quaternion(*qt, *ret_var);
          return *qt;
        case AABB;
          aabb: AABB;
          variant_to_AABB(*aabb, *ret_var);
          return *aabb;
        case Basis;
          basis: Basis;
          variant_to_Basis(*basis, *ret_var);
          return *basis;
        case Transform3D;
          tsfm3d: Transform3D;
          variant_to_Transform3D(*tsfm3d, *ret_var);
          return *tsfm3d;
        case Projection;
          proj: Projection;
          variant_to_Projection(*proj, *ret_var);
          return *proj;
        case Color;
          clr: Color;
          variant_to_Color(*clr, *ret_var);
          return *clr;
        case StringName;
          sn: StringName;
          variant_to_StringName(*sn, *ret_var);
          return *sn;
        case NodePath;
          path: NodePath;
          variant_to_NodePath(*path, *ret_var);
          return *path;
        case RID;
          rid: RID;
          variant_to_RID(*rid, *ret_var);
          return *rid;
        // case Object;
        //   obj: Object;
        //   variant_to_Object(*obj, *ret_var);
        //   return *obj;
        case Callable;
          call: Callable;
          variant_to_Callable(*call, *ret_var);
          return *call;
        case Signal;
          signal: Signal;
          variant_to_Signal(*signal, *ret_var);
          return *signal;
        case Dictionary;
          dict: Dictionary;
          variant_to_Dictionary(*dict, *ret_var);
          return *dict;
        case Array;
          arr: Array;
          variant_to_Array(*arr, *ret_var);
          return *arr;
        case PackedByteArray;
          arr_bytes: PackedByteArray;
          variant_to_PackedByteArray(*arr_bytes, *ret_var);
          return *arr_bytes;
        case PackedInt32Array;
          arr_int32: PackedInt32Array;
          variant_to_PackedInt32Array(*arr_int32, *ret_var);
          return *arr_int32;
        case PackedInt64Array;
          arr_int64: PackedInt64Array;
          variant_to_PackedInt64Array(*arr_int64, *ret_var);
          return *arr_int64;
        case PackedFloat32Array;
          arr_float32: PackedFloat32Array;
          variant_to_PackedFloat32Array(*arr_float32, *ret_var);
          return *arr_float32;
        case PackedFloat64Array;
          arr_float64: PackedFloat64Array;
          variant_to_PackedFloat64Array(*arr_float64, *ret_var);
          return *arr_float64;
        case PackedStringArray;
          arr_str: PackedStringArray;
          variant_to_PackedStringArray(*arr_str, *ret_var);
          return *arr_str;
        case PackedVector2Array;
          arr_vec2: PackedVector2Array;
          variant_to_PackedVector2Array(*arr_vec2, *ret_var);
          return *arr_vec2;
        case PackedVector3Array;
          arr_vec3: PackedVector3Array;
          variant_to_PackedVector3Array(*arr_vec3, *ret_var);
          return *arr_vec3;
        case PackedColorArray;
          arr_clr: PackedColorArray;
          variant_to_PackedColorArray(*arr_clr, *ret_var);
          return *arr_clr;
    }

    // Generic types:
    ti := (*return_type).(**Type_Info).*;
    using Type_Info_Tag;
    // if DEBUG log_warn(tprint("TI TYPE: %", ti.type));
    if ti.type == {
        case INTEGER;
          integer: int;
          variant_to_int(*integer, *ret_var);
          return *integer;
        case FLOAT;
          flt64: float64;
          variant_to_float(*flt64, *ret_var);
          return *flt64;
        case BOOL;
          boolean: bool;
          variant_to_bool(*boolean, *ret_var);
          return *boolean;
        // --------------------------------
        case STRUCT;
          // @GodotClassReturn
          // NOTE: I can't for the life of me get variant_to_Object to work as intended. Thankfully, we can use variant_get_object_instance_id instead.
          opaque := New(GodotClass);
          // opaque: GodotClass;
          opaque.object_id = variant_get_object_instance_id(*ret_var);
          assert(opaque.object_id != 0, "Object returned is empty/invalid!");
        
          // @CheckObjectClass
          // p_stringname := alloc(size_of(StringName),, allocator=temp);
          // object_get_class_name(p_object, P_LIBRARY, p_stringname);
          // class_name := p_stringname.(*StringName).*;
          // log_muted("Return object class: %", class_name);

          // assert(sn_equal(class_name, "ShaderMaterial"));
          // log_affirm("It's a hit!!");
        
          return opaque.(*T);
        // --------------------------------
        case ENUM;
          integer: int;
          variant_to_int(*integer, *ret_var);
          return *integer;
    }

    log_error("Failed to match return type! Returning null.");
    return null;
}
