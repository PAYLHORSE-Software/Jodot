//
// This file was auto-generated using the following command:
//
// jai generate.jai
//
//  --------------------
// | Jodot sys bindings |
//  --------------------



/* VARIANT TYPES */
GDExtensionVariantType :: enum s32 {
    NIL                  :: 0;

    BOOL                 :: 1;
    INT                  :: 2;
    FLOAT                :: 3;
    STRING               :: 4;

    VECTOR2              :: 5;
    VECTOR2I             :: 6;
    RECT2                :: 7;
    RECT2I               :: 8;
    VECTOR3              :: 9;
    VECTOR3I             :: 10;
    TRANSFORM2D          :: 11;
    VECTOR4              :: 12;
    VECTOR4I             :: 13;
    PLANE                :: 14;
    QUATERNION           :: 15;
    AABB                 :: 16;
    BASIS                :: 17;
    TRANSFORM3D          :: 18;
    PROJECTION           :: 19;

    COLOR                :: 20;
    STRING_NAME          :: 21;
    NODE_PATH            :: 22;
    RID                  :: 23;
    OBJECT               :: 24;
    CALLABLE             :: 25;
    SIGNAL               :: 26;
    DICTIONARY           :: 27;
    ARRAY                :: 28;

    PACKED_BYTE_ARRAY    :: 29;
    PACKED_INT32_ARRAY   :: 30;
    PACKED_INT64_ARRAY   :: 31;
    PACKED_FLOAT32_ARRAY :: 32;
    PACKED_FLOAT64_ARRAY :: 33;
    PACKED_STRING_ARRAY  :: 34;
    PACKED_VECTOR2_ARRAY :: 35;
    PACKED_VECTOR3_ARRAY :: 36;
    PACKED_COLOR_ARRAY   :: 37;
    PACKED_VECTOR4_ARRAY :: 38;

    VARIANT_MAX          :: 39;

    GDEXTENSION_VARIANT_TYPE_NIL                  :: NIL;

    GDEXTENSION_VARIANT_TYPE_BOOL                 :: BOOL;
    GDEXTENSION_VARIANT_TYPE_INT                  :: INT;
    GDEXTENSION_VARIANT_TYPE_FLOAT                :: FLOAT;
    GDEXTENSION_VARIANT_TYPE_STRING               :: STRING;

    GDEXTENSION_VARIANT_TYPE_VECTOR2              :: VECTOR2;
    GDEXTENSION_VARIANT_TYPE_VECTOR2I             :: VECTOR2I;
    GDEXTENSION_VARIANT_TYPE_RECT2                :: RECT2;
    GDEXTENSION_VARIANT_TYPE_RECT2I               :: RECT2I;
    GDEXTENSION_VARIANT_TYPE_VECTOR3              :: VECTOR3;
    GDEXTENSION_VARIANT_TYPE_VECTOR3I             :: VECTOR3I;
    GDEXTENSION_VARIANT_TYPE_TRANSFORM2D          :: TRANSFORM2D;
    GDEXTENSION_VARIANT_TYPE_VECTOR4              :: VECTOR4;
    GDEXTENSION_VARIANT_TYPE_VECTOR4I             :: VECTOR4I;
    GDEXTENSION_VARIANT_TYPE_PLANE                :: PLANE;
    GDEXTENSION_VARIANT_TYPE_QUATERNION           :: QUATERNION;
    GDEXTENSION_VARIANT_TYPE_AABB                 :: AABB;
    GDEXTENSION_VARIANT_TYPE_BASIS                :: BASIS;
    GDEXTENSION_VARIANT_TYPE_TRANSFORM3D          :: TRANSFORM3D;
    GDEXTENSION_VARIANT_TYPE_PROJECTION           :: PROJECTION;

    GDEXTENSION_VARIANT_TYPE_COLOR                :: COLOR;
    GDEXTENSION_VARIANT_TYPE_STRING_NAME          :: STRING_NAME;
    GDEXTENSION_VARIANT_TYPE_NODE_PATH            :: NODE_PATH;
    GDEXTENSION_VARIANT_TYPE_RID                  :: RID;
    GDEXTENSION_VARIANT_TYPE_OBJECT               :: OBJECT;
    GDEXTENSION_VARIANT_TYPE_CALLABLE             :: CALLABLE;
    GDEXTENSION_VARIANT_TYPE_SIGNAL               :: SIGNAL;
    GDEXTENSION_VARIANT_TYPE_DICTIONARY           :: DICTIONARY;
    GDEXTENSION_VARIANT_TYPE_ARRAY                :: ARRAY;

    GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY    :: PACKED_BYTE_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY   :: PACKED_INT32_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY   :: PACKED_INT64_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY :: PACKED_FLOAT32_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY :: PACKED_FLOAT64_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY  :: PACKED_STRING_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY :: PACKED_VECTOR2_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY :: PACKED_VECTOR3_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY   :: PACKED_COLOR_ARRAY;
    GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR4_ARRAY :: PACKED_VECTOR4_ARRAY;

    GDEXTENSION_VARIANT_TYPE_VARIANT_MAX          :: VARIANT_MAX;
}

GDExtensionVariantOperator :: enum s32 {
    EQUAL         :: 0;
    NOT_EQUAL     :: 1;
    LESS          :: 2;
    LESS_EQUAL    :: 3;
    GREATER       :: 4;
    GREATER_EQUAL :: 5;

    ADD           :: 6;
    SUBTRACT      :: 7;
    MULTIPLY      :: 8;
    DIVIDE        :: 9;
    NEGATE        :: 10;
    POSITIVE      :: 11;
    MODULE        :: 12;
    POWER         :: 13;

    SHIFT_LEFT    :: 14;
    SHIFT_RIGHT   :: 15;
    BIT_AND       :: 16;
    BIT_OR        :: 17;
    BIT_XOR       :: 18;
    BIT_NEGATE    :: 19;

    AND           :: 20;
    OR            :: 21;
    XOR           :: 22;
    NOT           :: 23;

    IN            :: 24;
    MAX           :: 25;

    GDEXTENSION_VARIANT_OP_EQUAL         :: EQUAL;
    GDEXTENSION_VARIANT_OP_NOT_EQUAL     :: NOT_EQUAL;
    GDEXTENSION_VARIANT_OP_LESS          :: LESS;
    GDEXTENSION_VARIANT_OP_LESS_EQUAL    :: LESS_EQUAL;
    GDEXTENSION_VARIANT_OP_GREATER       :: GREATER;
    GDEXTENSION_VARIANT_OP_GREATER_EQUAL :: GREATER_EQUAL;

    GDEXTENSION_VARIANT_OP_ADD           :: ADD;
    GDEXTENSION_VARIANT_OP_SUBTRACT      :: SUBTRACT;
    GDEXTENSION_VARIANT_OP_MULTIPLY      :: MULTIPLY;
    GDEXTENSION_VARIANT_OP_DIVIDE        :: DIVIDE;
    GDEXTENSION_VARIANT_OP_NEGATE        :: NEGATE;
    GDEXTENSION_VARIANT_OP_POSITIVE      :: POSITIVE;
    GDEXTENSION_VARIANT_OP_MODULE        :: MODULE;
    GDEXTENSION_VARIANT_OP_POWER         :: POWER;

    GDEXTENSION_VARIANT_OP_SHIFT_LEFT    :: SHIFT_LEFT;
    GDEXTENSION_VARIANT_OP_SHIFT_RIGHT   :: SHIFT_RIGHT;
    GDEXTENSION_VARIANT_OP_BIT_AND       :: BIT_AND;
    GDEXTENSION_VARIANT_OP_BIT_OR        :: BIT_OR;
    GDEXTENSION_VARIANT_OP_BIT_XOR       :: BIT_XOR;
    GDEXTENSION_VARIANT_OP_BIT_NEGATE    :: BIT_NEGATE;

    GDEXTENSION_VARIANT_OP_AND           :: AND;
    GDEXTENSION_VARIANT_OP_OR            :: OR;
    GDEXTENSION_VARIANT_OP_XOR           :: XOR;
    GDEXTENSION_VARIANT_OP_NOT           :: NOT;

    GDEXTENSION_VARIANT_OP_IN            :: IN;
    GDEXTENSION_VARIANT_OP_MAX           :: MAX;
}

// In this API there are multiple functions which expect the caller to pass a pointer
// on return value as parameter.
// In order to make it clear if the caller should initialize the return value or not
// we have two flavor of types:
// - `GDExtensionXXXPtr` for pointer on an initialized value
// - `GDExtensionUninitializedXXXPtr` for pointer on uninitialized value
//
// Notes:
// - Not respecting those requirements can seems harmless, but will lead to unexpected
//   segfault or memory leak (for instance with a specific compiler/OS, or when two
//   native extensions start doing ptrcall on each other).
// - Initialization must be done with the function pointer returned by `variant_get_ptr_constructor`,
//   zero-initializing the variable should not be considered a valid initialization method here !
// - Some types have no destructor (see `extension_api.json`'s `has_destructor` field), for
//   them it is always safe to skip the constructor for the return value if you are in a hurry ;-)
GDExtensionVariantPtr :: *void;
GDExtensionConstVariantPtr :: *void;
GDExtensionUninitializedVariantPtr :: *void;
GDExtensionStringNamePtr :: *void;
GDExtensionConstStringNamePtr :: *void;
GDExtensionUninitializedStringNamePtr :: *void;
GDExtensionStringPtr :: *void;
GDExtensionConstStringPtr :: *void;
GDExtensionUninitializedStringPtr :: *void;
GDExtensionObjectPtr :: *void;
GDExtensionConstObjectPtr :: *void;
GDExtensionUninitializedObjectPtr :: *void;
GDExtensionTypePtr :: *void;
GDExtensionConstTypePtr :: *void;
GDExtensionUninitializedTypePtr :: *void;
GDExtensionMethodBindPtr :: *void;
GDExtensionInt :: s64;
GDExtensionBool :: u8;
GDObjectInstanceID :: u64;
GDExtensionRefPtr :: *void;
GDExtensionConstRefPtr :: *void;

/* VARIANT DATA I/O */
GDExtensionCallErrorType :: enum s32 {
    OK                       :: 0;
    ERROR_INVALID_METHOD     :: 1;
    ERROR_INVALID_ARGUMENT   :: 2;
    ERROR_TOO_MANY_ARGUMENTS :: 3;
    ERROR_TOO_FEW_ARGUMENTS  :: 4;
    ERROR_INSTANCE_IS_NULL   :: 5;
    ERROR_METHOD_NOT_CONST   :: 6;

    GDEXTENSION_CALL_OK                       :: OK;
    GDEXTENSION_CALL_ERROR_INVALID_METHOD     :: ERROR_INVALID_METHOD;
    GDEXTENSION_CALL_ERROR_INVALID_ARGUMENT   :: ERROR_INVALID_ARGUMENT;
    GDEXTENSION_CALL_ERROR_TOO_MANY_ARGUMENTS :: ERROR_TOO_MANY_ARGUMENTS;
    GDEXTENSION_CALL_ERROR_TOO_FEW_ARGUMENTS  :: ERROR_TOO_FEW_ARGUMENTS;
    GDEXTENSION_CALL_ERROR_INSTANCE_IS_NULL   :: ERROR_INSTANCE_IS_NULL;
    GDEXTENSION_CALL_ERROR_METHOD_NOT_CONST   :: ERROR_METHOD_NOT_CONST;
}

GDExtensionCallError :: struct {
    error:    GDExtensionCallErrorType;
    argument: s32;
    expected: s32;
}

GDExtensionVariantFromTypeConstructorFunc :: #type (unknown0: GDExtensionUninitializedVariantPtr, unknown1: GDExtensionTypePtr) -> void #c_call;
GDExtensionTypeFromVariantConstructorFunc :: #type (unknown0: GDExtensionUninitializedTypePtr, unknown1: GDExtensionVariantPtr) -> void #c_call;
GDExtensionVariantGetInternalPtrFunc :: #type (unknown0: GDExtensionVariantPtr) -> *void #c_call;
GDExtensionPtrOperatorEvaluator :: #type (p_left: GDExtensionConstTypePtr, p_right: GDExtensionConstTypePtr, r_result: GDExtensionTypePtr) -> void #c_call;
GDExtensionPtrBuiltInMethod :: #type (p_base: GDExtensionTypePtr, p_args: *GDExtensionConstTypePtr, r_return: GDExtensionTypePtr, p_argument_count: s32) -> void #c_call;
GDExtensionPtrConstructor :: #type (p_base: GDExtensionUninitializedTypePtr, p_args: *GDExtensionConstTypePtr) -> void #c_call;
GDExtensionPtrDestructor :: #type (p_base: GDExtensionTypePtr) -> void #c_call;
GDExtensionPtrSetter :: #type (p_base: GDExtensionTypePtr, p_value: GDExtensionConstTypePtr) -> void #c_call;
GDExtensionPtrGetter :: #type (p_base: GDExtensionConstTypePtr, r_value: GDExtensionTypePtr) -> void #c_call;
GDExtensionPtrIndexedSetter :: #type (p_base: GDExtensionTypePtr, p_index: GDExtensionInt, p_value: GDExtensionConstTypePtr) -> void #c_call;
GDExtensionPtrIndexedGetter :: #type (p_base: GDExtensionConstTypePtr, p_index: GDExtensionInt, r_value: GDExtensionTypePtr) -> void #c_call;
GDExtensionPtrKeyedSetter :: #type (p_base: GDExtensionTypePtr, p_key: GDExtensionConstTypePtr, p_value: GDExtensionConstTypePtr) -> void #c_call;
GDExtensionPtrKeyedGetter :: #type (p_base: GDExtensionConstTypePtr, p_key: GDExtensionConstTypePtr, r_value: GDExtensionTypePtr) -> void #c_call;
GDExtensionPtrKeyedChecker :: #type (p_base: GDExtensionConstVariantPtr, p_key: GDExtensionConstVariantPtr) -> u32 #c_call;
GDExtensionPtrUtilityFunction :: #type (r_return: GDExtensionTypePtr, p_args: *GDExtensionConstTypePtr, p_argument_count: s32) -> void #c_call;

GDExtensionClassConstructor :: #type () -> GDExtensionObjectPtr #c_call;

GDExtensionInstanceBindingCreateCallback :: #type (p_token: *void, p_instance: *void) -> *void #c_call;
GDExtensionInstanceBindingFreeCallback :: #type (p_token: *void, p_instance: *void, p_binding: *void) -> void #c_call;
GDExtensionInstanceBindingReferenceCallback :: #type (p_token: *void, p_binding: *void, p_reference: GDExtensionBool) -> GDExtensionBool #c_call;

GDExtensionInstanceBindingCallbacks :: struct {
    create_callback:    GDExtensionInstanceBindingCreateCallback;
    free_callback:      GDExtensionInstanceBindingFreeCallback;
    reference_callback: GDExtensionInstanceBindingReferenceCallback;
}

/* EXTENSION CLASSES */
GDExtensionClassInstancePtr :: *void;

GDExtensionClassSet :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, p_value: GDExtensionConstVariantPtr) -> GDExtensionBool #c_call;
GDExtensionClassGet :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, r_ret: GDExtensionVariantPtr) -> GDExtensionBool #c_call;
GDExtensionClassGetRID :: #type (p_instance: GDExtensionClassInstancePtr) -> u64 #c_call;

GDExtensionPropertyInfo :: struct {
    type:        GDExtensionVariantType;
    name:        GDExtensionStringNamePtr;
    class_name:  GDExtensionStringNamePtr;
    hint:        u32; // Bitfield of `PropertyHint` (defined in `extension_api.json`).
    hint_string: GDExtensionStringPtr;
    usage:       u32; // Bitfield of `PropertyUsageFlags` (defined in `extension_api.json`).
}

GDExtensionMethodInfo :: struct {
    name:                   GDExtensionStringNamePtr;
    return_value:           GDExtensionPropertyInfo;
    flags:                  u32; // Bitfield of `GDExtensionClassMethodFlags`.
    id:                     s32;

    /* Arguments: `default_arguments` is an array of size `argument_count`. */
    argument_count:         u32;
    arguments:              *GDExtensionPropertyInfo;

    /* Default arguments: `default_arguments` is an array of size `default_argument_count`. */
    default_argument_count: u32;
    default_arguments:      *GDExtensionVariantPtr;
}

GDExtensionClassGetPropertyList :: #type (p_instance: GDExtensionClassInstancePtr, r_count: *u32) -> *GDExtensionPropertyInfo #c_call;
GDExtensionClassFreePropertyList :: #type (p_instance: GDExtensionClassInstancePtr, p_list: *GDExtensionPropertyInfo) -> void #c_call;
GDExtensionClassFreePropertyList2 :: #type (p_instance: GDExtensionClassInstancePtr, p_list: *GDExtensionPropertyInfo, p_count: u32) -> void #c_call;
GDExtensionClassPropertyCanRevert :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr) -> GDExtensionBool #c_call;
GDExtensionClassPropertyGetRevert :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, r_ret: GDExtensionVariantPtr) -> GDExtensionBool #c_call;
GDExtensionClassValidateProperty :: #type (p_instance: GDExtensionClassInstancePtr, p_property: *GDExtensionPropertyInfo) -> GDExtensionBool #c_call;
GDExtensionClassNotification :: #type (p_instance: GDExtensionClassInstancePtr, p_what: s32) -> void #c_call;
GDExtensionClassNotification2 :: #type (p_instance: GDExtensionClassInstancePtr, p_what: s32, p_reversed: GDExtensionBool) -> void #c_call;
GDExtensionClassToString :: #type (p_instance: GDExtensionClassInstancePtr, r_is_valid: *GDExtensionBool, p_out: GDExtensionStringPtr) -> void #c_call;
GDExtensionClassReference :: #type (p_instance: GDExtensionClassInstancePtr) -> void #c_call;
GDExtensionClassUnreference :: #type (p_instance: GDExtensionClassInstancePtr) -> void #c_call;
GDExtensionClassCallVirtual :: #type (p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void #c_call;
GDExtensionClassCreateInstance :: #type (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call;
GDExtensionClassCreateInstance2 :: #type (p_class_userdata: *void, p_notify_postinitialize: GDExtensionBool) -> GDExtensionObjectPtr #c_call;
GDExtensionClassFreeInstance :: #type (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) -> void #c_call;
GDExtensionClassRecreateInstance :: #type (p_class_userdata: *void, p_object: GDExtensionObjectPtr) -> GDExtensionClassInstancePtr #c_call;
GDExtensionClassGetVirtual :: #type (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> GDExtensionClassCallVirtual #c_call;
GDExtensionClassGetVirtual2 :: #type (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr, p_hash: u32) -> GDExtensionClassCallVirtual #c_call;
GDExtensionClassGetVirtualCallData :: #type (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr) -> *void #c_call;
GDExtensionClassGetVirtualCallData2 :: #type (p_class_userdata: *void, p_name: GDExtensionConstStringNamePtr, p_hash: u32) -> *void #c_call;
GDExtensionClassCallVirtualWithData :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDExtensionConstStringNamePtr, p_virtual_call_userdata: *void, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void #c_call;

GDExtensionClassCreationInfo :: struct {
    is_virtual:               GDExtensionBool;
    is_abstract:              GDExtensionBool;
    set_func:                 GDExtensionClassSet;
    get_func:                 GDExtensionClassGet;
    get_property_list_func:   GDExtensionClassGetPropertyList;
    free_property_list_func:  GDExtensionClassFreePropertyList;
    property_can_revert_func: GDExtensionClassPropertyCanRevert;
    property_get_revert_func: GDExtensionClassPropertyGetRevert;
    notification_func:        GDExtensionClassNotification;
    to_string_func:           GDExtensionClassToString;
    reference_func:           GDExtensionClassReference;
    unreference_func:         GDExtensionClassUnreference;
    create_instance_func:     GDExtensionClassCreateInstance; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
    free_instance_func:       GDExtensionClassFreeInstance; // Destructor; mandatory.
    get_virtual_func:         GDExtensionClassGetVirtual; // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
    get_rid_func:             GDExtensionClassGetRID;
    class_userdata:           *void; // Per-class user data, later accessible in instance bindings.
}

GDExtensionClassCreationInfo2 :: struct {
    is_virtual:                  GDExtensionBool;
    is_abstract:                 GDExtensionBool;
    is_exposed:                  GDExtensionBool;
    set_func:                    GDExtensionClassSet;
    get_func:                    GDExtensionClassGet;
    get_property_list_func:      GDExtensionClassGetPropertyList;
    free_property_list_func:     GDExtensionClassFreePropertyList;
    property_can_revert_func:    GDExtensionClassPropertyCanRevert;
    property_get_revert_func:    GDExtensionClassPropertyGetRevert;
    validate_property_func:      GDExtensionClassValidateProperty;
    notification_func:           GDExtensionClassNotification2;
    to_string_func:              GDExtensionClassToString;
    reference_func:              GDExtensionClassReference;
    unreference_func:            GDExtensionClassUnreference;
    create_instance_func:        GDExtensionClassCreateInstance; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
    free_instance_func:          GDExtensionClassFreeInstance; // Destructor; mandatory.
    recreate_instance_func:      GDExtensionClassRecreateInstance;

    // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
    get_virtual_func:            GDExtensionClassGetVirtual;

    // Paired with `call_virtual_with_data_func`, this is an alternative to `get_virtual_func` for extensions that
    // need or benefit from extra data when calling virtual functions.
    // Returns user data that will be passed to `call_virtual_with_data_func`.
    // Returning `NULL` from this function signals to Godot that the virtual function is not overridden.
    // Data returned from this function should be managed by the extension and must be valid until the extension is deinitialized.
    // You should supply either `get_virtual_func`, or `get_virtual_call_data_func` with `call_virtual_with_data_func`.
    get_virtual_call_data_func:  GDExtensionClassGetVirtualCallData;

    // Used to call virtual functions when `get_virtual_call_data_func` is not null.
    call_virtual_with_data_func: GDExtensionClassCallVirtualWithData;
    get_rid_func:                GDExtensionClassGetRID;
    class_userdata:              *void; // Per-class user data, later accessible in instance bindings.
}

GDExtensionClassCreationInfo3 :: struct {
    is_virtual:                  GDExtensionBool;
    is_abstract:                 GDExtensionBool;
    is_exposed:                  GDExtensionBool;
    is_runtime:                  GDExtensionBool;
    set_func:                    GDExtensionClassSet;
    get_func:                    GDExtensionClassGet;
    get_property_list_func:      GDExtensionClassGetPropertyList;
    free_property_list_func:     GDExtensionClassFreePropertyList2;
    property_can_revert_func:    GDExtensionClassPropertyCanRevert;
    property_get_revert_func:    GDExtensionClassPropertyGetRevert;
    validate_property_func:      GDExtensionClassValidateProperty;
    notification_func:           GDExtensionClassNotification2;
    to_string_func:              GDExtensionClassToString;
    reference_func:              GDExtensionClassReference;
    unreference_func:            GDExtensionClassUnreference;
    create_instance_func:        GDExtensionClassCreateInstance; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
    free_instance_func:          GDExtensionClassFreeInstance; // Destructor; mandatory.
    recreate_instance_func:      GDExtensionClassRecreateInstance;

    // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
    get_virtual_func:            GDExtensionClassGetVirtual;

    // Paired with `call_virtual_with_data_func`, this is an alternative to `get_virtual_func` for extensions that
    // need or benefit from extra data when calling virtual functions.
    // Returns user data that will be passed to `call_virtual_with_data_func`.
    // Returning `NULL` from this function signals to Godot that the virtual function is not overridden.
    // Data returned from this function should be managed by the extension and must be valid until the extension is deinitialized.
    // You should supply either `get_virtual_func`, or `get_virtual_call_data_func` with `call_virtual_with_data_func`.
    get_virtual_call_data_func:  GDExtensionClassGetVirtualCallData;

    // Used to call virtual functions when `get_virtual_call_data_func` is not null.
    call_virtual_with_data_func: GDExtensionClassCallVirtualWithData;
    get_rid_func:                GDExtensionClassGetRID;
    class_userdata:              *void; // Per-class user data, later accessible in instance bindings.
}

GDExtensionClassCreationInfo4 :: struct {
    is_virtual:                  GDExtensionBool;
    is_abstract:                 GDExtensionBool;
    is_exposed:                  GDExtensionBool;
    is_runtime:                  GDExtensionBool;
    icon_path:                   GDExtensionConstStringPtr;
    set_func:                    GDExtensionClassSet;
    get_func:                    GDExtensionClassGet;
    get_property_list_func:      GDExtensionClassGetPropertyList;
    free_property_list_func:     GDExtensionClassFreePropertyList2;
    property_can_revert_func:    GDExtensionClassPropertyCanRevert;
    property_get_revert_func:    GDExtensionClassPropertyGetRevert;
    validate_property_func:      GDExtensionClassValidateProperty;
    notification_func:           GDExtensionClassNotification2;
    to_string_func:              GDExtensionClassToString;
    reference_func:              GDExtensionClassReference;
    unreference_func:            GDExtensionClassUnreference;
    create_instance_func:        GDExtensionClassCreateInstance2; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
    free_instance_func:          GDExtensionClassFreeInstance; // Destructor; mandatory.
    recreate_instance_func:      GDExtensionClassRecreateInstance;

    // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
    get_virtual_func:            GDExtensionClassGetVirtual2;

    // Paired with `call_virtual_with_data_func`, this is an alternative to `get_virtual_func` for extensions that
    // need or benefit from extra data when calling virtual functions.
    // Returns user data that will be passed to `call_virtual_with_data_func`.
    // Returning `NULL` from this function signals to Godot that the virtual function is not overridden.
    // Data returned from this function should be managed by the extension and must be valid until the extension is deinitialized.
    // You should supply either `get_virtual_func`, or `get_virtual_call_data_func` with `call_virtual_with_data_func`.
    get_virtual_call_data_func:  GDExtensionClassGetVirtualCallData2;

    // Used to call virtual functions when `get_virtual_call_data_func` is not null.
    call_virtual_with_data_func: GDExtensionClassCallVirtualWithData;
    class_userdata:              *void; // Per-class user data, later accessible in instance bindings.
}

GDExtensionClassLibraryPtr :: *void;

/* Method */
GDExtensionClassMethodFlags :: enum s32 {
    FLAG_NORMAL   :: 1;
    FLAG_EDITOR   :: 2;
    FLAG_CONST    :: 4;
    FLAG_VIRTUAL  :: 8;
    FLAG_VARARG   :: 16;
    FLAG_STATIC   :: 32;
    FLAGS_DEFAULT :: 1;

    GDEXTENSION_METHOD_FLAG_NORMAL   :: FLAG_NORMAL;
    GDEXTENSION_METHOD_FLAG_EDITOR   :: FLAG_EDITOR;
    GDEXTENSION_METHOD_FLAG_CONST    :: FLAG_CONST;
    GDEXTENSION_METHOD_FLAG_VIRTUAL  :: FLAG_VIRTUAL;
    GDEXTENSION_METHOD_FLAG_VARARG   :: FLAG_VARARG;
    GDEXTENSION_METHOD_FLAG_STATIC   :: FLAG_STATIC;
    GDEXTENSION_METHOD_FLAGS_DEFAULT :: FLAGS_DEFAULT;
}

GDExtensionClassMethodArgumentMetadata :: enum s32 {
    NONE           :: 0;
    INT_IS_INT8    :: 1;
    INT_IS_INT16   :: 2;
    INT_IS_INT32   :: 3;
    INT_IS_INT64   :: 4;
    INT_IS_UINT8   :: 5;
    INT_IS_UINT16  :: 6;
    INT_IS_UINT32  :: 7;
    INT_IS_UINT64  :: 8;
    REAL_IS_FLOAT  :: 9;
    REAL_IS_DOUBLE :: 10;
    INT_IS_CHAR16  :: 11;
    INT_IS_CHAR32  :: 12;

    GDEXTENSION_METHOD_ARGUMENT_METADATA_NONE           :: NONE;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8    :: INT_IS_INT8;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16   :: INT_IS_INT16;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32   :: INT_IS_INT32;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64   :: INT_IS_INT64;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8   :: INT_IS_UINT8;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16  :: INT_IS_UINT16;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32  :: INT_IS_UINT32;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64  :: INT_IS_UINT64;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT  :: REAL_IS_FLOAT;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE :: REAL_IS_DOUBLE;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_CHAR16  :: INT_IS_CHAR16;
    GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_CHAR32  :: INT_IS_CHAR32;
}

GDExtensionClassMethodCall :: #type (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;
GDExtensionClassMethodValidatedCall :: #type (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstVariantPtr, r_return: GDExtensionVariantPtr) -> void #c_call;
GDExtensionClassMethodPtrCall :: #type (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void #c_call;

GDExtensionClassMethodInfo :: struct {
    name:                   GDExtensionStringNamePtr;
    method_userdata:        *void;
    call_func:              GDExtensionClassMethodCall;
    ptrcall_func:           GDExtensionClassMethodPtrCall;
    method_flags:           u32; // Bitfield of `GDExtensionClassMethodFlags`.

    /* If `has_return_value` is false, `return_value_info` and `return_value_metadata` are ignored.
    *
    * @todo Consider dropping `has_return_value` and making the other two properties match `GDExtensionMethodInfo` and `GDExtensionClassVirtualMethod` for consistency in future version of this struct.
    */
    has_return_value:       GDExtensionBool;
    return_value_info:      *GDExtensionPropertyInfo;
    return_value_metadata:  GDExtensionClassMethodArgumentMetadata;

    /* Arguments: `arguments_info` and `arguments_metadata` are array of size `argument_count`.
    * Name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies.
    *
    * @todo Consider renaming `arguments_info` to `arguments` for consistency in future version of this struct.
    */
    argument_count:         u32;
    arguments_info:         *GDExtensionPropertyInfo;
    arguments_metadata:     *GDExtensionClassMethodArgumentMetadata;

    /* Default arguments: `default_arguments` is an array of size `default_argument_count`. */
    default_argument_count: u32;
    default_arguments:      *GDExtensionVariantPtr;
}

GDExtensionClassVirtualMethodInfo :: struct {
    name:                  GDExtensionStringNamePtr;
    method_flags:          u32; // Bitfield of `GDExtensionClassMethodFlags`.

    return_value:          GDExtensionPropertyInfo;
    return_value_metadata: GDExtensionClassMethodArgumentMetadata;

    argument_count:        u32;
    arguments:             *GDExtensionPropertyInfo;
    arguments_metadata:    *GDExtensionClassMethodArgumentMetadata;
}

GDExtensionCallableCustomCall :: #type (callable_userdata: *void, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;
GDExtensionCallableCustomIsValid :: #type (callable_userdata: *void) -> GDExtensionBool #c_call;
GDExtensionCallableCustomFree :: #type (callable_userdata: *void) -> void #c_call;

GDExtensionCallableCustomHash :: #type (callable_userdata: *void) -> u32 #c_call;
GDExtensionCallableCustomEqual :: #type (callable_userdata_a: *void, callable_userdata_b: *void) -> GDExtensionBool #c_call;
GDExtensionCallableCustomLessThan :: #type (callable_userdata_a: *void, callable_userdata_b: *void) -> GDExtensionBool #c_call;

GDExtensionCallableCustomToString :: #type (callable_userdata: *void, r_is_valid: *GDExtensionBool, r_out: GDExtensionStringPtr) -> void #c_call;

GDExtensionCallableCustomGetArgumentCount :: #type (callable_userdata: *void, r_is_valid: *GDExtensionBool) -> GDExtensionInt #c_call;

GDExtensionCallableCustomInfo :: struct {
    /* Only `call_func` and `token` are strictly required, however, `object_id` should be passed if its not a static method.
    *
    * `token` should point to an address that uniquely identifies the GDExtension (for example, the
    * `GDExtensionClassLibraryPtr` passed to the entry symbol function.
    *
    * `hash_func`, `equal_func`, and `less_than_func` are optional. If not provided both `call_func` and
    * `callable_userdata` together are used as the identity of the callable for hashing and comparison purposes.
    *
    * The hash returned by `hash_func` is cached, `hash_func` will not be called more than once per callable.
    *
    * `is_valid_func` is necessary if the validity of the callable can change before destruction.
    *
    * `free_func` is necessary if `callable_userdata` needs to be cleaned up when the callable is freed.
    */
    callable_userdata: *void;
    token:             *void;

    object_id:         GDObjectInstanceID;

    call_func:         GDExtensionCallableCustomCall;
    is_valid_func:     GDExtensionCallableCustomIsValid;
    free_func:         GDExtensionCallableCustomFree;

    hash_func:         GDExtensionCallableCustomHash;
    equal_func:        GDExtensionCallableCustomEqual;
    less_than_func:    GDExtensionCallableCustomLessThan;

    to_string_func:    GDExtensionCallableCustomToString;
}

GDExtensionCallableCustomInfo2 :: struct {
    /* Only `call_func` and `token` are strictly required, however, `object_id` should be passed if its not a static method.
    *
    * `token` should point to an address that uniquely identifies the GDExtension (for example, the
    * `GDExtensionClassLibraryPtr` passed to the entry symbol function.
    *
    * `hash_func`, `equal_func`, and `less_than_func` are optional. If not provided both `call_func` and
    * `callable_userdata` together are used as the identity of the callable for hashing and comparison purposes.
    *
    * The hash returned by `hash_func` is cached, `hash_func` will not be called more than once per callable.
    *
    * `is_valid_func` is necessary if the validity of the callable can change before destruction.
    *
    * `free_func` is necessary if `callable_userdata` needs to be cleaned up when the callable is freed.
    */
    callable_userdata:       *void;
    token:                   *void;

    object_id:               GDObjectInstanceID;

    call_func:               GDExtensionCallableCustomCall;
    is_valid_func:           GDExtensionCallableCustomIsValid;
    free_func:               GDExtensionCallableCustomFree;

    hash_func:               GDExtensionCallableCustomHash;
    equal_func:              GDExtensionCallableCustomEqual;
    less_than_func:          GDExtensionCallableCustomLessThan;

    to_string_func:          GDExtensionCallableCustomToString;

    get_argument_count_func: GDExtensionCallableCustomGetArgumentCount;
}

/* SCRIPT INSTANCE EXTENSION */
GDExtensionScriptInstanceDataPtr :: *void;

GDExtensionScriptInstanceSet :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr, p_value: GDExtensionConstVariantPtr) -> GDExtensionBool #c_call;
GDExtensionScriptInstanceGet :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr, r_ret: GDExtensionVariantPtr) -> GDExtensionBool #c_call;
GDExtensionScriptInstanceGetPropertyList :: #type (p_instance: GDExtensionScriptInstanceDataPtr, r_count: *u32) -> *GDExtensionPropertyInfo #c_call;
GDExtensionScriptInstanceFreePropertyList :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_list: *GDExtensionPropertyInfo) -> void #c_call;
GDExtensionScriptInstanceFreePropertyList2 :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_list: *GDExtensionPropertyInfo, p_count: u32) -> void #c_call;
GDExtensionScriptInstanceGetClassCategory :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_class_category: *GDExtensionPropertyInfo) -> GDExtensionBool #c_call;

GDExtensionScriptInstanceGetPropertyType :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr, r_is_valid: *GDExtensionBool) -> GDExtensionVariantType #c_call;
GDExtensionScriptInstanceValidateProperty :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_property: *GDExtensionPropertyInfo) -> GDExtensionBool #c_call;

GDExtensionScriptInstancePropertyCanRevert :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr) -> GDExtensionBool #c_call;
GDExtensionScriptInstancePropertyGetRevert :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr, r_ret: GDExtensionVariantPtr) -> GDExtensionBool #c_call;

GDExtensionScriptInstanceGetOwner :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> GDExtensionObjectPtr #c_call;
GDExtensionScriptInstancePropertyStateAdd :: #type (p_name: GDExtensionConstStringNamePtr, p_value: GDExtensionConstVariantPtr, p_userdata: *void) -> void #c_call;
GDExtensionScriptInstanceGetPropertyState :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_add_func: GDExtensionScriptInstancePropertyStateAdd, p_userdata: *void) -> void #c_call;

GDExtensionScriptInstanceGetMethodList :: #type (p_instance: GDExtensionScriptInstanceDataPtr, r_count: *u32) -> *GDExtensionMethodInfo #c_call;
GDExtensionScriptInstanceFreeMethodList :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_list: *GDExtensionMethodInfo) -> void #c_call;
GDExtensionScriptInstanceFreeMethodList2 :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_list: *GDExtensionMethodInfo, p_count: u32) -> void #c_call;

GDExtensionScriptInstanceHasMethod :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr) -> GDExtensionBool #c_call;

GDExtensionScriptInstanceGetMethodArgumentCount :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_name: GDExtensionConstStringNamePtr, r_is_valid: *GDExtensionBool) -> GDExtensionInt #c_call;

GDExtensionScriptInstanceCall :: #type (p_self: GDExtensionScriptInstanceDataPtr, p_method: GDExtensionConstStringNamePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;
GDExtensionScriptInstanceNotification :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_what: s32) -> void #c_call;
GDExtensionScriptInstanceNotification2 :: #type (p_instance: GDExtensionScriptInstanceDataPtr, p_what: s32, p_reversed: GDExtensionBool) -> void #c_call;
GDExtensionScriptInstanceToString :: #type (p_instance: GDExtensionScriptInstanceDataPtr, r_is_valid: *GDExtensionBool, r_out: GDExtensionStringPtr) -> void #c_call;

GDExtensionScriptInstanceRefCountIncremented :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> void #c_call;
GDExtensionScriptInstanceRefCountDecremented :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> GDExtensionBool #c_call;

GDExtensionScriptInstanceGetScript :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> GDExtensionObjectPtr #c_call;
GDExtensionScriptInstanceIsPlaceholder :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> GDExtensionBool #c_call;

GDExtensionScriptLanguagePtr :: *void;

GDExtensionScriptInstanceGetLanguage :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> GDExtensionScriptLanguagePtr #c_call;

GDExtensionScriptInstanceFree :: #type (p_instance: GDExtensionScriptInstanceDataPtr) -> void #c_call;

GDExtensionScriptInstancePtr :: *void;

GDExtensionScriptInstanceInfo :: struct {
    set_func:                  GDExtensionScriptInstanceSet;
    get_func:                  GDExtensionScriptInstanceGet;
    get_property_list_func:    GDExtensionScriptInstanceGetPropertyList;
    free_property_list_func:   GDExtensionScriptInstanceFreePropertyList;

    property_can_revert_func:  GDExtensionScriptInstancePropertyCanRevert;
    property_get_revert_func:  GDExtensionScriptInstancePropertyGetRevert;

    get_owner_func:            GDExtensionScriptInstanceGetOwner;
    get_property_state_func:   GDExtensionScriptInstanceGetPropertyState;

    get_method_list_func:      GDExtensionScriptInstanceGetMethodList;
    free_method_list_func:     GDExtensionScriptInstanceFreeMethodList;
    get_property_type_func:    GDExtensionScriptInstanceGetPropertyType;

    has_method_func:           GDExtensionScriptInstanceHasMethod;

    call_func:                 GDExtensionScriptInstanceCall;
    notification_func:         GDExtensionScriptInstanceNotification;

    to_string_func:            GDExtensionScriptInstanceToString;

    refcount_incremented_func: GDExtensionScriptInstanceRefCountIncremented;
    refcount_decremented_func: GDExtensionScriptInstanceRefCountDecremented;

    get_script_func:           GDExtensionScriptInstanceGetScript;

    is_placeholder_func:       GDExtensionScriptInstanceIsPlaceholder;

    set_fallback_func:         GDExtensionScriptInstanceSet;
    get_fallback_func:         GDExtensionScriptInstanceGet;

    get_language_func:         GDExtensionScriptInstanceGetLanguage;

    free_func:                 GDExtensionScriptInstanceFree;
}

GDExtensionScriptInstanceInfo2 :: struct {
    set_func:                  GDExtensionScriptInstanceSet;
    get_func:                  GDExtensionScriptInstanceGet;
    get_property_list_func:    GDExtensionScriptInstanceGetPropertyList;
    free_property_list_func:   GDExtensionScriptInstanceFreePropertyList;
    get_class_category_func:   GDExtensionScriptInstanceGetClassCategory; // Optional. Set to NULL for the default behavior.

    property_can_revert_func:  GDExtensionScriptInstancePropertyCanRevert;
    property_get_revert_func:  GDExtensionScriptInstancePropertyGetRevert;

    get_owner_func:            GDExtensionScriptInstanceGetOwner;
    get_property_state_func:   GDExtensionScriptInstanceGetPropertyState;

    get_method_list_func:      GDExtensionScriptInstanceGetMethodList;
    free_method_list_func:     GDExtensionScriptInstanceFreeMethodList;
    get_property_type_func:    GDExtensionScriptInstanceGetPropertyType;
    validate_property_func:    GDExtensionScriptInstanceValidateProperty;

    has_method_func:           GDExtensionScriptInstanceHasMethod;

    call_func:                 GDExtensionScriptInstanceCall;
    notification_func:         GDExtensionScriptInstanceNotification2;

    to_string_func:            GDExtensionScriptInstanceToString;

    refcount_incremented_func: GDExtensionScriptInstanceRefCountIncremented;
    refcount_decremented_func: GDExtensionScriptInstanceRefCountDecremented;

    get_script_func:           GDExtensionScriptInstanceGetScript;

    is_placeholder_func:       GDExtensionScriptInstanceIsPlaceholder;

    set_fallback_func:         GDExtensionScriptInstanceSet;
    get_fallback_func:         GDExtensionScriptInstanceGet;

    get_language_func:         GDExtensionScriptInstanceGetLanguage;

    free_func:                 GDExtensionScriptInstanceFree;
}

GDExtensionScriptInstanceInfo3 :: struct {
    set_func:                       GDExtensionScriptInstanceSet;
    get_func:                       GDExtensionScriptInstanceGet;
    get_property_list_func:         GDExtensionScriptInstanceGetPropertyList;
    free_property_list_func:        GDExtensionScriptInstanceFreePropertyList2;
    get_class_category_func:        GDExtensionScriptInstanceGetClassCategory; // Optional. Set to NULL for the default behavior.

    property_can_revert_func:       GDExtensionScriptInstancePropertyCanRevert;
    property_get_revert_func:       GDExtensionScriptInstancePropertyGetRevert;

    get_owner_func:                 GDExtensionScriptInstanceGetOwner;
    get_property_state_func:        GDExtensionScriptInstanceGetPropertyState;

    get_method_list_func:           GDExtensionScriptInstanceGetMethodList;
    free_method_list_func:          GDExtensionScriptInstanceFreeMethodList2;
    get_property_type_func:         GDExtensionScriptInstanceGetPropertyType;
    validate_property_func:         GDExtensionScriptInstanceValidateProperty;

    has_method_func:                GDExtensionScriptInstanceHasMethod;

    get_method_argument_count_func: GDExtensionScriptInstanceGetMethodArgumentCount;

    call_func:                      GDExtensionScriptInstanceCall;
    notification_func:              GDExtensionScriptInstanceNotification2;

    to_string_func:                 GDExtensionScriptInstanceToString;

    refcount_incremented_func:      GDExtensionScriptInstanceRefCountIncremented;
    refcount_decremented_func:      GDExtensionScriptInstanceRefCountDecremented;

    get_script_func:                GDExtensionScriptInstanceGetScript;

    is_placeholder_func:            GDExtensionScriptInstanceIsPlaceholder;

    set_fallback_func:              GDExtensionScriptInstanceSet;
    get_fallback_func:              GDExtensionScriptInstanceGet;

    get_language_func:              GDExtensionScriptInstanceGetLanguage;

    free_func:                      GDExtensionScriptInstanceFree;
}

/* INITIALIZATION */
GDExtensionInitializationLevel :: enum s32 {
    INITIALIZATION_CORE      :: 0;
    INITIALIZATION_SERVERS   :: 1;
    INITIALIZATION_SCENE     :: 2;
    INITIALIZATION_EDITOR    :: 3;
    MAX_INITIALIZATION_LEVEL :: 4;

    GDEXTENSION_INITIALIZATION_CORE      :: INITIALIZATION_CORE;
    GDEXTENSION_INITIALIZATION_SERVERS   :: INITIALIZATION_SERVERS;
    GDEXTENSION_INITIALIZATION_SCENE     :: INITIALIZATION_SCENE;
    GDEXTENSION_INITIALIZATION_EDITOR    :: INITIALIZATION_EDITOR;
    GDEXTENSION_MAX_INITIALIZATION_LEVEL :: MAX_INITIALIZATION_LEVEL;
}

GDExtensionInitialization :: struct {
    /* Minimum initialization level required.
    * If Core or Servers, the extension needs editor or game restart to take effect */
    minimum_initialization_level: GDExtensionInitializationLevel;

    /* Up to the user to supply when initializing */
    userdata:                     *void;

    /* This function will be called multiple times for each initialization level. */
    initialize:                   #type (userdata: *void, p_level: GDExtensionInitializationLevel) -> void #c_call;
    deinitialize:                 #type (userdata: *void, p_level: GDExtensionInitializationLevel) -> void #c_call;
}

GDExtensionInterfaceFunctionPtr :: #type () -> void #c_call;
GDExtensionInterfaceGetProcAddress :: #type (p_function_name: *u8) -> GDExtensionInterfaceFunctionPtr #c_call;

/*
* Each GDExtension should define a C function that matches the signature of GDExtensionInitializationFunction,
* and export it so that it can be loaded via dlopen() or equivalent for the given platform.
*
* For example:
*
*   GDExtensionBool my_extension_init(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization);
*
* This function's name must be specified as the 'entry_symbol' in the .gdextension file.
*
* This makes it the entry point of the GDExtension and will be called on initialization.
*
* The GDExtension can then modify the r_initialization structure, setting the minimum initialization level,
* and providing pointers to functions that will be called at various stages of initialization/shutdown.
*
* The rest of the GDExtension's interface to Godot consists of function pointers that can be loaded
* by calling p_get_proc_address("...") with the name of the function.
*
* For example:
*
*   GDExtensionInterfaceGetGodotVersion get_godot_version = (GDExtensionInterfaceGetGodotVersion)p_get_proc_address("get_godot_version");
*
* (Note that snippet may cause "cast between incompatible function types" on some compilers, you can
* silence this by adding an intermediary `void*` cast.)
*
* You can then call it like a normal function:
*
*   GDExtensionGodotVersion godot_version;
*   get_godot_version(&godot_version);
*   printf("Godot v%d.%d.%d\n", godot_version.major, godot_version.minor, godot_version.patch);
*
* All of these interface functions are described below, together with the name that's used to load it,
* and the function pointer typedef that shows its signature.
*/
GDExtensionInitializationFunction :: #type (p_get_proc_address: GDExtensionInterfaceGetProcAddress, p_library: GDExtensionClassLibraryPtr, r_initialization: *GDExtensionInitialization) -> GDExtensionBool #c_call;

/* INTERFACE */
GDExtensionGodotVersion :: struct {
    major:   u32;
    minor:   u32;
    patch:   u32;
    _string: *u8;
}

/**
* @name get_godot_version
* @since 4.1
*
* Gets the Godot version that the GDExtension was loaded into.
*
* @param r_godot_version A pointer to the structure to write the version information into.
*/
GDExtensionInterfaceGetGodotVersion :: #type (r_godot_version: *GDExtensionGodotVersion) -> void #c_call;

/**
* @name mem_alloc
* @since 4.1
*
* Allocates memory.
*
* @param p_bytes The amount of memory to allocate in bytes.
*
* @return A pointer to the allocated memory, or NULL if unsuccessful.
*/
GDExtensionInterfaceMemAlloc :: #type (p_bytes: u64) -> *void #c_call;

/**
* @name mem_realloc
* @since 4.1
*
* Reallocates memory.
*
* @param p_ptr A pointer to the previously allocated memory.
* @param p_bytes The number of bytes to resize the memory block to.
*
* @return A pointer to the allocated memory, or NULL if unsuccessful.
*/
GDExtensionInterfaceMemRealloc :: #type (p_ptr: *void, p_bytes: u64) -> *void #c_call;

/**
* @name mem_free
* @since 4.1
*
* Frees memory.
*
* @param p_ptr A pointer to the previously allocated memory.
*/
GDExtensionInterfaceMemFree :: #type (p_ptr: *void) -> void #c_call;

/**
* @name print_error
* @since 4.1
*
* Logs an error to Godot's built-in debugger and to the OS terminal.
*
* @param p_description The code triggering the error.
* @param p_function The function name where the error occurred.
* @param p_file The file where the error occurred.
* @param p_line The line where the error occurred.
* @param p_editor_notify Whether or not to notify the editor.
*/
GDExtensionInterfacePrintError :: #type (p_description: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;

/**
* @name print_error_with_message
* @since 4.1
*
* Logs an error with a message to Godot's built-in debugger and to the OS terminal.
*
* @param p_description The code triggering the error.
* @param p_message The message to show along with the error.
* @param p_function The function name where the error occurred.
* @param p_file The file where the error occurred.
* @param p_line The line where the error occurred.
* @param p_editor_notify Whether or not to notify the editor.
*/
GDExtensionInterfacePrintErrorWithMessage :: #type (p_description: *u8, p_message: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;

/**
* @name print_warning
* @since 4.1
*
* Logs a warning to Godot's built-in debugger and to the OS terminal.
*
* @param p_description The code triggering the warning.
* @param p_function The function name where the warning occurred.
* @param p_file The file where the warning occurred.
* @param p_line The line where the warning occurred.
* @param p_editor_notify Whether or not to notify the editor.
*/
GDExtensionInterfacePrintWarning :: #type (p_description: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;

/**
* @name print_warning_with_message
* @since 4.1
*
* Logs a warning with a message to Godot's built-in debugger and to the OS terminal.
*
* @param p_description The code triggering the warning.
* @param p_message The message to show along with the warning.
* @param p_function The function name where the warning occurred.
* @param p_file The file where the warning occurred.
* @param p_line The line where the warning occurred.
* @param p_editor_notify Whether or not to notify the editor.
*/
GDExtensionInterfacePrintWarningWithMessage :: #type (p_description: *u8, p_message: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;

/**
* @name print_script_error
* @since 4.1
*
* Logs a script error to Godot's built-in debugger and to the OS terminal.
*
* @param p_description The code triggering the error.
* @param p_function The function name where the error occurred.
* @param p_file The file where the error occurred.
* @param p_line The line where the error occurred.
* @param p_editor_notify Whether or not to notify the editor.
*/
GDExtensionInterfacePrintScriptError :: #type (p_description: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;

/**
* @name print_script_error_with_message
* @since 4.1
*
* Logs a script error with a message to Godot's built-in debugger and to the OS terminal.
*
* @param p_description The code triggering the error.
* @param p_message The message to show along with the error.
* @param p_function The function name where the error occurred.
* @param p_file The file where the error occurred.
* @param p_line The line where the error occurred.
* @param p_editor_notify Whether or not to notify the editor.
*/
GDExtensionInterfacePrintScriptErrorWithMessage :: #type (p_description: *u8, p_message: *u8, p_function: *u8, p_file: *u8, p_line: s32, p_editor_notify: GDExtensionBool) -> void #c_call;

/**
* @name get_native_struct_size
* @since 4.1
*
* Gets the size of a native struct (ex. ObjectID) in bytes.
*
* @param p_name A pointer to a StringName identifying the struct name.
*
* @return The size in bytes.
*/
GDExtensionInterfaceGetNativeStructSize :: #type (p_name: GDExtensionConstStringNamePtr) -> u64 #c_call;

/**
* @name variant_new_copy
* @since 4.1
*
* Copies one Variant into a another.
*
* @param r_dest A pointer to the destination Variant.
* @param p_src A pointer to the source Variant.
*/
GDExtensionInterfaceVariantNewCopy :: #type (r_dest: GDExtensionUninitializedVariantPtr, p_src: GDExtensionConstVariantPtr) -> void #c_call;

/**
* @name variant_new_nil
* @since 4.1
*
* Creates a new Variant containing nil.
*
* @param r_dest A pointer to the destination Variant.
*/
GDExtensionInterfaceVariantNewNil :: #type (r_dest: GDExtensionUninitializedVariantPtr) -> void #c_call;

/**
* @name variant_destroy
* @since 4.1
*
* Destroys a Variant.
*
* @param p_self A pointer to the Variant to destroy.
*/
GDExtensionInterfaceVariantDestroy :: #type (p_self: GDExtensionVariantPtr) -> void #c_call;

/**
* @name variant_call
* @since 4.1
*
* Calls a method on a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_method A pointer to a StringName identifying the method.
* @param p_args A pointer to a C array of Variant.
* @param p_argument_count The number of arguments.
* @param r_return A pointer a Variant which will be assigned the return value.
* @param r_error A pointer the structure which will hold error information.
*
* @see Variant::callp()
*/
GDExtensionInterfaceVariantCall :: #type (p_self: GDExtensionVariantPtr, p_method: GDExtensionConstStringNamePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionUninitializedVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;

/**
* @name variant_call_static
* @since 4.1
*
* Calls a static method on a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_method A pointer to a StringName identifying the method.
* @param p_args A pointer to a C array of Variant.
* @param p_argument_count The number of arguments.
* @param r_return A pointer a Variant which will be assigned the return value.
* @param r_error A pointer the structure which will be updated with error information.
*
* @see Variant::call_static()
*/
GDExtensionInterfaceVariantCallStatic :: #type (p_type: GDExtensionVariantType, p_method: GDExtensionConstStringNamePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionUninitializedVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;

/**
* @name variant_evaluate
* @since 4.1
*
* Evaluate an operator on two Variants.
*
* @param p_op The operator to evaluate.
* @param p_a The first Variant.
* @param p_b The second Variant.
* @param r_return A pointer a Variant which will be assigned the return value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @see Variant::evaluate()
*/
GDExtensionInterfaceVariantEvaluate :: #type (p_op: GDExtensionVariantOperator, p_a: GDExtensionConstVariantPtr, p_b: GDExtensionConstVariantPtr, r_return: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_set
* @since 4.1
*
* Sets a key on a Variant to a value.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a Variant representing the key.
* @param p_value A pointer to a Variant representing the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @see Variant::set()
*/
GDExtensionInterfaceVariantSet :: #type (p_self: GDExtensionVariantPtr, p_key: GDExtensionConstVariantPtr, p_value: GDExtensionConstVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_set_named
* @since 4.1
*
* Sets a named key on a Variant to a value.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a StringName representing the key.
* @param p_value A pointer to a Variant representing the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @see Variant::set_named()
*/
GDExtensionInterfaceVariantSetNamed :: #type (p_self: GDExtensionVariantPtr, p_key: GDExtensionConstStringNamePtr, p_value: GDExtensionConstVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_set_keyed
* @since 4.1
*
* Sets a keyed property on a Variant to a value.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a Variant representing the key.
* @param p_value A pointer to a Variant representing the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @see Variant::set_keyed()
*/
GDExtensionInterfaceVariantSetKeyed :: #type (p_self: GDExtensionVariantPtr, p_key: GDExtensionConstVariantPtr, p_value: GDExtensionConstVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_set_indexed
* @since 4.1
*
* Sets an index on a Variant to a value.
*
* @param p_self A pointer to the Variant.
* @param p_index The index.
* @param p_value A pointer to a Variant representing the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
* @param r_oob A pointer to a boolean which will be set to true if the index is out of bounds.
*/
GDExtensionInterfaceVariantSetIndexed :: #type (p_self: GDExtensionVariantPtr, p_index: GDExtensionInt, p_value: GDExtensionConstVariantPtr, r_valid: *GDExtensionBool, r_oob: *GDExtensionBool) -> void #c_call;

/**
* @name variant_get
* @since 4.1
*
* Gets the value of a key from a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a Variant representing the key.
* @param r_ret A pointer to a Variant which will be assigned the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*/
GDExtensionInterfaceVariantGet :: #type (p_self: GDExtensionConstVariantPtr, p_key: GDExtensionConstVariantPtr, r_ret: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_get_named
* @since 4.1
*
* Gets the value of a named key from a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a StringName representing the key.
* @param r_ret A pointer to a Variant which will be assigned the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*/
GDExtensionInterfaceVariantGetNamed :: #type (p_self: GDExtensionConstVariantPtr, p_key: GDExtensionConstStringNamePtr, r_ret: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_get_keyed
* @since 4.1
*
* Gets the value of a keyed property from a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a Variant representing the key.
* @param r_ret A pointer to a Variant which will be assigned the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*/
GDExtensionInterfaceVariantGetKeyed :: #type (p_self: GDExtensionConstVariantPtr, p_key: GDExtensionConstVariantPtr, r_ret: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_get_indexed
* @since 4.1
*
* Gets the value of an index from a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_index The index.
* @param r_ret A pointer to a Variant which will be assigned the value.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
* @param r_oob A pointer to a boolean which will be set to true if the index is out of bounds.
*/
GDExtensionInterfaceVariantGetIndexed :: #type (p_self: GDExtensionConstVariantPtr, p_index: GDExtensionInt, r_ret: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool, r_oob: *GDExtensionBool) -> void #c_call;

/**
* @name variant_iter_init
* @since 4.1
*
* Initializes an iterator over a Variant.
*
* @param p_self A pointer to the Variant.
* @param r_iter A pointer to a Variant which will be assigned the iterator.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @return true if the operation is valid; otherwise false.
*
* @see Variant::iter_init()
*/
GDExtensionInterfaceVariantIterInit :: #type (p_self: GDExtensionConstVariantPtr, r_iter: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool) -> GDExtensionBool #c_call;

/**
* @name variant_iter_next
* @since 4.1
*
* Gets the next value for an iterator over a Variant.
*
* @param p_self A pointer to the Variant.
* @param r_iter A pointer to a Variant which will be assigned the iterator.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @return true if the operation is valid; otherwise false.
*
* @see Variant::iter_next()
*/
GDExtensionInterfaceVariantIterNext :: #type (p_self: GDExtensionConstVariantPtr, r_iter: GDExtensionVariantPtr, r_valid: *GDExtensionBool) -> GDExtensionBool #c_call;

/**
* @name variant_iter_get
* @since 4.1
*
* Gets the next value for an iterator over a Variant.
*
* @param p_self A pointer to the Variant.
* @param r_iter A pointer to a Variant which will be assigned the iterator.
* @param r_ret A pointer to a Variant which will be assigned false if the operation is invalid.
* @param r_valid A pointer to a boolean which will be set to false if the operation is invalid.
*
* @see Variant::iter_get()
*/
GDExtensionInterfaceVariantIterGet :: #type (p_self: GDExtensionConstVariantPtr, r_iter: GDExtensionVariantPtr, r_ret: GDExtensionUninitializedVariantPtr, r_valid: *GDExtensionBool) -> void #c_call;

/**
* @name variant_hash
* @since 4.1
*
* Gets the hash of a Variant.
*
* @param p_self A pointer to the Variant.
*
* @return The hash value.
*
* @see Variant::hash()
*/
GDExtensionInterfaceVariantHash :: #type (p_self: GDExtensionConstVariantPtr) -> GDExtensionInt #c_call;

/**
* @name variant_recursive_hash
* @since 4.1
*
* Gets the recursive hash of a Variant.
*
* @param p_self A pointer to the Variant.
* @param p_recursion_count The number of recursive loops so far.
*
* @return The hash value.
*
* @see Variant::recursive_hash()
*/
GDExtensionInterfaceVariantRecursiveHash :: #type (p_self: GDExtensionConstVariantPtr, p_recursion_count: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name variant_hash_compare
* @since 4.1
*
* Compares two Variants by their hash.
*
* @param p_self A pointer to the Variant.
* @param p_other A pointer to the other Variant to compare it to.
*
* @return The hash value.
*
* @see Variant::hash_compare()
*/
GDExtensionInterfaceVariantHashCompare :: #type (p_self: GDExtensionConstVariantPtr, p_other: GDExtensionConstVariantPtr) -> GDExtensionBool #c_call;

/**
* @name variant_booleanize
* @since 4.1
*
* Converts a Variant to a boolean.
*
* @param p_self A pointer to the Variant.
*
* @return The boolean value of the Variant.
*/
GDExtensionInterfaceVariantBooleanize :: #type (p_self: GDExtensionConstVariantPtr) -> GDExtensionBool #c_call;

/**
* @name variant_duplicate
* @since 4.1
*
* Duplicates a Variant.
*
* @param p_self A pointer to the Variant.
* @param r_ret A pointer to a Variant to store the duplicated value.
* @param p_deep Whether or not to duplicate deeply (when supported by the Variant type).
*/
GDExtensionInterfaceVariantDuplicate :: #type (p_self: GDExtensionConstVariantPtr, r_ret: GDExtensionVariantPtr, p_deep: GDExtensionBool) -> void #c_call;

/**
* @name variant_stringify
* @since 4.1
*
* Converts a Variant to a string.
*
* @param p_self A pointer to the Variant.
* @param r_ret A pointer to a String to store the resulting value.
*/
GDExtensionInterfaceVariantStringify :: #type (p_self: GDExtensionConstVariantPtr, r_ret: GDExtensionStringPtr) -> void #c_call;

/**
* @name variant_get_type
* @since 4.1
*
* Gets the type of a Variant.
*
* @param p_self A pointer to the Variant.
*
* @return The variant type.
*/
GDExtensionInterfaceVariantGetType :: #type (p_self: GDExtensionConstVariantPtr) -> GDExtensionVariantType #c_call;

/**
* @name variant_has_method
* @since 4.1
*
* Checks if a Variant has the given method.
*
* @param p_self A pointer to the Variant.
* @param p_method A pointer to a StringName with the method name.
*
* @return
*/
GDExtensionInterfaceVariantHasMethod :: #type (p_self: GDExtensionConstVariantPtr, p_method: GDExtensionConstStringNamePtr) -> GDExtensionBool #c_call;

/**
* @name variant_has_member
* @since 4.1
*
* Checks if a type of Variant has the given member.
*
* @param p_type The Variant type.
* @param p_member A pointer to a StringName with the member name.
*
* @return
*/
GDExtensionInterfaceVariantHasMember :: #type (p_type: GDExtensionVariantType, p_member: GDExtensionConstStringNamePtr) -> GDExtensionBool #c_call;

/**
* @name variant_has_key
* @since 4.1
*
* Checks if a Variant has a key.
*
* @param p_self A pointer to the Variant.
* @param p_key A pointer to a Variant representing the key.
* @param r_valid A pointer to a boolean which will be set to false if the key doesn't exist.
*
* @return true if the key exists; otherwise false.
*/
GDExtensionInterfaceVariantHasKey :: #type (p_self: GDExtensionConstVariantPtr, p_key: GDExtensionConstVariantPtr, r_valid: *GDExtensionBool) -> GDExtensionBool #c_call;

/**
* @name variant_get_object_instance_id
* @since 4.4
*
* Gets the object instance ID from a variant of type GDEXTENSION_VARIANT_TYPE_OBJECT.
*
* If the variant isn't of type GDEXTENSION_VARIANT_TYPE_OBJECT, then zero will be returned.
* The instance ID will be returned even if the object is no longer valid - use `object_get_instance_by_id()` to check if the object is still valid.
*
* @param p_self A pointer to the Variant.
*
* @return The instance ID for the contained object.
*/
GDExtensionInterfaceVariantGetObjectInstanceId :: #type (p_self: GDExtensionConstVariantPtr) -> GDObjectInstanceID #c_call;

/**
* @name variant_get_type_name
* @since 4.1
*
* Gets the name of a Variant type.
*
* @param p_type The Variant type.
* @param r_name A pointer to a String to store the Variant type name.
*/
GDExtensionInterfaceVariantGetTypeName :: #type (p_type: GDExtensionVariantType, r_name: GDExtensionUninitializedStringPtr) -> void #c_call;

/**
* @name variant_can_convert
* @since 4.1
*
* Checks if Variants can be converted from one type to another.
*
* @param p_from The Variant type to convert from.
* @param p_to The Variant type to convert to.
*
* @return true if the conversion is possible; otherwise false.
*/
GDExtensionInterfaceVariantCanConvert :: #type (p_from: GDExtensionVariantType, p_to: GDExtensionVariantType) -> GDExtensionBool #c_call;

/**
* @name variant_can_convert_strict
* @since 4.1
*
* Checks if Variant can be converted from one type to another using stricter rules.
*
* @param p_from The Variant type to convert from.
* @param p_to The Variant type to convert to.
*
* @return true if the conversion is possible; otherwise false.
*/
GDExtensionInterfaceVariantCanConvertStrict :: #type (p_from: GDExtensionVariantType, p_to: GDExtensionVariantType) -> GDExtensionBool #c_call;

/**
* @name get_variant_from_type_constructor
* @since 4.1
*
* Gets a pointer to a function that can create a Variant of the given type from a raw value.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can create a Variant of the given type from a raw value.
*/
GDExtensionInterfaceGetVariantFromTypeConstructor :: #type (p_type: GDExtensionVariantType) -> GDExtensionVariantFromTypeConstructorFunc #c_call;

/**
* @name get_variant_to_type_constructor
* @since 4.1
*
* Gets a pointer to a function that can get the raw value from a Variant of the given type.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can get the raw value from a Variant of the given type.
*/
GDExtensionInterfaceGetVariantToTypeConstructor :: #type (p_type: GDExtensionVariantType) -> GDExtensionTypeFromVariantConstructorFunc #c_call;

/**
* @name variant_get_ptr_internal_getter
* @since 4.4
*
* Provides a function pointer for retrieving a pointer to a variant's internal value.
* Access to a variant's internal value can be used to modify it in-place, or to retrieve its value without the overhead of variant conversion functions.
* It is recommended to cache the getter for all variant types in a function table to avoid retrieval overhead upon use.
*
* @note Each function assumes the variant's type has already been determined and matches the function.
* Invoking the function with a variant of a mismatched type has undefined behavior, and may lead to a segmentation fault.
*
* @param p_type The Variant type.
*
* @return A pointer to a type-specific function that returns a pointer to the internal value of a variant. Check the implementation of this function (gdextension_variant_get_ptr_internal_getter) for pointee type info of each variant type.
*/
GDExtensionInterfaceGetVariantGetInternalPtrFunc :: #type (p_type: GDExtensionVariantType) -> GDExtensionVariantGetInternalPtrFunc #c_call;

/**
* @name variant_get_ptr_operator_evaluator
* @since 4.1
*
* Gets a pointer to a function that can evaluate the given Variant operator on the given Variant types.
*
* @param p_operator The variant operator.
* @param p_type_a The type of the first Variant.
* @param p_type_b The type of the second Variant.
*
* @return A pointer to a function that can evaluate the given Variant operator on the given Variant types.
*/
GDExtensionInterfaceVariantGetPtrOperatorEvaluator :: #type (p_operator: GDExtensionVariantOperator, p_type_a: GDExtensionVariantType, p_type_b: GDExtensionVariantType) -> GDExtensionPtrOperatorEvaluator #c_call;

/**
* @name variant_get_ptr_builtin_method
* @since 4.1
*
* Gets a pointer to a function that can call a builtin method on a type of Variant.
*
* @param p_type The Variant type.
* @param p_method A pointer to a StringName with the method name.
* @param p_hash A hash representing the method signature.
*
* @return A pointer to a function that can call a builtin method on a type of Variant.
*/
GDExtensionInterfaceVariantGetPtrBuiltinMethod :: #type (p_type: GDExtensionVariantType, p_method: GDExtensionConstStringNamePtr, p_hash: GDExtensionInt) -> GDExtensionPtrBuiltInMethod #c_call;

/**
* @name variant_get_ptr_constructor
* @since 4.1
*
* Gets a pointer to a function that can call one of the constructors for a type of Variant.
*
* @param p_type The Variant type.
* @param p_constructor The index of the constructor.
*
* @return A pointer to a function that can call one of the constructors for a type of Variant.
*/
GDExtensionInterfaceVariantGetPtrConstructor :: #type (p_type: GDExtensionVariantType, p_constructor: s32) -> GDExtensionPtrConstructor #c_call;

/**
* @name variant_get_ptr_destructor
* @since 4.1
*
* Gets a pointer to a function than can call the destructor for a type of Variant.
*
* @param p_type The Variant type.
*
* @return A pointer to a function than can call the destructor for a type of Variant.
*/
GDExtensionInterfaceVariantGetPtrDestructor :: #type (p_type: GDExtensionVariantType) -> GDExtensionPtrDestructor #c_call;

/**
* @name variant_construct
* @since 4.1
*
* Constructs a Variant of the given type, using the first constructor that matches the given arguments.
*
* @param p_type The Variant type.
* @param p_base A pointer to a Variant to store the constructed value.
* @param p_args A pointer to a C array of Variant pointers representing the arguments for the constructor.
* @param p_argument_count The number of arguments to pass to the constructor.
* @param r_error A pointer the structure which will be updated with error information.
*/
GDExtensionInterfaceVariantConstruct :: #type (p_type: GDExtensionVariantType, r_base: GDExtensionUninitializedVariantPtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: s32, r_error: *GDExtensionCallError) -> void #c_call;

/**
* @name variant_get_ptr_setter
* @since 4.1
*
* Gets a pointer to a function that can call a member's setter on the given Variant type.
*
* @param p_type The Variant type.
* @param p_member A pointer to a StringName with the member name.
*
* @return A pointer to a function that can call a member's setter on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrSetter :: #type (p_type: GDExtensionVariantType, p_member: GDExtensionConstStringNamePtr) -> GDExtensionPtrSetter #c_call;

/**
* @name variant_get_ptr_getter
* @since 4.1
*
* Gets a pointer to a function that can call a member's getter on the given Variant type.
*
* @param p_type The Variant type.
* @param p_member A pointer to a StringName with the member name.
*
* @return A pointer to a function that can call a member's getter on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrGetter :: #type (p_type: GDExtensionVariantType, p_member: GDExtensionConstStringNamePtr) -> GDExtensionPtrGetter #c_call;

/**
* @name variant_get_ptr_indexed_setter
* @since 4.1
*
* Gets a pointer to a function that can set an index on the given Variant type.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can set an index on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrIndexedSetter :: #type (p_type: GDExtensionVariantType) -> GDExtensionPtrIndexedSetter #c_call;

/**
* @name variant_get_ptr_indexed_getter
* @since 4.1
*
* Gets a pointer to a function that can get an index on the given Variant type.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can get an index on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrIndexedGetter :: #type (p_type: GDExtensionVariantType) -> GDExtensionPtrIndexedGetter #c_call;

/**
* @name variant_get_ptr_keyed_setter
* @since 4.1
*
* Gets a pointer to a function that can set a key on the given Variant type.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can set a key on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrKeyedSetter :: #type (p_type: GDExtensionVariantType) -> GDExtensionPtrKeyedSetter #c_call;

/**
* @name variant_get_ptr_keyed_getter
* @since 4.1
*
* Gets a pointer to a function that can get a key on the given Variant type.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can get a key on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrKeyedGetter :: #type (p_type: GDExtensionVariantType) -> GDExtensionPtrKeyedGetter #c_call;

/**
* @name variant_get_ptr_keyed_checker
* @since 4.1
*
* Gets a pointer to a function that can check a key on the given Variant type.
*
* @param p_type The Variant type.
*
* @return A pointer to a function that can check a key on the given Variant type.
*/
GDExtensionInterfaceVariantGetPtrKeyedChecker :: #type (p_type: GDExtensionVariantType) -> GDExtensionPtrKeyedChecker #c_call;

/**
* @name variant_get_constant_value
* @since 4.1
*
* Gets the value of a constant from the given Variant type.
*
* @param p_type The Variant type.
* @param p_constant A pointer to a StringName with the constant name.
* @param r_ret A pointer to a Variant to store the value.
*/
GDExtensionInterfaceVariantGetConstantValue :: #type (p_type: GDExtensionVariantType, p_constant: GDExtensionConstStringNamePtr, r_ret: GDExtensionUninitializedVariantPtr) -> void #c_call;

/**
* @name variant_get_ptr_utility_function
* @since 4.1
*
* Gets a pointer to a function that can call a Variant utility function.
*
* @param p_function A pointer to a StringName with the function name.
* @param p_hash A hash representing the function signature.
*
* @return A pointer to a function that can call a Variant utility function.
*/
GDExtensionInterfaceVariantGetPtrUtilityFunction :: #type (p_function: GDExtensionConstStringNamePtr, p_hash: GDExtensionInt) -> GDExtensionPtrUtilityFunction #c_call;

/**
* @name string_new_with_latin1_chars
* @since 4.1
*
* Creates a String from a Latin-1 encoded C string.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a Latin-1 encoded C string (null terminated).
*/
GDExtensionInterfaceStringNewWithLatin1Chars :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u8) -> void #c_call;

/**
* @name string_new_with_utf8_chars
* @since 4.1
*
* Creates a String from a UTF-8 encoded C string.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-8 encoded C string (null terminated).
*/
GDExtensionInterfaceStringNewWithUtf8Chars :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u8) -> void #c_call;

/**
* @name string_new_with_utf16_chars
* @since 4.1
*
* Creates a String from a UTF-16 encoded C string.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-16 encoded C string (null terminated).
*/
GDExtensionInterfaceStringNewWithUtf16Chars :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u16) -> void #c_call;

/**
* @name string_new_with_utf32_chars
* @since 4.1
*
* Creates a String from a UTF-32 encoded C string.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-32 encoded C string (null terminated).
*/
GDExtensionInterfaceStringNewWithUtf32Chars :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u32) -> void #c_call;

/**
* @name string_new_with_wide_chars
* @since 4.1
*
* Creates a String from a wide C string.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a wide C string (null terminated).
*/
GDExtensionInterfaceStringNewWithWideChars :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *s16) -> void #c_call;

/**
* @name string_new_with_latin1_chars_and_len
* @since 4.1
*
* Creates a String from a Latin-1 encoded C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a Latin-1 encoded C string.
* @param p_size The number of characters (= number of bytes).
*/
GDExtensionInterfaceStringNewWithLatin1CharsAndLen :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u8, p_size: GDExtensionInt) -> void #c_call;

/**
* @name string_new_with_utf8_chars_and_len
* @since 4.1
* @deprecated in Godot 4.3. Use `string_new_with_utf8_chars_and_len2` instead.
*
* Creates a String from a UTF-8 encoded C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-8 encoded C string.
* @param p_size The number of bytes (not code units).
*/
GDExtensionInterfaceStringNewWithUtf8CharsAndLen :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u8, p_size: GDExtensionInt) -> void #c_call;

/**
* @name string_new_with_utf8_chars_and_len2
* @since 4.3
*
* Creates a String from a UTF-8 encoded C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-8 encoded C string.
* @param p_size The number of bytes (not code units).
*
* @return Error code signifying if the operation successful.
*/
GDExtensionInterfaceStringNewWithUtf8CharsAndLen2 :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u8, p_size: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_new_with_utf16_chars_and_len
* @since 4.1
* @deprecated in Godot 4.3. Use `string_new_with_utf16_chars_and_len2` instead.
*
* Creates a String from a UTF-16 encoded C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-16 encoded C string.
* @param p_size The number of characters (not bytes).
*/
GDExtensionInterfaceStringNewWithUtf16CharsAndLen :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u16, p_char_count: GDExtensionInt) -> void #c_call;

/**
* @name string_new_with_utf16_chars_and_len2
* @since 4.3
*
* Creates a String from a UTF-16 encoded C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-16 encoded C string.
* @param p_size The number of characters (not bytes).
* @param p_default_little_endian If true, UTF-16 use little endian.
*
* @return Error code signifying if the operation successful.
*/
GDExtensionInterfaceStringNewWithUtf16CharsAndLen2 :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u16, p_char_count: GDExtensionInt, p_default_little_endian: GDExtensionBool) -> GDExtensionInt #c_call;

/**
* @name string_new_with_utf32_chars_and_len
* @since 4.1
*
* Creates a String from a UTF-32 encoded C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a UTF-32 encoded C string.
* @param p_size The number of characters (not bytes).
*/
GDExtensionInterfaceStringNewWithUtf32CharsAndLen :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *u32, p_char_count: GDExtensionInt) -> void #c_call;

/**
* @name string_new_with_wide_chars_and_len
* @since 4.1
*
* Creates a String from a wide C string with the given length.
*
* @param r_dest A pointer to a Variant to hold the newly created String.
* @param p_contents A pointer to a wide C string.
* @param p_size The number of characters (not bytes).
*/
GDExtensionInterfaceStringNewWithWideCharsAndLen :: #type (r_dest: GDExtensionUninitializedStringPtr, p_contents: *s16, p_char_count: GDExtensionInt) -> void #c_call;

/**
* @name string_to_latin1_chars
* @since 4.1
*
* Converts a String to a Latin-1 encoded C string.
*
* It doesn't write a null terminator.
*
* @param p_self A pointer to the String.
* @param r_text A pointer to the buffer to hold the resulting data. If NULL is passed in, only the length will be computed.
* @param p_max_write_length The maximum number of characters that can be written to r_text. It has no affect on the return value.
*
* @return The resulting encoded string length in characters (not bytes), not including a null terminator.
*/
GDExtensionInterfaceStringToLatin1Chars :: #type (p_self: GDExtensionConstStringPtr, r_text: *u8, p_max_write_length: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_to_utf8_chars
* @since 4.1
*
* Converts a String to a UTF-8 encoded C string.
*
* It doesn't write a null terminator.
*
* @param p_self A pointer to the String.
* @param r_text A pointer to the buffer to hold the resulting data. If NULL is passed in, only the length will be computed.
* @param p_max_write_length The maximum number of characters that can be written to r_text. It has no affect on the return value.
*
* @return The resulting encoded string length in characters (not bytes), not including a null terminator.
*/
GDExtensionInterfaceStringToUtf8Chars :: #type (p_self: GDExtensionConstStringPtr, r_text: *u8, p_max_write_length: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_to_utf16_chars
* @since 4.1
*
* Converts a String to a UTF-16 encoded C string.
*
* It doesn't write a null terminator.
*
* @param p_self A pointer to the String.
* @param r_text A pointer to the buffer to hold the resulting data. If NULL is passed in, only the length will be computed.
* @param p_max_write_length The maximum number of characters that can be written to r_text. It has no affect on the return value.
*
* @return The resulting encoded string length in characters (not bytes), not including a null terminator.
*/
GDExtensionInterfaceStringToUtf16Chars :: #type (p_self: GDExtensionConstStringPtr, r_text: *u16, p_max_write_length: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_to_utf32_chars
* @since 4.1
*
* Converts a String to a UTF-32 encoded C string.
*
* It doesn't write a null terminator.
*
* @param p_self A pointer to the String.
* @param r_text A pointer to the buffer to hold the resulting data. If NULL is passed in, only the length will be computed.
* @param p_max_write_length The maximum number of characters that can be written to r_text. It has no affect on the return value.
*
* @return The resulting encoded string length in characters (not bytes), not including a null terminator.
*/
GDExtensionInterfaceStringToUtf32Chars :: #type (p_self: GDExtensionConstStringPtr, r_text: *u32, p_max_write_length: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_to_wide_chars
* @since 4.1
*
* Converts a String to a wide C string.
*
* It doesn't write a null terminator.
*
* @param p_self A pointer to the String.
* @param r_text A pointer to the buffer to hold the resulting data. If NULL is passed in, only the length will be computed.
* @param p_max_write_length The maximum number of characters that can be written to r_text. It has no affect on the return value.
*
* @return The resulting encoded string length in characters (not bytes), not including a null terminator.
*/
GDExtensionInterfaceStringToWideChars :: #type (p_self: GDExtensionConstStringPtr, r_text: *s16, p_max_write_length: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_operator_index
* @since 4.1
*
* Gets a pointer to the character at the given index from a String.
*
* @param p_self A pointer to the String.
* @param p_index The index.
*
* @return A pointer to the requested character.
*/
GDExtensionInterfaceStringOperatorIndex :: #type (p_self: GDExtensionStringPtr, p_index: GDExtensionInt) -> *u32 #c_call;

/**
* @name string_operator_index_const
* @since 4.1
*
* Gets a const pointer to the character at the given index from a String.
*
* @param p_self A pointer to the String.
* @param p_index The index.
*
* @return A const pointer to the requested character.
*/
GDExtensionInterfaceStringOperatorIndexConst :: #type (p_self: GDExtensionConstStringPtr, p_index: GDExtensionInt) -> *u32 #c_call;

/**
* @name string_operator_plus_eq_string
* @since 4.1
*
* Appends another String to a String.
*
* @param p_self A pointer to the String.
* @param p_b A pointer to the other String to append.
*/
GDExtensionInterfaceStringOperatorPlusEqString :: #type (p_self: GDExtensionStringPtr, p_b: GDExtensionConstStringPtr) -> void #c_call;

/**
* @name string_operator_plus_eq_char
* @since 4.1
*
* Appends a character to a String.
*
* @param p_self A pointer to the String.
* @param p_b A pointer to the character to append.
*/
GDExtensionInterfaceStringOperatorPlusEqChar :: #type (p_self: GDExtensionStringPtr, p_b: u32) -> void #c_call;

/**
* @name string_operator_plus_eq_cstr
* @since 4.1
*
* Appends a Latin-1 encoded C string to a String.
*
* @param p_self A pointer to the String.
* @param p_b A pointer to a Latin-1 encoded C string (null terminated).
*/
GDExtensionInterfaceStringOperatorPlusEqCstr :: #type (p_self: GDExtensionStringPtr, p_b: *u8) -> void #c_call;

/**
* @name string_operator_plus_eq_wcstr
* @since 4.1
*
* Appends a wide C string to a String.
*
* @param p_self A pointer to the String.
* @param p_b A pointer to a wide C string (null terminated).
*/
GDExtensionInterfaceStringOperatorPlusEqWcstr :: #type (p_self: GDExtensionStringPtr, p_b: *s16) -> void #c_call;

/**
* @name string_operator_plus_eq_c32str
* @since 4.1
*
* Appends a UTF-32 encoded C string to a String.
*
* @param p_self A pointer to the String.
* @param p_b A pointer to a UTF-32 encoded C string (null terminated).
*/
GDExtensionInterfaceStringOperatorPlusEqC32str :: #type (p_self: GDExtensionStringPtr, p_b: *u32) -> void #c_call;

/**
* @name string_resize
* @since 4.2
*
* Resizes the underlying string data to the given number of characters.
*
* Space needs to be allocated for the null terminating character ('\0') which
* also must be added manually, in order for all string functions to work correctly.
*
* Warning: This is an error-prone operation - only use it if there's no other
* efficient way to accomplish your goal.
*
* @param p_self A pointer to the String.
* @param p_resize The new length for the String.
*
* @return Error code signifying if the operation successful.
*/
GDExtensionInterfaceStringResize :: #type (p_self: GDExtensionStringPtr, p_resize: GDExtensionInt) -> GDExtensionInt #c_call;

/**
* @name string_name_new_with_latin1_chars
* @since 4.2
*
* Creates a StringName from a Latin-1 encoded C string.
*
* If `p_is_static` is true, then:
* - The StringName will reuse the `p_contents` buffer instead of copying it.
*   You must guarantee that the buffer remains valid for the duration of the application (e.g. string literal).
* - You must not call a destructor for this StringName. Incrementing the initial reference once should achieve this.
*
* `p_is_static` is purely an optimization and can easily introduce undefined behavior if used wrong. In case of doubt, set it to false.
*
* @param r_dest A pointer to uninitialized storage, into which the newly created StringName is constructed.
* @param p_contents A pointer to a C string (null terminated and Latin-1 or ASCII encoded).
* @param p_is_static Whether the StringName reuses the buffer directly (see above).
*/
GDExtensionInterfaceStringNameNewWithLatin1Chars :: #type (r_dest: GDExtensionUninitializedStringNamePtr, p_contents: *u8, p_is_static: GDExtensionBool) -> void #c_call;

/**
* @name string_name_new_with_utf8_chars
* @since 4.2
*
* Creates a StringName from a UTF-8 encoded C string.
*
* @param r_dest A pointer to uninitialized storage, into which the newly created StringName is constructed.
* @param p_contents A pointer to a C string (null terminated and UTF-8 encoded).
*/
GDExtensionInterfaceStringNameNewWithUtf8Chars :: #type (r_dest: GDExtensionUninitializedStringNamePtr, p_contents: *u8) -> void #c_call;

/**
* @name string_name_new_with_utf8_chars_and_len
* @since 4.2
*
* Creates a StringName from a UTF-8 encoded string with a given number of characters.
*
* @param r_dest A pointer to uninitialized storage, into which the newly created StringName is constructed.
* @param p_contents A pointer to a C string (null terminated and UTF-8 encoded).
* @param p_size The number of bytes (not UTF-8 code points).
*/
GDExtensionInterfaceStringNameNewWithUtf8CharsAndLen :: #type (r_dest: GDExtensionUninitializedStringNamePtr, p_contents: *u8, p_size: GDExtensionInt) -> void #c_call;

/**
* @name xml_parser_open_buffer
* @since 4.1
*
* Opens a raw XML buffer on an XMLParser instance.
*
* @param p_instance A pointer to an XMLParser object.
* @param p_buffer A pointer to the buffer.
* @param p_size The size of the buffer.
*
* @return A Godot error code (ex. OK, ERR_INVALID_DATA, etc).
*
* @see XMLParser::open_buffer()
*/
GDExtensionInterfaceXmlParserOpenBuffer :: #type (p_instance: GDExtensionObjectPtr, p_buffer: *u8, p_size: u64) -> GDExtensionInt #c_call;

/**
* @name file_access_store_buffer
* @since 4.1
*
* Stores the given buffer using an instance of FileAccess.
*
* @param p_instance A pointer to a FileAccess object.
* @param p_src A pointer to the buffer.
* @param p_length The size of the buffer.
*
* @see FileAccess::store_buffer()
*/
GDExtensionInterfaceFileAccessStoreBuffer :: #type (p_instance: GDExtensionObjectPtr, p_src: *u8, p_length: u64) -> void #c_call;

/**
* @name file_access_get_buffer
* @since 4.1
*
* Reads the next p_length bytes into the given buffer using an instance of FileAccess.
*
* @param p_instance A pointer to a FileAccess object.
* @param p_dst A pointer to the buffer to store the data.
* @param p_length The requested number of bytes to read.
*
* @return The actual number of bytes read (may be less than requested).
*/
GDExtensionInterfaceFileAccessGetBuffer :: #type (p_instance: GDExtensionConstObjectPtr, p_dst: *u8, p_length: u64) -> u64 #c_call;

/**
* @name image_ptrw
* @since 4.3
*
* Returns writable pointer to internal Image buffer.
*
* @param p_instance A pointer to a Image object.
*
* @return Pointer to internal Image buffer.
*
* @see Image::ptrw()
*/
GDExtensionInterfaceImagePtrw :: #type (p_instance: GDExtensionObjectPtr) -> *u8 #c_call;

/**
* @name image_ptr
* @since 4.3
*
* Returns read only pointer to internal Image buffer.
*
* @param p_instance A pointer to a Image object.
*
* @return Pointer to internal Image buffer.
*
* @see Image::ptr()
*/
GDExtensionInterfaceImagePtr :: #type (p_instance: GDExtensionObjectPtr) -> *u8 #c_call;

/**
* @name worker_thread_pool_add_native_group_task
* @since 4.1
*
* Adds a group task to an instance of WorkerThreadPool.
*
* @param p_instance A pointer to a WorkerThreadPool object.
* @param p_func A pointer to a function to run in the thread pool.
* @param p_userdata A pointer to arbitrary data which will be passed to p_func.
* @param p_tasks The number of tasks needed in the group.
* @param p_high_priority Whether or not this is a high priority task.
* @param p_description A pointer to a String with the task description.
*
* @return The task group ID.
*
* @see WorkerThreadPool::add_group_task()
*/
GDExtensionInterfaceWorkerThreadPoolAddNativeGroupTask :: #type (p_instance: GDExtensionObjectPtr, p_func: #type (unknown0: *void, unknown1: u32) -> void #c_call, p_userdata: *void, p_elements: s32, p_tasks: s32, p_high_priority: GDExtensionBool, p_description: GDExtensionConstStringPtr) -> s64 #c_call;

/**
* @name worker_thread_pool_add_native_task
* @since 4.1
*
* Adds a task to an instance of WorkerThreadPool.
*
* @param p_instance A pointer to a WorkerThreadPool object.
* @param p_func A pointer to a function to run in the thread pool.
* @param p_userdata A pointer to arbitrary data which will be passed to p_func.
* @param p_high_priority Whether or not this is a high priority task.
* @param p_description A pointer to a String with the task description.
*
* @return The task ID.
*/
GDExtensionInterfaceWorkerThreadPoolAddNativeTask :: #type (p_instance: GDExtensionObjectPtr, p_func: #type (unknown0: *void) -> void #c_call, p_userdata: *void, p_high_priority: GDExtensionBool, p_description: GDExtensionConstStringPtr) -> s64 #c_call;

/**
* @name packed_byte_array_operator_index
* @since 4.1
*
* Gets a pointer to a byte in a PackedByteArray.
*
* @param p_self A pointer to a PackedByteArray object.
* @param p_index The index of the byte to get.
*
* @return A pointer to the requested byte.
*/
GDExtensionInterfacePackedByteArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> *u8 #c_call;

/**
* @name packed_byte_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a byte in a PackedByteArray.
*
* @param p_self A const pointer to a PackedByteArray object.
* @param p_index The index of the byte to get.
*
* @return A const pointer to the requested byte.
*/
GDExtensionInterfacePackedByteArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> *u8 #c_call;

/**
* @name packed_float32_array_operator_index
* @since 4.1
*
* Gets a pointer to a 32-bit float in a PackedFloat32Array.
*
* @param p_self A pointer to a PackedFloat32Array object.
* @param p_index The index of the float to get.
*
* @return A pointer to the requested 32-bit float.
*/
GDExtensionInterfacePackedFloat32ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> *float #c_call;

/**
* @name packed_float32_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a 32-bit float in a PackedFloat32Array.
*
* @param p_self A const pointer to a PackedFloat32Array object.
* @param p_index The index of the float to get.
*
* @return A const pointer to the requested 32-bit float.
*/
GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> *float #c_call;

/**
* @name packed_float64_array_operator_index
* @since 4.1
*
* Gets a pointer to a 64-bit float in a PackedFloat64Array.
*
* @param p_self A pointer to a PackedFloat64Array object.
* @param p_index The index of the float to get.
*
* @return A pointer to the requested 64-bit float.
*/
GDExtensionInterfacePackedFloat64ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> *float64 #c_call;

/**
* @name packed_float64_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a 64-bit float in a PackedFloat64Array.
*
* @param p_self A const pointer to a PackedFloat64Array object.
* @param p_index The index of the float to get.
*
* @return A const pointer to the requested 64-bit float.
*/
GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> *float64 #c_call;

/**
* @name packed_int32_array_operator_index
* @since 4.1
*
* Gets a pointer to a 32-bit integer in a PackedInt32Array.
*
* @param p_self A pointer to a PackedInt32Array object.
* @param p_index The index of the integer to get.
*
* @return A pointer to the requested 32-bit integer.
*/
GDExtensionInterfacePackedInt32ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> *s32 #c_call;

/**
* @name packed_int32_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a 32-bit integer in a PackedInt32Array.
*
* @param p_self A const pointer to a PackedInt32Array object.
* @param p_index The index of the integer to get.
*
* @return A const pointer to the requested 32-bit integer.
*/
GDExtensionInterfacePackedInt32ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> *s32 #c_call;

/**
* @name packed_int64_array_operator_index
* @since 4.1
*
* Gets a pointer to a 64-bit integer in a PackedInt64Array.
*
* @param p_self A pointer to a PackedInt64Array object.
* @param p_index The index of the integer to get.
*
* @return A pointer to the requested 64-bit integer.
*/
GDExtensionInterfacePackedInt64ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> *s64 #c_call;

/**
* @name packed_int64_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a 64-bit integer in a PackedInt64Array.
*
* @param p_self A const pointer to a PackedInt64Array object.
* @param p_index The index of the integer to get.
*
* @return A const pointer to the requested 64-bit integer.
*/
GDExtensionInterfacePackedInt64ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> *s64 #c_call;

/**
* @name packed_string_array_operator_index
* @since 4.1
*
* Gets a pointer to a string in a PackedStringArray.
*
* @param p_self A pointer to a PackedStringArray object.
* @param p_index The index of the String to get.
*
* @return A pointer to the requested String.
*/
GDExtensionInterfacePackedStringArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> GDExtensionStringPtr #c_call;

/**
* @name packed_string_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a string in a PackedStringArray.
*
* @param p_self A const pointer to a PackedStringArray object.
* @param p_index The index of the String to get.
*
* @return A const pointer to the requested String.
*/
GDExtensionInterfacePackedStringArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> GDExtensionStringPtr #c_call;

/**
* @name packed_vector2_array_operator_index
* @since 4.1
*
* Gets a pointer to a Vector2 in a PackedVector2Array.
*
* @param p_self A pointer to a PackedVector2Array object.
* @param p_index The index of the Vector2 to get.
*
* @return A pointer to the requested Vector2.
*/
GDExtensionInterfacePackedVector2ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_vector2_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a Vector2 in a PackedVector2Array.
*
* @param p_self A const pointer to a PackedVector2Array object.
* @param p_index The index of the Vector2 to get.
*
* @return A const pointer to the requested Vector2.
*/
GDExtensionInterfacePackedVector2ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_vector3_array_operator_index
* @since 4.1
*
* Gets a pointer to a Vector3 in a PackedVector3Array.
*
* @param p_self A pointer to a PackedVector3Array object.
* @param p_index The index of the Vector3 to get.
*
* @return A pointer to the requested Vector3.
*/
GDExtensionInterfacePackedVector3ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_vector3_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a Vector3 in a PackedVector3Array.
*
* @param p_self A const pointer to a PackedVector3Array object.
* @param p_index The index of the Vector3 to get.
*
* @return A const pointer to the requested Vector3.
*/
GDExtensionInterfacePackedVector3ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_vector4_array_operator_index
* @since 4.3
*
* Gets a pointer to a Vector4 in a PackedVector4Array.
*
* @param p_self A pointer to a PackedVector4Array object.
* @param p_index The index of the Vector4 to get.
*
* @return A pointer to the requested Vector4.
*/
GDExtensionInterfacePackedVector4ArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_vector4_array_operator_index_const
* @since 4.3
*
* Gets a const pointer to a Vector4 in a PackedVector4Array.
*
* @param p_self A const pointer to a PackedVector4Array object.
* @param p_index The index of the Vector4 to get.
*
* @return A const pointer to the requested Vector4.
*/
GDExtensionInterfacePackedVector4ArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_color_array_operator_index
* @since 4.1
*
* Gets a pointer to a color in a PackedColorArray.
*
* @param p_self A pointer to a PackedColorArray object.
* @param p_index The index of the Color to get.
*
* @return A pointer to the requested Color.
*/
GDExtensionInterfacePackedColorArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name packed_color_array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a color in a PackedColorArray.
*
* @param p_self A const pointer to a PackedColorArray object.
* @param p_index The index of the Color to get.
*
* @return A const pointer to the requested Color.
*/
GDExtensionInterfacePackedColorArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> GDExtensionTypePtr #c_call;

/**
* @name array_operator_index
* @since 4.1
*
* Gets a pointer to a Variant in an Array.
*
* @param p_self A pointer to an Array object.
* @param p_index The index of the Variant to get.
*
* @return A pointer to the requested Variant.
*/
GDExtensionInterfaceArrayOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_index: GDExtensionInt) -> GDExtensionVariantPtr #c_call;

/**
* @name array_operator_index_const
* @since 4.1
*
* Gets a const pointer to a Variant in an Array.
*
* @param p_self A const pointer to an Array object.
* @param p_index The index of the Variant to get.
*
* @return A const pointer to the requested Variant.
*/
GDExtensionInterfaceArrayOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_index: GDExtensionInt) -> GDExtensionVariantPtr #c_call;

/**
* @name array_ref
* @since 4.1
*
* Sets an Array to be a reference to another Array object.
*
* @param p_self A pointer to the Array object to update.
* @param p_from A pointer to the Array object to reference.
*/
GDExtensionInterfaceArrayRef :: #type (p_self: GDExtensionTypePtr, p_from: GDExtensionConstTypePtr) -> void #c_call;

/**
* @name array_set_typed
* @since 4.1
*
* Makes an Array into a typed Array.
*
* @param p_self A pointer to the Array.
* @param p_type The type of Variant the Array will store.
* @param p_class_name A pointer to a StringName with the name of the object (if p_type is GDEXTENSION_VARIANT_TYPE_OBJECT).
* @param p_script A pointer to a Script object (if p_type is GDEXTENSION_VARIANT_TYPE_OBJECT and the base class is extended by a script).
*/
GDExtensionInterfaceArraySetTyped :: #type (p_self: GDExtensionTypePtr, p_type: GDExtensionVariantType, p_class_name: GDExtensionConstStringNamePtr, p_script: GDExtensionConstVariantPtr) -> void #c_call;

/**
* @name dictionary_operator_index
* @since 4.1
*
* Gets a pointer to a Variant in a Dictionary with the given key.
*
* @param p_self A pointer to a Dictionary object.
* @param p_key A pointer to a Variant representing the key.
*
* @return A pointer to a Variant representing the value at the given key.
*/
GDExtensionInterfaceDictionaryOperatorIndex :: #type (p_self: GDExtensionTypePtr, p_key: GDExtensionConstVariantPtr) -> GDExtensionVariantPtr #c_call;

/**
* @name dictionary_operator_index_const
* @since 4.1
*
* Gets a const pointer to a Variant in a Dictionary with the given key.
*
* @param p_self A const pointer to a Dictionary object.
* @param p_key A pointer to a Variant representing the key.
*
* @return A const pointer to a Variant representing the value at the given key.
*/
GDExtensionInterfaceDictionaryOperatorIndexConst :: #type (p_self: GDExtensionConstTypePtr, p_key: GDExtensionConstVariantPtr) -> GDExtensionVariantPtr #c_call;

/**
* @name dictionary_set_typed
* @since 4.4
*
* Makes a Dictionary into a typed Dictionary.
*
* @param p_self A pointer to the Dictionary.
* @param p_key_type The type of Variant the Dictionary key will store.
* @param p_key_class_name A pointer to a StringName with the name of the object (if p_key_type is GDEXTENSION_VARIANT_TYPE_OBJECT).
* @param p_key_script A pointer to a Script object (if p_key_type is GDEXTENSION_VARIANT_TYPE_OBJECT and the base class is extended by a script).
* @param p_value_type The type of Variant the Dictionary value will store.
* @param p_value_class_name A pointer to a StringName with the name of the object (if p_value_type is GDEXTENSION_VARIANT_TYPE_OBJECT).
* @param p_value_script A pointer to a Script object (if p_value_type is GDEXTENSION_VARIANT_TYPE_OBJECT and the base class is extended by a script).
*/
GDExtensionInterfaceDictionarySetTyped :: #type (p_self: GDExtensionTypePtr, p_key_type: GDExtensionVariantType, p_key_class_name: GDExtensionConstStringNamePtr, p_key_script: GDExtensionConstVariantPtr, p_value_type: GDExtensionVariantType, p_value_class_name: GDExtensionConstStringNamePtr, p_value_script: GDExtensionConstVariantPtr) -> void #c_call;

/**
* @name object_method_bind_call
* @since 4.1
*
* Calls a method on an Object.
*
* @param p_method_bind A pointer to the MethodBind representing the method on the Object's class.
* @param p_instance A pointer to the Object.
* @param p_args A pointer to a C array of Variants representing the arguments.
* @param p_arg_count The number of arguments.
* @param r_ret A pointer to Variant which will receive the return value.
* @param r_error A pointer to a GDExtensionCallError struct that will receive error information.
*/
GDExtensionInterfaceObjectMethodBindCall :: #type (p_method_bind: GDExtensionMethodBindPtr, p_instance: GDExtensionObjectPtr, p_args: *GDExtensionConstVariantPtr, p_arg_count: GDExtensionInt, r_ret: GDExtensionUninitializedVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;

/**
* @name object_method_bind_ptrcall
* @since 4.1
*
* Calls a method on an Object (using a "ptrcall").
*
* @param p_method_bind A pointer to the MethodBind representing the method on the Object's class.
* @param p_instance A pointer to the Object.
* @param p_args A pointer to a C array representing the arguments.
* @param r_ret A pointer to the Object that will receive the return value.
*/
GDExtensionInterfaceObjectMethodBindPtrcall :: #type (p_method_bind: GDExtensionMethodBindPtr, p_instance: GDExtensionObjectPtr, p_args: *GDExtensionConstTypePtr, r_ret: GDExtensionTypePtr) -> void #c_call;

/**
* @name object_destroy
* @since 4.1
*
* Destroys an Object.
*
* @param p_o A pointer to the Object.
*/
GDExtensionInterfaceObjectDestroy :: #type (p_o: GDExtensionObjectPtr) -> void #c_call;

/**
* @name global_get_singleton
* @since 4.1
*
* Gets a global singleton by name.
*
* @param p_name A pointer to a StringName with the singleton name.
*
* @return A pointer to the singleton Object.
*/
GDExtensionInterfaceGlobalGetSingleton :: #type (p_name: GDExtensionConstStringNamePtr) -> GDExtensionObjectPtr #c_call;

/**
* @name object_get_instance_binding
* @since 4.1
*
* Gets a pointer representing an Object's instance binding.
*
* @param p_o A pointer to the Object.
* @param p_library A token the library received by the GDExtension's entry point function.
* @param p_callbacks A pointer to a GDExtensionInstanceBindingCallbacks struct.
*
* @return
*/
GDExtensionInterfaceObjectGetInstanceBinding :: #type (p_o: GDExtensionObjectPtr, p_token: *void, p_callbacks: *GDExtensionInstanceBindingCallbacks) -> *void #c_call;

/**
* @name object_set_instance_binding
* @since 4.1
*
* Sets an Object's instance binding.
*
* @param p_o A pointer to the Object.
* @param p_library A token the library received by the GDExtension's entry point function.
* @param p_binding A pointer to the instance binding.
* @param p_callbacks A pointer to a GDExtensionInstanceBindingCallbacks struct.
*/
GDExtensionInterfaceObjectSetInstanceBinding :: #type (p_o: GDExtensionObjectPtr, p_token: *void, p_binding: *void, p_callbacks: *GDExtensionInstanceBindingCallbacks) -> void #c_call;

/**
* @name object_free_instance_binding
* @since 4.2
*
* Free an Object's instance binding.
*
* @param p_o A pointer to the Object.
* @param p_library A token the library received by the GDExtension's entry point function.
*/
GDExtensionInterfaceObjectFreeInstanceBinding :: #type (p_o: GDExtensionObjectPtr, p_token: *void) -> void #c_call;

/**
* @name object_set_instance
* @since 4.1
*
* Sets an extension class instance on a Object.
*
* @param p_o A pointer to the Object.
* @param p_classname A pointer to a StringName with the registered extension class's name.
* @param p_instance A pointer to the extension class instance.
*/
GDExtensionInterfaceObjectSetInstance :: #type (p_o: GDExtensionObjectPtr, p_classname: GDExtensionConstStringNamePtr, p_instance: GDExtensionClassInstancePtr) -> void #c_call;

/**
* @name object_get_class_name
* @since 4.1
*
* Gets the class name of an Object.
*
* If the GDExtension wraps the Godot object in an abstraction specific to its class, this is the
* function that should be used to determine which wrapper to use.
*
* @param p_object A pointer to the Object.
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param r_class_name A pointer to a String to receive the class name.
*
* @return true if successful in getting the class name; otherwise false.
*/
GDExtensionInterfaceObjectGetClassName :: #type (p_object: GDExtensionConstObjectPtr, p_library: GDExtensionClassLibraryPtr, r_class_name: GDExtensionUninitializedStringNamePtr) -> GDExtensionBool #c_call;

/**
* @name object_cast_to
* @since 4.1
*
* Casts an Object to a different type.
*
* @param p_object A pointer to the Object.
* @param p_class_tag A pointer uniquely identifying a built-in class in the ClassDB.
*
* @return Returns a pointer to the Object, or NULL if it can't be cast to the requested type.
*/
GDExtensionInterfaceObjectCastTo :: #type (p_object: GDExtensionConstObjectPtr, p_class_tag: *void) -> GDExtensionObjectPtr #c_call;

/**
* @name object_get_instance_from_id
* @since 4.1
*
* Gets an Object by its instance ID.
*
* @param p_instance_id The instance ID.
*
* @return A pointer to the Object.
*/
GDExtensionInterfaceObjectGetInstanceFromId :: #type (p_instance_id: GDObjectInstanceID) -> GDExtensionObjectPtr #c_call;

/**
* @name object_get_instance_id
* @since 4.1
*
* Gets the instance ID from an Object.
*
* @param p_object A pointer to the Object.
*
* @return The instance ID.
*/
GDExtensionInterfaceObjectGetInstanceId :: #type (p_object: GDExtensionConstObjectPtr) -> GDObjectInstanceID #c_call;

/**
* @name object_has_script_method
* @since 4.3
*
* Checks if this object has a script with the given method.
*
* @param p_object A pointer to the Object.
* @param p_method A pointer to a StringName identifying the method.
*
* @returns true if the object has a script and that script has a method with the given name. Returns false if the object has no script.
*/
GDExtensionInterfaceObjectHasScriptMethod :: #type (p_object: GDExtensionConstObjectPtr, p_method: GDExtensionConstStringNamePtr) -> GDExtensionBool #c_call;

/**
* @name object_call_script_method
* @since 4.3
*
* Call the given script method on this object.
*
* @param p_object A pointer to the Object.
* @param p_method A pointer to a StringName identifying the method.
* @param p_args A pointer to a C array of Variant.
* @param p_argument_count The number of arguments.
* @param r_return A pointer a Variant which will be assigned the return value.
* @param r_error A pointer the structure which will hold error information.
*/
GDExtensionInterfaceObjectCallScriptMethod :: #type (p_object: GDExtensionObjectPtr, p_method: GDExtensionConstStringNamePtr, p_args: *GDExtensionConstVariantPtr, p_argument_count: GDExtensionInt, r_return: GDExtensionUninitializedVariantPtr, r_error: *GDExtensionCallError) -> void #c_call;

/**
* @name ref_get_object
* @since 4.1
*
* Gets the Object from a reference.
*
* @param p_ref A pointer to the reference.
*
* @return A pointer to the Object from the reference or NULL.
*/
GDExtensionInterfaceRefGetObject :: #type (p_ref: GDExtensionConstRefPtr) -> GDExtensionObjectPtr #c_call;

/**
* @name ref_set_object
* @since 4.1
*
* Sets the Object referred to by a reference.
*
* @param p_ref A pointer to the reference.
* @param p_object A pointer to the Object to refer to.
*/
GDExtensionInterfaceRefSetObject :: #type (p_ref: GDExtensionRefPtr, p_object: GDExtensionObjectPtr) -> void #c_call;

/**
* @name script_instance_create
* @since 4.1
* @deprecated in Godot 4.2. Use `script_instance_create3` instead.
*
* Creates a script instance that contains the given info and instance data.
*
* @param p_info A pointer to a GDExtensionScriptInstanceInfo struct.
* @param p_instance_data A pointer to a data representing the script instance in the GDExtension. This will be passed to all the function pointers on p_info.
*
* @return A pointer to a ScriptInstanceExtension object.
*/
GDExtensionInterfaceScriptInstanceCreate :: #type (p_info: *GDExtensionScriptInstanceInfo, p_instance_data: GDExtensionScriptInstanceDataPtr) -> GDExtensionScriptInstancePtr #c_call;

/**
* @name script_instance_create2
* @since 4.2
* @deprecated in Godot 4.3. Use `script_instance_create3` instead.
*
* Creates a script instance that contains the given info and instance data.
*
* @param p_info A pointer to a GDExtensionScriptInstanceInfo2 struct.
* @param p_instance_data A pointer to a data representing the script instance in the GDExtension. This will be passed to all the function pointers on p_info.
*
* @return A pointer to a ScriptInstanceExtension object.
*/
GDExtensionInterfaceScriptInstanceCreate2 :: #type (p_info: *GDExtensionScriptInstanceInfo2, p_instance_data: GDExtensionScriptInstanceDataPtr) -> GDExtensionScriptInstancePtr #c_call;

/**
* @name script_instance_create3
* @since 4.3
*
* Creates a script instance that contains the given info and instance data.
*
* @param p_info A pointer to a GDExtensionScriptInstanceInfo3 struct.
* @param p_instance_data A pointer to a data representing the script instance in the GDExtension. This will be passed to all the function pointers on p_info.
*
* @return A pointer to a ScriptInstanceExtension object.
*/
GDExtensionInterfaceScriptInstanceCreate3 :: #type (p_info: *GDExtensionScriptInstanceInfo3, p_instance_data: GDExtensionScriptInstanceDataPtr) -> GDExtensionScriptInstancePtr #c_call;

/**
* @name placeholder_script_instance_create
* @since 4.2
*
* Creates a placeholder script instance for a given script and instance.
*
* This interface is optional as a custom placeholder could also be created with script_instance_create().
*
* @param p_language A pointer to a ScriptLanguage.
* @param p_script A pointer to a Script.
* @param p_owner A pointer to an Object.
*
* @return A pointer to a PlaceHolderScriptInstance object.
*/
GDExtensionInterfacePlaceHolderScriptInstanceCreate :: #type (p_language: GDExtensionObjectPtr, p_script: GDExtensionObjectPtr, p_owner: GDExtensionObjectPtr) -> GDExtensionScriptInstancePtr #c_call;

/**
* @name placeholder_script_instance_update
* @since 4.2
*
* Updates a placeholder script instance with the given properties and values.
*
* The passed in placeholder must be an instance of PlaceHolderScriptInstance
* such as the one returned by placeholder_script_instance_create().
*
* @param p_placeholder A pointer to a PlaceHolderScriptInstance.
* @param p_properties A pointer to an Array of Dictionary representing PropertyInfo.
* @param p_values A pointer to a Dictionary mapping StringName to Variant values.
*/
GDExtensionInterfacePlaceHolderScriptInstanceUpdate :: #type (p_placeholder: GDExtensionScriptInstancePtr, p_properties: GDExtensionConstTypePtr, p_values: GDExtensionConstTypePtr) -> void #c_call;

/**
* @name object_get_script_instance
* @since 4.2
*
* Get the script instance data attached to this object.
*
* @param p_object A pointer to the Object.
* @param p_language A pointer to the language expected for this script instance.
*
* @return A GDExtensionScriptInstanceDataPtr that was attached to this object as part of script_instance_create.
*/
GDExtensionInterfaceObjectGetScriptInstance :: #type (p_object: GDExtensionConstObjectPtr, p_language: GDExtensionObjectPtr) -> GDExtensionScriptInstanceDataPtr #c_call;

/**
* @name callable_custom_create
* @since 4.2
* @deprecated in Godot 4.3. Use `callable_custom_create2` instead.
*
* Creates a custom Callable object from a function pointer.
*
* Provided struct can be safely freed once the function returns.
*
* @param r_callable A pointer that will receive the new Callable.
* @param p_callable_custom_info The info required to construct a Callable.
*/
GDExtensionInterfaceCallableCustomCreate :: #type (r_callable: GDExtensionUninitializedTypePtr, p_callable_custom_info: *GDExtensionCallableCustomInfo) -> void #c_call;

/**
* @name callable_custom_create2
* @since 4.3
*
* Creates a custom Callable object from a function pointer.
*
* Provided struct can be safely freed once the function returns.
*
* @param r_callable A pointer that will receive the new Callable.
* @param p_callable_custom_info The info required to construct a Callable.
*/
GDExtensionInterfaceCallableCustomCreate2 :: #type (r_callable: GDExtensionUninitializedTypePtr, p_callable_custom_info: *GDExtensionCallableCustomInfo2) -> void #c_call;

/**
* @name callable_custom_get_userdata
* @since 4.2
*
* Retrieves the userdata pointer from a custom Callable.
*
* If the Callable is not a custom Callable or the token does not match the one provided to callable_custom_create() via GDExtensionCallableCustomInfo then NULL will be returned.
*
* @param p_callable A pointer to a Callable.
* @param p_token A pointer to an address that uniquely identifies the GDExtension.
*/
GDExtensionInterfaceCallableCustomGetUserData :: #type (p_callable: GDExtensionConstTypePtr, p_token: *void) -> *void #c_call;

/**
* @name classdb_construct_object
* @since 4.1
* @deprecated in Godot 4.4. Use `classdb_construct_object2` instead.
*
* Constructs an Object of the requested class.
*
* The passed class must be a built-in godot class, or an already-registered extension class. In both cases, object_set_instance() should be called to fully initialize the object.
*
* @param p_classname A pointer to a StringName with the class name.
*
* @return A pointer to the newly created Object.
*/
GDExtensionInterfaceClassdbConstructObject :: #type (p_classname: GDExtensionConstStringNamePtr) -> GDExtensionObjectPtr #c_call;

/**
* @name classdb_construct_object2
* @since 4.4
*
* Constructs an Object of the requested class.
*
* The passed class must be a built-in godot class, or an already-registered extension class. In both cases, object_set_instance() should be called to fully initialize the object.
*
* "NOTIFICATION_POSTINITIALIZE" must be sent after construction.
*
* @param p_classname A pointer to a StringName with the class name.
*
* @return A pointer to the newly created Object.
*/
GDExtensionInterfaceClassdbConstructObject2 :: #type (p_classname: GDExtensionConstStringNamePtr) -> GDExtensionObjectPtr #c_call;

/**
* @name classdb_get_method_bind
* @since 4.1
*
* Gets a pointer to the MethodBind in ClassDB for the given class, method and hash.
*
* @param p_classname A pointer to a StringName with the class name.
* @param p_methodname A pointer to a StringName with the method name.
* @param p_hash A hash representing the function signature.
*
* @return A pointer to the MethodBind from ClassDB.
*/
GDExtensionInterfaceClassdbGetMethodBind :: #type (p_classname: GDExtensionConstStringNamePtr, p_methodname: GDExtensionConstStringNamePtr, p_hash: GDExtensionInt) -> GDExtensionMethodBindPtr #c_call;

/**
* @name classdb_get_class_tag
* @since 4.1
*
* Gets a pointer uniquely identifying the given built-in class in the ClassDB.
*
* @param p_classname A pointer to a StringName with the class name.
*
* @return A pointer uniquely identifying the built-in class in the ClassDB.
*/
GDExtensionInterfaceClassdbGetClassTag :: #type (p_classname: GDExtensionConstStringNamePtr) -> *void #c_call;

/**
* @name classdb_register_extension_class
* @since 4.1
* @deprecated in Godot 4.2. Use `classdb_register_extension_class4` instead.
*
* Registers an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_parent_class_name A pointer to a StringName with the parent class name.
* @param p_extension_funcs A pointer to a GDExtensionClassCreationInfo struct.
*/
GDExtensionInterfaceClassdbRegisterExtensionClass :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo) -> void #c_call;

/**
* @name classdb_register_extension_class2
* @since 4.2
* @deprecated in Godot 4.3. Use `classdb_register_extension_class4` instead.
*
* Registers an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_parent_class_name A pointer to a StringName with the parent class name.
* @param p_extension_funcs A pointer to a GDExtensionClassCreationInfo2 struct.
*/
GDExtensionInterfaceClassdbRegisterExtensionClass2 :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo2) -> void #c_call;

/**
* @name classdb_register_extension_class3
* @since 4.3
* @deprecated in Godot 4.4. Use `classdb_register_extension_class4` instead.
*
* Registers an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_parent_class_name A pointer to a StringName with the parent class name.
* @param p_extension_funcs A pointer to a GDExtensionClassCreationInfo2 struct.
*/
GDExtensionInterfaceClassdbRegisterExtensionClass3 :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo3) -> void #c_call;

/**
* @name classdb_register_extension_class4
* @since 4.4
*
* Registers an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_parent_class_name A pointer to a StringName with the parent class name.
* @param p_extension_funcs A pointer to a GDExtensionClassCreationInfo2 struct.
*/
GDExtensionInterfaceClassdbRegisterExtensionClass4 :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_parent_class_name: GDExtensionConstStringNamePtr, p_extension_funcs: *GDExtensionClassCreationInfo4) -> void #c_call;

/**
* @name classdb_register_extension_class_method
* @since 4.1
*
* Registers a method on an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_method_info A pointer to a GDExtensionClassMethodInfo struct.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassMethod :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_method_info: *GDExtensionClassMethodInfo) -> void #c_call;

/**
* @name classdb_register_extension_class_virtual_method
* @since 4.3
*
* Registers a virtual method on an extension class in ClassDB, that can be implemented by scripts or other extensions.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_method_info A pointer to a GDExtensionClassMethodInfo struct.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassVirtualMethod :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_method_info: *GDExtensionClassVirtualMethodInfo) -> void #c_call;

/**
* @name classdb_register_extension_class_integer_constant
* @since 4.1
*
* Registers an integer constant on an extension class in the ClassDB.
*
* Note about registering bitfield values (if p_is_bitfield is true): even though p_constant_value is signed, language bindings are
* advised to treat bitfields as uint64_t, since this is generally clearer and can prevent mistakes like using -1 for setting all bits.
* Language APIs should thus provide an abstraction that registers bitfields (uint64_t) separately from regular constants (int64_t).
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_enum_name A pointer to a StringName with the enum name.
* @param p_constant_name A pointer to a StringName with the constant name.
* @param p_constant_value The constant value.
* @param p_is_bitfield Whether or not this constant is part of a bitfield.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_enum_name: GDExtensionConstStringNamePtr, p_constant_name: GDExtensionConstStringNamePtr, p_constant_value: GDExtensionInt, p_is_bitfield: GDExtensionBool) -> void #c_call;

/**
* @name classdb_register_extension_class_property
* @since 4.1
*
* Registers a property on an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_info A pointer to a GDExtensionPropertyInfo struct.
* @param p_setter A pointer to a StringName with the name of the setter method.
* @param p_getter A pointer to a StringName with the name of the getter method.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassProperty :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_info: *GDExtensionPropertyInfo, p_setter: GDExtensionConstStringNamePtr, p_getter: GDExtensionConstStringNamePtr) -> void #c_call;

/**
* @name classdb_register_extension_class_property_indexed
* @since 4.2
*
* Registers an indexed property on an extension class in the ClassDB.
*
* Provided struct can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_info A pointer to a GDExtensionPropertyInfo struct.
* @param p_setter A pointer to a StringName with the name of the setter method.
* @param p_getter A pointer to a StringName with the name of the getter method.
* @param p_index The index to pass as the first argument to the getter and setter methods.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassPropertyIndexed :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_info: *GDExtensionPropertyInfo, p_setter: GDExtensionConstStringNamePtr, p_getter: GDExtensionConstStringNamePtr, p_index: GDExtensionInt) -> void #c_call;

/**
* @name classdb_register_extension_class_property_group
* @since 4.1
*
* Registers a property group on an extension class in the ClassDB.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_group_name A pointer to a String with the group name.
* @param p_prefix A pointer to a String with the prefix used by properties in this group.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_group_name: GDExtensionConstStringPtr, p_prefix: GDExtensionConstStringPtr) -> void #c_call;

/**
* @name classdb_register_extension_class_property_subgroup
* @since 4.1
*
* Registers a property subgroup on an extension class in the ClassDB.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_subgroup_name A pointer to a String with the subgroup name.
* @param p_prefix A pointer to a String with the prefix used by properties in this subgroup.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_subgroup_name: GDExtensionConstStringPtr, p_prefix: GDExtensionConstStringPtr) -> void #c_call;

/**
* @name classdb_register_extension_class_signal
* @since 4.1
*
* Registers a signal on an extension class in the ClassDB.
*
* Provided structs can be safely freed once the function returns.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
* @param p_signal_name A pointer to a StringName with the signal name.
* @param p_argument_info A pointer to a GDExtensionPropertyInfo struct.
* @param p_argument_count The number of arguments the signal receives.
*/
GDExtensionInterfaceClassdbRegisterExtensionClassSignal :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr, p_signal_name: GDExtensionConstStringNamePtr, p_argument_info: *GDExtensionPropertyInfo, p_argument_count: GDExtensionInt) -> void #c_call;

/**
* @name classdb_unregister_extension_class
* @since 4.1
*
* Unregisters an extension class in the ClassDB.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param p_class_name A pointer to a StringName with the class name.
*/
GDExtensionInterfaceClassdbUnregisterExtensionClass :: #type (p_library: GDExtensionClassLibraryPtr, p_class_name: GDExtensionConstStringNamePtr) -> void #c_call;

/**
* @name get_library_path
* @since 4.1
*
* Gets the path to the current GDExtension library.
*
* @param p_library A pointer the library received by the GDExtension's entry point function.
* @param r_path A pointer to a String which will receive the path.
*/
GDExtensionInterfaceGetLibraryPath :: #type (p_library: GDExtensionClassLibraryPtr, r_path: GDExtensionUninitializedStringPtr) -> void #c_call;

/**
* @name editor_add_plugin
* @since 4.1
*
* Adds an editor plugin.
*
* It's safe to call during initialization.
*
* @param p_class_name A pointer to a StringName with the name of a class (descending from EditorPlugin) which is already registered with ClassDB.
*/
GDExtensionInterfaceEditorAddPlugin :: #type (p_class_name: GDExtensionConstStringNamePtr) -> void #c_call;

/**
* @name editor_remove_plugin
* @since 4.1
*
* Removes an editor plugin.
*
* @param p_class_name A pointer to a StringName with the name of a class that was previously added as an editor plugin.
*/
GDExtensionInterfaceEditorRemovePlugin :: #type (p_class_name: GDExtensionConstStringNamePtr) -> void #c_call;

/**
* @name editor_help_load_xml_from_utf8_chars
* @since 4.3
*
* Loads new XML-formatted documentation data in the editor.
*
* The provided pointer can be immediately freed once the function returns.
*
* @param p_data A pointer to a UTF-8 encoded C string (null terminated).
*/
GDExtensionsInterfaceEditorHelpLoadXmlFromUtf8Chars :: #type (p_data: *u8) -> void #c_call;

/**
* @name editor_help_load_xml_from_utf8_chars_and_len
* @since 4.3
*
* Loads new XML-formatted documentation data in the editor.
*
* The provided pointer can be immediately freed once the function returns.
*
* @param p_data A pointer to a UTF-8 encoded C string.
* @param p_size The number of bytes (not code units).
*/
GDExtensionsInterfaceEditorHelpLoadXmlFromUtf8CharsAndLen :: #type (p_data: *u8, p_size: GDExtensionInt) -> void #c_call;

#scope_file

#import "Basic"; // For assert


#run {
    {
        info := type_info(GDExtensionCallError);
        for info.members {
            if it.name == {
                case "error";
                    assert(it.offset_in_bytes == 0, "GDExtensionCallError.error has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionCallError.error has unexpected size % instead of 4", it.type.runtime_size);
                case "argument";
                    assert(it.offset_in_bytes == 4, "GDExtensionCallError.argument has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionCallError.argument has unexpected size % instead of 4", it.type.runtime_size);
                case "expected";
                    assert(it.offset_in_bytes == 8, "GDExtensionCallError.expected has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionCallError.expected has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionCallError) == 12, "GDExtensionCallError has size % instead of 12", size_of(GDExtensionCallError));
    }

    {
        info := type_info(GDExtensionInstanceBindingCallbacks);
        for info.members {
            if it.name == {
                case "create_callback";
                    assert(it.offset_in_bytes == 0, "GDExtensionInstanceBindingCallbacks.create_callback has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionInstanceBindingCallbacks.create_callback has unexpected size % instead of 8", it.type.runtime_size);
                case "free_callback";
                    assert(it.offset_in_bytes == 8, "GDExtensionInstanceBindingCallbacks.free_callback has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionInstanceBindingCallbacks.free_callback has unexpected size % instead of 8", it.type.runtime_size);
                case "reference_callback";
                    assert(it.offset_in_bytes == 16, "GDExtensionInstanceBindingCallbacks.reference_callback has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionInstanceBindingCallbacks.reference_callback has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionInstanceBindingCallbacks) == 24, "GDExtensionInstanceBindingCallbacks has size % instead of 24", size_of(GDExtensionInstanceBindingCallbacks));
    }

    {
        info := type_info(GDExtensionPropertyInfo);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 0, "GDExtensionPropertyInfo.type has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionPropertyInfo.type has unexpected size % instead of 4", it.type.runtime_size);
                case "name";
                    assert(it.offset_in_bytes == 8, "GDExtensionPropertyInfo.name has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionPropertyInfo.name has unexpected size % instead of 8", it.type.runtime_size);
                case "class_name";
                    assert(it.offset_in_bytes == 16, "GDExtensionPropertyInfo.class_name has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionPropertyInfo.class_name has unexpected size % instead of 8", it.type.runtime_size);
                case "hint";
                    assert(it.offset_in_bytes == 24, "GDExtensionPropertyInfo.hint has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionPropertyInfo.hint has unexpected size % instead of 4", it.type.runtime_size);
                case "hint_string";
                    assert(it.offset_in_bytes == 32, "GDExtensionPropertyInfo.hint_string has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionPropertyInfo.hint_string has unexpected size % instead of 8", it.type.runtime_size);
                case "usage";
                    assert(it.offset_in_bytes == 40, "GDExtensionPropertyInfo.usage has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionPropertyInfo.usage has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionPropertyInfo) == 48, "GDExtensionPropertyInfo has size % instead of 48", size_of(GDExtensionPropertyInfo));
    }

    {
        info := type_info(GDExtensionMethodInfo);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "GDExtensionMethodInfo.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionMethodInfo.name has unexpected size % instead of 8", it.type.runtime_size);
                case "return_value";
                    assert(it.offset_in_bytes == 8, "GDExtensionMethodInfo.return_value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "GDExtensionMethodInfo.return_value has unexpected size % instead of 48", it.type.runtime_size);
                case "flags";
                    assert(it.offset_in_bytes == 56, "GDExtensionMethodInfo.flags has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionMethodInfo.flags has unexpected size % instead of 4", it.type.runtime_size);
                case "id";
                    assert(it.offset_in_bytes == 60, "GDExtensionMethodInfo.id has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionMethodInfo.id has unexpected size % instead of 4", it.type.runtime_size);
                case "argument_count";
                    assert(it.offset_in_bytes == 64, "GDExtensionMethodInfo.argument_count has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionMethodInfo.argument_count has unexpected size % instead of 4", it.type.runtime_size);
                case "arguments";
                    assert(it.offset_in_bytes == 72, "GDExtensionMethodInfo.arguments has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionMethodInfo.arguments has unexpected size % instead of 8", it.type.runtime_size);
                case "default_argument_count";
                    assert(it.offset_in_bytes == 80, "GDExtensionMethodInfo.default_argument_count has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionMethodInfo.default_argument_count has unexpected size % instead of 4", it.type.runtime_size);
                case "default_arguments";
                    assert(it.offset_in_bytes == 88, "GDExtensionMethodInfo.default_arguments has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionMethodInfo.default_arguments has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionMethodInfo) == 96, "GDExtensionMethodInfo has size % instead of 96", size_of(GDExtensionMethodInfo));
    }

    {
        info := type_info(GDExtensionClassCreationInfo);
        for info.members {
            if it.name == {
                case "is_virtual";
                    assert(it.offset_in_bytes == 0, "GDExtensionClassCreationInfo.is_virtual has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo.is_virtual has unexpected size % instead of 1", it.type.runtime_size);
                case "is_abstract";
                    assert(it.offset_in_bytes == 1, "GDExtensionClassCreationInfo.is_abstract has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo.is_abstract has unexpected size % instead of 1", it.type.runtime_size);
                case "set_func";
                    assert(it.offset_in_bytes == 8, "GDExtensionClassCreationInfo.set_func has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionClassCreationInfo.get_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionClassCreationInfo.get_property_list_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionClassCreationInfo.free_property_list_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionClassCreationInfo.property_can_revert_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionClassCreationInfo.property_get_revert_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionClassCreationInfo.notification_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionClassCreationInfo.to_string_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "reference_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionClassCreationInfo.reference_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.reference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "unreference_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionClassCreationInfo.unreference_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.unreference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "create_instance_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionClassCreationInfo.create_instance_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.create_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_instance_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionClassCreationInfo.free_instance_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.free_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionClassCreationInfo.get_virtual_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.get_virtual_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_rid_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionClassCreationInfo.get_rid_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.get_rid_func has unexpected size % instead of 8", it.type.runtime_size);
                case "class_userdata";
                    assert(it.offset_in_bytes == 120, "GDExtensionClassCreationInfo.class_userdata has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo.class_userdata has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionClassCreationInfo) == 128, "GDExtensionClassCreationInfo has size % instead of 128", size_of(GDExtensionClassCreationInfo));
    }

    {
        info := type_info(GDExtensionClassCreationInfo2);
        for info.members {
            if it.name == {
                case "is_virtual";
                    assert(it.offset_in_bytes == 0, "GDExtensionClassCreationInfo2.is_virtual has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo2.is_virtual has unexpected size % instead of 1", it.type.runtime_size);
                case "is_abstract";
                    assert(it.offset_in_bytes == 1, "GDExtensionClassCreationInfo2.is_abstract has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo2.is_abstract has unexpected size % instead of 1", it.type.runtime_size);
                case "is_exposed";
                    assert(it.offset_in_bytes == 2, "GDExtensionClassCreationInfo2.is_exposed has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo2.is_exposed has unexpected size % instead of 1", it.type.runtime_size);
                case "set_func";
                    assert(it.offset_in_bytes == 8, "GDExtensionClassCreationInfo2.set_func has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionClassCreationInfo2.get_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionClassCreationInfo2.get_property_list_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionClassCreationInfo2.free_property_list_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionClassCreationInfo2.property_can_revert_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionClassCreationInfo2.property_get_revert_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "validate_property_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionClassCreationInfo2.validate_property_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.validate_property_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionClassCreationInfo2.notification_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionClassCreationInfo2.to_string_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "reference_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionClassCreationInfo2.reference_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.reference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "unreference_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionClassCreationInfo2.unreference_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.unreference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "create_instance_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionClassCreationInfo2.create_instance_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.create_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_instance_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionClassCreationInfo2.free_instance_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.free_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "recreate_instance_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionClassCreationInfo2.recreate_instance_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.recreate_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_func";
                    assert(it.offset_in_bytes == 120, "GDExtensionClassCreationInfo2.get_virtual_func has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.get_virtual_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_call_data_func";
                    assert(it.offset_in_bytes == 128, "GDExtensionClassCreationInfo2.get_virtual_call_data_func has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.get_virtual_call_data_func has unexpected size % instead of 8", it.type.runtime_size);
                case "call_virtual_with_data_func";
                    assert(it.offset_in_bytes == 136, "GDExtensionClassCreationInfo2.call_virtual_with_data_func has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.call_virtual_with_data_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_rid_func";
                    assert(it.offset_in_bytes == 144, "GDExtensionClassCreationInfo2.get_rid_func has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.get_rid_func has unexpected size % instead of 8", it.type.runtime_size);
                case "class_userdata";
                    assert(it.offset_in_bytes == 152, "GDExtensionClassCreationInfo2.class_userdata has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo2.class_userdata has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionClassCreationInfo2) == 160, "GDExtensionClassCreationInfo2 has size % instead of 160", size_of(GDExtensionClassCreationInfo2));
    }

    {
        info := type_info(GDExtensionClassCreationInfo3);
        for info.members {
            if it.name == {
                case "is_virtual";
                    assert(it.offset_in_bytes == 0, "GDExtensionClassCreationInfo3.is_virtual has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo3.is_virtual has unexpected size % instead of 1", it.type.runtime_size);
                case "is_abstract";
                    assert(it.offset_in_bytes == 1, "GDExtensionClassCreationInfo3.is_abstract has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo3.is_abstract has unexpected size % instead of 1", it.type.runtime_size);
                case "is_exposed";
                    assert(it.offset_in_bytes == 2, "GDExtensionClassCreationInfo3.is_exposed has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo3.is_exposed has unexpected size % instead of 1", it.type.runtime_size);
                case "is_runtime";
                    assert(it.offset_in_bytes == 3, "GDExtensionClassCreationInfo3.is_runtime has unexpected offset % instead of 3", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo3.is_runtime has unexpected size % instead of 1", it.type.runtime_size);
                case "set_func";
                    assert(it.offset_in_bytes == 8, "GDExtensionClassCreationInfo3.set_func has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionClassCreationInfo3.get_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionClassCreationInfo3.get_property_list_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionClassCreationInfo3.free_property_list_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionClassCreationInfo3.property_can_revert_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionClassCreationInfo3.property_get_revert_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "validate_property_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionClassCreationInfo3.validate_property_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.validate_property_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionClassCreationInfo3.notification_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionClassCreationInfo3.to_string_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "reference_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionClassCreationInfo3.reference_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.reference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "unreference_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionClassCreationInfo3.unreference_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.unreference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "create_instance_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionClassCreationInfo3.create_instance_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.create_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_instance_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionClassCreationInfo3.free_instance_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.free_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "recreate_instance_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionClassCreationInfo3.recreate_instance_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.recreate_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_func";
                    assert(it.offset_in_bytes == 120, "GDExtensionClassCreationInfo3.get_virtual_func has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.get_virtual_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_call_data_func";
                    assert(it.offset_in_bytes == 128, "GDExtensionClassCreationInfo3.get_virtual_call_data_func has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.get_virtual_call_data_func has unexpected size % instead of 8", it.type.runtime_size);
                case "call_virtual_with_data_func";
                    assert(it.offset_in_bytes == 136, "GDExtensionClassCreationInfo3.call_virtual_with_data_func has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.call_virtual_with_data_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_rid_func";
                    assert(it.offset_in_bytes == 144, "GDExtensionClassCreationInfo3.get_rid_func has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.get_rid_func has unexpected size % instead of 8", it.type.runtime_size);
                case "class_userdata";
                    assert(it.offset_in_bytes == 152, "GDExtensionClassCreationInfo3.class_userdata has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo3.class_userdata has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionClassCreationInfo3) == 160, "GDExtensionClassCreationInfo3 has size % instead of 160", size_of(GDExtensionClassCreationInfo3));
    }

    {
        info := type_info(GDExtensionClassCreationInfo4);
        for info.members {
            if it.name == {
                case "is_virtual";
                    assert(it.offset_in_bytes == 0, "GDExtensionClassCreationInfo4.is_virtual has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo4.is_virtual has unexpected size % instead of 1", it.type.runtime_size);
                case "is_abstract";
                    assert(it.offset_in_bytes == 1, "GDExtensionClassCreationInfo4.is_abstract has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo4.is_abstract has unexpected size % instead of 1", it.type.runtime_size);
                case "is_exposed";
                    assert(it.offset_in_bytes == 2, "GDExtensionClassCreationInfo4.is_exposed has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo4.is_exposed has unexpected size % instead of 1", it.type.runtime_size);
                case "is_runtime";
                    assert(it.offset_in_bytes == 3, "GDExtensionClassCreationInfo4.is_runtime has unexpected offset % instead of 3", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassCreationInfo4.is_runtime has unexpected size % instead of 1", it.type.runtime_size);
                case "icon_path";
                    assert(it.offset_in_bytes == 8, "GDExtensionClassCreationInfo4.icon_path has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.icon_path has unexpected size % instead of 8", it.type.runtime_size);
                case "set_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionClassCreationInfo4.set_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionClassCreationInfo4.get_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionClassCreationInfo4.get_property_list_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionClassCreationInfo4.free_property_list_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionClassCreationInfo4.property_can_revert_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionClassCreationInfo4.property_get_revert_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "validate_property_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionClassCreationInfo4.validate_property_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.validate_property_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionClassCreationInfo4.notification_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionClassCreationInfo4.to_string_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "reference_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionClassCreationInfo4.reference_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.reference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "unreference_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionClassCreationInfo4.unreference_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.unreference_func has unexpected size % instead of 8", it.type.runtime_size);
                case "create_instance_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionClassCreationInfo4.create_instance_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.create_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_instance_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionClassCreationInfo4.free_instance_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.free_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "recreate_instance_func";
                    assert(it.offset_in_bytes == 120, "GDExtensionClassCreationInfo4.recreate_instance_func has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.recreate_instance_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_func";
                    assert(it.offset_in_bytes == 128, "GDExtensionClassCreationInfo4.get_virtual_func has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.get_virtual_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_virtual_call_data_func";
                    assert(it.offset_in_bytes == 136, "GDExtensionClassCreationInfo4.get_virtual_call_data_func has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.get_virtual_call_data_func has unexpected size % instead of 8", it.type.runtime_size);
                case "call_virtual_with_data_func";
                    assert(it.offset_in_bytes == 144, "GDExtensionClassCreationInfo4.call_virtual_with_data_func has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.call_virtual_with_data_func has unexpected size % instead of 8", it.type.runtime_size);
                case "class_userdata";
                    assert(it.offset_in_bytes == 152, "GDExtensionClassCreationInfo4.class_userdata has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassCreationInfo4.class_userdata has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionClassCreationInfo4) == 160, "GDExtensionClassCreationInfo4 has size % instead of 160", size_of(GDExtensionClassCreationInfo4));
    }

    {
        info := type_info(GDExtensionClassMethodInfo);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "GDExtensionClassMethodInfo.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.name has unexpected size % instead of 8", it.type.runtime_size);
                case "method_userdata";
                    assert(it.offset_in_bytes == 8, "GDExtensionClassMethodInfo.method_userdata has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.method_userdata has unexpected size % instead of 8", it.type.runtime_size);
                case "call_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionClassMethodInfo.call_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.call_func has unexpected size % instead of 8", it.type.runtime_size);
                case "ptrcall_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionClassMethodInfo.ptrcall_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.ptrcall_func has unexpected size % instead of 8", it.type.runtime_size);
                case "method_flags";
                    assert(it.offset_in_bytes == 32, "GDExtensionClassMethodInfo.method_flags has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassMethodInfo.method_flags has unexpected size % instead of 4", it.type.runtime_size);
                case "has_return_value";
                    assert(it.offset_in_bytes == 36, "GDExtensionClassMethodInfo.has_return_value has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GDExtensionClassMethodInfo.has_return_value has unexpected size % instead of 1", it.type.runtime_size);
                case "return_value_info";
                    assert(it.offset_in_bytes == 40, "GDExtensionClassMethodInfo.return_value_info has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.return_value_info has unexpected size % instead of 8", it.type.runtime_size);
                case "return_value_metadata";
                    assert(it.offset_in_bytes == 48, "GDExtensionClassMethodInfo.return_value_metadata has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassMethodInfo.return_value_metadata has unexpected size % instead of 4", it.type.runtime_size);
                case "argument_count";
                    assert(it.offset_in_bytes == 52, "GDExtensionClassMethodInfo.argument_count has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassMethodInfo.argument_count has unexpected size % instead of 4", it.type.runtime_size);
                case "arguments_info";
                    assert(it.offset_in_bytes == 56, "GDExtensionClassMethodInfo.arguments_info has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.arguments_info has unexpected size % instead of 8", it.type.runtime_size);
                case "arguments_metadata";
                    assert(it.offset_in_bytes == 64, "GDExtensionClassMethodInfo.arguments_metadata has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.arguments_metadata has unexpected size % instead of 8", it.type.runtime_size);
                case "default_argument_count";
                    assert(it.offset_in_bytes == 72, "GDExtensionClassMethodInfo.default_argument_count has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassMethodInfo.default_argument_count has unexpected size % instead of 4", it.type.runtime_size);
                case "default_arguments";
                    assert(it.offset_in_bytes == 80, "GDExtensionClassMethodInfo.default_arguments has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassMethodInfo.default_arguments has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionClassMethodInfo) == 88, "GDExtensionClassMethodInfo has size % instead of 88", size_of(GDExtensionClassMethodInfo));
    }

    {
        info := type_info(GDExtensionClassVirtualMethodInfo);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "GDExtensionClassVirtualMethodInfo.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassVirtualMethodInfo.name has unexpected size % instead of 8", it.type.runtime_size);
                case "method_flags";
                    assert(it.offset_in_bytes == 8, "GDExtensionClassVirtualMethodInfo.method_flags has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassVirtualMethodInfo.method_flags has unexpected size % instead of 4", it.type.runtime_size);
                case "return_value";
                    assert(it.offset_in_bytes == 16, "GDExtensionClassVirtualMethodInfo.return_value has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "GDExtensionClassVirtualMethodInfo.return_value has unexpected size % instead of 48", it.type.runtime_size);
                case "return_value_metadata";
                    assert(it.offset_in_bytes == 64, "GDExtensionClassVirtualMethodInfo.return_value_metadata has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassVirtualMethodInfo.return_value_metadata has unexpected size % instead of 4", it.type.runtime_size);
                case "argument_count";
                    assert(it.offset_in_bytes == 68, "GDExtensionClassVirtualMethodInfo.argument_count has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionClassVirtualMethodInfo.argument_count has unexpected size % instead of 4", it.type.runtime_size);
                case "arguments";
                    assert(it.offset_in_bytes == 72, "GDExtensionClassVirtualMethodInfo.arguments has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassVirtualMethodInfo.arguments has unexpected size % instead of 8", it.type.runtime_size);
                case "arguments_metadata";
                    assert(it.offset_in_bytes == 80, "GDExtensionClassVirtualMethodInfo.arguments_metadata has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionClassVirtualMethodInfo.arguments_metadata has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionClassVirtualMethodInfo) == 88, "GDExtensionClassVirtualMethodInfo has size % instead of 88", size_of(GDExtensionClassVirtualMethodInfo));
    }

    {
        info := type_info(GDExtensionCallableCustomInfo);
        for info.members {
            if it.name == {
                case "callable_userdata";
                    assert(it.offset_in_bytes == 0, "GDExtensionCallableCustomInfo.callable_userdata has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.callable_userdata has unexpected size % instead of 8", it.type.runtime_size);
                case "token";
                    assert(it.offset_in_bytes == 8, "GDExtensionCallableCustomInfo.token has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.token has unexpected size % instead of 8", it.type.runtime_size);
                case "object_id";
                    assert(it.offset_in_bytes == 16, "GDExtensionCallableCustomInfo.object_id has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.object_id has unexpected size % instead of 8", it.type.runtime_size);
                case "call_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionCallableCustomInfo.call_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.call_func has unexpected size % instead of 8", it.type.runtime_size);
                case "is_valid_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionCallableCustomInfo.is_valid_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.is_valid_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionCallableCustomInfo.free_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.free_func has unexpected size % instead of 8", it.type.runtime_size);
                case "hash_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionCallableCustomInfo.hash_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.hash_func has unexpected size % instead of 8", it.type.runtime_size);
                case "equal_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionCallableCustomInfo.equal_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.equal_func has unexpected size % instead of 8", it.type.runtime_size);
                case "less_than_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionCallableCustomInfo.less_than_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.less_than_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionCallableCustomInfo.to_string_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionCallableCustomInfo) == 80, "GDExtensionCallableCustomInfo has size % instead of 80", size_of(GDExtensionCallableCustomInfo));
    }

    {
        info := type_info(GDExtensionCallableCustomInfo2);
        for info.members {
            if it.name == {
                case "callable_userdata";
                    assert(it.offset_in_bytes == 0, "GDExtensionCallableCustomInfo2.callable_userdata has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.callable_userdata has unexpected size % instead of 8", it.type.runtime_size);
                case "token";
                    assert(it.offset_in_bytes == 8, "GDExtensionCallableCustomInfo2.token has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.token has unexpected size % instead of 8", it.type.runtime_size);
                case "object_id";
                    assert(it.offset_in_bytes == 16, "GDExtensionCallableCustomInfo2.object_id has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.object_id has unexpected size % instead of 8", it.type.runtime_size);
                case "call_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionCallableCustomInfo2.call_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.call_func has unexpected size % instead of 8", it.type.runtime_size);
                case "is_valid_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionCallableCustomInfo2.is_valid_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.is_valid_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionCallableCustomInfo2.free_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.free_func has unexpected size % instead of 8", it.type.runtime_size);
                case "hash_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionCallableCustomInfo2.hash_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.hash_func has unexpected size % instead of 8", it.type.runtime_size);
                case "equal_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionCallableCustomInfo2.equal_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.equal_func has unexpected size % instead of 8", it.type.runtime_size);
                case "less_than_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionCallableCustomInfo2.less_than_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.less_than_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionCallableCustomInfo2.to_string_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_argument_count_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionCallableCustomInfo2.get_argument_count_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionCallableCustomInfo2.get_argument_count_func has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionCallableCustomInfo2) == 88, "GDExtensionCallableCustomInfo2 has size % instead of 88", size_of(GDExtensionCallableCustomInfo2));
    }

    {
        info := type_info(GDExtensionScriptInstanceInfo);
        for info.members {
            if it.name == {
                case "set_func";
                    assert(it.offset_in_bytes == 0, "GDExtensionScriptInstanceInfo.set_func has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 8, "GDExtensionScriptInstanceInfo.get_func has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionScriptInstanceInfo.get_property_list_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionScriptInstanceInfo.free_property_list_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionScriptInstanceInfo.property_can_revert_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionScriptInstanceInfo.property_get_revert_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_owner_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionScriptInstanceInfo.get_owner_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_owner_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_state_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionScriptInstanceInfo.get_property_state_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_property_state_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_method_list_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionScriptInstanceInfo.get_method_list_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_method_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_method_list_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionScriptInstanceInfo.free_method_list_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.free_method_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_type_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionScriptInstanceInfo.get_property_type_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_property_type_func has unexpected size % instead of 8", it.type.runtime_size);
                case "has_method_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionScriptInstanceInfo.has_method_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.has_method_func has unexpected size % instead of 8", it.type.runtime_size);
                case "call_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionScriptInstanceInfo.call_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.call_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionScriptInstanceInfo.notification_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionScriptInstanceInfo.to_string_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "refcount_incremented_func";
                    assert(it.offset_in_bytes == 120, "GDExtensionScriptInstanceInfo.refcount_incremented_func has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.refcount_incremented_func has unexpected size % instead of 8", it.type.runtime_size);
                case "refcount_decremented_func";
                    assert(it.offset_in_bytes == 128, "GDExtensionScriptInstanceInfo.refcount_decremented_func has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.refcount_decremented_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_script_func";
                    assert(it.offset_in_bytes == 136, "GDExtensionScriptInstanceInfo.get_script_func has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_script_func has unexpected size % instead of 8", it.type.runtime_size);
                case "is_placeholder_func";
                    assert(it.offset_in_bytes == 144, "GDExtensionScriptInstanceInfo.is_placeholder_func has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.is_placeholder_func has unexpected size % instead of 8", it.type.runtime_size);
                case "set_fallback_func";
                    assert(it.offset_in_bytes == 152, "GDExtensionScriptInstanceInfo.set_fallback_func has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.set_fallback_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_fallback_func";
                    assert(it.offset_in_bytes == 160, "GDExtensionScriptInstanceInfo.get_fallback_func has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_fallback_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_language_func";
                    assert(it.offset_in_bytes == 168, "GDExtensionScriptInstanceInfo.get_language_func has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.get_language_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_func";
                    assert(it.offset_in_bytes == 176, "GDExtensionScriptInstanceInfo.free_func has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo.free_func has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionScriptInstanceInfo) == 184, "GDExtensionScriptInstanceInfo has size % instead of 184", size_of(GDExtensionScriptInstanceInfo));
    }

    {
        info := type_info(GDExtensionScriptInstanceInfo2);
        for info.members {
            if it.name == {
                case "set_func";
                    assert(it.offset_in_bytes == 0, "GDExtensionScriptInstanceInfo2.set_func has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 8, "GDExtensionScriptInstanceInfo2.get_func has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionScriptInstanceInfo2.get_property_list_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionScriptInstanceInfo2.free_property_list_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_class_category_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionScriptInstanceInfo2.get_class_category_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_class_category_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionScriptInstanceInfo2.property_can_revert_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionScriptInstanceInfo2.property_get_revert_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_owner_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionScriptInstanceInfo2.get_owner_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_owner_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_state_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionScriptInstanceInfo2.get_property_state_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_property_state_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_method_list_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionScriptInstanceInfo2.get_method_list_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_method_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_method_list_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionScriptInstanceInfo2.free_method_list_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.free_method_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_type_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionScriptInstanceInfo2.get_property_type_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_property_type_func has unexpected size % instead of 8", it.type.runtime_size);
                case "validate_property_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionScriptInstanceInfo2.validate_property_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.validate_property_func has unexpected size % instead of 8", it.type.runtime_size);
                case "has_method_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionScriptInstanceInfo2.has_method_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.has_method_func has unexpected size % instead of 8", it.type.runtime_size);
                case "call_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionScriptInstanceInfo2.call_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.call_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 120, "GDExtensionScriptInstanceInfo2.notification_func has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 128, "GDExtensionScriptInstanceInfo2.to_string_func has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "refcount_incremented_func";
                    assert(it.offset_in_bytes == 136, "GDExtensionScriptInstanceInfo2.refcount_incremented_func has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.refcount_incremented_func has unexpected size % instead of 8", it.type.runtime_size);
                case "refcount_decremented_func";
                    assert(it.offset_in_bytes == 144, "GDExtensionScriptInstanceInfo2.refcount_decremented_func has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.refcount_decremented_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_script_func";
                    assert(it.offset_in_bytes == 152, "GDExtensionScriptInstanceInfo2.get_script_func has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_script_func has unexpected size % instead of 8", it.type.runtime_size);
                case "is_placeholder_func";
                    assert(it.offset_in_bytes == 160, "GDExtensionScriptInstanceInfo2.is_placeholder_func has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.is_placeholder_func has unexpected size % instead of 8", it.type.runtime_size);
                case "set_fallback_func";
                    assert(it.offset_in_bytes == 168, "GDExtensionScriptInstanceInfo2.set_fallback_func has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.set_fallback_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_fallback_func";
                    assert(it.offset_in_bytes == 176, "GDExtensionScriptInstanceInfo2.get_fallback_func has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_fallback_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_language_func";
                    assert(it.offset_in_bytes == 184, "GDExtensionScriptInstanceInfo2.get_language_func has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.get_language_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_func";
                    assert(it.offset_in_bytes == 192, "GDExtensionScriptInstanceInfo2.free_func has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo2.free_func has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionScriptInstanceInfo2) == 200, "GDExtensionScriptInstanceInfo2 has size % instead of 200", size_of(GDExtensionScriptInstanceInfo2));
    }

    {
        info := type_info(GDExtensionScriptInstanceInfo3);
        for info.members {
            if it.name == {
                case "set_func";
                    assert(it.offset_in_bytes == 0, "GDExtensionScriptInstanceInfo3.set_func has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.set_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_func";
                    assert(it.offset_in_bytes == 8, "GDExtensionScriptInstanceInfo3.get_func has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_list_func";
                    assert(it.offset_in_bytes == 16, "GDExtensionScriptInstanceInfo3.get_property_list_func has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_property_list_func";
                    assert(it.offset_in_bytes == 24, "GDExtensionScriptInstanceInfo3.free_property_list_func has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.free_property_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_class_category_func";
                    assert(it.offset_in_bytes == 32, "GDExtensionScriptInstanceInfo3.get_class_category_func has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_class_category_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_can_revert_func";
                    assert(it.offset_in_bytes == 40, "GDExtensionScriptInstanceInfo3.property_can_revert_func has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.property_can_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "property_get_revert_func";
                    assert(it.offset_in_bytes == 48, "GDExtensionScriptInstanceInfo3.property_get_revert_func has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.property_get_revert_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_owner_func";
                    assert(it.offset_in_bytes == 56, "GDExtensionScriptInstanceInfo3.get_owner_func has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_owner_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_state_func";
                    assert(it.offset_in_bytes == 64, "GDExtensionScriptInstanceInfo3.get_property_state_func has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_property_state_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_method_list_func";
                    assert(it.offset_in_bytes == 72, "GDExtensionScriptInstanceInfo3.get_method_list_func has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_method_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_method_list_func";
                    assert(it.offset_in_bytes == 80, "GDExtensionScriptInstanceInfo3.free_method_list_func has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.free_method_list_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_property_type_func";
                    assert(it.offset_in_bytes == 88, "GDExtensionScriptInstanceInfo3.get_property_type_func has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_property_type_func has unexpected size % instead of 8", it.type.runtime_size);
                case "validate_property_func";
                    assert(it.offset_in_bytes == 96, "GDExtensionScriptInstanceInfo3.validate_property_func has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.validate_property_func has unexpected size % instead of 8", it.type.runtime_size);
                case "has_method_func";
                    assert(it.offset_in_bytes == 104, "GDExtensionScriptInstanceInfo3.has_method_func has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.has_method_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_method_argument_count_func";
                    assert(it.offset_in_bytes == 112, "GDExtensionScriptInstanceInfo3.get_method_argument_count_func has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_method_argument_count_func has unexpected size % instead of 8", it.type.runtime_size);
                case "call_func";
                    assert(it.offset_in_bytes == 120, "GDExtensionScriptInstanceInfo3.call_func has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.call_func has unexpected size % instead of 8", it.type.runtime_size);
                case "notification_func";
                    assert(it.offset_in_bytes == 128, "GDExtensionScriptInstanceInfo3.notification_func has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.notification_func has unexpected size % instead of 8", it.type.runtime_size);
                case "to_string_func";
                    assert(it.offset_in_bytes == 136, "GDExtensionScriptInstanceInfo3.to_string_func has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.to_string_func has unexpected size % instead of 8", it.type.runtime_size);
                case "refcount_incremented_func";
                    assert(it.offset_in_bytes == 144, "GDExtensionScriptInstanceInfo3.refcount_incremented_func has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.refcount_incremented_func has unexpected size % instead of 8", it.type.runtime_size);
                case "refcount_decremented_func";
                    assert(it.offset_in_bytes == 152, "GDExtensionScriptInstanceInfo3.refcount_decremented_func has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.refcount_decremented_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_script_func";
                    assert(it.offset_in_bytes == 160, "GDExtensionScriptInstanceInfo3.get_script_func has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_script_func has unexpected size % instead of 8", it.type.runtime_size);
                case "is_placeholder_func";
                    assert(it.offset_in_bytes == 168, "GDExtensionScriptInstanceInfo3.is_placeholder_func has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.is_placeholder_func has unexpected size % instead of 8", it.type.runtime_size);
                case "set_fallback_func";
                    assert(it.offset_in_bytes == 176, "GDExtensionScriptInstanceInfo3.set_fallback_func has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.set_fallback_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_fallback_func";
                    assert(it.offset_in_bytes == 184, "GDExtensionScriptInstanceInfo3.get_fallback_func has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_fallback_func has unexpected size % instead of 8", it.type.runtime_size);
                case "get_language_func";
                    assert(it.offset_in_bytes == 192, "GDExtensionScriptInstanceInfo3.get_language_func has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.get_language_func has unexpected size % instead of 8", it.type.runtime_size);
                case "free_func";
                    assert(it.offset_in_bytes == 200, "GDExtensionScriptInstanceInfo3.free_func has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionScriptInstanceInfo3.free_func has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionScriptInstanceInfo3) == 208, "GDExtensionScriptInstanceInfo3 has size % instead of 208", size_of(GDExtensionScriptInstanceInfo3));
    }

    {
        info := type_info(GDExtensionInitialization);
        for info.members {
            if it.name == {
                case "minimum_initialization_level";
                    assert(it.offset_in_bytes == 0, "GDExtensionInitialization.minimum_initialization_level has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionInitialization.minimum_initialization_level has unexpected size % instead of 4", it.type.runtime_size);
                case "userdata";
                    assert(it.offset_in_bytes == 8, "GDExtensionInitialization.userdata has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionInitialization.userdata has unexpected size % instead of 8", it.type.runtime_size);
                case "initialize";
                    assert(it.offset_in_bytes == 16, "GDExtensionInitialization.initialize has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionInitialization.initialize has unexpected size % instead of 8", it.type.runtime_size);
                case "deinitialize";
                    assert(it.offset_in_bytes == 24, "GDExtensionInitialization.deinitialize has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionInitialization.deinitialize has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionInitialization) == 32, "GDExtensionInitialization has size % instead of 32", size_of(GDExtensionInitialization));
    }

    {
        info := type_info(GDExtensionGodotVersion);
        for info.members {
            if it.name == {
                case "major";
                    assert(it.offset_in_bytes == 0, "GDExtensionGodotVersion.major has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionGodotVersion.major has unexpected size % instead of 4", it.type.runtime_size);
                case "minor";
                    assert(it.offset_in_bytes == 4, "GDExtensionGodotVersion.minor has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionGodotVersion.minor has unexpected size % instead of 4", it.type.runtime_size);
                case "patch";
                    assert(it.offset_in_bytes == 8, "GDExtensionGodotVersion.patch has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GDExtensionGodotVersion.patch has unexpected size % instead of 4", it.type.runtime_size);
                case "_string";
                    assert(it.offset_in_bytes == 16, "GDExtensionGodotVersion._string has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GDExtensionGodotVersion._string has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GDExtensionGodotVersion) == 24, "GDExtensionGodotVersion has size % instead of 24", size_of(GDExtensionGodotVersion));
    }
}

