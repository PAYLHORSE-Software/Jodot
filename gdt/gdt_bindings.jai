//  --------------------
// | JODOT GDT BINDINGS |
//  --------------------

OpaqueClass :: struct {}

Nil :: void;

// bool, int and float (float64) match native

gstring :: u32; // ??

Vector2 :: Math.Vector2;

Vector2i :: struct {
    x: s32;
    y: s32;
}

Rect2 :: struct {
    position: Vector2;
    size: Vector2;
}

Rect2i :: struct {
    position: Vector2i;
    size: Vector2i;
}

Vector3 :: Math.Vector3;

Vector3i :: struct {
    x: s32;
    y: s32;
    z: s32;
}

Transform2D :: struct {
    x: Vector2;
    y: Vector2;
    origin: Vector2;
}

Vector4 :: Math.Vector4;

Vector4i :: struct {
    x: s32;
    y: s32;
    z: s32;
    w: s32;
}

Plane :: struct {
    normal: Vector3;
    d: float;
}

Quaternion :: Math.Quaternion;

AABB :: struct {
    position: Vector3;
    size: Vector3;
}

Basis :: struct {
    x: Vector3;
    y: Vector3;
    z: Vector3;
}

Transform3D :: struct {
    basis: Basis;
    origin: Vector3;
}

Projection :: struct {
    x: Vector4;
    y: Vector4;
    z: Vector4;
    w: Vector4;
}

Color :: struct {
    r: float;
    g: float;
    b: float;
    a: float;
}

Vector2_Axis :: enum {
    AXIS_X :: 0;
    AXIS_Y :: 1;
    AXIS_Z :: 2;
}

Vector3_Axis :: enum {
    AXIS_X :: 0;
    AXIS_Y :: 1;
    AXIS_Z :: 2;
}

Vector4_Axis :: enum {
    AXIS_X :: 0;
    AXIS_Y :: 1;
    AXIS_Z :: 2;
}

Projection_Planes :: enum {
    PLANE_NEAR :: 0;
    PLANE_FAR :: 1;
    PLANE_LEFT :: 2;
    PLANE_TOP :: 3;
    PLANE_RIGHT :: 4;
    PLANE_BOTTOM :: 5;
}

// TODO: should be able to expose these
StringName :: u32; // ??
NodePath :: u32;
RID :: u64;
// Object :: u32;
Callable :: [16] u8;
Signal :: [16] u8;
Dictionary :: u32;
Array :: u32;
PackedByteArray :: *u8;
PackedInt32Array :: *u8;
PackedInt64Array :: *u8;
PackedFloat32Array :: *u8;
PackedFloat64Array :: *u8;
PackedStringArray :: *u8;
PackedVector2Array :: *u8;
PackedVector3Array :: *u8;
PackedColorArray :: *u8;
Variant :: [24] u8;

Side :: enum s32 {    // 0
    SIDE_LEFT :: 0;
    SIDE_TOP :: 1;
    SIDE_RIGHT :: 2;
    SIDE_BOTTOM :: 3;
}

Corner :: enum s32 {    // 1
    CORNER_TOP_LEFT :: 0;
    CORNER_TOP_RIGHT :: 1;
    CORNER_BOTTOM_RIGHT :: 2;
    CORNER_BOTTOM_LEFT :: 3;
}

Orientation :: enum s32 {    // 2
    VERTICAL :: 1;
    HORIZONTAL :: 0;
}

ClockDirection :: enum s32 {    // 3
    CLOCKWISE :: 0;
    COUNTERCLOCKWISE :: 1;
}

HorizontalAlignment :: enum s32 {    // 4
    HORIZONTAL_ALIGNMENT_LEFT :: 0;
    HORIZONTAL_ALIGNMENT_CENTER :: 1;
    HORIZONTAL_ALIGNMENT_RIGHT :: 2;
    HORIZONTAL_ALIGNMENT_FILL :: 3;
}

VerticalAlignment :: enum s32 {    // 5
    VERTICAL_ALIGNMENT_TOP :: 0;
    VERTICAL_ALIGNMENT_CENTER :: 1;
    VERTICAL_ALIGNMENT_BOTTOM :: 2;
    VERTICAL_ALIGNMENT_FILL :: 3;
}

InlineAlignment :: enum s32 {    // 6
    INLINE_ALIGNMENT_TOP_TO :: 0;
    INLINE_ALIGNMENT_CENTER_TO :: 1;
    INLINE_ALIGNMENT_BASELINE_TO :: 3;
    INLINE_ALIGNMENT_BOTTOM_TO :: 2;
    INLINE_ALIGNMENT_TO_TOP :: 0;
    INLINE_ALIGNMENT_TO_CENTER :: 4;
    INLINE_ALIGNMENT_TO_BASELINE :: 8;
    INLINE_ALIGNMENT_TO_BOTTOM :: 12;
    INLINE_ALIGNMENT_TOP :: 0;
    INLINE_ALIGNMENT_CENTER :: 5;
    INLINE_ALIGNMENT_BOTTOM :: 14;
    INLINE_ALIGNMENT_IMAGE_MASK :: 3;
    INLINE_ALIGNMENT_TEXT_MASK :: 12;
}

EulerOrder :: enum s32 {    // 7
    EULER_ORDER_XYZ :: 0;
    EULER_ORDER_XZY :: 1;
    EULER_ORDER_YXZ :: 2;
    EULER_ORDER_YZX :: 3;
    EULER_ORDER_ZXY :: 4;
    EULER_ORDER_ZYX :: 5;
}

Key :: enum s32 {    // 8
    KEY_NONE :: 0;
    KEY_SPECIAL :: 4194304;
    KEY_ESCAPE :: 4194305;
    KEY_TAB :: 4194306;
    KEY_BACKTAB :: 4194307;
    KEY_BACKSPACE :: 4194308;
    KEY_ENTER :: 4194309;
    KEY_KP_ENTER :: 4194310;
    KEY_INSERT :: 4194311;
    KEY_DELETE :: 4194312;
    KEY_PAUSE :: 4194313;
    KEY_PRINT :: 4194314;
    KEY_SYSREQ :: 4194315;
    KEY_CLEAR :: 4194316;
    KEY_HOME :: 4194317;
    KEY_END :: 4194318;
    KEY_LEFT :: 4194319;
    KEY_UP :: 4194320;
    KEY_RIGHT :: 4194321;
    KEY_DOWN :: 4194322;
    KEY_PAGEUP :: 4194323;
    KEY_PAGEDOWN :: 4194324;
    KEY_SHIFT :: 4194325;
    KEY_CTRL :: 4194326;
    KEY_META :: 4194327;
    KEY_ALT :: 4194328;
    KEY_CAPSLOCK :: 4194329;
    KEY_NUMLOCK :: 4194330;
    KEY_SCROLLLOCK :: 4194331;
    KEY_F1 :: 4194332;
    KEY_F2 :: 4194333;
    KEY_F3 :: 4194334;
    KEY_F4 :: 4194335;
    KEY_F5 :: 4194336;
    KEY_F6 :: 4194337;
    KEY_F7 :: 4194338;
    KEY_F8 :: 4194339;
    KEY_F9 :: 4194340;
    KEY_F10 :: 4194341;
    KEY_F11 :: 4194342;
    KEY_F12 :: 4194343;
    KEY_F13 :: 4194344;
    KEY_F14 :: 4194345;
    KEY_F15 :: 4194346;
    KEY_F16 :: 4194347;
    KEY_F17 :: 4194348;
    KEY_F18 :: 4194349;
    KEY_F19 :: 4194350;
    KEY_F20 :: 4194351;
    KEY_F21 :: 4194352;
    KEY_F22 :: 4194353;
    KEY_F23 :: 4194354;
    KEY_F24 :: 4194355;
    KEY_F25 :: 4194356;
    KEY_F26 :: 4194357;
    KEY_F27 :: 4194358;
    KEY_F28 :: 4194359;
    KEY_F29 :: 4194360;
    KEY_F30 :: 4194361;
    KEY_F31 :: 4194362;
    KEY_F32 :: 4194363;
    KEY_F33 :: 4194364;
    KEY_F34 :: 4194365;
    KEY_F35 :: 4194366;
    KEY_KP_MULTIPLY :: 4194433;
    KEY_KP_DIVIDE :: 4194434;
    KEY_KP_SUBTRACT :: 4194435;
    KEY_KP_PERIOD :: 4194436;
    KEY_KP_ADD :: 4194437;
    KEY_KP_0 :: 4194438;
    KEY_KP_1 :: 4194439;
    KEY_KP_2 :: 4194440;
    KEY_KP_3 :: 4194441;
    KEY_KP_4 :: 4194442;
    KEY_KP_5 :: 4194443;
    KEY_KP_6 :: 4194444;
    KEY_KP_7 :: 4194445;
    KEY_KP_8 :: 4194446;
    KEY_KP_9 :: 4194447;
    KEY_MENU :: 4194370;
    KEY_HYPER :: 4194371;
    KEY_HELP :: 4194373;
    KEY_BACK :: 4194376;
    KEY_FORWARD :: 4194377;
    KEY_STOP :: 4194378;
    KEY_REFRESH :: 4194379;
    KEY_VOLUMEDOWN :: 4194380;
    KEY_VOLUMEMUTE :: 4194381;
    KEY_VOLUMEUP :: 4194382;
    KEY_MEDIAPLAY :: 4194388;
    KEY_MEDIASTOP :: 4194389;
    KEY_MEDIAPREVIOUS :: 4194390;
    KEY_MEDIANEXT :: 4194391;
    KEY_MEDIARECORD :: 4194392;
    KEY_HOMEPAGE :: 4194393;
    KEY_FAVORITES :: 4194394;
    KEY_SEARCH :: 4194395;
    KEY_STANDBY :: 4194396;
    KEY_OPENURL :: 4194397;
    KEY_LAUNCHMAIL :: 4194398;
    KEY_LAUNCHMEDIA :: 4194399;
    KEY_LAUNCH0 :: 4194400;
    KEY_LAUNCH1 :: 4194401;
    KEY_LAUNCH2 :: 4194402;
    KEY_LAUNCH3 :: 4194403;
    KEY_LAUNCH4 :: 4194404;
    KEY_LAUNCH5 :: 4194405;
    KEY_LAUNCH6 :: 4194406;
    KEY_LAUNCH7 :: 4194407;
    KEY_LAUNCH8 :: 4194408;
    KEY_LAUNCH9 :: 4194409;
    KEY_LAUNCHA :: 4194410;
    KEY_LAUNCHB :: 4194411;
    KEY_LAUNCHC :: 4194412;
    KEY_LAUNCHD :: 4194413;
    KEY_LAUNCHE :: 4194414;
    KEY_LAUNCHF :: 4194415;
    KEY_GLOBE :: 4194416;
    KEY_KEYBOARD :: 4194417;
    KEY_JIS_EISU :: 4194418;
    KEY_JIS_KANA :: 4194419;
    KEY_UNKNOWN :: 8388607;
    KEY_SPACE :: 32;
    KEY_EXCLAM :: 33;
    KEY_QUOTEDBL :: 34;
    KEY_NUMBERSIGN :: 35;
    KEY_DOLLAR :: 36;
    KEY_PERCENT :: 37;
    KEY_AMPERSAND :: 38;
    KEY_APOSTROPHE :: 39;
    KEY_PARENLEFT :: 40;
    KEY_PARENRIGHT :: 41;
    KEY_ASTERISK :: 42;
    KEY_PLUS :: 43;
    KEY_COMMA :: 44;
    KEY_MINUS :: 45;
    KEY_PERIOD :: 46;
    KEY_SLASH :: 47;
    KEY_0 :: 48;
    KEY_1 :: 49;
    KEY_2 :: 50;
    KEY_3 :: 51;
    KEY_4 :: 52;
    KEY_5 :: 53;
    KEY_6 :: 54;
    KEY_7 :: 55;
    KEY_8 :: 56;
    KEY_9 :: 57;
    KEY_COLON :: 58;
    KEY_SEMICOLON :: 59;
    KEY_LESS :: 60;
    KEY_EQUAL :: 61;
    KEY_GREATER :: 62;
    KEY_QUESTION :: 63;
    KEY_AT :: 64;
    KEY_A :: 65;
    KEY_B :: 66;
    KEY_C :: 67;
    KEY_D :: 68;
    KEY_E :: 69;
    KEY_F :: 70;
    KEY_G :: 71;
    KEY_H :: 72;
    KEY_I :: 73;
    KEY_J :: 74;
    KEY_K :: 75;
    KEY_L :: 76;
    KEY_M :: 77;
    KEY_N :: 78;
    KEY_O :: 79;
    KEY_P :: 80;
    KEY_Q :: 81;
    KEY_R :: 82;
    KEY_S :: 83;
    KEY_T :: 84;
    KEY_U :: 85;
    KEY_V :: 86;
    KEY_W :: 87;
    KEY_X :: 88;
    KEY_Y :: 89;
    KEY_Z :: 90;
    KEY_BRACKETLEFT :: 91;
    KEY_BACKSLASH :: 92;
    KEY_BRACKETRIGHT :: 93;
    KEY_ASCIICIRCUM :: 94;
    KEY_UNDERSCORE :: 95;
    KEY_QUOTELEFT :: 96;
    KEY_BRACELEFT :: 123;
    KEY_BAR :: 124;
    KEY_BRACERIGHT :: 125;
    KEY_ASCIITILDE :: 126;
    KEY_YEN :: 165;
    KEY_SECTION :: 167;
}

KeyModifierMask :: enum s32 {    // 9
    KEY_CODE_MASK :: 8388607;
    KEY_MODIFIER_MASK :: 532676608;
    KEY_MASK_CMD_OR_CTRL :: 16777216;
    KEY_MASK_SHIFT :: 33554432;
    KEY_MASK_ALT :: 67108864;
    KEY_MASK_META :: 134217728;
    KEY_MASK_CTRL :: 268435456;
    KEY_MASK_KPAD :: 536870912;
    KEY_MASK_GROUP_SWITCH :: 1073741824;
} @bitfield

KeyLocation :: enum s32 {    // 10
    KEY_LOCATION_UNSPECIFIED :: 0;
    KEY_LOCATION_LEFT :: 1;
    KEY_LOCATION_RIGHT :: 2;
}

MouseButton :: enum s32 {    // 11
    MOUSE_BUTTON_NONE :: 0;
    MOUSE_BUTTON_LEFT :: 1;
    MOUSE_BUTTON_RIGHT :: 2;
    MOUSE_BUTTON_MIDDLE :: 3;
    MOUSE_BUTTON_WHEEL_UP :: 4;
    MOUSE_BUTTON_WHEEL_DOWN :: 5;
    MOUSE_BUTTON_WHEEL_LEFT :: 6;
    MOUSE_BUTTON_WHEEL_RIGHT :: 7;
    MOUSE_BUTTON_XBUTTON1 :: 8;
    MOUSE_BUTTON_XBUTTON2 :: 9;
}

MouseButtonMask :: enum s32 {    // 12
    MOUSE_BUTTON_MASK_LEFT :: 1;
    MOUSE_BUTTON_MASK_RIGHT :: 2;
    MOUSE_BUTTON_MASK_MIDDLE :: 4;
    MOUSE_BUTTON_MASK_MB_XBUTTON1 :: 128;
    MOUSE_BUTTON_MASK_MB_XBUTTON2 :: 256;
} @bitfield

JoyButton :: enum s32 {    // 13
    JOY_BUTTON_INVALID :: -1;
    JOY_BUTTON_A :: 0;
    JOY_BUTTON_B :: 1;
    JOY_BUTTON_X :: 2;
    JOY_BUTTON_Y :: 3;
    JOY_BUTTON_BACK :: 4;
    JOY_BUTTON_GUIDE :: 5;
    JOY_BUTTON_START :: 6;
    JOY_BUTTON_LEFT_STICK :: 7;
    JOY_BUTTON_RIGHT_STICK :: 8;
    JOY_BUTTON_LEFT_SHOULDER :: 9;
    JOY_BUTTON_RIGHT_SHOULDER :: 10;
    JOY_BUTTON_DPAD_UP :: 11;
    JOY_BUTTON_DPAD_DOWN :: 12;
    JOY_BUTTON_DPAD_LEFT :: 13;
    JOY_BUTTON_DPAD_RIGHT :: 14;
    JOY_BUTTON_MISC1 :: 15;
    JOY_BUTTON_PADDLE1 :: 16;
    JOY_BUTTON_PADDLE2 :: 17;
    JOY_BUTTON_PADDLE3 :: 18;
    JOY_BUTTON_PADDLE4 :: 19;
    JOY_BUTTON_TOUCHPAD :: 20;
    JOY_BUTTON_SDL_MAX :: 21;
    JOY_BUTTON_MAX :: 128;
}

JoyAxis :: enum s32 {    // 14
    JOY_AXIS_INVALID :: -1;
    JOY_AXIS_LEFT_X :: 0;
    JOY_AXIS_LEFT_Y :: 1;
    JOY_AXIS_RIGHT_X :: 2;
    JOY_AXIS_RIGHT_Y :: 3;
    JOY_AXIS_TRIGGER_LEFT :: 4;
    JOY_AXIS_TRIGGER_RIGHT :: 5;
    JOY_AXIS_SDL_MAX :: 6;
    JOY_AXIS_MAX :: 10;
}

MIDIMessage :: enum s32 {    // 15
    MIDI_MESSAGE_NONE :: 0;
    MIDI_MESSAGE_NOTE_OFF :: 8;
    MIDI_MESSAGE_NOTE_ON :: 9;
    MIDI_MESSAGE_AFTERTOUCH :: 10;
    MIDI_MESSAGE_CONTROL_CHANGE :: 11;
    MIDI_MESSAGE_PROGRAM_CHANGE :: 12;
    MIDI_MESSAGE_CHANNEL_PRESSURE :: 13;
    MIDI_MESSAGE_PITCH_BEND :: 14;
    MIDI_MESSAGE_SYSTEM_EXCLUSIVE :: 240;
    MIDI_MESSAGE_QUARTER_FRAME :: 241;
    MIDI_MESSAGE_SONG_POSITION_POINTER :: 242;
    MIDI_MESSAGE_SONG_SELECT :: 243;
    MIDI_MESSAGE_TUNE_REQUEST :: 246;
    MIDI_MESSAGE_TIMING_CLOCK :: 248;
    MIDI_MESSAGE_START :: 250;
    MIDI_MESSAGE_CONTINUE :: 251;
    MIDI_MESSAGE_STOP :: 252;
    MIDI_MESSAGE_ACTIVE_SENSING :: 254;
    MIDI_MESSAGE_SYSTEM_RESET :: 255;
}

Error :: enum s32 {    // 16
    OK :: 0;
    FAILED :: 1;
    ERR_UNAVAILABLE :: 2;
    ERR_UNCONFIGURED :: 3;
    ERR_UNAUTHORIZED :: 4;
    ERR_PARAMETER_RANGE_ERROR :: 5;
    ERR_OUT_OF_MEMORY :: 6;
    ERR_FILE_NOT_FOUND :: 7;
    ERR_FILE_BAD_DRIVE :: 8;
    ERR_FILE_BAD_PATH :: 9;
    ERR_FILE_NO_PERMISSION :: 10;
    ERR_FILE_ALREADY_IN_USE :: 11;
    ERR_FILE_CANT_OPEN :: 12;
    ERR_FILE_CANT_WRITE :: 13;
    ERR_FILE_CANT_READ :: 14;
    ERR_FILE_UNRECOGNIZED :: 15;
    ERR_FILE_CORRUPT :: 16;
    ERR_FILE_MISSING_DEPENDENCIES :: 17;
    ERR_FILE_EOF :: 18;
    ERR_CANT_OPEN :: 19;
    ERR_CANT_CREATE :: 20;
    ERR_QUERY_FAILED :: 21;
    ERR_ALREADY_IN_USE :: 22;
    ERR_LOCKED :: 23;
    ERR_TIMEOUT :: 24;
    ERR_CANT_CONNECT :: 25;
    ERR_CANT_RESOLVE :: 26;
    ERR_CONNECTION_ERROR :: 27;
    ERR_CANT_ACQUIRE_RESOURCE :: 28;
    ERR_CANT_FORK :: 29;
    ERR_INVALID_DATA :: 30;
    ERR_INVALID_PARAMETER :: 31;
    ERR_ALREADY_EXISTS :: 32;
    ERR_DOES_NOT_EXIST :: 33;
    ERR_DATABASE_CANT_READ :: 34;
    ERR_DATABASE_CANT_WRITE :: 35;
    ERR_COMPILATION_FAILED :: 36;
    ERR_METHOD_NOT_FOUND :: 37;
    ERR_LINK_FAILED :: 38;
    ERR_SCRIPT_FAILED :: 39;
    ERR_CYCLIC_LINK :: 40;
    ERR_INVALID_DECLARATION :: 41;
    ERR_DUPLICATE_SYMBOL :: 42;
    ERR_PARSE_ERROR :: 43;
    ERR_BUSY :: 44;
    ERR_SKIP :: 45;
    ERR_HELP :: 46;
    ERR_BUG :: 47;
    ERR_PRINTER_ON_FIRE :: 48;
}

PropertyHint :: enum s32 {    // 17
    PROPERTY_HINT_NONE :: 0;
    PROPERTY_HINT_RANGE :: 1;
    PROPERTY_HINT_ENUM :: 2;
    PROPERTY_HINT_ENUM_SUGGESTION :: 3;
    PROPERTY_HINT_EXP_EASING :: 4;
    PROPERTY_HINT_LINK :: 5;
    PROPERTY_HINT_FLAGS :: 6;
    PROPERTY_HINT_LAYERS_2D_RENDER :: 7;
    PROPERTY_HINT_LAYERS_2D_PHYSICS :: 8;
    PROPERTY_HINT_LAYERS_2D_NAVIGATION :: 9;
    PROPERTY_HINT_LAYERS_3D_RENDER :: 10;
    PROPERTY_HINT_LAYERS_3D_PHYSICS :: 11;
    PROPERTY_HINT_LAYERS_3D_NAVIGATION :: 12;
    PROPERTY_HINT_LAYERS_AVOIDANCE :: 37;
    PROPERTY_HINT_FILE :: 13;
    PROPERTY_HINT_DIR :: 14;
    PROPERTY_HINT_GLOBAL_FILE :: 15;
    PROPERTY_HINT_GLOBAL_DIR :: 16;
    PROPERTY_HINT_RESOURCE_TYPE :: 17;
    PROPERTY_HINT_MULTILINE_TEXT :: 18;
    PROPERTY_HINT_EXPRESSION :: 19;
    PROPERTY_HINT_PLACEHOLDER_TEXT :: 20;
    PROPERTY_HINT_COLOR_NO_ALPHA :: 21;
    PROPERTY_HINT_OBJECT_ID :: 22;
    PROPERTY_HINT_TYPE_STRING :: 23;
    PROPERTY_HINT_NODE_PATH_TO_EDITED_NODE :: 24;
    PROPERTY_HINT_OBJECT_TOO_BIG :: 25;
    PROPERTY_HINT_NODE_PATH_VALID_TYPES :: 26;
    PROPERTY_HINT_SAVE_FILE :: 27;
    PROPERTY_HINT_GLOBAL_SAVE_FILE :: 28;
    PROPERTY_HINT_INT_IS_OBJECTID :: 29;
    PROPERTY_HINT_INT_IS_POINTER :: 30;
    PROPERTY_HINT_ARRAY_TYPE :: 31;
    PROPERTY_HINT_LOCALE_ID :: 32;
    PROPERTY_HINT_LOCALIZABLE_STRING :: 33;
    PROPERTY_HINT_NODE_TYPE :: 34;
    PROPERTY_HINT_HIDE_QUATERNION_EDIT :: 35;
    PROPERTY_HINT_PASSWORD :: 36;
    PROPERTY_HINT_MAX :: 38;
}

PropertyUsageFlags :: enum s32 {    // 18
    PROPERTY_USAGE_NONE :: 0;
    PROPERTY_USAGE_STORAGE :: 2;
    PROPERTY_USAGE_EDITOR :: 4;
    PROPERTY_USAGE_INTERNAL :: 8;
    PROPERTY_USAGE_CHECKABLE :: 16;
    PROPERTY_USAGE_CHECKED :: 32;
    PROPERTY_USAGE_GROUP :: 64;
    PROPERTY_USAGE_CATEGORY :: 128;
    PROPERTY_USAGE_SUBGROUP :: 256;
    PROPERTY_USAGE_CLASS_IS_BITFIELD :: 512;
    PROPERTY_USAGE_NO_INSTANCE_STATE :: 1024;
    PROPERTY_USAGE_RESTART_IF_CHANGED :: 2048;
    PROPERTY_USAGE_SCRIPT_VARIABLE :: 4096;
    PROPERTY_USAGE_STORE_IF_NULL :: 8192;
    PROPERTY_USAGE_UPDATE_ALL_IF_MODIFIED :: 16384;
    PROPERTY_USAGE_SCRIPT_DEFAULT_VALUE :: 32768;
    PROPERTY_USAGE_CLASS_IS_ENUM :: 65536;
    PROPERTY_USAGE_NIL_IS_VARIANT :: 131072;
    PROPERTY_USAGE_ARRAY :: 262144;
    PROPERTY_USAGE_ALWAYS_DUPLICATE :: 524288;
    PROPERTY_USAGE_NEVER_DUPLICATE :: 1048576;
    PROPERTY_USAGE_HIGH_END_GFX :: 2097152;
    PROPERTY_USAGE_NODE_PATH_FROM_SCENE_ROOT :: 4194304;
    PROPERTY_USAGE_RESOURCE_NOT_PERSISTENT :: 8388608;
    PROPERTY_USAGE_KEYING_INCREMENTS :: 16777216;
    PROPERTY_USAGE_DEFERRED_SET_RESOURCE :: 33554432;
    PROPERTY_USAGE_EDITOR_INSTANTIATE_OBJECT :: 67108864;
    PROPERTY_USAGE_EDITOR_BASIC_SETTING :: 134217728;
    PROPERTY_USAGE_READ_ONLY :: 268435456;
    PROPERTY_USAGE_SECRET :: 536870912;
    PROPERTY_USAGE_DEFAULT :: 6;
    PROPERTY_USAGE_NO_EDITOR :: 2;
} @bitfield

MethodFlags :: enum s32 {    // 19
    METHOD_FLAG_NORMAL :: 1;
    METHOD_FLAG_EDITOR :: 2;
    METHOD_FLAG_CONST :: 4;
    METHOD_FLAG_VIRTUAL :: 8;
    METHOD_FLAG_VARARG :: 16;
    METHOD_FLAG_STATIC :: 32;
    METHOD_FLAG_OBJECT_CORE :: 64;
    METHOD_FLAGS_DEFAULT :: 1;
} @bitfield

Variant_Type :: enum s32 {    // 20
    TYPE_NIL :: 0;
    TYPE_BOOL :: 1;
    TYPE_INT :: 2;
    TYPE_FLOAT :: 3;
    TYPE_STRING :: 4;
    TYPE_VECTOR2 :: 5;
    TYPE_VECTOR2I :: 6;
    TYPE_RECT2 :: 7;
    TYPE_RECT2I :: 8;
    TYPE_VECTOR3 :: 9;
    TYPE_VECTOR3I :: 10;
    TYPE_TRANSFORM2D :: 11;
    TYPE_VECTOR4 :: 12;
    TYPE_VECTOR4I :: 13;
    TYPE_PLANE :: 14;
    TYPE_QUATERNION :: 15;
    TYPE_AABB :: 16;
    TYPE_BASIS :: 17;
    TYPE_TRANSFORM3D :: 18;
    TYPE_PROJECTION :: 19;
    TYPE_COLOR :: 20;
    TYPE_STRING_NAME :: 21;
    TYPE_NODE_PATH :: 22;
    TYPE_RID :: 23;
    TYPE_OBJECT :: 24;
    TYPE_CALLABLE :: 25;
    TYPE_SIGNAL :: 26;
    TYPE_DICTIONARY :: 27;
    TYPE_ARRAY :: 28;
    TYPE_PACKED_BYTE_ARRAY :: 29;
    TYPE_PACKED_INT32_ARRAY :: 30;
    TYPE_PACKED_INT64_ARRAY :: 31;
    TYPE_PACKED_FLOAT32_ARRAY :: 32;
    TYPE_PACKED_FLOAT64_ARRAY :: 33;
    TYPE_PACKED_STRING_ARRAY :: 34;
    TYPE_PACKED_VECTOR2_ARRAY :: 35;
    TYPE_PACKED_VECTOR3_ARRAY :: 36;
    TYPE_PACKED_COLOR_ARRAY :: 37;
    TYPE_MAX :: 38;
}

Variant_Operator :: enum s32 {    // 21
    OP_EQUAL :: 0;
    OP_NOT_EQUAL :: 1;
    OP_LESS :: 2;
    OP_LESS_EQUAL :: 3;
    OP_GREATER :: 4;
    OP_GREATER_EQUAL :: 5;
    OP_ADD :: 6;
    OP_SUBTRACT :: 7;
    OP_MULTIPLY :: 8;
    OP_DIVIDE :: 9;
    OP_NEGATE :: 10;
    OP_POSITIVE :: 11;
    OP_MODULE :: 12;
    OP_POWER :: 13;
    OP_SHIFT_LEFT :: 14;
    OP_SHIFT_RIGHT :: 15;
    OP_BIT_AND :: 16;
    OP_BIT_OR :: 17;
    OP_BIT_XOR :: 18;
    OP_BIT_NEGATE :: 19;
    OP_AND :: 20;
    OP_OR :: 21;
    OP_XOR :: 22;
    OP_NOT :: 23;
    OP_IN :: 24;
    OP_MAX :: 25;
}

AESContext :: struct {    // 0

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        MODE_ECB_ENCRYPT :: 0;
        MODE_ECB_DECRYPT :: 1;
        MODE_CBC_ENCRYPT :: 2;
        MODE_CBC_DECRYPT :: 3;
        MODE_MAX :: 4;
    }
}

AStar2D :: struct { #as using base: OpaqueClass; } // 1

AStar3D :: struct { #as using base: OpaqueClass; } // 2

AStarGrid2D :: struct {    // 3

        #as using base: OpaqueClass;

    Heuristic :: enum s32 {
        HEURISTIC_EUCLIDEAN :: 0;
        HEURISTIC_MANHATTAN :: 1;
        HEURISTIC_OCTILE :: 2;
        HEURISTIC_CHEBYSHEV :: 3;
        HEURISTIC_MAX :: 4;
    }

    DiagonalMode :: enum s32 {
        DIAGONAL_MODE_ALWAYS :: 0;
        DIAGONAL_MODE_NEVER :: 1;
        DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE :: 2;
        DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES :: 3;
        DIAGONAL_MODE_MAX :: 4;
    }

    CellShape :: enum s32 {
        CELL_SHAPE_SQUARE :: 0;
        CELL_SHAPE_ISOMETRIC_RIGHT :: 1;
        CELL_SHAPE_ISOMETRIC_DOWN :: 2;
        CELL_SHAPE_MAX :: 3;
    }
}

AcceptDialog :: struct { #as using base: OpaqueClass; } // 4

AnimatableBody2D :: struct { #as using base: OpaqueClass; } // 5

AnimatableBody3D :: struct { #as using base: OpaqueClass; } // 6

AnimatedSprite2D :: struct { #as using base: OpaqueClass; } // 7

AnimatedSprite3D :: struct { #as using base: OpaqueClass; } // 8

AnimatedTexture :: struct { #as using base: OpaqueClass; } // 9

Animation :: struct {    // 10

        #as using base: OpaqueClass;

    TrackType :: enum s32 {
        TYPE_VALUE :: 0;
        TYPE_POSITION_3D :: 1;
        TYPE_ROTATION_3D :: 2;
        TYPE_SCALE_3D :: 3;
        TYPE_BLEND_SHAPE :: 4;
        TYPE_METHOD :: 5;
        TYPE_BEZIER :: 6;
        TYPE_AUDIO :: 7;
        TYPE_ANIMATION :: 8;
    }

    InterpolationType :: enum s32 {
        INTERPOLATION_NEAREST :: 0;
        INTERPOLATION_LINEAR :: 1;
        INTERPOLATION_CUBIC :: 2;
        INTERPOLATION_LINEAR_ANGLE :: 3;
        INTERPOLATION_CUBIC_ANGLE :: 4;
    }

    UpdateMode :: enum s32 {
        UPDATE_CONTINUOUS :: 0;
        UPDATE_DISCRETE :: 1;
        UPDATE_CAPTURE :: 2;
    }

    LoopMode :: enum s32 {
        LOOP_NONE :: 0;
        LOOP_LINEAR :: 1;
        LOOP_PINGPONG :: 2;
    }

    LoopedFlag :: enum s32 {
        LOOPED_FLAG_NONE :: 0;
        LOOPED_FLAG_END :: 1;
        LOOPED_FLAG_START :: 2;
    }

    FindMode :: enum s32 {
        FIND_MODE_NEAREST :: 0;
        FIND_MODE_APPROX :: 1;
        FIND_MODE_EXACT :: 2;
    }
}

AnimationLibrary :: struct { #as using base: OpaqueClass; } // 11

AnimationMixer :: struct {    // 12

        #as using base: OpaqueClass;

    AnimationCallbackModeProcess :: enum s32 {
        ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS :: 0;
        ANIMATION_CALLBACK_MODE_PROCESS_IDLE :: 1;
        ANIMATION_CALLBACK_MODE_PROCESS_MANUAL :: 2;
    }

    AnimationCallbackModeMethod :: enum s32 {
        ANIMATION_CALLBACK_MODE_METHOD_DEFERRED :: 0;
        ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE :: 1;
    }

    AnimationCallbackModeDiscrete :: enum s32 {
        ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT :: 0;
        ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE :: 1;
        ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS :: 2;
    }
}

AnimationNode :: struct {    // 13

        #as using base: OpaqueClass;

    FilterAction :: enum s32 {
        FILTER_IGNORE :: 0;
        FILTER_PASS :: 1;
        FILTER_STOP :: 2;
        FILTER_BLEND :: 3;
    }
}

AnimationNodeAdd2 :: struct { #as using base: OpaqueClass; } // 14

AnimationNodeAdd3 :: struct { #as using base: OpaqueClass; } // 15

AnimationNodeAnimation :: struct {    // 16

        #as using base: OpaqueClass;

    PlayMode :: enum s32 {
        PLAY_MODE_FORWARD :: 0;
        PLAY_MODE_BACKWARD :: 1;
    }
}

AnimationNodeBlend2 :: struct { #as using base: OpaqueClass; } // 17

AnimationNodeBlend3 :: struct { #as using base: OpaqueClass; } // 18

AnimationNodeBlendSpace1D :: struct {    // 19

        #as using base: OpaqueClass;

    BlendMode :: enum s32 {
        BLEND_MODE_INTERPOLATED :: 0;
        BLEND_MODE_DISCRETE :: 1;
        BLEND_MODE_DISCRETE_CARRY :: 2;
    }
}

AnimationNodeBlendSpace2D :: struct {    // 20

        #as using base: OpaqueClass;

    BlendMode :: enum s32 {
        BLEND_MODE_INTERPOLATED :: 0;
        BLEND_MODE_DISCRETE :: 1;
        BLEND_MODE_DISCRETE_CARRY :: 2;
    }
}

AnimationNodeBlendTree :: struct { #as using base: OpaqueClass; } // 21

AnimationNodeOneShot :: struct {    // 22

        #as using base: OpaqueClass;

    OneShotRequest :: enum s32 {
        ONE_SHOT_REQUEST_NONE :: 0;
        ONE_SHOT_REQUEST_FIRE :: 1;
        ONE_SHOT_REQUEST_ABORT :: 2;
        ONE_SHOT_REQUEST_FADE_OUT :: 3;
    }

    MixMode :: enum s32 {
        MIX_MODE_BLEND :: 0;
        MIX_MODE_ADD :: 1;
    }
}

AnimationNodeOutput :: struct { #as using base: OpaqueClass; } // 23

AnimationNodeStateMachine :: struct {    // 24

        #as using base: OpaqueClass;

    StateMachineType :: enum s32 {
        STATE_MACHINE_TYPE_ROOT :: 0;
        STATE_MACHINE_TYPE_NESTED :: 1;
        STATE_MACHINE_TYPE_GROUPED :: 2;
    }
}

AnimationNodeStateMachinePlayback :: struct { #as using base: OpaqueClass; } // 25

AnimationNodeStateMachineTransition :: struct {    // 26

        #as using base: OpaqueClass;

    SwitchMode :: enum s32 {
        SWITCH_MODE_IMMEDIATE :: 0;
        SWITCH_MODE_SYNC :: 1;
        SWITCH_MODE_AT_END :: 2;
    }

    AdvanceMode :: enum s32 {
        ADVANCE_MODE_DISABLED :: 0;
        ADVANCE_MODE_ENABLED :: 1;
        ADVANCE_MODE_AUTO :: 2;
    }
}

AnimationNodeSub2 :: struct { #as using base: OpaqueClass; } // 27

AnimationNodeSync :: struct { #as using base: OpaqueClass; } // 28

AnimationNodeTimeScale :: struct { #as using base: OpaqueClass; } // 29

AnimationNodeTimeSeek :: struct { #as using base: OpaqueClass; } // 30

AnimationNodeTransition :: struct { #as using base: OpaqueClass; } // 31

AnimationPlayer :: struct {    // 32

        #as using base: OpaqueClass;

    AnimationProcessCallback :: enum s32 {
        ANIMATION_PROCESS_PHYSICS :: 0;
        ANIMATION_PROCESS_IDLE :: 1;
        ANIMATION_PROCESS_MANUAL :: 2;
    }

    AnimationMethodCallMode :: enum s32 {
        ANIMATION_METHOD_CALL_DEFERRED :: 0;
        ANIMATION_METHOD_CALL_IMMEDIATE :: 1;
    }
}

AnimationRootNode :: struct { #as using base: OpaqueClass; } // 33

AnimationTree :: struct {    // 34

        #as using base: OpaqueClass;

    AnimationProcessCallback :: enum s32 {
        ANIMATION_PROCESS_PHYSICS :: 0;
        ANIMATION_PROCESS_IDLE :: 1;
        ANIMATION_PROCESS_MANUAL :: 2;
    }
}

Area2D :: struct {    // 35

        #as using base: OpaqueClass;

    SpaceOverride :: enum s32 {
        SPACE_OVERRIDE_DISABLED :: 0;
        SPACE_OVERRIDE_COMBINE :: 1;
        SPACE_OVERRIDE_COMBINE_REPLACE :: 2;
        SPACE_OVERRIDE_REPLACE :: 3;
        SPACE_OVERRIDE_REPLACE_COMBINE :: 4;
    }
}

Area3D :: struct {    // 36

        #as using base: OpaqueClass;

    SpaceOverride :: enum s32 {
        SPACE_OVERRIDE_DISABLED :: 0;
        SPACE_OVERRIDE_COMBINE :: 1;
        SPACE_OVERRIDE_COMBINE_REPLACE :: 2;
        SPACE_OVERRIDE_REPLACE :: 3;
        SPACE_OVERRIDE_REPLACE_COMBINE :: 4;
    }
}

ArrayMesh :: struct { #as using base: OpaqueClass; } // 37

ArrayOccluder3D :: struct { #as using base: OpaqueClass; } // 38

AspectRatioContainer :: struct {    // 39

        #as using base: OpaqueClass;

    StretchMode :: enum s32 {
        STRETCH_WIDTH_CONTROLS_HEIGHT :: 0;
        STRETCH_HEIGHT_CONTROLS_WIDTH :: 1;
        STRETCH_FIT :: 2;
        STRETCH_COVER :: 3;
    }

    AlignmentMode :: enum s32 {
        ALIGNMENT_BEGIN :: 0;
        ALIGNMENT_CENTER :: 1;
        ALIGNMENT_END :: 2;
    }
}

AtlasTexture :: struct { #as using base: OpaqueClass; } // 40

AudioBusLayout :: struct { #as using base: OpaqueClass; } // 41

AudioEffect :: struct { #as using base: OpaqueClass; } // 42

AudioEffectAmplify :: struct { #as using base: OpaqueClass; } // 43

AudioEffectBandLimitFilter :: struct { #as using base: OpaqueClass; } // 44

AudioEffectBandPassFilter :: struct { #as using base: OpaqueClass; } // 45

AudioEffectCapture :: struct { #as using base: OpaqueClass; } // 46

AudioEffectChorus :: struct { #as using base: OpaqueClass; } // 47

AudioEffectCompressor :: struct { #as using base: OpaqueClass; } // 48

AudioEffectDelay :: struct { #as using base: OpaqueClass; } // 49

AudioEffectDistortion :: struct {    // 50

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        MODE_CLIP :: 0;
        MODE_ATAN :: 1;
        MODE_LOFI :: 2;
        MODE_OVERDRIVE :: 3;
        MODE_WAVESHAPE :: 4;
    }
}

AudioEffectEQ :: struct { #as using base: OpaqueClass; } // 51

AudioEffectEQ10 :: struct { #as using base: OpaqueClass; } // 52

AudioEffectEQ21 :: struct { #as using base: OpaqueClass; } // 53

AudioEffectEQ6 :: struct { #as using base: OpaqueClass; } // 54

AudioEffectFilter :: struct {    // 55

        #as using base: OpaqueClass;

    FilterDB :: enum s32 {
        FILTER_6DB :: 0;
        FILTER_12DB :: 1;
        FILTER_18DB :: 2;
        FILTER_24DB :: 3;
    }
}

AudioEffectHighPassFilter :: struct { #as using base: OpaqueClass; } // 56

AudioEffectHighShelfFilter :: struct { #as using base: OpaqueClass; } // 57

AudioEffectInstance :: struct { #as using base: OpaqueClass; } // 58

AudioEffectLimiter :: struct { #as using base: OpaqueClass; } // 59

AudioEffectLowPassFilter :: struct { #as using base: OpaqueClass; } // 60

AudioEffectLowShelfFilter :: struct { #as using base: OpaqueClass; } // 61

AudioEffectNotchFilter :: struct { #as using base: OpaqueClass; } // 62

AudioEffectPanner :: struct { #as using base: OpaqueClass; } // 63

AudioEffectPhaser :: struct { #as using base: OpaqueClass; } // 64

AudioEffectPitchShift :: struct {    // 65

        #as using base: OpaqueClass;

    FFTSize :: enum s32 {
        FFT_SIZE_256 :: 0;
        FFT_SIZE_512 :: 1;
        FFT_SIZE_1024 :: 2;
        FFT_SIZE_2048 :: 3;
        FFT_SIZE_4096 :: 4;
        FFT_SIZE_MAX :: 5;
    }
}

AudioEffectRecord :: struct { #as using base: OpaqueClass; } // 66

AudioEffectReverb :: struct { #as using base: OpaqueClass; } // 67

AudioEffectSpectrumAnalyzer :: struct {    // 68

        #as using base: OpaqueClass;

    FFTSize :: enum s32 {
        FFT_SIZE_256 :: 0;
        FFT_SIZE_512 :: 1;
        FFT_SIZE_1024 :: 2;
        FFT_SIZE_2048 :: 3;
        FFT_SIZE_4096 :: 4;
        FFT_SIZE_MAX :: 5;
    }
}

AudioEffectSpectrumAnalyzerInstance :: struct {    // 69

        #as using base: OpaqueClass;

    MagnitudeMode :: enum s32 {
        MAGNITUDE_AVERAGE :: 0;
        MAGNITUDE_MAX :: 1;
    }
}

AudioEffectStereoEnhance :: struct { #as using base: OpaqueClass; } // 70

AudioListener2D :: struct { #as using base: OpaqueClass; } // 71

AudioListener3D :: struct { #as using base: OpaqueClass; } // 72

AudioServer :: struct {    // 73

        #as using base: OpaqueClass;

    SpeakerMode :: enum s32 {
        SPEAKER_MODE_STEREO :: 0;
        SPEAKER_SURROUND_31 :: 1;
        SPEAKER_SURROUND_51 :: 2;
        SPEAKER_SURROUND_71 :: 3;
    }
}

AudioStream :: struct { #as using base: OpaqueClass; } // 74

AudioStreamGenerator :: struct { #as using base: OpaqueClass; } // 75

AudioStreamGeneratorPlayback :: struct { #as using base: OpaqueClass; } // 76

AudioStreamInteractive :: struct {    // 77

        #as using base: OpaqueClass;

    TransitionFromTime :: enum s32 {
        TRANSITION_FROM_TIME_IMMEDIATE :: 0;
        TRANSITION_FROM_TIME_NEXT_BEAT :: 1;
        TRANSITION_FROM_TIME_NEXT_BAR :: 2;
        TRANSITION_FROM_TIME_END :: 3;
    }

    TransitionToTime :: enum s32 {
        TRANSITION_TO_TIME_SAME_POSITION :: 0;
        TRANSITION_TO_TIME_START :: 1;
    }

    FadeMode :: enum s32 {
        FADE_DISABLED :: 0;
        FADE_IN :: 1;
        FADE_OUT :: 2;
        FADE_CROSS :: 3;
        FADE_AUTOMATIC :: 4;
    }

    AutoAdvanceMode :: enum s32 {
        AUTO_ADVANCE_DISABLED :: 0;
        AUTO_ADVANCE_ENABLED :: 1;
        AUTO_ADVANCE_RETURN_TO_HOLD :: 2;
    }
}

AudioStreamMP3 :: struct { #as using base: OpaqueClass; } // 78

AudioStreamMicrophone :: struct { #as using base: OpaqueClass; } // 79

AudioStreamOggVorbis :: struct { #as using base: OpaqueClass; } // 80

AudioStreamPlayback :: struct { #as using base: OpaqueClass; } // 81

AudioStreamPlaybackInteractive :: struct { #as using base: OpaqueClass; } // 82

AudioStreamPlaybackOggVorbis :: struct { #as using base: OpaqueClass; } // 83

AudioStreamPlaybackPlaylist :: struct { #as using base: OpaqueClass; } // 84

AudioStreamPlaybackPolyphonic :: struct { #as using base: OpaqueClass; } // 85

AudioStreamPlaybackResampled :: struct { #as using base: OpaqueClass; } // 86

AudioStreamPlaybackSynchronized :: struct { #as using base: OpaqueClass; } // 87

AudioStreamPlayer :: struct {    // 88

        #as using base: OpaqueClass;

    MixTarget :: enum s32 {
        MIX_TARGET_STEREO :: 0;
        MIX_TARGET_SURROUND :: 1;
        MIX_TARGET_CENTER :: 2;
    }
}

AudioStreamPlayer2D :: struct { #as using base: OpaqueClass; } // 89

AudioStreamPlayer3D :: struct {    // 90

        #as using base: OpaqueClass;

    AttenuationModel :: enum s32 {
        ATTENUATION_INVERSE_DISTANCE :: 0;
        ATTENUATION_INVERSE_SQUARE_DISTANCE :: 1;
        ATTENUATION_LOGARITHMIC :: 2;
        ATTENUATION_DISABLED :: 3;
    }

    DopplerTracking :: enum s32 {
        DOPPLER_TRACKING_DISABLED :: 0;
        DOPPLER_TRACKING_IDLE_STEP :: 1;
        DOPPLER_TRACKING_PHYSICS_STEP :: 2;
    }
}

AudioStreamPlaylist :: struct { #as using base: OpaqueClass; } // 91

AudioStreamPolyphonic :: struct { #as using base: OpaqueClass; } // 92

AudioStreamRandomizer :: struct {    // 93

        #as using base: OpaqueClass;

    PlaybackMode :: enum s32 {
        PLAYBACK_RANDOM_NO_REPEATS :: 0;
        PLAYBACK_RANDOM :: 1;
        PLAYBACK_SEQUENTIAL :: 2;
    }
}

AudioStreamSynchronized :: struct { #as using base: OpaqueClass; } // 94

AudioStreamWAV :: struct {    // 95

        #as using base: OpaqueClass;

    Format :: enum s32 {
        FORMAT_8_BITS :: 0;
        FORMAT_16_BITS :: 1;
        FORMAT_IMA_ADPCM :: 2;
    }

    LoopMode :: enum s32 {
        LOOP_DISABLED :: 0;
        LOOP_FORWARD :: 1;
        LOOP_PINGPONG :: 2;
        LOOP_BACKWARD :: 3;
    }
}

BackBufferCopy :: struct {    // 96

        #as using base: OpaqueClass;

    CopyMode :: enum s32 {
        COPY_MODE_DISABLED :: 0;
        COPY_MODE_RECT :: 1;
        COPY_MODE_VIEWPORT :: 2;
    }
}

BaseButton :: struct {    // 97

        #as using base: OpaqueClass;

    DrawMode :: enum s32 {
        DRAW_NORMAL :: 0;
        DRAW_PRESSED :: 1;
        DRAW_HOVER :: 2;
        DRAW_DISABLED :: 3;
        DRAW_HOVER_PRESSED :: 4;
    }

    ActionMode :: enum s32 {
        ACTION_MODE_BUTTON_PRESS :: 0;
        ACTION_MODE_BUTTON_RELEASE :: 1;
    }
}

BaseMaterial3D :: struct {    // 98

        #as using base: OpaqueClass;

    TextureParam :: enum s32 {
        TEXTURE_ALBEDO :: 0;
        TEXTURE_METALLIC :: 1;
        TEXTURE_ROUGHNESS :: 2;
        TEXTURE_EMISSION :: 3;
        TEXTURE_NORMAL :: 4;
        TEXTURE_RIM :: 5;
        TEXTURE_CLEARCOAT :: 6;
        TEXTURE_FLOWMAP :: 7;
        TEXTURE_AMBIENT_OCCLUSION :: 8;
        TEXTURE_HEIGHTMAP :: 9;
        TEXTURE_SUBSURFACE_SCATTERING :: 10;
        TEXTURE_SUBSURFACE_TRANSMITTANCE :: 11;
        TEXTURE_BACKLIGHT :: 12;
        TEXTURE_REFRACTION :: 13;
        TEXTURE_DETAIL_MASK :: 14;
        TEXTURE_DETAIL_ALBEDO :: 15;
        TEXTURE_DETAIL_NORMAL :: 16;
        TEXTURE_ORM :: 17;
        TEXTURE_MAX :: 18;
    }

    TextureFilter :: enum s32 {
        TEXTURE_FILTER_NEAREST :: 0;
        TEXTURE_FILTER_LINEAR :: 1;
        TEXTURE_FILTER_NEAREST_WITH_MIPMAPS :: 2;
        TEXTURE_FILTER_LINEAR_WITH_MIPMAPS :: 3;
        TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC :: 4;
        TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC :: 5;
        TEXTURE_FILTER_MAX :: 6;
    }

    DetailUV :: enum s32 {
        DETAIL_UV_1 :: 0;
        DETAIL_UV_2 :: 1;
    }

    Transparency :: enum s32 {
        TRANSPARENCY_DISABLED :: 0;
        TRANSPARENCY_ALPHA :: 1;
        TRANSPARENCY_ALPHA_SCISSOR :: 2;
        TRANSPARENCY_ALPHA_HASH :: 3;
        TRANSPARENCY_ALPHA_DEPTH_PRE_PASS :: 4;
        TRANSPARENCY_MAX :: 5;
    }

    ShadingMode :: enum s32 {
        SHADING_MODE_UNSHADED :: 0;
        SHADING_MODE_PER_PIXEL :: 1;
        SHADING_MODE_PER_VERTEX :: 2;
        SHADING_MODE_MAX :: 3;
    }

    Feature :: enum s32 {
        FEATURE_EMISSION :: 0;
        FEATURE_NORMAL_MAPPING :: 1;
        FEATURE_RIM :: 2;
        FEATURE_CLEARCOAT :: 3;
        FEATURE_ANISOTROPY :: 4;
        FEATURE_AMBIENT_OCCLUSION :: 5;
        FEATURE_HEIGHT_MAPPING :: 6;
        FEATURE_SUBSURFACE_SCATTERING :: 7;
        FEATURE_SUBSURFACE_TRANSMITTANCE :: 8;
        FEATURE_BACKLIGHT :: 9;
        FEATURE_REFRACTION :: 10;
        FEATURE_DETAIL :: 11;
        FEATURE_MAX :: 12;
    }

    BlendMode :: enum s32 {
        BLEND_MODE_MIX :: 0;
        BLEND_MODE_ADD :: 1;
        BLEND_MODE_SUB :: 2;
        BLEND_MODE_MUL :: 3;
    }

    AlphaAntiAliasing :: enum s32 {
        ALPHA_ANTIALIASING_OFF :: 0;
        ALPHA_ANTIALIASING_ALPHA_TO_COVERAGE :: 1;
        ALPHA_ANTIALIASING_ALPHA_TO_COVERAGE_AND_TO_ONE :: 2;
    }

    DepthDrawMode :: enum s32 {
        DEPTH_DRAW_OPAQUE_ONLY :: 0;
        DEPTH_DRAW_ALWAYS :: 1;
        DEPTH_DRAW_DISABLED :: 2;
    }

    CullMode :: enum s32 {
        CULL_BACK :: 0;
        CULL_FRONT :: 1;
        CULL_DISABLED :: 2;
    }

    Flags :: enum s32 {
        FLAG_DISABLE_DEPTH_TEST :: 0;
        FLAG_ALBEDO_FROM_VERTEX_COLOR :: 1;
        FLAG_SRGB_VERTEX_COLOR :: 2;
        FLAG_USE_POINT_SIZE :: 3;
        FLAG_FIXED_SIZE :: 4;
        FLAG_BILLBOARD_KEEP_SCALE :: 5;
        FLAG_UV1_USE_TRIPLANAR :: 6;
        FLAG_UV2_USE_TRIPLANAR :: 7;
        FLAG_UV1_USE_WORLD_TRIPLANAR :: 8;
        FLAG_UV2_USE_WORLD_TRIPLANAR :: 9;
        FLAG_AO_ON_UV2 :: 10;
        FLAG_EMISSION_ON_UV2 :: 11;
        FLAG_ALBEDO_TEXTURE_FORCE_SRGB :: 12;
        FLAG_DONT_RECEIVE_SHADOWS :: 13;
        FLAG_DISABLE_AMBIENT_LIGHT :: 14;
        FLAG_USE_SHADOW_TO_OPACITY :: 15;
        FLAG_USE_TEXTURE_REPEAT :: 16;
        FLAG_INVERT_HEIGHTMAP :: 17;
        FLAG_SUBSURFACE_MODE_SKIN :: 18;
        FLAG_PARTICLE_TRAILS_MODE :: 19;
        FLAG_ALBEDO_TEXTURE_MSDF :: 20;
        FLAG_DISABLE_FOG :: 21;
        FLAG_MAX :: 22;
    }

    DiffuseMode :: enum s32 {
        DIFFUSE_BURLEY :: 0;
        DIFFUSE_LAMBERT :: 1;
        DIFFUSE_LAMBERT_WRAP :: 2;
        DIFFUSE_TOON :: 3;
    }

    SpecularMode :: enum s32 {
        SPECULAR_SCHLICK_GGX :: 0;
        SPECULAR_TOON :: 1;
        SPECULAR_DISABLED :: 2;
    }

    BillboardMode :: enum s32 {
        BILLBOARD_DISABLED :: 0;
        BILLBOARD_ENABLED :: 1;
        BILLBOARD_FIXED_Y :: 2;
        BILLBOARD_PARTICLES :: 3;
    }

    TextureChannel :: enum s32 {
        TEXTURE_CHANNEL_RED :: 0;
        TEXTURE_CHANNEL_GREEN :: 1;
        TEXTURE_CHANNEL_BLUE :: 2;
        TEXTURE_CHANNEL_ALPHA :: 3;
        TEXTURE_CHANNEL_GRAYSCALE :: 4;
    }

    EmissionOperator :: enum s32 {
        EMISSION_OP_ADD :: 0;
        EMISSION_OP_MULTIPLY :: 1;
    }

    DistanceFadeMode :: enum s32 {
        DISTANCE_FADE_DISABLED :: 0;
        DISTANCE_FADE_PIXEL_ALPHA :: 1;
        DISTANCE_FADE_PIXEL_DITHER :: 2;
        DISTANCE_FADE_OBJECT_DITHER :: 3;
    }
}

BitMap :: struct { #as using base: OpaqueClass; } // 99

Bone2D :: struct { #as using base: OpaqueClass; } // 100

BoneAttachment3D :: struct { #as using base: OpaqueClass; } // 101

BoneMap :: struct { #as using base: OpaqueClass; } // 102

BoxContainer :: struct {    // 103

        #as using base: OpaqueClass;

    AlignmentMode :: enum s32 {
        ALIGNMENT_BEGIN :: 0;
        ALIGNMENT_CENTER :: 1;
        ALIGNMENT_END :: 2;
    }
}

BoxMesh :: struct { #as using base: OpaqueClass; } // 104

BoxOccluder3D :: struct { #as using base: OpaqueClass; } // 105

BoxShape3D :: struct { #as using base: OpaqueClass; } // 106

Button :: struct { #as using base: OpaqueClass; } // 107

ButtonGroup :: struct { #as using base: OpaqueClass; } // 108

CPUParticles2D :: struct {    // 109

        #as using base: OpaqueClass;

    DrawOrder :: enum s32 {
        DRAW_ORDER_INDEX :: 0;
        DRAW_ORDER_LIFETIME :: 1;
    }

    Parameter :: enum s32 {
        PARAM_INITIAL_LINEAR_VELOCITY :: 0;
        PARAM_ANGULAR_VELOCITY :: 1;
        PARAM_ORBIT_VELOCITY :: 2;
        PARAM_LINEAR_ACCEL :: 3;
        PARAM_RADIAL_ACCEL :: 4;
        PARAM_TANGENTIAL_ACCEL :: 5;
        PARAM_DAMPING :: 6;
        PARAM_ANGLE :: 7;
        PARAM_SCALE :: 8;
        PARAM_HUE_VARIATION :: 9;
        PARAM_ANIM_SPEED :: 10;
        PARAM_ANIM_OFFSET :: 11;
        PARAM_MAX :: 12;
    }

    ParticleFlags :: enum s32 {
        PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY :: 0;
        PARTICLE_FLAG_ROTATE_Y :: 1;
        PARTICLE_FLAG_DISABLE_Z :: 2;
        PARTICLE_FLAG_MAX :: 3;
    }

    EmissionShape :: enum s32 {
        EMISSION_SHAPE_POINT :: 0;
        EMISSION_SHAPE_SPHERE :: 1;
        EMISSION_SHAPE_SPHERE_SURFACE :: 2;
        EMISSION_SHAPE_RECTANGLE :: 3;
        EMISSION_SHAPE_POINTS :: 4;
        EMISSION_SHAPE_DIRECTED_POINTS :: 5;
        EMISSION_SHAPE_MAX :: 6;
    }
}

CPUParticles3D :: struct {    // 110

        #as using base: OpaqueClass;

    DrawOrder :: enum s32 {
        DRAW_ORDER_INDEX :: 0;
        DRAW_ORDER_LIFETIME :: 1;
        DRAW_ORDER_VIEW_DEPTH :: 2;
    }

    Parameter :: enum s32 {
        PARAM_INITIAL_LINEAR_VELOCITY :: 0;
        PARAM_ANGULAR_VELOCITY :: 1;
        PARAM_ORBIT_VELOCITY :: 2;
        PARAM_LINEAR_ACCEL :: 3;
        PARAM_RADIAL_ACCEL :: 4;
        PARAM_TANGENTIAL_ACCEL :: 5;
        PARAM_DAMPING :: 6;
        PARAM_ANGLE :: 7;
        PARAM_SCALE :: 8;
        PARAM_HUE_VARIATION :: 9;
        PARAM_ANIM_SPEED :: 10;
        PARAM_ANIM_OFFSET :: 11;
        PARAM_MAX :: 12;
    }

    ParticleFlags :: enum s32 {
        PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY :: 0;
        PARTICLE_FLAG_ROTATE_Y :: 1;
        PARTICLE_FLAG_DISABLE_Z :: 2;
        PARTICLE_FLAG_MAX :: 3;
    }

    EmissionShape :: enum s32 {
        EMISSION_SHAPE_POINT :: 0;
        EMISSION_SHAPE_SPHERE :: 1;
        EMISSION_SHAPE_SPHERE_SURFACE :: 2;
        EMISSION_SHAPE_BOX :: 3;
        EMISSION_SHAPE_POINTS :: 4;
        EMISSION_SHAPE_DIRECTED_POINTS :: 5;
        EMISSION_SHAPE_RING :: 6;
        EMISSION_SHAPE_MAX :: 7;
    }
}

CSGBox3D :: struct { #as using base: OpaqueClass; } // 111

CSGCombiner3D :: struct { #as using base: OpaqueClass; } // 112

CSGCylinder3D :: struct { #as using base: OpaqueClass; } // 113

CSGMesh3D :: struct { #as using base: OpaqueClass; } // 114

CSGPolygon3D :: struct {    // 115

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        MODE_DEPTH :: 0;
        MODE_SPIN :: 1;
        MODE_PATH :: 2;
    }

    PathRotation :: enum s32 {
        PATH_ROTATION_POLYGON :: 0;
        PATH_ROTATION_PATH :: 1;
        PATH_ROTATION_PATH_FOLLOW :: 2;
    }

    PathIntervalType :: enum s32 {
        PATH_INTERVAL_DISTANCE :: 0;
        PATH_INTERVAL_SUBDIVIDE :: 1;
    }
}

CSGPrimitive3D :: struct { #as using base: OpaqueClass; } // 116

CSGShape3D :: struct {    // 117

        #as using base: OpaqueClass;

    Operation :: enum s32 {
        OPERATION_UNION :: 0;
        OPERATION_INTERSECTION :: 1;
        OPERATION_SUBTRACTION :: 2;
    }
}

CSGSphere3D :: struct { #as using base: OpaqueClass; } // 118

CSGTorus3D :: struct { #as using base: OpaqueClass; } // 119

CallbackTweener :: struct { #as using base: OpaqueClass; } // 120

Camera2D :: struct {    // 121

        #as using base: OpaqueClass;

    AnchorMode :: enum s32 {
        ANCHOR_MODE_FIXED_TOP_LEFT :: 0;
        ANCHOR_MODE_DRAG_CENTER :: 1;
    }

    Camera2DProcessCallback :: enum s32 {
        CAMERA2D_PROCESS_PHYSICS :: 0;
        CAMERA2D_PROCESS_IDLE :: 1;
    }
}

Camera3D :: struct {    // 122

        #as using base: OpaqueClass;

    ProjectionType :: enum s32 {
        PROJECTION_PERSPECTIVE :: 0;
        PROJECTION_ORTHOGONAL :: 1;
        PROJECTION_FRUSTUM :: 2;
    }

    KeepAspect :: enum s32 {
        KEEP_WIDTH :: 0;
        KEEP_HEIGHT :: 1;
    }

    DopplerTracking :: enum s32 {
        DOPPLER_TRACKING_DISABLED :: 0;
        DOPPLER_TRACKING_IDLE_STEP :: 1;
        DOPPLER_TRACKING_PHYSICS_STEP :: 2;
    }
}

CameraAttributes :: struct { #as using base: OpaqueClass; } // 123

CameraAttributesPhysical :: struct { #as using base: OpaqueClass; } // 124

CameraAttributesPractical :: struct { #as using base: OpaqueClass; } // 125

CameraFeed :: struct {    // 126

        #as using base: OpaqueClass;

    FeedDataType :: enum s32 {
        FEED_NOIMAGE :: 0;
        FEED_RGB :: 1;
        FEED_YCBCR :: 2;
        FEED_YCBCR_SEP :: 3;
    }

    FeedPosition :: enum s32 {
        FEED_UNSPECIFIED :: 0;
        FEED_FRONT :: 1;
        FEED_BACK :: 2;
    }
}

CameraServer :: struct {    // 127

        #as using base: OpaqueClass;

    FeedImage :: enum s32 {
        FEED_RGBA_IMAGE :: 0;
        FEED_YCBCR_IMAGE :: 0;
        FEED_Y_IMAGE :: 0;
        FEED_CBCR_IMAGE :: 1;
    }
}

CameraTexture :: struct { #as using base: OpaqueClass; } // 128

CanvasGroup :: struct { #as using base: OpaqueClass; } // 129

CanvasItem :: struct {    // 130

        #as using base: OpaqueClass;

    TextureFilter :: enum s32 {
        TEXTURE_FILTER_PARENT_NODE :: 0;
        TEXTURE_FILTER_NEAREST :: 1;
        TEXTURE_FILTER_LINEAR :: 2;
        TEXTURE_FILTER_NEAREST_WITH_MIPMAPS :: 3;
        TEXTURE_FILTER_LINEAR_WITH_MIPMAPS :: 4;
        TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC :: 5;
        TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC :: 6;
        TEXTURE_FILTER_MAX :: 7;
    }

    TextureRepeat :: enum s32 {
        TEXTURE_REPEAT_PARENT_NODE :: 0;
        TEXTURE_REPEAT_DISABLED :: 1;
        TEXTURE_REPEAT_ENABLED :: 2;
        TEXTURE_REPEAT_MIRROR :: 3;
        TEXTURE_REPEAT_MAX :: 4;
    }

    ClipChildrenMode :: enum s32 {
        CLIP_CHILDREN_DISABLED :: 0;
        CLIP_CHILDREN_ONLY :: 1;
        CLIP_CHILDREN_AND_DRAW :: 2;
        CLIP_CHILDREN_MAX :: 3;
    }
}

CanvasItemMaterial :: struct {    // 131

        #as using base: OpaqueClass;

    BlendMode :: enum s32 {
        BLEND_MODE_MIX :: 0;
        BLEND_MODE_ADD :: 1;
        BLEND_MODE_SUB :: 2;
        BLEND_MODE_MUL :: 3;
        BLEND_MODE_PREMULT_ALPHA :: 4;
    }

    LightMode :: enum s32 {
        LIGHT_MODE_NORMAL :: 0;
        LIGHT_MODE_UNSHADED :: 1;
        LIGHT_MODE_LIGHT_ONLY :: 2;
    }
}

CanvasLayer :: struct { #as using base: OpaqueClass; } // 132

CanvasModulate :: struct { #as using base: OpaqueClass; } // 133

CanvasTexture :: struct { #as using base: OpaqueClass; } // 134

CapsuleMesh :: struct { #as using base: OpaqueClass; } // 135

CapsuleShape2D :: struct { #as using base: OpaqueClass; } // 136

CapsuleShape3D :: struct { #as using base: OpaqueClass; } // 137

CenterContainer :: struct { #as using base: OpaqueClass; } // 138

CharFXTransform :: struct { #as using base: OpaqueClass; } // 139

CharacterBody2D :: struct {    // 140

        #as using base: OpaqueClass;

    MotionMode :: enum s32 {
        MOTION_MODE_GROUNDED :: 0;
        MOTION_MODE_FLOATING :: 1;
    }

    PlatformOnLeave :: enum s32 {
        PLATFORM_ON_LEAVE_ADD_VELOCITY :: 0;
        PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY :: 1;
        PLATFORM_ON_LEAVE_DO_NOTHING :: 2;
    }
}

CharacterBody3D :: struct {    // 141

        #as using base: OpaqueClass;

    MotionMode :: enum s32 {
        MOTION_MODE_GROUNDED :: 0;
        MOTION_MODE_FLOATING :: 1;
    }

    PlatformOnLeave :: enum s32 {
        PLATFORM_ON_LEAVE_ADD_VELOCITY :: 0;
        PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY :: 1;
        PLATFORM_ON_LEAVE_DO_NOTHING :: 2;
    }
}

CheckBox :: struct { #as using base: OpaqueClass; } // 142

CheckButton :: struct { #as using base: OpaqueClass; } // 143

CircleShape2D :: struct { #as using base: OpaqueClass; } // 144

ClassDB :: struct { #as using base: OpaqueClass; } // 145

CodeEdit :: struct {    // 146

        #as using base: OpaqueClass;

    CodeCompletionKind :: enum s32 {
        KIND_CLASS :: 0;
        KIND_FUNCTION :: 1;
        KIND_SIGNAL :: 2;
        KIND_VARIABLE :: 3;
        KIND_MEMBER :: 4;
        KIND_ENUM :: 5;
        KIND_CONSTANT :: 6;
        KIND_NODE_PATH :: 7;
        KIND_FILE_PATH :: 8;
        KIND_PLAIN_TEXT :: 9;
    }

    CodeCompletionLocation :: enum s32 {
        LOCATION_LOCAL :: 0;
        LOCATION_PARENT_MASK :: 256;
        LOCATION_OTHER_USER_CODE :: 512;
        LOCATION_OTHER :: 1024;
    }
}

CodeHighlighter :: struct { #as using base: OpaqueClass; } // 147

CollisionObject2D :: struct {    // 148

        #as using base: OpaqueClass;

    DisableMode :: enum s32 {
        DISABLE_MODE_REMOVE :: 0;
        DISABLE_MODE_MAKE_STATIC :: 1;
        DISABLE_MODE_KEEP_ACTIVE :: 2;
    }
}

CollisionObject3D :: struct {    // 149

        #as using base: OpaqueClass;

    DisableMode :: enum s32 {
        DISABLE_MODE_REMOVE :: 0;
        DISABLE_MODE_MAKE_STATIC :: 1;
        DISABLE_MODE_KEEP_ACTIVE :: 2;
    }
}

CollisionPolygon2D :: struct {    // 150

        #as using base: OpaqueClass;

    BuildMode :: enum s32 {
        BUILD_SOLIDS :: 0;
        BUILD_SEGMENTS :: 1;
    }
}

CollisionPolygon3D :: struct { #as using base: OpaqueClass; } // 151

CollisionShape2D :: struct { #as using base: OpaqueClass; } // 152

CollisionShape3D :: struct { #as using base: OpaqueClass; } // 153

ColorPicker :: struct {    // 154

        #as using base: OpaqueClass;

    ColorModeType :: enum s32 {
        MODE_RGB :: 0;
        MODE_HSV :: 1;
        MODE_RAW :: 2;
        MODE_OKHSL :: 3;
    }

    PickerShapeType :: enum s32 {
        SHAPE_HSV_RECTANGLE :: 0;
        SHAPE_HSV_WHEEL :: 1;
        SHAPE_VHS_CIRCLE :: 2;
        SHAPE_OKHSL_CIRCLE :: 3;
        SHAPE_NONE :: 4;
    }
}

ColorPickerButton :: struct { #as using base: OpaqueClass; } // 155

ColorRect :: struct { #as using base: OpaqueClass; } // 156

Compositor :: struct { #as using base: OpaqueClass; } // 157

CompositorEffect :: struct {    // 158

        #as using base: OpaqueClass;

    EffectCallbackType :: enum s32 {
        EFFECT_CALLBACK_TYPE_PRE_OPAQUE :: 0;
        EFFECT_CALLBACK_TYPE_POST_OPAQUE :: 1;
        EFFECT_CALLBACK_TYPE_POST_SKY :: 2;
        EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT :: 3;
        EFFECT_CALLBACK_TYPE_POST_TRANSPARENT :: 4;
        EFFECT_CALLBACK_TYPE_MAX :: 5;
    }
}

CompressedCubemap :: struct { #as using base: OpaqueClass; } // 159

CompressedCubemapArray :: struct { #as using base: OpaqueClass; } // 160

CompressedTexture2D :: struct { #as using base: OpaqueClass; } // 161

CompressedTexture2DArray :: struct { #as using base: OpaqueClass; } // 162

CompressedTexture3D :: struct { #as using base: OpaqueClass; } // 163

CompressedTextureLayered :: struct { #as using base: OpaqueClass; } // 164

ConcavePolygonShape2D :: struct { #as using base: OpaqueClass; } // 165

ConcavePolygonShape3D :: struct { #as using base: OpaqueClass; } // 166

ConeTwistJoint3D :: struct {    // 167

        #as using base: OpaqueClass;

    Param :: enum s32 {
        PARAM_SWING_SPAN :: 0;
        PARAM_TWIST_SPAN :: 1;
        PARAM_BIAS :: 2;
        PARAM_SOFTNESS :: 3;
        PARAM_RELAXATION :: 4;
        PARAM_MAX :: 5;
    }
}

ConfigFile :: struct { #as using base: OpaqueClass; } // 168

ConfirmationDialog :: struct { #as using base: OpaqueClass; } // 169

Container :: struct { #as using base: OpaqueClass; } // 170

Control :: struct {    // 171

        #as using base: OpaqueClass;

    FocusMode :: enum s32 {
        FOCUS_NONE :: 0;
        FOCUS_CLICK :: 1;
        FOCUS_ALL :: 2;
    }

    CursorShape :: enum s32 {
        CURSOR_ARROW :: 0;
        CURSOR_IBEAM :: 1;
        CURSOR_POINTING_HAND :: 2;
        CURSOR_CROSS :: 3;
        CURSOR_WAIT :: 4;
        CURSOR_BUSY :: 5;
        CURSOR_DRAG :: 6;
        CURSOR_CAN_DROP :: 7;
        CURSOR_FORBIDDEN :: 8;
        CURSOR_VSIZE :: 9;
        CURSOR_HSIZE :: 10;
        CURSOR_BDIAGSIZE :: 11;
        CURSOR_FDIAGSIZE :: 12;
        CURSOR_MOVE :: 13;
        CURSOR_VSPLIT :: 14;
        CURSOR_HSPLIT :: 15;
        CURSOR_HELP :: 16;
    }

    LayoutPreset :: enum s32 {
        PRESET_TOP_LEFT :: 0;
        PRESET_TOP_RIGHT :: 1;
        PRESET_BOTTOM_LEFT :: 2;
        PRESET_BOTTOM_RIGHT :: 3;
        PRESET_CENTER_LEFT :: 4;
        PRESET_CENTER_TOP :: 5;
        PRESET_CENTER_RIGHT :: 6;
        PRESET_CENTER_BOTTOM :: 7;
        PRESET_CENTER :: 8;
        PRESET_LEFT_WIDE :: 9;
        PRESET_TOP_WIDE :: 10;
        PRESET_RIGHT_WIDE :: 11;
        PRESET_BOTTOM_WIDE :: 12;
        PRESET_VCENTER_WIDE :: 13;
        PRESET_HCENTER_WIDE :: 14;
        PRESET_FULL_RECT :: 15;
    }

    LayoutPresetMode :: enum s32 {
        PRESET_MODE_MINSIZE :: 0;
        PRESET_MODE_KEEP_WIDTH :: 1;
        PRESET_MODE_KEEP_HEIGHT :: 2;
        PRESET_MODE_KEEP_SIZE :: 3;
    }

    SizeFlags :: enum u64 {
        SIZE_SHRINK_BEGIN :: 0;
        SIZE_FILL :: 1;
        SIZE_EXPAND :: 2;
        SIZE_EXPAND_FILL :: 3;
        SIZE_SHRINK_CENTER :: 4;
        SIZE_SHRINK_END :: 8;
    } @bitfield

    MouseFilter :: enum s32 {
        MOUSE_FILTER_STOP :: 0;
        MOUSE_FILTER_PASS :: 1;
        MOUSE_FILTER_IGNORE :: 2;
    }

    GrowDirection :: enum s32 {
        GROW_DIRECTION_BEGIN :: 0;
        GROW_DIRECTION_END :: 1;
        GROW_DIRECTION_BOTH :: 2;
    }

    Anchor :: enum s32 {
        ANCHOR_BEGIN :: 0;
        ANCHOR_END :: 1;
    }

    LayoutDirection :: enum s32 {
        LAYOUT_DIRECTION_INHERITED :: 0;
        LAYOUT_DIRECTION_LOCALE :: 1;
        LAYOUT_DIRECTION_LTR :: 2;
        LAYOUT_DIRECTION_RTL :: 3;
    }

    TextDirection :: enum s32 {
        TEXT_DIRECTION_INHERITED :: 3;
        TEXT_DIRECTION_AUTO :: 0;
        TEXT_DIRECTION_LTR :: 1;
        TEXT_DIRECTION_RTL :: 2;
    }
}

ConvexPolygonShape2D :: struct { #as using base: OpaqueClass; } // 172

ConvexPolygonShape3D :: struct { #as using base: OpaqueClass; } // 173

Crypto :: struct { #as using base: OpaqueClass; } // 174

CryptoKey :: struct { #as using base: OpaqueClass; } // 175

Cubemap :: struct { #as using base: OpaqueClass; } // 176

CubemapArray :: struct { #as using base: OpaqueClass; } // 177

Curve :: struct {    // 178

        #as using base: OpaqueClass;

    TangentMode :: enum s32 {
        TANGENT_FREE :: 0;
        TANGENT_LINEAR :: 1;
        TANGENT_MODE_COUNT :: 2;
    }
}

Curve2D :: struct { #as using base: OpaqueClass; } // 179

Curve3D :: struct { #as using base: OpaqueClass; } // 180

CurveTexture :: struct {    // 181

        #as using base: OpaqueClass;

    TextureMode :: enum s32 {
        TEXTURE_MODE_RGB :: 0;
        TEXTURE_MODE_RED :: 1;
    }
}

CurveXYZTexture :: struct { #as using base: OpaqueClass; } // 182

CylinderMesh :: struct { #as using base: OpaqueClass; } // 183

CylinderShape3D :: struct { #as using base: OpaqueClass; } // 184

DTLSServer :: struct { #as using base: OpaqueClass; } // 185

DampedSpringJoint2D :: struct { #as using base: OpaqueClass; } // 186

Decal :: struct {    // 187

        #as using base: OpaqueClass;

    DecalTexture :: enum s32 {
        TEXTURE_ALBEDO :: 0;
        TEXTURE_NORMAL :: 1;
        TEXTURE_ORM :: 2;
        TEXTURE_EMISSION :: 3;
        TEXTURE_MAX :: 4;
    }
}

DirAccess :: struct { #as using base: OpaqueClass; } // 188

DirectionalLight2D :: struct { #as using base: OpaqueClass; } // 189

DirectionalLight3D :: struct {    // 190

        #as using base: OpaqueClass;

    ShadowMode :: enum s32 {
        SHADOW_ORTHOGONAL :: 0;
        SHADOW_PARALLEL_2_SPLITS :: 1;
        SHADOW_PARALLEL_4_SPLITS :: 2;
    }

    SkyMode :: enum s32 {
        SKY_MODE_LIGHT_AND_SKY :: 0;
        SKY_MODE_LIGHT_ONLY :: 1;
        SKY_MODE_SKY_ONLY :: 2;
    }
}

DisplayServer :: struct {    // 191

        #as using base: OpaqueClass;

    Feature :: enum s32 {
        FEATURE_GLOBAL_MENU :: 0;
        FEATURE_SUBWINDOWS :: 1;
        FEATURE_TOUCHSCREEN :: 2;
        FEATURE_MOUSE :: 3;
        FEATURE_MOUSE_WARP :: 4;
        FEATURE_CLIPBOARD :: 5;
        FEATURE_VIRTUAL_KEYBOARD :: 6;
        FEATURE_CURSOR_SHAPE :: 7;
        FEATURE_CUSTOM_CURSOR_SHAPE :: 8;
        FEATURE_NATIVE_DIALOG :: 9;
        FEATURE_IME :: 10;
        FEATURE_WINDOW_TRANSPARENCY :: 11;
        FEATURE_HIDPI :: 12;
        FEATURE_ICON :: 13;
        FEATURE_NATIVE_ICON :: 14;
        FEATURE_ORIENTATION :: 15;
        FEATURE_SWAP_BUFFERS :: 16;
        FEATURE_CLIPBOARD_PRIMARY :: 18;
        FEATURE_TEXT_TO_SPEECH :: 19;
        FEATURE_EXTEND_TO_TITLE :: 20;
        FEATURE_SCREEN_CAPTURE :: 21;
        FEATURE_STATUS_INDICATOR :: 22;
        FEATURE_NATIVE_HELP :: 23;
    }

    MouseMode :: enum s32 {
        MOUSE_MODE_VISIBLE :: 0;
        MOUSE_MODE_HIDDEN :: 1;
        MOUSE_MODE_CAPTURED :: 2;
        MOUSE_MODE_CONFINED :: 3;
        MOUSE_MODE_CONFINED_HIDDEN :: 4;
    }

    ScreenOrientation :: enum s32 {
        SCREEN_LANDSCAPE :: 0;
        SCREEN_PORTRAIT :: 1;
        SCREEN_REVERSE_LANDSCAPE :: 2;
        SCREEN_REVERSE_PORTRAIT :: 3;
        SCREEN_SENSOR_LANDSCAPE :: 4;
        SCREEN_SENSOR_PORTRAIT :: 5;
        SCREEN_SENSOR :: 6;
    }

    VirtualKeyboardType :: enum s32 {
        KEYBOARD_TYPE_DEFAULT :: 0;
        KEYBOARD_TYPE_MULTILINE :: 1;
        KEYBOARD_TYPE_NUMBER :: 2;
        KEYBOARD_TYPE_NUMBER_DECIMAL :: 3;
        KEYBOARD_TYPE_PHONE :: 4;
        KEYBOARD_TYPE_EMAIL_ADDRESS :: 5;
        KEYBOARD_TYPE_PASSWORD :: 6;
        KEYBOARD_TYPE_URL :: 7;
    }

    CursorShape :: enum s32 {
        CURSOR_ARROW :: 0;
        CURSOR_IBEAM :: 1;
        CURSOR_POINTING_HAND :: 2;
        CURSOR_CROSS :: 3;
        CURSOR_WAIT :: 4;
        CURSOR_BUSY :: 5;
        CURSOR_DRAG :: 6;
        CURSOR_CAN_DROP :: 7;
        CURSOR_FORBIDDEN :: 8;
        CURSOR_VSIZE :: 9;
        CURSOR_HSIZE :: 10;
        CURSOR_BDIAGSIZE :: 11;
        CURSOR_FDIAGSIZE :: 12;
        CURSOR_MOVE :: 13;
        CURSOR_VSPLIT :: 14;
        CURSOR_HSPLIT :: 15;
        CURSOR_HELP :: 16;
        CURSOR_MAX :: 17;
    }

    FileDialogMode :: enum s32 {
        FILE_DIALOG_MODE_OPEN_FILE :: 0;
        FILE_DIALOG_MODE_OPEN_FILES :: 1;
        FILE_DIALOG_MODE_OPEN_DIR :: 2;
        FILE_DIALOG_MODE_OPEN_ANY :: 3;
        FILE_DIALOG_MODE_SAVE_FILE :: 4;
    }

    WindowMode :: enum s32 {
        WINDOW_MODE_WINDOWED :: 0;
        WINDOW_MODE_MINIMIZED :: 1;
        WINDOW_MODE_MAXIMIZED :: 2;
        WINDOW_MODE_FULLSCREEN :: 3;
        WINDOW_MODE_EXCLUSIVE_FULLSCREEN :: 4;
    }

    WindowFlags :: enum s32 {
        WINDOW_FLAG_RESIZE_DISABLED :: 0;
        WINDOW_FLAG_BORDERLESS :: 1;
        WINDOW_FLAG_ALWAYS_ON_TOP :: 2;
        WINDOW_FLAG_TRANSPARENT :: 3;
        WINDOW_FLAG_NO_FOCUS :: 4;
        WINDOW_FLAG_POPUP :: 5;
        WINDOW_FLAG_EXTEND_TO_TITLE :: 6;
        WINDOW_FLAG_MOUSE_PASSTHROUGH :: 7;
        WINDOW_FLAG_MAX :: 8;
    }

    WindowEvent :: enum s32 {
        WINDOW_EVENT_MOUSE_ENTER :: 0;
        WINDOW_EVENT_MOUSE_EXIT :: 1;
        WINDOW_EVENT_FOCUS_IN :: 2;
        WINDOW_EVENT_FOCUS_OUT :: 3;
        WINDOW_EVENT_CLOSE_REQUEST :: 4;
        WINDOW_EVENT_GO_BACK_REQUEST :: 5;
        WINDOW_EVENT_DPI_CHANGE :: 6;
        WINDOW_EVENT_TITLEBAR_CHANGE :: 7;
    }

    VSyncMode :: enum s32 {
        VSYNC_DISABLED :: 0;
        VSYNC_ENABLED :: 1;
        VSYNC_ADAPTIVE :: 2;
        VSYNC_MAILBOX :: 3;
    }

    HandleType :: enum s32 {
        DISPLAY_HANDLE :: 0;
        WINDOW_HANDLE :: 1;
        WINDOW_VIEW :: 2;
        OPENGL_CONTEXT :: 3;
    }

    TTSUtteranceEvent :: enum s32 {
        TTS_UTTERANCE_STARTED :: 0;
        TTS_UTTERANCE_ENDED :: 1;
        TTS_UTTERANCE_CANCELED :: 2;
        TTS_UTTERANCE_BOUNDARY :: 3;
    }
}

ENetConnection :: struct {    // 192

        #as using base: OpaqueClass;

    CompressionMode :: enum s32 {
        COMPRESS_NONE :: 0;
        COMPRESS_RANGE_CODER :: 1;
        COMPRESS_FASTLZ :: 2;
        COMPRESS_ZLIB :: 3;
        COMPRESS_ZSTD :: 4;
    }

    EventType :: enum s32 {
        EVENT_ERROR :: -1;
        EVENT_NONE :: 0;
        EVENT_CONNECT :: 1;
        EVENT_DISCONNECT :: 2;
        EVENT_RECEIVE :: 3;
    }

    HostStatistic :: enum s32 {
        HOST_TOTAL_SENT_DATA :: 0;
        HOST_TOTAL_SENT_PACKETS :: 1;
        HOST_TOTAL_RECEIVED_DATA :: 2;
        HOST_TOTAL_RECEIVED_PACKETS :: 3;
    }
}

ENetMultiplayerPeer :: struct { #as using base: OpaqueClass; } // 193

ENetPacketPeer :: struct {    // 194

        #as using base: OpaqueClass;

    PeerState :: enum s32 {
        STATE_DISCONNECTED :: 0;
        STATE_CONNECTING :: 1;
        STATE_ACKNOWLEDGING_CONNECT :: 2;
        STATE_CONNECTION_PENDING :: 3;
        STATE_CONNECTION_SUCCEEDED :: 4;
        STATE_CONNECTED :: 5;
        STATE_DISCONNECT_LATER :: 6;
        STATE_DISCONNECTING :: 7;
        STATE_ACKNOWLEDGING_DISCONNECT :: 8;
        STATE_ZOMBIE :: 9;
    }

    PeerStatistic :: enum s32 {
        PEER_PACKET_LOSS :: 0;
        PEER_PACKET_LOSS_VARIANCE :: 1;
        PEER_PACKET_LOSS_EPOCH :: 2;
        PEER_ROUND_TRIP_TIME :: 3;
        PEER_ROUND_TRIP_TIME_VARIANCE :: 4;
        PEER_LAST_ROUND_TRIP_TIME :: 5;
        PEER_LAST_ROUND_TRIP_TIME_VARIANCE :: 6;
        PEER_PACKET_THROTTLE :: 7;
        PEER_PACKET_THROTTLE_LIMIT :: 8;
        PEER_PACKET_THROTTLE_COUNTER :: 9;
        PEER_PACKET_THROTTLE_EPOCH :: 10;
        PEER_PACKET_THROTTLE_ACCELERATION :: 11;
        PEER_PACKET_THROTTLE_DECELERATION :: 12;
        PEER_PACKET_THROTTLE_INTERVAL :: 13;
    }
}

EditorCommandPalette :: struct { #as using base: OpaqueClass; } // 195

EditorDebuggerPlugin :: struct { #as using base: OpaqueClass; } // 196

EditorDebuggerSession :: struct { #as using base: OpaqueClass; } // 197

EditorExportPlatform :: struct { #as using base: OpaqueClass; } // 198

EditorExportPlatformAndroid :: struct { #as using base: OpaqueClass; } // 199

EditorExportPlatformIOS :: struct { #as using base: OpaqueClass; } // 200

EditorExportPlatformLinuxBSD :: struct { #as using base: OpaqueClass; } // 201

EditorExportPlatformMacOS :: struct { #as using base: OpaqueClass; } // 202

EditorExportPlatformPC :: struct { #as using base: OpaqueClass; } // 203

EditorExportPlatformWeb :: struct { #as using base: OpaqueClass; } // 204

EditorExportPlatformWindows :: struct { #as using base: OpaqueClass; } // 205

EditorExportPlugin :: struct { #as using base: OpaqueClass; } // 206

EditorFeatureProfile :: struct {    // 207

        #as using base: OpaqueClass;

    Feature :: enum s32 {
        FEATURE_3D :: 0;
        FEATURE_SCRIPT :: 1;
        FEATURE_ASSET_LIB :: 2;
        FEATURE_SCENE_TREE :: 3;
        FEATURE_NODE_DOCK :: 4;
        FEATURE_FILESYSTEM_DOCK :: 5;
        FEATURE_IMPORT_DOCK :: 6;
        FEATURE_HISTORY_DOCK :: 7;
        FEATURE_MAX :: 8;
    }
}

EditorFileDialog :: struct {    // 208

        #as using base: OpaqueClass;

    FileMode :: enum s32 {
        FILE_MODE_OPEN_FILE :: 0;
        FILE_MODE_OPEN_FILES :: 1;
        FILE_MODE_OPEN_DIR :: 2;
        FILE_MODE_OPEN_ANY :: 3;
        FILE_MODE_SAVE_FILE :: 4;
    }

    Access :: enum s32 {
        ACCESS_RESOURCES :: 0;
        ACCESS_USERDATA :: 1;
        ACCESS_FILESYSTEM :: 2;
    }

    DisplayMode :: enum s32 {
        DISPLAY_THUMBNAILS :: 0;
        DISPLAY_LIST :: 1;
    }
}

EditorFileSystem :: struct { #as using base: OpaqueClass; } // 209

EditorFileSystemDirectory :: struct { #as using base: OpaqueClass; } // 210

EditorFileSystemImportFormatSupportQuery :: struct { #as using base: OpaqueClass; } // 211

EditorImportPlugin :: struct { #as using base: OpaqueClass; } // 212

EditorInspector :: struct { #as using base: OpaqueClass; } // 213

EditorInspectorPlugin :: struct { #as using base: OpaqueClass; } // 214

EditorInterface :: struct { #as using base: OpaqueClass; } // 215

EditorNode3DGizmo :: struct { #as using base: OpaqueClass; } // 216

EditorNode3DGizmoPlugin :: struct { #as using base: OpaqueClass; } // 217

EditorPaths :: struct { #as using base: OpaqueClass; } // 218

EditorPlugin :: struct {    // 219

        #as using base: OpaqueClass;

    CustomControlContainer :: enum s32 {
        CONTAINER_TOOLBAR :: 0;
        CONTAINER_SPATIAL_EDITOR_MENU :: 1;
        CONTAINER_SPATIAL_EDITOR_SIDE_LEFT :: 2;
        CONTAINER_SPATIAL_EDITOR_SIDE_RIGHT :: 3;
        CONTAINER_SPATIAL_EDITOR_BOTTOM :: 4;
        CONTAINER_CANVAS_EDITOR_MENU :: 5;
        CONTAINER_CANVAS_EDITOR_SIDE_LEFT :: 6;
        CONTAINER_CANVAS_EDITOR_SIDE_RIGHT :: 7;
        CONTAINER_CANVAS_EDITOR_BOTTOM :: 8;
        CONTAINER_INSPECTOR_BOTTOM :: 9;
        CONTAINER_PROJECT_SETTING_TAB_LEFT :: 10;
        CONTAINER_PROJECT_SETTING_TAB_RIGHT :: 11;
    }

    DockSlot :: enum s32 {
        DOCK_SLOT_LEFT_UL :: 0;
        DOCK_SLOT_LEFT_BL :: 1;
        DOCK_SLOT_LEFT_UR :: 2;
        DOCK_SLOT_LEFT_BR :: 3;
        DOCK_SLOT_RIGHT_UL :: 4;
        DOCK_SLOT_RIGHT_BL :: 5;
        DOCK_SLOT_RIGHT_UR :: 6;
        DOCK_SLOT_RIGHT_BR :: 7;
        DOCK_SLOT_MAX :: 8;
    }

    AfterGUIInput :: enum s32 {
        AFTER_GUI_INPUT_PASS :: 0;
        AFTER_GUI_INPUT_STOP :: 1;
        AFTER_GUI_INPUT_CUSTOM :: 2;
    }
}

EditorProperty :: struct { #as using base: OpaqueClass; } // 220

EditorResourceConversionPlugin :: struct { #as using base: OpaqueClass; } // 221

EditorResourcePicker :: struct { #as using base: OpaqueClass; } // 222

EditorResourcePreview :: struct { #as using base: OpaqueClass; } // 223

EditorResourcePreviewGenerator :: struct { #as using base: OpaqueClass; } // 224

EditorResourceTooltipPlugin :: struct { #as using base: OpaqueClass; } // 225

EditorSceneFormatImporter :: struct { #as using base: OpaqueClass; } // 226

EditorSceneFormatImporterBlend :: struct { #as using base: OpaqueClass; } // 227

EditorSceneFormatImporterFBX2GLTF :: struct { #as using base: OpaqueClass; } // 228

EditorSceneFormatImporterGLTF :: struct { #as using base: OpaqueClass; } // 229

EditorSceneFormatImporterUFBX :: struct { #as using base: OpaqueClass; } // 230

EditorScenePostImport :: struct { #as using base: OpaqueClass; } // 231

EditorScenePostImportPlugin :: struct {    // 232

        #as using base: OpaqueClass;

    InternalImportCategory :: enum s32 {
        INTERNAL_IMPORT_CATEGORY_NODE :: 0;
        INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE :: 1;
        INTERNAL_IMPORT_CATEGORY_MESH :: 2;
        INTERNAL_IMPORT_CATEGORY_MATERIAL :: 3;
        INTERNAL_IMPORT_CATEGORY_ANIMATION :: 4;
        INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE :: 5;
        INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE :: 6;
        INTERNAL_IMPORT_CATEGORY_MAX :: 7;
    }
}

EditorScript :: struct { #as using base: OpaqueClass; } // 233

EditorScriptPicker :: struct { #as using base: OpaqueClass; } // 234

EditorSelection :: struct { #as using base: OpaqueClass; } // 235

EditorSettings :: struct { #as using base: OpaqueClass; } // 236

EditorSpinSlider :: struct { #as using base: OpaqueClass; } // 237

EditorSyntaxHighlighter :: struct { #as using base: OpaqueClass; } // 238

EditorTranslationParserPlugin :: struct { #as using base: OpaqueClass; } // 239

EditorUndoRedoManager :: struct {    // 240

        #as using base: OpaqueClass;

    SpecialHistory :: enum s32 {
        GLOBAL_HISTORY :: 0;
        REMOTE_HISTORY :: -9;
        INVALID_HISTORY :: -99;
    }
}

EditorVCSInterface :: struct {    // 241

        #as using base: OpaqueClass;

    ChangeType :: enum s32 {
        CHANGE_TYPE_NEW :: 0;
        CHANGE_TYPE_MODIFIED :: 1;
        CHANGE_TYPE_RENAMED :: 2;
        CHANGE_TYPE_DELETED :: 3;
        CHANGE_TYPE_TYPECHANGE :: 4;
        CHANGE_TYPE_UNMERGED :: 5;
    }

    TreeArea :: enum s32 {
        TREE_AREA_COMMIT :: 0;
        TREE_AREA_STAGED :: 1;
        TREE_AREA_UNSTAGED :: 2;
    }
}

EncodedObjectAsID :: struct { #as using base: OpaqueClass; } // 242

Engine :: struct { #as using base: OpaqueClass; } // 243

EngineDebugger :: struct { #as using base: OpaqueClass; } // 244

EngineProfiler :: struct { #as using base: OpaqueClass; } // 245

Environment :: struct {    // 246

        #as using base: OpaqueClass;

    BGMode :: enum s32 {
        BG_CLEAR_COLOR :: 0;
        BG_COLOR :: 1;
        BG_SKY :: 2;
        BG_CANVAS :: 3;
        BG_KEEP :: 4;
        BG_CAMERA_FEED :: 5;
        BG_MAX :: 6;
    }

    AmbientSource :: enum s32 {
        AMBIENT_SOURCE_BG :: 0;
        AMBIENT_SOURCE_DISABLED :: 1;
        AMBIENT_SOURCE_COLOR :: 2;
        AMBIENT_SOURCE_SKY :: 3;
    }

    ReflectionSource :: enum s32 {
        REFLECTION_SOURCE_BG :: 0;
        REFLECTION_SOURCE_DISABLED :: 1;
        REFLECTION_SOURCE_SKY :: 2;
    }

    ToneMapper :: enum s32 {
        TONE_MAPPER_LINEAR :: 0;
        TONE_MAPPER_REINHARDT :: 1;
        TONE_MAPPER_FILMIC :: 2;
        TONE_MAPPER_ACES :: 3;
    }

    GlowBlendMode :: enum s32 {
        GLOW_BLEND_MODE_ADDITIVE :: 0;
        GLOW_BLEND_MODE_SCREEN :: 1;
        GLOW_BLEND_MODE_SOFTLIGHT :: 2;
        GLOW_BLEND_MODE_REPLACE :: 3;
        GLOW_BLEND_MODE_MIX :: 4;
    }

    FogMode :: enum s32 {
        FOG_MODE_EXPONENTIAL :: 0;
        FOG_MODE_DEPTH :: 1;
    }

    SDFGIYScale :: enum s32 {
        SDFGI_Y_SCALE_50_PERCENT :: 0;
        SDFGI_Y_SCALE_75_PERCENT :: 1;
        SDFGI_Y_SCALE_100_PERCENT :: 2;
    }
}

Expression :: struct { #as using base: OpaqueClass; } // 247

FBXDocument :: struct { #as using base: OpaqueClass; } // 248

FBXState :: struct { #as using base: OpaqueClass; } // 249

FastNoiseLite :: struct {    // 250

        #as using base: OpaqueClass;

    NoiseType :: enum s32 {
        TYPE_VALUE :: 5;
        TYPE_VALUE_CUBIC :: 4;
        TYPE_PERLIN :: 3;
        TYPE_CELLULAR :: 2;
        TYPE_SIMPLEX :: 0;
        TYPE_SIMPLEX_SMOOTH :: 1;
    }

    FractalType :: enum s32 {
        FRACTAL_NONE :: 0;
        FRACTAL_FBM :: 1;
        FRACTAL_RIDGED :: 2;
        FRACTAL_PING_PONG :: 3;
    }

    CellularDistanceFunction :: enum s32 {
        DISTANCE_EUCLIDEAN :: 0;
        DISTANCE_EUCLIDEAN_SQUARED :: 1;
        DISTANCE_MANHATTAN :: 2;
        DISTANCE_HYBRID :: 3;
    }

    CellularReturnType :: enum s32 {
        RETURN_CELL_VALUE :: 0;
        RETURN_DISTANCE :: 1;
        RETURN_DISTANCE2 :: 2;
        RETURN_DISTANCE2_ADD :: 3;
        RETURN_DISTANCE2_SUB :: 4;
        RETURN_DISTANCE2_MUL :: 5;
        RETURN_DISTANCE2_DIV :: 6;
    }

    DomainWarpType :: enum s32 {
        DOMAIN_WARP_SIMPLEX :: 0;
        DOMAIN_WARP_SIMPLEX_REDUCED :: 1;
        DOMAIN_WARP_BASIC_GRID :: 2;
    }

    DomainWarpFractalType :: enum s32 {
        DOMAIN_WARP_FRACTAL_NONE :: 0;
        DOMAIN_WARP_FRACTAL_PROGRESSIVE :: 1;
        DOMAIN_WARP_FRACTAL_INDEPENDENT :: 2;
    }
}

FileAccess :: struct {    // 251

        #as using base: OpaqueClass;

    ModeFlags :: enum s32 {
        READ :: 1;
        WRITE :: 2;
        READ_WRITE :: 3;
        WRITE_READ :: 7;
    }

    CompressionMode :: enum s32 {
        COMPRESSION_FASTLZ :: 0;
        COMPRESSION_DEFLATE :: 1;
        COMPRESSION_ZSTD :: 2;
        COMPRESSION_GZIP :: 3;
        COMPRESSION_BROTLI :: 4;
    }

    UnixPermissionFlags :: enum u64 {
        UNIX_READ_OWNER :: 256;
        UNIX_WRITE_OWNER :: 128;
        UNIX_EXECUTE_OWNER :: 64;
        UNIX_READ_GROUP :: 32;
        UNIX_WRITE_GROUP :: 16;
        UNIX_EXECUTE_GROUP :: 8;
        UNIX_READ_OTHER :: 4;
        UNIX_WRITE_OTHER :: 2;
        UNIX_EXECUTE_OTHER :: 1;
        UNIX_SET_USER_ID :: 2048;
        UNIX_SET_GROUP_ID :: 1024;
        UNIX_RESTRICTED_DELETE :: 512;
    } @bitfield
}

FileDialog :: struct {    // 252

        #as using base: OpaqueClass;

    FileMode :: enum s32 {
        FILE_MODE_OPEN_FILE :: 0;
        FILE_MODE_OPEN_FILES :: 1;
        FILE_MODE_OPEN_DIR :: 2;
        FILE_MODE_OPEN_ANY :: 3;
        FILE_MODE_SAVE_FILE :: 4;
    }

    Access :: enum s32 {
        ACCESS_RESOURCES :: 0;
        ACCESS_USERDATA :: 1;
        ACCESS_FILESYSTEM :: 2;
    }
}

FileSystemDock :: struct { #as using base: OpaqueClass; } // 253

FlowContainer :: struct {    // 254

        #as using base: OpaqueClass;

    AlignmentMode :: enum s32 {
        ALIGNMENT_BEGIN :: 0;
        ALIGNMENT_CENTER :: 1;
        ALIGNMENT_END :: 2;
    }
}

FogMaterial :: struct { #as using base: OpaqueClass; } // 255

FogVolume :: struct { #as using base: OpaqueClass; } // 256

Font :: struct { #as using base: OpaqueClass; } // 257

FontFile :: struct { #as using base: OpaqueClass; } // 258

FontVariation :: struct { #as using base: OpaqueClass; } // 259

FramebufferCacheRD :: struct { #as using base: OpaqueClass; } // 260

GDExtension :: struct {    // 261

        #as using base: OpaqueClass;

    InitializationLevel :: enum s32 {
        INITIALIZATION_LEVEL_CORE :: 0;
        INITIALIZATION_LEVEL_SERVERS :: 1;
        INITIALIZATION_LEVEL_SCENE :: 2;
        INITIALIZATION_LEVEL_EDITOR :: 3;
    }
}

GDExtensionManager :: struct {    // 262

        #as using base: OpaqueClass;

    LoadStatus :: enum s32 {
        LOAD_STATUS_OK :: 0;
        LOAD_STATUS_FAILED :: 1;
        LOAD_STATUS_ALREADY_LOADED :: 2;
        LOAD_STATUS_NOT_LOADED :: 3;
        LOAD_STATUS_NEEDS_RESTART :: 4;
    }
}

GDScript :: struct { #as using base: OpaqueClass; } // 263

GLTFAccessor :: struct { #as using base: OpaqueClass; } // 264

GLTFAnimation :: struct { #as using base: OpaqueClass; } // 265

GLTFBufferView :: struct { #as using base: OpaqueClass; } // 266

GLTFCamera :: struct { #as using base: OpaqueClass; } // 267

GLTFDocument :: struct {    // 268

        #as using base: OpaqueClass;

    RootNodeMode :: enum s32 {
        ROOT_NODE_MODE_SINGLE_ROOT :: 0;
        ROOT_NODE_MODE_KEEP_ROOT :: 1;
        ROOT_NODE_MODE_MULTI_ROOT :: 2;
    }
}

GLTFDocumentExtension :: struct { #as using base: OpaqueClass; } // 269

GLTFDocumentExtensionConvertImporterMesh :: struct { #as using base: OpaqueClass; } // 270

GLTFLight :: struct { #as using base: OpaqueClass; } // 271

GLTFMesh :: struct { #as using base: OpaqueClass; } // 272

GLTFNode :: struct { #as using base: OpaqueClass; } // 273

GLTFPhysicsBody :: struct { #as using base: OpaqueClass; } // 274

GLTFPhysicsShape :: struct { #as using base: OpaqueClass; } // 275

GLTFSkeleton :: struct { #as using base: OpaqueClass; } // 276

GLTFSkin :: struct { #as using base: OpaqueClass; } // 277

GLTFSpecGloss :: struct { #as using base: OpaqueClass; } // 278

GLTFState :: struct { #as using base: OpaqueClass; } // 279

GLTFTexture :: struct { #as using base: OpaqueClass; } // 280

GLTFTextureSampler :: struct { #as using base: OpaqueClass; } // 281

GPUParticles2D :: struct {    // 282

        #as using base: OpaqueClass;

    DrawOrder :: enum s32 {
        DRAW_ORDER_INDEX :: 0;
        DRAW_ORDER_LIFETIME :: 1;
        DRAW_ORDER_REVERSE_LIFETIME :: 2;
    }

    EmitFlags :: enum s32 {
        EMIT_FLAG_POSITION :: 1;
        EMIT_FLAG_ROTATION_SCALE :: 2;
        EMIT_FLAG_VELOCITY :: 4;
        EMIT_FLAG_COLOR :: 8;
        EMIT_FLAG_CUSTOM :: 16;
    }
}

GPUParticles3D :: struct {    // 283

        #as using base: OpaqueClass;

    DrawOrder :: enum s32 {
        DRAW_ORDER_INDEX :: 0;
        DRAW_ORDER_LIFETIME :: 1;
        DRAW_ORDER_REVERSE_LIFETIME :: 2;
        DRAW_ORDER_VIEW_DEPTH :: 3;
    }

    EmitFlags :: enum s32 {
        EMIT_FLAG_POSITION :: 1;
        EMIT_FLAG_ROTATION_SCALE :: 2;
        EMIT_FLAG_VELOCITY :: 4;
        EMIT_FLAG_COLOR :: 8;
        EMIT_FLAG_CUSTOM :: 16;
    }

    TransformAlign :: enum s32 {
        TRANSFORM_ALIGN_DISABLED :: 0;
        TRANSFORM_ALIGN_Z_BILLBOARD :: 1;
        TRANSFORM_ALIGN_Y_TO_VELOCITY :: 2;
        TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY :: 3;
    }
}

GPUParticlesAttractor3D :: struct { #as using base: OpaqueClass; } // 284

GPUParticlesAttractorBox3D :: struct { #as using base: OpaqueClass; } // 285

GPUParticlesAttractorSphere3D :: struct { #as using base: OpaqueClass; } // 286

GPUParticlesAttractorVectorField3D :: struct { #as using base: OpaqueClass; } // 287

GPUParticlesCollision3D :: struct { #as using base: OpaqueClass; } // 288

GPUParticlesCollisionBox3D :: struct { #as using base: OpaqueClass; } // 289

GPUParticlesCollisionHeightField3D :: struct {    // 290

        #as using base: OpaqueClass;

    Resolution :: enum s32 {
        RESOLUTION_256 :: 0;
        RESOLUTION_512 :: 1;
        RESOLUTION_1024 :: 2;
        RESOLUTION_2048 :: 3;
        RESOLUTION_4096 :: 4;
        RESOLUTION_8192 :: 5;
        RESOLUTION_MAX :: 6;
    }

    UpdateMode :: enum s32 {
        UPDATE_MODE_WHEN_MOVED :: 0;
        UPDATE_MODE_ALWAYS :: 1;
    }
}

GPUParticlesCollisionSDF3D :: struct {    // 291

        #as using base: OpaqueClass;

    Resolution :: enum s32 {
        RESOLUTION_16 :: 0;
        RESOLUTION_32 :: 1;
        RESOLUTION_64 :: 2;
        RESOLUTION_128 :: 3;
        RESOLUTION_256 :: 4;
        RESOLUTION_512 :: 5;
        RESOLUTION_MAX :: 6;
    }
}

GPUParticlesCollisionSphere3D :: struct { #as using base: OpaqueClass; } // 292

Generic6DOFJoint3D :: struct {    // 293

        #as using base: OpaqueClass;

    Param :: enum s32 {
        PARAM_LINEAR_LOWER_LIMIT :: 0;
        PARAM_LINEAR_UPPER_LIMIT :: 1;
        PARAM_LINEAR_LIMIT_SOFTNESS :: 2;
        PARAM_LINEAR_RESTITUTION :: 3;
        PARAM_LINEAR_DAMPING :: 4;
        PARAM_LINEAR_MOTOR_TARGET_VELOCITY :: 5;
        PARAM_LINEAR_MOTOR_FORCE_LIMIT :: 6;
        PARAM_LINEAR_SPRING_STIFFNESS :: 7;
        PARAM_LINEAR_SPRING_DAMPING :: 8;
        PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT :: 9;
        PARAM_ANGULAR_LOWER_LIMIT :: 10;
        PARAM_ANGULAR_UPPER_LIMIT :: 11;
        PARAM_ANGULAR_LIMIT_SOFTNESS :: 12;
        PARAM_ANGULAR_DAMPING :: 13;
        PARAM_ANGULAR_RESTITUTION :: 14;
        PARAM_ANGULAR_FORCE_LIMIT :: 15;
        PARAM_ANGULAR_ERP :: 16;
        PARAM_ANGULAR_MOTOR_TARGET_VELOCITY :: 17;
        PARAM_ANGULAR_MOTOR_FORCE_LIMIT :: 18;
        PARAM_ANGULAR_SPRING_STIFFNESS :: 19;
        PARAM_ANGULAR_SPRING_DAMPING :: 20;
        PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT :: 21;
        PARAM_MAX :: 22;
    }

    Flag :: enum s32 {
        FLAG_ENABLE_LINEAR_LIMIT :: 0;
        FLAG_ENABLE_ANGULAR_LIMIT :: 1;
        FLAG_ENABLE_LINEAR_SPRING :: 3;
        FLAG_ENABLE_ANGULAR_SPRING :: 2;
        FLAG_ENABLE_MOTOR :: 4;
        FLAG_ENABLE_LINEAR_MOTOR :: 5;
        FLAG_MAX :: 6;
    }
}

Geometry2D :: struct {    // 294

        #as using base: OpaqueClass;

    PolyBooleanOperation :: enum s32 {
        OPERATION_UNION :: 0;
        OPERATION_DIFFERENCE :: 1;
        OPERATION_INTERSECTION :: 2;
        OPERATION_XOR :: 3;
    }

    PolyJoinType :: enum s32 {
        JOIN_SQUARE :: 0;
        JOIN_ROUND :: 1;
        JOIN_MITER :: 2;
    }

    PolyEndType :: enum s32 {
        END_POLYGON :: 0;
        END_JOINED :: 1;
        END_BUTT :: 2;
        END_SQUARE :: 3;
        END_ROUND :: 4;
    }
}

Geometry3D :: struct { #as using base: OpaqueClass; } // 295

GeometryInstance3D :: struct {    // 296

        #as using base: OpaqueClass;

    ShadowCastingSetting :: enum s32 {
        SHADOW_CASTING_SETTING_OFF :: 0;
        SHADOW_CASTING_SETTING_ON :: 1;
        SHADOW_CASTING_SETTING_DOUBLE_SIDED :: 2;
        SHADOW_CASTING_SETTING_SHADOWS_ONLY :: 3;
    }

    GIMode :: enum s32 {
        GI_MODE_DISABLED :: 0;
        GI_MODE_STATIC :: 1;
        GI_MODE_DYNAMIC :: 2;
    }

    LightmapScale :: enum s32 {
        LIGHTMAP_SCALE_1X :: 0;
        LIGHTMAP_SCALE_2X :: 1;
        LIGHTMAP_SCALE_4X :: 2;
        LIGHTMAP_SCALE_8X :: 3;
        LIGHTMAP_SCALE_MAX :: 4;
    }

    VisibilityRangeFadeMode :: enum s32 {
        VISIBILITY_RANGE_FADE_DISABLED :: 0;
        VISIBILITY_RANGE_FADE_SELF :: 1;
        VISIBILITY_RANGE_FADE_DEPENDENCIES :: 2;
    }
}

Gradient :: struct {    // 297

        #as using base: OpaqueClass;

    InterpolationMode :: enum s32 {
        GRADIENT_INTERPOLATE_LINEAR :: 0;
        GRADIENT_INTERPOLATE_CONSTANT :: 1;
        GRADIENT_INTERPOLATE_CUBIC :: 2;
    }

    ColorSpace :: enum s32 {
        GRADIENT_COLOR_SPACE_SRGB :: 0;
        GRADIENT_COLOR_SPACE_LINEAR_SRGB :: 1;
        GRADIENT_COLOR_SPACE_OKLAB :: 2;
    }
}

GradientTexture1D :: struct { #as using base: OpaqueClass; } // 298

GradientTexture2D :: struct {    // 299

        #as using base: OpaqueClass;

    Fill :: enum s32 {
        FILL_LINEAR :: 0;
        FILL_RADIAL :: 1;
        FILL_SQUARE :: 2;
    }

    Repeat :: enum s32 {
        REPEAT_NONE :: 0;
        REPEAT :: 1;
        REPEAT_MIRROR :: 2;
    }
}

GraphEdit :: struct {    // 300

        #as using base: OpaqueClass;

    PanningScheme :: enum s32 {
        SCROLL_ZOOMS :: 0;
        SCROLL_PANS :: 1;
    }

    GridPattern :: enum s32 {
        GRID_PATTERN_LINES :: 0;
        GRID_PATTERN_DOTS :: 1;
    }
}

GraphElement :: struct { #as using base: OpaqueClass; } // 301

GraphNode :: struct { #as using base: OpaqueClass; } // 302

GridContainer :: struct { #as using base: OpaqueClass; } // 303

GridMap :: struct { #as using base: OpaqueClass; } // 304

GrooveJoint2D :: struct { #as using base: OpaqueClass; } // 305

HBoxContainer :: struct { #as using base: OpaqueClass; } // 306

HFlowContainer :: struct { #as using base: OpaqueClass; } // 307

HMACContext :: struct { #as using base: OpaqueClass; } // 308

HScrollBar :: struct { #as using base: OpaqueClass; } // 309

HSeparator :: struct { #as using base: OpaqueClass; } // 310

HSlider :: struct { #as using base: OpaqueClass; } // 311

HSplitContainer :: struct { #as using base: OpaqueClass; } // 312

HTTPClient :: struct {    // 313

        #as using base: OpaqueClass;

    Method :: enum s32 {
        METHOD_GET :: 0;
        METHOD_HEAD :: 1;
        METHOD_POST :: 2;
        METHOD_PUT :: 3;
        METHOD_DELETE :: 4;
        METHOD_OPTIONS :: 5;
        METHOD_TRACE :: 6;
        METHOD_CONNECT :: 7;
        METHOD_PATCH :: 8;
        METHOD_MAX :: 9;
    }

    Status :: enum s32 {
        STATUS_DISCONNECTED :: 0;
        STATUS_RESOLVING :: 1;
        STATUS_CANT_RESOLVE :: 2;
        STATUS_CONNECTING :: 3;
        STATUS_CANT_CONNECT :: 4;
        STATUS_CONNECTED :: 5;
        STATUS_REQUESTING :: 6;
        STATUS_BODY :: 7;
        STATUS_CONNECTION_ERROR :: 8;
        STATUS_TLS_HANDSHAKE_ERROR :: 9;
    }

    ResponseCode :: enum s32 {
        RESPONSE_CONTINUE :: 100;
        RESPONSE_SWITCHING_PROTOCOLS :: 101;
        RESPONSE_PROCESSING :: 102;
        RESPONSE_OK :: 200;
        RESPONSE_CREATED :: 201;
        RESPONSE_ACCEPTED :: 202;
        RESPONSE_NON_AUTHORITATIVE_INFORMATION :: 203;
        RESPONSE_NO_CONTENT :: 204;
        RESPONSE_RESET_CONTENT :: 205;
        RESPONSE_PARTIAL_CONTENT :: 206;
        RESPONSE_MULTI_STATUS :: 207;
        RESPONSE_ALREADY_REPORTED :: 208;
        RESPONSE_IM_USED :: 226;
        RESPONSE_MULTIPLE_CHOICES :: 300;
        RESPONSE_MOVED_PERMANENTLY :: 301;
        RESPONSE_FOUND :: 302;
        RESPONSE_SEE_OTHER :: 303;
        RESPONSE_NOT_MODIFIED :: 304;
        RESPONSE_USE_PROXY :: 305;
        RESPONSE_SWITCH_PROXY :: 306;
        RESPONSE_TEMPORARY_REDIRECT :: 307;
        RESPONSE_PERMANENT_REDIRECT :: 308;
        RESPONSE_BAD_REQUEST :: 400;
        RESPONSE_UNAUTHORIZED :: 401;
        RESPONSE_PAYMENT_REQUIRED :: 402;
        RESPONSE_FORBIDDEN :: 403;
        RESPONSE_NOT_FOUND :: 404;
        RESPONSE_METHOD_NOT_ALLOWED :: 405;
        RESPONSE_NOT_ACCEPTABLE :: 406;
        RESPONSE_PROXY_AUTHENTICATION_REQUIRED :: 407;
        RESPONSE_REQUEST_TIMEOUT :: 408;
        RESPONSE_CONFLICT :: 409;
        RESPONSE_GONE :: 410;
        RESPONSE_LENGTH_REQUIRED :: 411;
        RESPONSE_PRECONDITION_FAILED :: 412;
        RESPONSE_REQUEST_ENTITY_TOO_LARGE :: 413;
        RESPONSE_REQUEST_URI_TOO_LONG :: 414;
        RESPONSE_UNSUPPORTED_MEDIA_TYPE :: 415;
        RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE :: 416;
        RESPONSE_EXPECTATION_FAILED :: 417;
        RESPONSE_IM_A_TEAPOT :: 418;
        RESPONSE_MISDIRECTED_REQUEST :: 421;
        RESPONSE_UNPROCESSABLE_ENTITY :: 422;
        RESPONSE_LOCKED :: 423;
        RESPONSE_FAILED_DEPENDENCY :: 424;
        RESPONSE_UPGRADE_REQUIRED :: 426;
        RESPONSE_PRECONDITION_REQUIRED :: 428;
        RESPONSE_TOO_MANY_REQUESTS :: 429;
        RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE :: 431;
        RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS :: 451;
        RESPONSE_INTERNAL_SERVER_ERROR :: 500;
        RESPONSE_NOT_IMPLEMENTED :: 501;
        RESPONSE_BAD_GATEWAY :: 502;
        RESPONSE_SERVICE_UNAVAILABLE :: 503;
        RESPONSE_GATEWAY_TIMEOUT :: 504;
        RESPONSE_HTTP_VERSION_NOT_SUPPORTED :: 505;
        RESPONSE_VARIANT_ALSO_NEGOTIATES :: 506;
        RESPONSE_INSUFFICIENT_STORAGE :: 507;
        RESPONSE_LOOP_DETECTED :: 508;
        RESPONSE_NOT_EXTENDED :: 510;
        RESPONSE_NETWORK_AUTH_REQUIRED :: 511;
    }
}

HTTPRequest :: struct {    // 314

        #as using base: OpaqueClass;

    Result :: enum s32 {
        RESULT_SUCCESS :: 0;
        RESULT_CHUNKED_BODY_SIZE_MISMATCH :: 1;
        RESULT_CANT_CONNECT :: 2;
        RESULT_CANT_RESOLVE :: 3;
        RESULT_CONNECTION_ERROR :: 4;
        RESULT_TLS_HANDSHAKE_ERROR :: 5;
        RESULT_NO_RESPONSE :: 6;
        RESULT_BODY_SIZE_LIMIT_EXCEEDED :: 7;
        RESULT_BODY_DECOMPRESS_FAILED :: 8;
        RESULT_REQUEST_FAILED :: 9;
        RESULT_DOWNLOAD_FILE_CANT_OPEN :: 10;
        RESULT_DOWNLOAD_FILE_WRITE_ERROR :: 11;
        RESULT_REDIRECT_LIMIT_REACHED :: 12;
        RESULT_TIMEOUT :: 13;
    }
}

HashingContext :: struct {    // 315

        #as using base: OpaqueClass;

    HashType :: enum s32 {
        HASH_MD5 :: 0;
        HASH_SHA1 :: 1;
        HASH_SHA256 :: 2;
    }
}

HeightMapShape3D :: struct { #as using base: OpaqueClass; } // 316

HingeJoint3D :: struct {    // 317

        #as using base: OpaqueClass;

    Param :: enum s32 {
        PARAM_BIAS :: 0;
        PARAM_LIMIT_UPPER :: 1;
        PARAM_LIMIT_LOWER :: 2;
        PARAM_LIMIT_BIAS :: 3;
        PARAM_LIMIT_SOFTNESS :: 4;
        PARAM_LIMIT_RELAXATION :: 5;
        PARAM_MOTOR_TARGET_VELOCITY :: 6;
        PARAM_MOTOR_MAX_IMPULSE :: 7;
        PARAM_MAX :: 8;
    }

    Flag :: enum s32 {
        FLAG_USE_LIMIT :: 0;
        FLAG_ENABLE_MOTOR :: 1;
        FLAG_MAX :: 2;
    }
}

IP :: struct {    // 318

        #as using base: OpaqueClass;

    ResolverStatus :: enum s32 {
        RESOLVER_STATUS_NONE :: 0;
        RESOLVER_STATUS_WAITING :: 1;
        RESOLVER_STATUS_DONE :: 2;
        RESOLVER_STATUS_ERROR :: 3;
    }

    Type :: enum s32 {
        TYPE_NONE :: 0;
        TYPE_IPV4 :: 1;
        TYPE_IPV6 :: 2;
        TYPE_ANY :: 3;
    }
}

Image :: struct {    // 319

        #as using base: OpaqueClass;

    Format :: enum s32 {
        FORMAT_L8 :: 0;
        FORMAT_LA8 :: 1;
        FORMAT_R8 :: 2;
        FORMAT_RG8 :: 3;
        FORMAT_RGB8 :: 4;
        FORMAT_RGBA8 :: 5;
        FORMAT_RGBA4444 :: 6;
        FORMAT_RGB565 :: 7;
        FORMAT_RF :: 8;
        FORMAT_RGF :: 9;
        FORMAT_RGBF :: 10;
        FORMAT_RGBAF :: 11;
        FORMAT_RH :: 12;
        FORMAT_RGH :: 13;
        FORMAT_RGBH :: 14;
        FORMAT_RGBAH :: 15;
        FORMAT_RGBE9995 :: 16;
        FORMAT_DXT1 :: 17;
        FORMAT_DXT3 :: 18;
        FORMAT_DXT5 :: 19;
        FORMAT_RGTC_R :: 20;
        FORMAT_RGTC_RG :: 21;
        FORMAT_BPTC_RGBA :: 22;
        FORMAT_BPTC_RGBF :: 23;
        FORMAT_BPTC_RGBFU :: 24;
        FORMAT_ETC :: 25;
        FORMAT_ETC2_R11 :: 26;
        FORMAT_ETC2_R11S :: 27;
        FORMAT_ETC2_RG11 :: 28;
        FORMAT_ETC2_RG11S :: 29;
        FORMAT_ETC2_RGB8 :: 30;
        FORMAT_ETC2_RGBA8 :: 31;
        FORMAT_ETC2_RGB8A1 :: 32;
        FORMAT_ETC2_RA_AS_RG :: 33;
        FORMAT_DXT5_RA_AS_RG :: 34;
        FORMAT_ASTC_4x4 :: 35;
        FORMAT_ASTC_4x4_HDR :: 36;
        FORMAT_ASTC_8x8 :: 37;
        FORMAT_ASTC_8x8_HDR :: 38;
        FORMAT_MAX :: 39;
    }

    Interpolation :: enum s32 {
        INTERPOLATE_NEAREST :: 0;
        INTERPOLATE_BILINEAR :: 1;
        INTERPOLATE_CUBIC :: 2;
        INTERPOLATE_TRILINEAR :: 3;
        INTERPOLATE_LANCZOS :: 4;
    }

    AlphaMode :: enum s32 {
        ALPHA_NONE :: 0;
        ALPHA_BIT :: 1;
        ALPHA_BLEND :: 2;
    }

    CompressMode :: enum s32 {
        COMPRESS_S3TC :: 0;
        COMPRESS_ETC :: 1;
        COMPRESS_ETC2 :: 2;
        COMPRESS_BPTC :: 3;
        COMPRESS_ASTC :: 4;
        COMPRESS_MAX :: 5;
    }

    UsedChannels :: enum s32 {
        USED_CHANNELS_L :: 0;
        USED_CHANNELS_LA :: 1;
        USED_CHANNELS_R :: 2;
        USED_CHANNELS_RG :: 3;
        USED_CHANNELS_RGB :: 4;
        USED_CHANNELS_RGBA :: 5;
    }

    CompressSource :: enum s32 {
        COMPRESS_SOURCE_GENERIC :: 0;
        COMPRESS_SOURCE_SRGB :: 1;
        COMPRESS_SOURCE_NORMAL :: 2;
    }

    ASTCFormat :: enum s32 {
        ASTC_FORMAT_4x4 :: 0;
        ASTC_FORMAT_8x8 :: 1;
    }
}

ImageFormatLoader :: struct {    // 320

        #as using base: OpaqueClass;

    LoaderFlags :: enum u64 {
        FLAG_NONE :: 0;
        FLAG_FORCE_LINEAR :: 1;
        FLAG_CONVERT_COLORS :: 2;
    } @bitfield
}

ImageFormatLoaderExtension :: struct { #as using base: OpaqueClass; } // 321

ImageTexture :: struct { #as using base: OpaqueClass; } // 322

ImageTexture3D :: struct { #as using base: OpaqueClass; } // 323

ImageTextureLayered :: struct { #as using base: OpaqueClass; } // 324

ImmediateMesh :: struct { #as using base: OpaqueClass; } // 325

ImporterMesh :: struct { #as using base: OpaqueClass; } // 326

ImporterMeshInstance3D :: struct { #as using base: OpaqueClass; } // 327

Input :: struct {    // 328

        #as using base: OpaqueClass;

    MouseMode :: enum s32 {
        MOUSE_MODE_VISIBLE :: 0;
        MOUSE_MODE_HIDDEN :: 1;
        MOUSE_MODE_CAPTURED :: 2;
        MOUSE_MODE_CONFINED :: 3;
        MOUSE_MODE_CONFINED_HIDDEN :: 4;
    }

    CursorShape :: enum s32 {
        CURSOR_ARROW :: 0;
        CURSOR_IBEAM :: 1;
        CURSOR_POINTING_HAND :: 2;
        CURSOR_CROSS :: 3;
        CURSOR_WAIT :: 4;
        CURSOR_BUSY :: 5;
        CURSOR_DRAG :: 6;
        CURSOR_CAN_DROP :: 7;
        CURSOR_FORBIDDEN :: 8;
        CURSOR_VSIZE :: 9;
        CURSOR_HSIZE :: 10;
        CURSOR_BDIAGSIZE :: 11;
        CURSOR_FDIAGSIZE :: 12;
        CURSOR_MOVE :: 13;
        CURSOR_VSPLIT :: 14;
        CURSOR_HSPLIT :: 15;
        CURSOR_HELP :: 16;
    }
}

InputEvent :: struct { #as using base: OpaqueClass; } // 329

InputEventAction :: struct { #as using base: OpaqueClass; } // 330

InputEventFromWindow :: struct { #as using base: OpaqueClass; } // 331

InputEventGesture :: struct { #as using base: OpaqueClass; } // 332

InputEventJoypadButton :: struct { #as using base: OpaqueClass; } // 333

InputEventJoypadMotion :: struct { #as using base: OpaqueClass; } // 334

InputEventKey :: struct { #as using base: OpaqueClass; } // 335

InputEventMIDI :: struct { #as using base: OpaqueClass; } // 336

InputEventMagnifyGesture :: struct { #as using base: OpaqueClass; } // 337

InputEventMouse :: struct { #as using base: OpaqueClass; } // 338

InputEventMouseButton :: struct { #as using base: OpaqueClass; } // 339

InputEventMouseMotion :: struct { #as using base: OpaqueClass; } // 340

InputEventPanGesture :: struct { #as using base: OpaqueClass; } // 341

InputEventScreenDrag :: struct { #as using base: OpaqueClass; } // 342

InputEventScreenTouch :: struct { #as using base: OpaqueClass; } // 343

InputEventShortcut :: struct { #as using base: OpaqueClass; } // 344

InputEventWithModifiers :: struct { #as using base: OpaqueClass; } // 345

InputMap :: struct { #as using base: OpaqueClass; } // 346

InstancePlaceholder :: struct { #as using base: OpaqueClass; } // 347

IntervalTweener :: struct { #as using base: OpaqueClass; } // 348

ItemList :: struct {    // 349

        #as using base: OpaqueClass;

    IconMode :: enum s32 {
        ICON_MODE_TOP :: 0;
        ICON_MODE_LEFT :: 1;
    }

    SelectMode :: enum s32 {
        SELECT_SINGLE :: 0;
        SELECT_MULTI :: 1;
    }
}

JNISingleton :: struct { #as using base: OpaqueClass; } // 350

JSON :: struct { #as using base: OpaqueClass; } // 351

JSONRPC :: struct {    // 352

        #as using base: OpaqueClass;

    ErrorCode :: enum s32 {
        PARSE_ERROR :: -32700;
        INVALID_REQUEST :: -32600;
        METHOD_NOT_FOUND :: -32601;
        INVALID_PARAMS :: -32602;
        INTERNAL_ERROR :: -32603;
    }
}

JavaClass :: struct { #as using base: OpaqueClass; } // 353

JavaClassWrapper :: struct { #as using base: OpaqueClass; } // 354

JavaScriptBridge :: struct { #as using base: OpaqueClass; } // 355

JavaScriptObject :: struct { #as using base: OpaqueClass; } // 356

Joint2D :: struct { #as using base: OpaqueClass; } // 357

Joint3D :: struct { #as using base: OpaqueClass; } // 358

KinematicCollision2D :: struct { #as using base: OpaqueClass; } // 359

KinematicCollision3D :: struct { #as using base: OpaqueClass; } // 360

Label :: struct { #as using base: OpaqueClass; } // 361

Label3D :: struct {    // 362

        #as using base: OpaqueClass;

    DrawFlags :: enum s32 {
        FLAG_SHADED :: 0;
        FLAG_DOUBLE_SIDED :: 1;
        FLAG_DISABLE_DEPTH_TEST :: 2;
        FLAG_FIXED_SIZE :: 3;
        FLAG_MAX :: 4;
    }

    AlphaCutMode :: enum s32 {
        ALPHA_CUT_DISABLED :: 0;
        ALPHA_CUT_DISCARD :: 1;
        ALPHA_CUT_OPAQUE_PREPASS :: 2;
        ALPHA_CUT_HASH :: 3;
    }
}

LabelSettings :: struct { #as using base: OpaqueClass; } // 363

Light2D :: struct {    // 364

        #as using base: OpaqueClass;

    ShadowFilter :: enum s32 {
        SHADOW_FILTER_NONE :: 0;
        SHADOW_FILTER_PCF5 :: 1;
        SHADOW_FILTER_PCF13 :: 2;
    }

    BlendMode :: enum s32 {
        BLEND_MODE_ADD :: 0;
        BLEND_MODE_SUB :: 1;
        BLEND_MODE_MIX :: 2;
    }
}

Light3D :: struct {    // 365

        #as using base: OpaqueClass;

    Param :: enum s32 {
        PARAM_ENERGY :: 0;
        PARAM_INDIRECT_ENERGY :: 1;
        PARAM_VOLUMETRIC_FOG_ENERGY :: 2;
        PARAM_SPECULAR :: 3;
        PARAM_RANGE :: 4;
        PARAM_SIZE :: 5;
        PARAM_ATTENUATION :: 6;
        PARAM_SPOT_ANGLE :: 7;
        PARAM_SPOT_ATTENUATION :: 8;
        PARAM_SHADOW_MAX_DISTANCE :: 9;
        PARAM_SHADOW_SPLIT_1_OFFSET :: 10;
        PARAM_SHADOW_SPLIT_2_OFFSET :: 11;
        PARAM_SHADOW_SPLIT_3_OFFSET :: 12;
        PARAM_SHADOW_FADE_START :: 13;
        PARAM_SHADOW_NORMAL_BIAS :: 14;
        PARAM_SHADOW_BIAS :: 15;
        PARAM_SHADOW_PANCAKE_SIZE :: 16;
        PARAM_SHADOW_OPACITY :: 17;
        PARAM_SHADOW_BLUR :: 18;
        PARAM_TRANSMITTANCE_BIAS :: 19;
        PARAM_INTENSITY :: 20;
        PARAM_MAX :: 21;
    }

    BakeMode :: enum s32 {
        BAKE_DISABLED :: 0;
        BAKE_STATIC :: 1;
        BAKE_DYNAMIC :: 2;
    }
}

LightOccluder2D :: struct { #as using base: OpaqueClass; } // 366

LightmapGI :: struct {    // 367

        #as using base: OpaqueClass;

    BakeQuality :: enum s32 {
        BAKE_QUALITY_LOW :: 0;
        BAKE_QUALITY_MEDIUM :: 1;
        BAKE_QUALITY_HIGH :: 2;
        BAKE_QUALITY_ULTRA :: 3;
    }

    GenerateProbes :: enum s32 {
        GENERATE_PROBES_DISABLED :: 0;
        GENERATE_PROBES_SUBDIV_4 :: 1;
        GENERATE_PROBES_SUBDIV_8 :: 2;
        GENERATE_PROBES_SUBDIV_16 :: 3;
        GENERATE_PROBES_SUBDIV_32 :: 4;
    }

    BakeError :: enum s32 {
        BAKE_ERROR_OK :: 0;
        BAKE_ERROR_NO_SCENE_ROOT :: 1;
        BAKE_ERROR_FOREIGN_DATA :: 2;
        BAKE_ERROR_NO_LIGHTMAPPER :: 3;
        BAKE_ERROR_NO_SAVE_PATH :: 4;
        BAKE_ERROR_NO_MESHES :: 5;
        BAKE_ERROR_MESHES_INVALID :: 6;
        BAKE_ERROR_CANT_CREATE_IMAGE :: 7;
        BAKE_ERROR_USER_ABORTED :: 8;
        BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL :: 9;
    }

    EnvironmentMode :: enum s32 {
        ENVIRONMENT_MODE_DISABLED :: 0;
        ENVIRONMENT_MODE_SCENE :: 1;
        ENVIRONMENT_MODE_CUSTOM_SKY :: 2;
        ENVIRONMENT_MODE_CUSTOM_COLOR :: 3;
    }
}

LightmapGIData :: struct { #as using base: OpaqueClass; } // 368

LightmapProbe :: struct { #as using base: OpaqueClass; } // 369

Lightmapper :: struct { #as using base: OpaqueClass; } // 370

LightmapperRD :: struct { #as using base: OpaqueClass; } // 371

Line2D :: struct {    // 372

        #as using base: OpaqueClass;

    LineJointMode :: enum s32 {
        LINE_JOINT_SHARP :: 0;
        LINE_JOINT_BEVEL :: 1;
        LINE_JOINT_ROUND :: 2;
    }

    LineCapMode :: enum s32 {
        LINE_CAP_NONE :: 0;
        LINE_CAP_BOX :: 1;
        LINE_CAP_ROUND :: 2;
    }

    LineTextureMode :: enum s32 {
        LINE_TEXTURE_NONE :: 0;
        LINE_TEXTURE_TILE :: 1;
        LINE_TEXTURE_STRETCH :: 2;
    }
}

LineEdit :: struct {    // 373

        #as using base: OpaqueClass;

    MenuItems :: enum s32 {
        MENU_CUT :: 0;
        MENU_COPY :: 1;
        MENU_PASTE :: 2;
        MENU_CLEAR :: 3;
        MENU_SELECT_ALL :: 4;
        MENU_UNDO :: 5;
        MENU_REDO :: 6;
        MENU_SUBMENU_TEXT_DIR :: 7;
        MENU_DIR_INHERITED :: 8;
        MENU_DIR_AUTO :: 9;
        MENU_DIR_LTR :: 10;
        MENU_DIR_RTL :: 11;
        MENU_DISPLAY_UCC :: 12;
        MENU_SUBMENU_INSERT_UCC :: 13;
        MENU_INSERT_LRM :: 14;
        MENU_INSERT_RLM :: 15;
        MENU_INSERT_LRE :: 16;
        MENU_INSERT_RLE :: 17;
        MENU_INSERT_LRO :: 18;
        MENU_INSERT_RLO :: 19;
        MENU_INSERT_PDF :: 20;
        MENU_INSERT_ALM :: 21;
        MENU_INSERT_LRI :: 22;
        MENU_INSERT_RLI :: 23;
        MENU_INSERT_FSI :: 24;
        MENU_INSERT_PDI :: 25;
        MENU_INSERT_ZWJ :: 26;
        MENU_INSERT_ZWNJ :: 27;
        MENU_INSERT_WJ :: 28;
        MENU_INSERT_SHY :: 29;
        MENU_MAX :: 30;
    }

    VirtualKeyboardType :: enum s32 {
        KEYBOARD_TYPE_DEFAULT :: 0;
        KEYBOARD_TYPE_MULTILINE :: 1;
        KEYBOARD_TYPE_NUMBER :: 2;
        KEYBOARD_TYPE_NUMBER_DECIMAL :: 3;
        KEYBOARD_TYPE_PHONE :: 4;
        KEYBOARD_TYPE_EMAIL_ADDRESS :: 5;
        KEYBOARD_TYPE_PASSWORD :: 6;
        KEYBOARD_TYPE_URL :: 7;
    }
}

LinkButton :: struct {    // 374

        #as using base: OpaqueClass;

    UnderlineMode :: enum s32 {
        UNDERLINE_MODE_ALWAYS :: 0;
        UNDERLINE_MODE_ON_HOVER :: 1;
        UNDERLINE_MODE_NEVER :: 2;
    }
}

MainLoop :: struct { #as using base: OpaqueClass; } // 375

MarginContainer :: struct { #as using base: OpaqueClass; } // 376

Marker2D :: struct { #as using base: OpaqueClass; } // 377

Marker3D :: struct { #as using base: OpaqueClass; } // 378

Marshalls :: struct { #as using base: OpaqueClass; } // 379

Material :: struct { #as using base: OpaqueClass; } // 380

MenuBar :: struct { #as using base: OpaqueClass; } // 381

MenuButton :: struct { #as using base: OpaqueClass; } // 382

Mesh :: struct {    // 383

        #as using base: OpaqueClass;

    PrimitiveType :: enum s32 {
        PRIMITIVE_POINTS :: 0;
        PRIMITIVE_LINES :: 1;
        PRIMITIVE_LINE_STRIP :: 2;
        PRIMITIVE_TRIANGLES :: 3;
        PRIMITIVE_TRIANGLE_STRIP :: 4;
    }

    ArrayType :: enum s32 {
        ARRAY_VERTEX :: 0;
        ARRAY_NORMAL :: 1;
        ARRAY_TANGENT :: 2;
        ARRAY_COLOR :: 3;
        ARRAY_TEX_UV :: 4;
        ARRAY_TEX_UV2 :: 5;
        ARRAY_CUSTOM0 :: 6;
        ARRAY_CUSTOM1 :: 7;
        ARRAY_CUSTOM2 :: 8;
        ARRAY_CUSTOM3 :: 9;
        ARRAY_BONES :: 10;
        ARRAY_WEIGHTS :: 11;
        ARRAY_INDEX :: 12;
        ARRAY_MAX :: 13;
    }

    ArrayCustomFormat :: enum s32 {
        ARRAY_CUSTOM_RGBA8_UNORM :: 0;
        ARRAY_CUSTOM_RGBA8_SNORM :: 1;
        ARRAY_CUSTOM_RG_HALF :: 2;
        ARRAY_CUSTOM_RGBA_HALF :: 3;
        ARRAY_CUSTOM_R_FLOAT :: 4;
        ARRAY_CUSTOM_RG_FLOAT :: 5;
        ARRAY_CUSTOM_RGB_FLOAT :: 6;
        ARRAY_CUSTOM_RGBA_FLOAT :: 7;
        ARRAY_CUSTOM_MAX :: 8;
    }

    ArrayFormat :: enum u64 {
        ARRAY_FORMAT_VERTEX :: 1;
        ARRAY_FORMAT_NORMAL :: 2;
        ARRAY_FORMAT_TANGENT :: 4;
        ARRAY_FORMAT_COLOR :: 8;
        ARRAY_FORMAT_TEX_UV :: 16;
        ARRAY_FORMAT_TEX_UV2 :: 32;
        ARRAY_FORMAT_CUSTOM0 :: 64;
        ARRAY_FORMAT_CUSTOM1 :: 128;
        ARRAY_FORMAT_CUSTOM2 :: 256;
        ARRAY_FORMAT_CUSTOM3 :: 512;
        ARRAY_FORMAT_BONES :: 1024;
        ARRAY_FORMAT_WEIGHTS :: 2048;
        ARRAY_FORMAT_INDEX :: 4096;
        ARRAY_FORMAT_BLEND_SHAPE_MASK :: 7;
        ARRAY_FORMAT_CUSTOM_BASE :: 13;
        ARRAY_FORMAT_CUSTOM_BITS :: 3;
        ARRAY_FORMAT_CUSTOM0_SHIFT :: 13;
        ARRAY_FORMAT_CUSTOM1_SHIFT :: 16;
        ARRAY_FORMAT_CUSTOM2_SHIFT :: 19;
        ARRAY_FORMAT_CUSTOM3_SHIFT :: 22;
        ARRAY_FORMAT_CUSTOM_MASK :: 7;
        ARRAY_COMPRESS_FLAGS_BASE :: 25;
        ARRAY_FLAG_USE_2D_VERTICES :: 33554432;
        ARRAY_FLAG_USE_DYNAMIC_UPDATE :: 67108864;
        ARRAY_FLAG_USE_8_BONE_WEIGHTS :: 134217728;
        ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY :: 268435456;
        ARRAY_FLAG_COMPRESS_ATTRIBUTES :: 536870912;
    } @bitfield

    BlendShapeMode :: enum s32 {
        BLEND_SHAPE_MODE_NORMALIZED :: 0;
        BLEND_SHAPE_MODE_RELATIVE :: 1;
    }
}

MeshConvexDecompositionSettings :: struct {    // 384

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        CONVEX_DECOMPOSITION_MODE_VOXEL :: 0;
        CONVEX_DECOMPOSITION_MODE_TETRAHEDRON :: 1;
    }
}

MeshDataTool :: struct { #as using base: OpaqueClass; } // 385

MeshInstance2D :: struct { #as using base: OpaqueClass; } // 386

MeshInstance3D :: struct { #as using base: OpaqueClass; } // 387

MeshLibrary :: struct { #as using base: OpaqueClass; } // 388

MeshTexture :: struct { #as using base: OpaqueClass; } // 389

MethodTweener :: struct { #as using base: OpaqueClass; } // 390

MissingNode :: struct { #as using base: OpaqueClass; } // 391

MissingResource :: struct { #as using base: OpaqueClass; } // 392

MobileVRInterface :: struct { #as using base: OpaqueClass; } // 393

MovieWriter :: struct { #as using base: OpaqueClass; } // 394

MultiMesh :: struct {    // 395

        #as using base: OpaqueClass;

    TransformFormat :: enum s32 {
        TRANSFORM_2D :: 0;
        TRANSFORM_3D :: 1;
    }
}

MultiMeshInstance2D :: struct { #as using base: OpaqueClass; } // 396

MultiMeshInstance3D :: struct { #as using base: OpaqueClass; } // 397

MultiplayerAPI :: struct {    // 398

        #as using base: OpaqueClass;

    RPCMode :: enum s32 {
        RPC_MODE_DISABLED :: 0;
        RPC_MODE_ANY_PEER :: 1;
        RPC_MODE_AUTHORITY :: 2;
    }
}

MultiplayerAPIExtension :: struct { #as using base: OpaqueClass; } // 399

MultiplayerPeer :: struct {    // 400

        #as using base: OpaqueClass;

    ConnectionStatus :: enum s32 {
        CONNECTION_DISCONNECTED :: 0;
        CONNECTION_CONNECTING :: 1;
        CONNECTION_CONNECTED :: 2;
    }

    TransferMode :: enum s32 {
        TRANSFER_MODE_UNRELIABLE :: 0;
        TRANSFER_MODE_UNRELIABLE_ORDERED :: 1;
        TRANSFER_MODE_RELIABLE :: 2;
    }
}

MultiplayerPeerExtension :: struct { #as using base: OpaqueClass; } // 401

MultiplayerSpawner :: struct { #as using base: OpaqueClass; } // 402

MultiplayerSynchronizer :: struct {    // 403

        #as using base: OpaqueClass;

    VisibilityUpdateMode :: enum s32 {
        VISIBILITY_PROCESS_IDLE :: 0;
        VISIBILITY_PROCESS_PHYSICS :: 1;
        VISIBILITY_PROCESS_NONE :: 2;
    }
}

Mutex :: struct { #as using base: OpaqueClass; } // 404

NativeMenu :: struct {    // 405

        #as using base: OpaqueClass;

    Feature :: enum s32 {
        FEATURE_GLOBAL_MENU :: 0;
        FEATURE_POPUP_MENU :: 1;
        FEATURE_OPEN_CLOSE_CALLBACK :: 2;
        FEATURE_HOVER_CALLBACK :: 3;
        FEATURE_KEY_CALLBACK :: 4;
    }

    SystemMenus :: enum s32 {
        INVALID_MENU_ID :: 0;
        MAIN_MENU_ID :: 1;
        APPLICATION_MENU_ID :: 2;
        WINDOW_MENU_ID :: 3;
        HELP_MENU_ID :: 4;
        DOCK_MENU_ID :: 5;
    }
}

NavigationAgent2D :: struct { #as using base: OpaqueClass; } // 406

NavigationAgent3D :: struct { #as using base: OpaqueClass; } // 407

NavigationLink2D :: struct { #as using base: OpaqueClass; } // 408

NavigationLink3D :: struct { #as using base: OpaqueClass; } // 409

NavigationMesh :: struct {    // 410

        #as using base: OpaqueClass;

    SamplePartitionType :: enum s32 {
        SAMPLE_PARTITION_WATERSHED :: 0;
        SAMPLE_PARTITION_MONOTONE :: 1;
        SAMPLE_PARTITION_LAYERS :: 2;
        SAMPLE_PARTITION_MAX :: 3;
    }

    ParsedGeometryType :: enum s32 {
        PARSED_GEOMETRY_MESH_INSTANCES :: 0;
        PARSED_GEOMETRY_STATIC_COLLIDERS :: 1;
        PARSED_GEOMETRY_BOTH :: 2;
        PARSED_GEOMETRY_MAX :: 3;
    }

    SourceGeometryMode :: enum s32 {
        SOURCE_GEOMETRY_ROOT_NODE_CHILDREN :: 0;
        SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN :: 1;
        SOURCE_GEOMETRY_GROUPS_EXPLICIT :: 2;
        SOURCE_GEOMETRY_MAX :: 3;
    }
}

NavigationMeshGenerator :: struct { #as using base: OpaqueClass; } // 411

NavigationMeshSourceGeometryData2D :: struct { #as using base: OpaqueClass; } // 412

NavigationMeshSourceGeometryData3D :: struct { #as using base: OpaqueClass; } // 413

NavigationObstacle2D :: struct { #as using base: OpaqueClass; } // 414

NavigationObstacle3D :: struct { #as using base: OpaqueClass; } // 415

NavigationPathQueryParameters2D :: struct {    // 416

        #as using base: OpaqueClass;

    PathfindingAlgorithm :: enum s32 {
        PATHFINDING_ALGORITHM_ASTAR :: 0;
    }

    PathPostProcessing :: enum s32 {
        PATH_POSTPROCESSING_CORRIDORFUNNEL :: 0;
        PATH_POSTPROCESSING_EDGECENTERED :: 1;
    }

    PathMetadataFlags :: enum u64 {
        PATH_METADATA_INCLUDE_NONE :: 0;
        PATH_METADATA_INCLUDE_TYPES :: 1;
        PATH_METADATA_INCLUDE_RIDS :: 2;
        PATH_METADATA_INCLUDE_OWNERS :: 4;
        PATH_METADATA_INCLUDE_ALL :: 7;
    } @bitfield
}

NavigationPathQueryParameters3D :: struct {    // 417

        #as using base: OpaqueClass;

    PathfindingAlgorithm :: enum s32 {
        PATHFINDING_ALGORITHM_ASTAR :: 0;
    }

    PathPostProcessing :: enum s32 {
        PATH_POSTPROCESSING_CORRIDORFUNNEL :: 0;
        PATH_POSTPROCESSING_EDGECENTERED :: 1;
    }

    PathMetadataFlags :: enum u64 {
        PATH_METADATA_INCLUDE_NONE :: 0;
        PATH_METADATA_INCLUDE_TYPES :: 1;
        PATH_METADATA_INCLUDE_RIDS :: 2;
        PATH_METADATA_INCLUDE_OWNERS :: 4;
        PATH_METADATA_INCLUDE_ALL :: 7;
    } @bitfield
}

NavigationPathQueryResult2D :: struct {    // 418

        #as using base: OpaqueClass;

    PathSegmentType :: enum s32 {
        PATH_SEGMENT_TYPE_REGION :: 0;
        PATH_SEGMENT_TYPE_LINK :: 1;
    }
}

NavigationPathQueryResult3D :: struct {    // 419

        #as using base: OpaqueClass;

    PathSegmentType :: enum s32 {
        PATH_SEGMENT_TYPE_REGION :: 0;
        PATH_SEGMENT_TYPE_LINK :: 1;
    }
}

NavigationPolygon :: struct {    // 420

        #as using base: OpaqueClass;

    ParsedGeometryType :: enum s32 {
        PARSED_GEOMETRY_MESH_INSTANCES :: 0;
        PARSED_GEOMETRY_STATIC_COLLIDERS :: 1;
        PARSED_GEOMETRY_BOTH :: 2;
        PARSED_GEOMETRY_MAX :: 3;
    }

    SourceGeometryMode :: enum s32 {
        SOURCE_GEOMETRY_ROOT_NODE_CHILDREN :: 0;
        SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN :: 1;
        SOURCE_GEOMETRY_GROUPS_EXPLICIT :: 2;
        SOURCE_GEOMETRY_MAX :: 3;
    }
}

NavigationRegion2D :: struct { #as using base: OpaqueClass; } // 421

NavigationRegion3D :: struct { #as using base: OpaqueClass; } // 422

NavigationServer2D :: struct { #as using base: OpaqueClass; } // 423

NavigationServer3D :: struct {    // 424

        #as using base: OpaqueClass;

    ProcessInfo :: enum s32 {
        INFO_ACTIVE_MAPS :: 0;
        INFO_REGION_COUNT :: 1;
        INFO_AGENT_COUNT :: 2;
        INFO_LINK_COUNT :: 3;
        INFO_POLYGON_COUNT :: 4;
        INFO_EDGE_COUNT :: 5;
        INFO_EDGE_MERGE_COUNT :: 6;
        INFO_EDGE_CONNECTION_COUNT :: 7;
        INFO_EDGE_FREE_COUNT :: 8;
    }
}

NinePatchRect :: struct {    // 425

        #as using base: OpaqueClass;

    AxisStretchMode :: enum s32 {
        AXIS_STRETCH_MODE_STRETCH :: 0;
        AXIS_STRETCH_MODE_TILE :: 1;
        AXIS_STRETCH_MODE_TILE_FIT :: 2;
    }
}

Node :: struct {    // 426

        #as using base: OpaqueClass;

    ProcessMode :: enum s32 {
        PROCESS_MODE_INHERIT :: 0;
        PROCESS_MODE_PAUSABLE :: 1;
        PROCESS_MODE_WHEN_PAUSED :: 2;
        PROCESS_MODE_ALWAYS :: 3;
        PROCESS_MODE_DISABLED :: 4;
    }

    ProcessThreadGroup :: enum s32 {
        PROCESS_THREAD_GROUP_INHERIT :: 0;
        PROCESS_THREAD_GROUP_MAIN_THREAD :: 1;
        PROCESS_THREAD_GROUP_SUB_THREAD :: 2;
    }

    ProcessThreadMessages :: enum u64 {
        FLAG_PROCESS_THREAD_MESSAGES :: 1;
        FLAG_PROCESS_THREAD_MESSAGES_PHYSICS :: 2;
        FLAG_PROCESS_THREAD_MESSAGES_ALL :: 3;
    } @bitfield

    DuplicateFlags :: enum s32 {
        DUPLICATE_SIGNALS :: 1;
        DUPLICATE_GROUPS :: 2;
        DUPLICATE_SCRIPTS :: 4;
        DUPLICATE_USE_INSTANTIATION :: 8;
    }

    InternalMode :: enum s32 {
        INTERNAL_MODE_DISABLED :: 0;
        INTERNAL_MODE_FRONT :: 1;
        INTERNAL_MODE_BACK :: 2;
    }

    AutoTranslateMode :: enum s32 {
        AUTO_TRANSLATE_MODE_INHERIT :: 0;
        AUTO_TRANSLATE_MODE_ALWAYS :: 1;
        AUTO_TRANSLATE_MODE_DISABLED :: 2;
    }
}

Node2D :: struct { #as using base: OpaqueClass; } // 427

Node3D :: struct {    // 428

        #as using base: OpaqueClass;

    RotationEditMode :: enum s32 {
        ROTATION_EDIT_MODE_EULER :: 0;
        ROTATION_EDIT_MODE_QUATERNION :: 1;
        ROTATION_EDIT_MODE_BASIS :: 2;
    }
}

Node3DGizmo :: struct { #as using base: OpaqueClass; } // 429

Noise :: struct { #as using base: OpaqueClass; } // 430

NoiseTexture2D :: struct { #as using base: OpaqueClass; } // 431

NoiseTexture3D :: struct { #as using base: OpaqueClass; } // 432

ORMMaterial3D :: struct { #as using base: OpaqueClass; } // 433

OS :: struct {    // 434

        #as using base: OpaqueClass;

    RenderingDriver :: enum s32 {
        RENDERING_DRIVER_VULKAN :: 0;
        RENDERING_DRIVER_OPENGL3 :: 1;
        RENDERING_DRIVER_D3D12 :: 2;
    }

    SystemDir :: enum s32 {
        SYSTEM_DIR_DESKTOP :: 0;
        SYSTEM_DIR_DCIM :: 1;
        SYSTEM_DIR_DOCUMENTS :: 2;
        SYSTEM_DIR_DOWNLOADS :: 3;
        SYSTEM_DIR_MOVIES :: 4;
        SYSTEM_DIR_MUSIC :: 5;
        SYSTEM_DIR_PICTURES :: 6;
        SYSTEM_DIR_RINGTONES :: 7;
    }
}

Object :: struct {    // 435

        #as using base: OpaqueClass;

    ConnectFlags :: enum s32 {
        CONNECT_DEFERRED :: 1;
        CONNECT_PERSIST :: 2;
        CONNECT_ONE_SHOT :: 4;
        CONNECT_REFERENCE_COUNTED :: 8;
    }
}

Occluder3D :: struct { #as using base: OpaqueClass; } // 436

OccluderInstance3D :: struct { #as using base: OpaqueClass; } // 437

OccluderPolygon2D :: struct {    // 438

        #as using base: OpaqueClass;

    CullMode :: enum s32 {
        CULL_DISABLED :: 0;
        CULL_CLOCKWISE :: 1;
        CULL_COUNTER_CLOCKWISE :: 2;
    }
}

OfflineMultiplayerPeer :: struct { #as using base: OpaqueClass; } // 439

OggPacketSequence :: struct { #as using base: OpaqueClass; } // 440

OggPacketSequencePlayback :: struct { #as using base: OpaqueClass; } // 441

OmniLight3D :: struct {    // 442

        #as using base: OpaqueClass;

    ShadowMode :: enum s32 {
        SHADOW_DUAL_PARABOLOID :: 0;
        SHADOW_CUBE :: 1;
    }
}

OpenXRAPIExtension :: struct {    // 443

        #as using base: OpaqueClass;

    OpenXRAlphaBlendModeSupport :: enum s32 {
        OPENXR_ALPHA_BLEND_MODE_SUPPORT_NONE :: 0;
        OPENXR_ALPHA_BLEND_MODE_SUPPORT_REAL :: 1;
        OPENXR_ALPHA_BLEND_MODE_SUPPORT_EMULATING :: 2;
    }
}

OpenXRAction :: struct {    // 444

        #as using base: OpaqueClass;

    ActionType :: enum s32 {
        OPENXR_ACTION_BOOL :: 0;
        OPENXR_ACTION_FLOAT :: 1;
        OPENXR_ACTION_VECTOR2 :: 2;
        OPENXR_ACTION_POSE :: 3;
    }
}

OpenXRActionMap :: struct { #as using base: OpaqueClass; } // 445

OpenXRActionSet :: struct { #as using base: OpaqueClass; } // 446

OpenXRExtensionWrapperExtension :: struct { #as using base: OpaqueClass; } // 447

OpenXRHand :: struct {    // 448

        #as using base: OpaqueClass;

    Hands :: enum s32 {
        HAND_LEFT :: 0;
        HAND_RIGHT :: 1;
        HAND_MAX :: 2;
    }

    MotionRange :: enum s32 {
        MOTION_RANGE_UNOBSTRUCTED :: 0;
        MOTION_RANGE_CONFORM_TO_CONTROLLER :: 1;
        MOTION_RANGE_MAX :: 2;
    }

    SkeletonRig :: enum s32 {
        SKELETON_RIG_OPENXR :: 0;
        SKELETON_RIG_HUMANOID :: 1;
        SKELETON_RIG_MAX :: 2;
    }

    BoneUpdate :: enum s32 {
        BONE_UPDATE_FULL :: 0;
        BONE_UPDATE_ROTATION_ONLY :: 1;
        BONE_UPDATE_MAX :: 2;
    }
}

OpenXRIPBinding :: struct { #as using base: OpaqueClass; } // 449

OpenXRInteractionProfile :: struct { #as using base: OpaqueClass; } // 450

OpenXRInteractionProfileMetadata :: struct { #as using base: OpaqueClass; } // 451

OpenXRInterface :: struct {    // 452

        #as using base: OpaqueClass;

    Hand :: enum s32 {
        HAND_LEFT :: 0;
        HAND_RIGHT :: 1;
        HAND_MAX :: 2;
    }

    HandMotionRange :: enum s32 {
        HAND_MOTION_RANGE_UNOBSTRUCTED :: 0;
        HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER :: 1;
        HAND_MOTION_RANGE_MAX :: 2;
    }

    HandTrackedSource :: enum s32 {
        HAND_TRACKED_SOURCE_UNKNOWN :: 0;
        HAND_TRACKED_SOURCE_UNOBSTRUCTED :: 1;
        HAND_TRACKED_SOURCE_CONTROLLER :: 2;
        HAND_TRACKED_SOURCE_MAX :: 3;
    }

    HandJoints :: enum s32 {
        HAND_JOINT_PALM :: 0;
        HAND_JOINT_WRIST :: 1;
        HAND_JOINT_THUMB_METACARPAL :: 2;
        HAND_JOINT_THUMB_PROXIMAL :: 3;
        HAND_JOINT_THUMB_DISTAL :: 4;
        HAND_JOINT_THUMB_TIP :: 5;
        HAND_JOINT_INDEX_METACARPAL :: 6;
        HAND_JOINT_INDEX_PROXIMAL :: 7;
        HAND_JOINT_INDEX_INTERMEDIATE :: 8;
        HAND_JOINT_INDEX_DISTAL :: 9;
        HAND_JOINT_INDEX_TIP :: 10;
        HAND_JOINT_MIDDLE_METACARPAL :: 11;
        HAND_JOINT_MIDDLE_PROXIMAL :: 12;
        HAND_JOINT_MIDDLE_INTERMEDIATE :: 13;
        HAND_JOINT_MIDDLE_DISTAL :: 14;
        HAND_JOINT_MIDDLE_TIP :: 15;
        HAND_JOINT_RING_METACARPAL :: 16;
        HAND_JOINT_RING_PROXIMAL :: 17;
        HAND_JOINT_RING_INTERMEDIATE :: 18;
        HAND_JOINT_RING_DISTAL :: 19;
        HAND_JOINT_RING_TIP :: 20;
        HAND_JOINT_LITTLE_METACARPAL :: 21;
        HAND_JOINT_LITTLE_PROXIMAL :: 22;
        HAND_JOINT_LITTLE_INTERMEDIATE :: 23;
        HAND_JOINT_LITTLE_DISTAL :: 24;
        HAND_JOINT_LITTLE_TIP :: 25;
        HAND_JOINT_MAX :: 26;
    }

    HandJointFlags :: enum u64 {
        HAND_JOINT_NONE :: 0;
        HAND_JOINT_ORIENTATION_VALID :: 1;
        HAND_JOINT_ORIENTATION_TRACKED :: 2;
        HAND_JOINT_POSITION_VALID :: 4;
        HAND_JOINT_POSITION_TRACKED :: 8;
        HAND_JOINT_LINEAR_VELOCITY_VALID :: 16;
        HAND_JOINT_ANGULAR_VELOCITY_VALID :: 32;
    } @bitfield
}

OptimizedTranslation :: struct { #as using base: OpaqueClass; } // 453

OptionButton :: struct { #as using base: OpaqueClass; } // 454

PCKPacker :: struct { #as using base: OpaqueClass; } // 455

PackedDataContainer :: struct { #as using base: OpaqueClass; } // 456

PackedDataContainerRef :: struct { #as using base: OpaqueClass; } // 457

PackedScene :: struct {    // 458

        #as using base: OpaqueClass;

    GenEditState :: enum s32 {
        GEN_EDIT_STATE_DISABLED :: 0;
        GEN_EDIT_STATE_INSTANCE :: 1;
        GEN_EDIT_STATE_MAIN :: 2;
        GEN_EDIT_STATE_MAIN_INHERITED :: 3;
    }
}

PacketPeer :: struct { #as using base: OpaqueClass; } // 459

PacketPeerDTLS :: struct {    // 460

        #as using base: OpaqueClass;

    Status :: enum s32 {
        STATUS_DISCONNECTED :: 0;
        STATUS_HANDSHAKING :: 1;
        STATUS_CONNECTED :: 2;
        STATUS_ERROR :: 3;
        STATUS_ERROR_HOSTNAME_MISMATCH :: 4;
    }
}

PacketPeerExtension :: struct { #as using base: OpaqueClass; } // 461

PacketPeerStream :: struct { #as using base: OpaqueClass; } // 462

PacketPeerUDP :: struct { #as using base: OpaqueClass; } // 463

Panel :: struct { #as using base: OpaqueClass; } // 464

PanelContainer :: struct { #as using base: OpaqueClass; } // 465

PanoramaSkyMaterial :: struct { #as using base: OpaqueClass; } // 466

Parallax2D :: struct { #as using base: OpaqueClass; } // 467

ParallaxBackground :: struct { #as using base: OpaqueClass; } // 468

ParallaxLayer :: struct { #as using base: OpaqueClass; } // 469

ParticleProcessMaterial :: struct {    // 470

        #as using base: OpaqueClass;

    Parameter :: enum s32 {
        PARAM_INITIAL_LINEAR_VELOCITY :: 0;
        PARAM_ANGULAR_VELOCITY :: 1;
        PARAM_ORBIT_VELOCITY :: 2;
        PARAM_LINEAR_ACCEL :: 3;
        PARAM_RADIAL_ACCEL :: 4;
        PARAM_TANGENTIAL_ACCEL :: 5;
        PARAM_DAMPING :: 6;
        PARAM_ANGLE :: 7;
        PARAM_SCALE :: 8;
        PARAM_HUE_VARIATION :: 9;
        PARAM_ANIM_SPEED :: 10;
        PARAM_ANIM_OFFSET :: 11;
        PARAM_RADIAL_VELOCITY :: 15;
        PARAM_DIRECTIONAL_VELOCITY :: 16;
        PARAM_SCALE_OVER_VELOCITY :: 17;
        PARAM_MAX :: 18;
        PARAM_TURB_VEL_INFLUENCE :: 13;
        PARAM_TURB_INIT_DISPLACEMENT :: 14;
        PARAM_TURB_INFLUENCE_OVER_LIFE :: 12;
    }

    ParticleFlags :: enum s32 {
        PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY :: 0;
        PARTICLE_FLAG_ROTATE_Y :: 1;
        PARTICLE_FLAG_DISABLE_Z :: 2;
        PARTICLE_FLAG_DAMPING_AS_FRICTION :: 3;
        PARTICLE_FLAG_MAX :: 4;
    }

    EmissionShape :: enum s32 {
        EMISSION_SHAPE_POINT :: 0;
        EMISSION_SHAPE_SPHERE :: 1;
        EMISSION_SHAPE_SPHERE_SURFACE :: 2;
        EMISSION_SHAPE_BOX :: 3;
        EMISSION_SHAPE_POINTS :: 4;
        EMISSION_SHAPE_DIRECTED_POINTS :: 5;
        EMISSION_SHAPE_RING :: 6;
        EMISSION_SHAPE_MAX :: 7;
    }

    SubEmitterMode :: enum s32 {
        SUB_EMITTER_DISABLED :: 0;
        SUB_EMITTER_CONSTANT :: 1;
        SUB_EMITTER_AT_END :: 2;
        SUB_EMITTER_AT_COLLISION :: 3;
        SUB_EMITTER_MAX :: 4;
    }

    CollisionMode :: enum s32 {
        COLLISION_DISABLED :: 0;
        COLLISION_RIGID :: 1;
        COLLISION_HIDE_ON_CONTACT :: 2;
        COLLISION_MAX :: 3;
    }
}

Path2D :: struct { #as using base: OpaqueClass; } // 471

Path3D :: struct { #as using base: OpaqueClass; } // 472

PathFollow2D :: struct { #as using base: OpaqueClass; } // 473

PathFollow3D :: struct {    // 474

        #as using base: OpaqueClass;

    RotationMode :: enum s32 {
        ROTATION_NONE :: 0;
        ROTATION_Y :: 1;
        ROTATION_XY :: 2;
        ROTATION_XYZ :: 3;
        ROTATION_ORIENTED :: 4;
    }
}

Performance :: struct {    // 475

        #as using base: OpaqueClass;

    Monitor :: enum s32 {
        TIME_FPS :: 0;
        TIME_PROCESS :: 1;
        TIME_PHYSICS_PROCESS :: 2;
        TIME_NAVIGATION_PROCESS :: 3;
        MEMORY_STATIC :: 4;
        MEMORY_STATIC_MAX :: 5;
        MEMORY_MESSAGE_BUFFER_MAX :: 6;
        OBJECT_COUNT :: 7;
        OBJECT_RESOURCE_COUNT :: 8;
        OBJECT_NODE_COUNT :: 9;
        OBJECT_ORPHAN_NODE_COUNT :: 10;
        RENDER_TOTAL_OBJECTS_IN_FRAME :: 11;
        RENDER_TOTAL_PRIMITIVES_IN_FRAME :: 12;
        RENDER_TOTAL_DRAW_CALLS_IN_FRAME :: 13;
        RENDER_VIDEO_MEM_USED :: 14;
        RENDER_TEXTURE_MEM_USED :: 15;
        RENDER_BUFFER_MEM_USED :: 16;
        PHYSICS_2D_ACTIVE_OBJECTS :: 17;
        PHYSICS_2D_COLLISION_PAIRS :: 18;
        PHYSICS_2D_ISLAND_COUNT :: 19;
        PHYSICS_3D_ACTIVE_OBJECTS :: 20;
        PHYSICS_3D_COLLISION_PAIRS :: 21;
        PHYSICS_3D_ISLAND_COUNT :: 22;
        AUDIO_OUTPUT_LATENCY :: 23;
        NAVIGATION_ACTIVE_MAPS :: 24;
        NAVIGATION_REGION_COUNT :: 25;
        NAVIGATION_AGENT_COUNT :: 26;
        NAVIGATION_LINK_COUNT :: 27;
        NAVIGATION_POLYGON_COUNT :: 28;
        NAVIGATION_EDGE_COUNT :: 29;
        NAVIGATION_EDGE_MERGE_COUNT :: 30;
        NAVIGATION_EDGE_CONNECTION_COUNT :: 31;
        NAVIGATION_EDGE_FREE_COUNT :: 32;
        MONITOR_MAX :: 33;
    }
}

PhysicalBone2D :: struct { #as using base: OpaqueClass; } // 476

PhysicalBone3D :: struct {    // 477

        #as using base: OpaqueClass;

    DampMode :: enum s32 {
        DAMP_MODE_COMBINE :: 0;
        DAMP_MODE_REPLACE :: 1;
    }

    JointType :: enum s32 {
        JOINT_TYPE_NONE :: 0;
        JOINT_TYPE_PIN :: 1;
        JOINT_TYPE_CONE :: 2;
        JOINT_TYPE_HINGE :: 3;
        JOINT_TYPE_SLIDER :: 4;
        JOINT_TYPE_6DOF :: 5;
    }
}

PhysicalSkyMaterial :: struct { #as using base: OpaqueClass; } // 478

PhysicsBody2D :: struct { #as using base: OpaqueClass; } // 479

PhysicsBody3D :: struct { #as using base: OpaqueClass; } // 480

PhysicsDirectBodyState2D :: struct { #as using base: OpaqueClass; } // 481

PhysicsDirectBodyState2DExtension :: struct { #as using base: OpaqueClass; } // 482

PhysicsDirectBodyState3D :: struct { #as using base: OpaqueClass; } // 483

PhysicsDirectBodyState3DExtension :: struct { #as using base: OpaqueClass; } // 484

PhysicsDirectSpaceState2D :: struct { #as using base: OpaqueClass; } // 485

PhysicsDirectSpaceState2DExtension :: struct { #as using base: OpaqueClass; } // 486

PhysicsDirectSpaceState3D :: struct { #as using base: OpaqueClass; } // 487

PhysicsDirectSpaceState3DExtension :: struct { #as using base: OpaqueClass; } // 488

PhysicsMaterial :: struct { #as using base: OpaqueClass; } // 489

PhysicsPointQueryParameters2D :: struct { #as using base: OpaqueClass; } // 490

PhysicsPointQueryParameters3D :: struct { #as using base: OpaqueClass; } // 491

PhysicsRayQueryParameters2D :: struct { #as using base: OpaqueClass; } // 492

PhysicsRayQueryParameters3D :: struct { #as using base: OpaqueClass; } // 493

PhysicsServer2D :: struct {    // 494

        #as using base: OpaqueClass;

    SpaceParameter :: enum s32 {
        SPACE_PARAM_CONTACT_RECYCLE_RADIUS :: 0;
        SPACE_PARAM_CONTACT_MAX_SEPARATION :: 1;
        SPACE_PARAM_CONTACT_MAX_ALLOWED_PENETRATION :: 2;
        SPACE_PARAM_CONTACT_DEFAULT_BIAS :: 3;
        SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD :: 4;
        SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD :: 5;
        SPACE_PARAM_BODY_TIME_TO_SLEEP :: 6;
        SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS :: 7;
        SPACE_PARAM_SOLVER_ITERATIONS :: 8;
    }

    ShapeType :: enum s32 {
        SHAPE_WORLD_BOUNDARY :: 0;
        SHAPE_SEPARATION_RAY :: 1;
        SHAPE_SEGMENT :: 2;
        SHAPE_CIRCLE :: 3;
        SHAPE_RECTANGLE :: 4;
        SHAPE_CAPSULE :: 5;
        SHAPE_CONVEX_POLYGON :: 6;
        SHAPE_CONCAVE_POLYGON :: 7;
        SHAPE_CUSTOM :: 8;
    }

    AreaParameter :: enum s32 {
        AREA_PARAM_GRAVITY_OVERRIDE_MODE :: 0;
        AREA_PARAM_GRAVITY :: 1;
        AREA_PARAM_GRAVITY_VECTOR :: 2;
        AREA_PARAM_GRAVITY_IS_POINT :: 3;
        AREA_PARAM_GRAVITY_POINT_UNIT_DISTANCE :: 4;
        AREA_PARAM_LINEAR_DAMP_OVERRIDE_MODE :: 5;
        AREA_PARAM_LINEAR_DAMP :: 6;
        AREA_PARAM_ANGULAR_DAMP_OVERRIDE_MODE :: 7;
        AREA_PARAM_ANGULAR_DAMP :: 8;
        AREA_PARAM_PRIORITY :: 9;
    }

    AreaSpaceOverrideMode :: enum s32 {
        AREA_SPACE_OVERRIDE_DISABLED :: 0;
        AREA_SPACE_OVERRIDE_COMBINE :: 1;
        AREA_SPACE_OVERRIDE_COMBINE_REPLACE :: 2;
        AREA_SPACE_OVERRIDE_REPLACE :: 3;
        AREA_SPACE_OVERRIDE_REPLACE_COMBINE :: 4;
    }

    BodyMode :: enum s32 {
        BODY_MODE_STATIC :: 0;
        BODY_MODE_KINEMATIC :: 1;
        BODY_MODE_RIGID :: 2;
        BODY_MODE_RIGID_LINEAR :: 3;
    }

    BodyParameter :: enum s32 {
        BODY_PARAM_BOUNCE :: 0;
        BODY_PARAM_FRICTION :: 1;
        BODY_PARAM_MASS :: 2;
        BODY_PARAM_INERTIA :: 3;
        BODY_PARAM_CENTER_OF_MASS :: 4;
        BODY_PARAM_GRAVITY_SCALE :: 5;
        BODY_PARAM_LINEAR_DAMP_MODE :: 6;
        BODY_PARAM_ANGULAR_DAMP_MODE :: 7;
        BODY_PARAM_LINEAR_DAMP :: 8;
        BODY_PARAM_ANGULAR_DAMP :: 9;
        BODY_PARAM_MAX :: 10;
    }

    BodyDampMode :: enum s32 {
        BODY_DAMP_MODE_COMBINE :: 0;
        BODY_DAMP_MODE_REPLACE :: 1;
    }

    BodyState :: enum s32 {
        BODY_STATE_TRANSFORM :: 0;
        BODY_STATE_LINEAR_VELOCITY :: 1;
        BODY_STATE_ANGULAR_VELOCITY :: 2;
        BODY_STATE_SLEEPING :: 3;
        BODY_STATE_CAN_SLEEP :: 4;
    }

    JointType :: enum s32 {
        JOINT_TYPE_PIN :: 0;
        JOINT_TYPE_GROOVE :: 1;
        JOINT_TYPE_DAMPED_SPRING :: 2;
        JOINT_TYPE_MAX :: 3;
    }

    JointParam :: enum s32 {
        JOINT_PARAM_BIAS :: 0;
        JOINT_PARAM_MAX_BIAS :: 1;
        JOINT_PARAM_MAX_FORCE :: 2;
    }

    PinJointParam :: enum s32 {
        PIN_JOINT_SOFTNESS :: 0;
        PIN_JOINT_LIMIT_UPPER :: 1;
        PIN_JOINT_LIMIT_LOWER :: 2;
        PIN_JOINT_MOTOR_TARGET_VELOCITY :: 3;
    }

    PinJointFlag :: enum s32 {
        PIN_JOINT_FLAG_ANGULAR_LIMIT_ENABLED :: 0;
        PIN_JOINT_FLAG_MOTOR_ENABLED :: 1;
    }

    DampedSpringParam :: enum s32 {
        DAMPED_SPRING_REST_LENGTH :: 0;
        DAMPED_SPRING_STIFFNESS :: 1;
        DAMPED_SPRING_DAMPING :: 2;
    }

    CCDMode :: enum s32 {
        CCD_MODE_DISABLED :: 0;
        CCD_MODE_CAST_RAY :: 1;
        CCD_MODE_CAST_SHAPE :: 2;
    }

    AreaBodyStatus :: enum s32 {
        AREA_BODY_ADDED :: 0;
        AREA_BODY_REMOVED :: 1;
    }

    ProcessInfo :: enum s32 {
        INFO_ACTIVE_OBJECTS :: 0;
        INFO_COLLISION_PAIRS :: 1;
        INFO_ISLAND_COUNT :: 2;
    }
}

PhysicsServer2DExtension :: struct { #as using base: OpaqueClass; } // 495

PhysicsServer2DManager :: struct { #as using base: OpaqueClass; } // 496

PhysicsServer3D :: struct {    // 497

        #as using base: OpaqueClass;

    JointType :: enum s32 {
        JOINT_TYPE_PIN :: 0;
        JOINT_TYPE_HINGE :: 1;
        JOINT_TYPE_SLIDER :: 2;
        JOINT_TYPE_CONE_TWIST :: 3;
        JOINT_TYPE_6DOF :: 4;
        JOINT_TYPE_MAX :: 5;
    }

    PinJointParam :: enum s32 {
        PIN_JOINT_BIAS :: 0;
        PIN_JOINT_DAMPING :: 1;
        PIN_JOINT_IMPULSE_CLAMP :: 2;
    }

    HingeJointParam :: enum s32 {
        HINGE_JOINT_BIAS :: 0;
        HINGE_JOINT_LIMIT_UPPER :: 1;
        HINGE_JOINT_LIMIT_LOWER :: 2;
        HINGE_JOINT_LIMIT_BIAS :: 3;
        HINGE_JOINT_LIMIT_SOFTNESS :: 4;
        HINGE_JOINT_LIMIT_RELAXATION :: 5;
        HINGE_JOINT_MOTOR_TARGET_VELOCITY :: 6;
        HINGE_JOINT_MOTOR_MAX_IMPULSE :: 7;
    }

    HingeJointFlag :: enum s32 {
        HINGE_JOINT_FLAG_USE_LIMIT :: 0;
        HINGE_JOINT_FLAG_ENABLE_MOTOR :: 1;
    }

    SliderJointParam :: enum s32 {
        SLIDER_JOINT_LINEAR_LIMIT_UPPER :: 0;
        SLIDER_JOINT_LINEAR_LIMIT_LOWER :: 1;
        SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS :: 2;
        SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION :: 3;
        SLIDER_JOINT_LINEAR_LIMIT_DAMPING :: 4;
        SLIDER_JOINT_LINEAR_MOTION_SOFTNESS :: 5;
        SLIDER_JOINT_LINEAR_MOTION_RESTITUTION :: 6;
        SLIDER_JOINT_LINEAR_MOTION_DAMPING :: 7;
        SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS :: 8;
        SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION :: 9;
        SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING :: 10;
        SLIDER_JOINT_ANGULAR_LIMIT_UPPER :: 11;
        SLIDER_JOINT_ANGULAR_LIMIT_LOWER :: 12;
        SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS :: 13;
        SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION :: 14;
        SLIDER_JOINT_ANGULAR_LIMIT_DAMPING :: 15;
        SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS :: 16;
        SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION :: 17;
        SLIDER_JOINT_ANGULAR_MOTION_DAMPING :: 18;
        SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS :: 19;
        SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION :: 20;
        SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING :: 21;
        SLIDER_JOINT_MAX :: 22;
    }

    ConeTwistJointParam :: enum s32 {
        CONE_TWIST_JOINT_SWING_SPAN :: 0;
        CONE_TWIST_JOINT_TWIST_SPAN :: 1;
        CONE_TWIST_JOINT_BIAS :: 2;
        CONE_TWIST_JOINT_SOFTNESS :: 3;
        CONE_TWIST_JOINT_RELAXATION :: 4;
    }

    G6DOFJointAxisParam :: enum s32 {
        G6DOF_JOINT_LINEAR_LOWER_LIMIT :: 0;
        G6DOF_JOINT_LINEAR_UPPER_LIMIT :: 1;
        G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS :: 2;
        G6DOF_JOINT_LINEAR_RESTITUTION :: 3;
        G6DOF_JOINT_LINEAR_DAMPING :: 4;
        G6DOF_JOINT_LINEAR_MOTOR_TARGET_VELOCITY :: 5;
        G6DOF_JOINT_LINEAR_MOTOR_FORCE_LIMIT :: 6;
        G6DOF_JOINT_ANGULAR_LOWER_LIMIT :: 10;
        G6DOF_JOINT_ANGULAR_UPPER_LIMIT :: 11;
        G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS :: 12;
        G6DOF_JOINT_ANGULAR_DAMPING :: 13;
        G6DOF_JOINT_ANGULAR_RESTITUTION :: 14;
        G6DOF_JOINT_ANGULAR_FORCE_LIMIT :: 15;
        G6DOF_JOINT_ANGULAR_ERP :: 16;
        G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY :: 17;
        G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT :: 18;
    }

    G6DOFJointAxisFlag :: enum s32 {
        G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT :: 0;
        G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT :: 1;
        G6DOF_JOINT_FLAG_ENABLE_MOTOR :: 4;
        G6DOF_JOINT_FLAG_ENABLE_LINEAR_MOTOR :: 5;
    }

    ShapeType :: enum s32 {
        SHAPE_WORLD_BOUNDARY :: 0;
        SHAPE_SEPARATION_RAY :: 1;
        SHAPE_SPHERE :: 2;
        SHAPE_BOX :: 3;
        SHAPE_CAPSULE :: 4;
        SHAPE_CYLINDER :: 5;
        SHAPE_CONVEX_POLYGON :: 6;
        SHAPE_CONCAVE_POLYGON :: 7;
        SHAPE_HEIGHTMAP :: 8;
        SHAPE_SOFT_BODY :: 9;
        SHAPE_CUSTOM :: 10;
    }

    AreaParameter :: enum s32 {
        AREA_PARAM_GRAVITY_OVERRIDE_MODE :: 0;
        AREA_PARAM_GRAVITY :: 1;
        AREA_PARAM_GRAVITY_VECTOR :: 2;
        AREA_PARAM_GRAVITY_IS_POINT :: 3;
        AREA_PARAM_GRAVITY_POINT_UNIT_DISTANCE :: 4;
        AREA_PARAM_LINEAR_DAMP_OVERRIDE_MODE :: 5;
        AREA_PARAM_LINEAR_DAMP :: 6;
        AREA_PARAM_ANGULAR_DAMP_OVERRIDE_MODE :: 7;
        AREA_PARAM_ANGULAR_DAMP :: 8;
        AREA_PARAM_PRIORITY :: 9;
        AREA_PARAM_WIND_FORCE_MAGNITUDE :: 10;
        AREA_PARAM_WIND_SOURCE :: 11;
        AREA_PARAM_WIND_DIRECTION :: 12;
        AREA_PARAM_WIND_ATTENUATION_FACTOR :: 13;
    }

    AreaSpaceOverrideMode :: enum s32 {
        AREA_SPACE_OVERRIDE_DISABLED :: 0;
        AREA_SPACE_OVERRIDE_COMBINE :: 1;
        AREA_SPACE_OVERRIDE_COMBINE_REPLACE :: 2;
        AREA_SPACE_OVERRIDE_REPLACE :: 3;
        AREA_SPACE_OVERRIDE_REPLACE_COMBINE :: 4;
    }

    BodyMode :: enum s32 {
        BODY_MODE_STATIC :: 0;
        BODY_MODE_KINEMATIC :: 1;
        BODY_MODE_RIGID :: 2;
        BODY_MODE_RIGID_LINEAR :: 3;
    }

    BodyParameter :: enum s32 {
        BODY_PARAM_BOUNCE :: 0;
        BODY_PARAM_FRICTION :: 1;
        BODY_PARAM_MASS :: 2;
        BODY_PARAM_INERTIA :: 3;
        BODY_PARAM_CENTER_OF_MASS :: 4;
        BODY_PARAM_GRAVITY_SCALE :: 5;
        BODY_PARAM_LINEAR_DAMP_MODE :: 6;
        BODY_PARAM_ANGULAR_DAMP_MODE :: 7;
        BODY_PARAM_LINEAR_DAMP :: 8;
        BODY_PARAM_ANGULAR_DAMP :: 9;
        BODY_PARAM_MAX :: 10;
    }

    BodyDampMode :: enum s32 {
        BODY_DAMP_MODE_COMBINE :: 0;
        BODY_DAMP_MODE_REPLACE :: 1;
    }

    BodyState :: enum s32 {
        BODY_STATE_TRANSFORM :: 0;
        BODY_STATE_LINEAR_VELOCITY :: 1;
        BODY_STATE_ANGULAR_VELOCITY :: 2;
        BODY_STATE_SLEEPING :: 3;
        BODY_STATE_CAN_SLEEP :: 4;
    }

    AreaBodyStatus :: enum s32 {
        AREA_BODY_ADDED :: 0;
        AREA_BODY_REMOVED :: 1;
    }

    ProcessInfo :: enum s32 {
        INFO_ACTIVE_OBJECTS :: 0;
        INFO_COLLISION_PAIRS :: 1;
        INFO_ISLAND_COUNT :: 2;
    }

    SpaceParameter :: enum s32 {
        SPACE_PARAM_CONTACT_RECYCLE_RADIUS :: 0;
        SPACE_PARAM_CONTACT_MAX_SEPARATION :: 1;
        SPACE_PARAM_CONTACT_MAX_ALLOWED_PENETRATION :: 2;
        SPACE_PARAM_CONTACT_DEFAULT_BIAS :: 3;
        SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD :: 4;
        SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD :: 5;
        SPACE_PARAM_BODY_TIME_TO_SLEEP :: 6;
        SPACE_PARAM_SOLVER_ITERATIONS :: 7;
    }

    BodyAxis :: enum s32 {
        BODY_AXIS_LINEAR_X :: 1;
        BODY_AXIS_LINEAR_Y :: 2;
        BODY_AXIS_LINEAR_Z :: 4;
        BODY_AXIS_ANGULAR_X :: 8;
        BODY_AXIS_ANGULAR_Y :: 16;
        BODY_AXIS_ANGULAR_Z :: 32;
    }
}

PhysicsServer3DExtension :: struct { #as using base: OpaqueClass; } // 498

PhysicsServer3DManager :: struct { #as using base: OpaqueClass; } // 499

PhysicsServer3DRenderingServerHandler :: struct { #as using base: OpaqueClass; } // 500

PhysicsShapeQueryParameters2D :: struct { #as using base: OpaqueClass; } // 501

PhysicsShapeQueryParameters3D :: struct { #as using base: OpaqueClass; } // 502

PhysicsTestMotionParameters2D :: struct { #as using base: OpaqueClass; } // 503

PhysicsTestMotionParameters3D :: struct { #as using base: OpaqueClass; } // 504

PhysicsTestMotionResult2D :: struct { #as using base: OpaqueClass; } // 505

PhysicsTestMotionResult3D :: struct { #as using base: OpaqueClass; } // 506

PinJoint2D :: struct { #as using base: OpaqueClass; } // 507

PinJoint3D :: struct {    // 508

        #as using base: OpaqueClass;

    Param :: enum s32 {
        PARAM_BIAS :: 0;
        PARAM_DAMPING :: 1;
        PARAM_IMPULSE_CLAMP :: 2;
    }
}

PlaceholderCubemap :: struct { #as using base: OpaqueClass; } // 509

PlaceholderCubemapArray :: struct { #as using base: OpaqueClass; } // 510

PlaceholderMaterial :: struct { #as using base: OpaqueClass; } // 511

PlaceholderMesh :: struct { #as using base: OpaqueClass; } // 512

PlaceholderTexture2D :: struct { #as using base: OpaqueClass; } // 513

PlaceholderTexture2DArray :: struct { #as using base: OpaqueClass; } // 514

PlaceholderTexture3D :: struct { #as using base: OpaqueClass; } // 515

PlaceholderTextureLayered :: struct { #as using base: OpaqueClass; } // 516

PlaneMesh :: struct {    // 517

        #as using base: OpaqueClass;

    Orientation :: enum s32 {
        FACE_X :: 0;
        FACE_Y :: 1;
        FACE_Z :: 2;
    }
}

PointLight2D :: struct { #as using base: OpaqueClass; } // 518

PointMesh :: struct { #as using base: OpaqueClass; } // 519

Polygon2D :: struct { #as using base: OpaqueClass; } // 520

PolygonOccluder3D :: struct { #as using base: OpaqueClass; } // 521

PolygonPathFinder :: struct { #as using base: OpaqueClass; } // 522

Popup :: struct { #as using base: OpaqueClass; } // 523

PopupMenu :: struct { #as using base: OpaqueClass; } // 524

PopupPanel :: struct { #as using base: OpaqueClass; } // 525

PortableCompressedTexture2D :: struct {    // 526

        #as using base: OpaqueClass;

    CompressionMode :: enum s32 {
        COMPRESSION_MODE_LOSSLESS :: 0;
        COMPRESSION_MODE_LOSSY :: 1;
        COMPRESSION_MODE_BASIS_UNIVERSAL :: 2;
        COMPRESSION_MODE_S3TC :: 3;
        COMPRESSION_MODE_ETC2 :: 4;
        COMPRESSION_MODE_BPTC :: 5;
    }
}

PrimitiveMesh :: struct { #as using base: OpaqueClass; } // 527

PrismMesh :: struct { #as using base: OpaqueClass; } // 528

ProceduralSkyMaterial :: struct { #as using base: OpaqueClass; } // 529

ProgressBar :: struct {    // 530

        #as using base: OpaqueClass;

    FillMode :: enum s32 {
        FILL_BEGIN_TO_END :: 0;
        FILL_END_TO_BEGIN :: 1;
        FILL_TOP_TO_BOTTOM :: 2;
        FILL_BOTTOM_TO_TOP :: 3;
    }
}

ProjectSettings :: struct { #as using base: OpaqueClass; } // 531

PropertyTweener :: struct { #as using base: OpaqueClass; } // 532

QuadMesh :: struct { #as using base: OpaqueClass; } // 533

QuadOccluder3D :: struct { #as using base: OpaqueClass; } // 534

RDAttachmentFormat :: struct { #as using base: OpaqueClass; } // 535

RDFramebufferPass :: struct { #as using base: OpaqueClass; } // 536

RDPipelineColorBlendState :: struct { #as using base: OpaqueClass; } // 537

RDPipelineColorBlendStateAttachment :: struct { #as using base: OpaqueClass; } // 538

RDPipelineDepthStencilState :: struct { #as using base: OpaqueClass; } // 539

RDPipelineMultisampleState :: struct { #as using base: OpaqueClass; } // 540

RDPipelineRasterizationState :: struct { #as using base: OpaqueClass; } // 541

RDPipelineSpecializationConstant :: struct { #as using base: OpaqueClass; } // 542

RDSamplerState :: struct { #as using base: OpaqueClass; } // 543

RDShaderFile :: struct { #as using base: OpaqueClass; } // 544

RDShaderSPIRV :: struct { #as using base: OpaqueClass; } // 545

RDShaderSource :: struct { #as using base: OpaqueClass; } // 546

RDTextureFormat :: struct { #as using base: OpaqueClass; } // 547

RDTextureView :: struct { #as using base: OpaqueClass; } // 548

RDUniform :: struct { #as using base: OpaqueClass; } // 549

RDVertexAttribute :: struct { #as using base: OpaqueClass; } // 550

RandomNumberGenerator :: struct { #as using base: OpaqueClass; } // 551

Range :: struct { #as using base: OpaqueClass; } // 552

RayCast2D :: struct { #as using base: OpaqueClass; } // 553

RayCast3D :: struct { #as using base: OpaqueClass; } // 554

RectangleShape2D :: struct { #as using base: OpaqueClass; } // 555

RefCounted :: struct { #as using base: OpaqueClass; } // 556

ReferenceRect :: struct { #as using base: OpaqueClass; } // 557

ReflectionProbe :: struct {    // 558

        #as using base: OpaqueClass;

    UpdateMode :: enum s32 {
        UPDATE_ONCE :: 0;
        UPDATE_ALWAYS :: 1;
    }

    AmbientMode :: enum s32 {
        AMBIENT_DISABLED :: 0;
        AMBIENT_ENVIRONMENT :: 1;
        AMBIENT_COLOR :: 2;
    }
}

RegEx :: struct { #as using base: OpaqueClass; } // 559

RegExMatch :: struct { #as using base: OpaqueClass; } // 560

RemoteTransform2D :: struct { #as using base: OpaqueClass; } // 561

RemoteTransform3D :: struct { #as using base: OpaqueClass; } // 562

RenderData :: struct { #as using base: OpaqueClass; } // 563

RenderDataExtension :: struct { #as using base: OpaqueClass; } // 564

RenderDataRD :: struct { #as using base: OpaqueClass; } // 565

RenderSceneBuffers :: struct { #as using base: OpaqueClass; } // 566

RenderSceneBuffersConfiguration :: struct { #as using base: OpaqueClass; } // 567

RenderSceneBuffersExtension :: struct { #as using base: OpaqueClass; } // 568

RenderSceneBuffersRD :: struct { #as using base: OpaqueClass; } // 569

RenderSceneData :: struct { #as using base: OpaqueClass; } // 570

RenderSceneDataExtension :: struct { #as using base: OpaqueClass; } // 571

RenderSceneDataRD :: struct { #as using base: OpaqueClass; } // 572

RenderingDevice :: struct {    // 573

        #as using base: OpaqueClass;

    DeviceType :: enum s32 {
        DEVICE_TYPE_OTHER :: 0;
        DEVICE_TYPE_INTEGRATED_GPU :: 1;
        DEVICE_TYPE_DISCRETE_GPU :: 2;
        DEVICE_TYPE_VIRTUAL_GPU :: 3;
        DEVICE_TYPE_CPU :: 4;
        DEVICE_TYPE_MAX :: 5;
    }

    DriverResource :: enum s32 {
        DRIVER_RESOURCE_LOGICAL_DEVICE :: 0;
        DRIVER_RESOURCE_PHYSICAL_DEVICE :: 1;
        DRIVER_RESOURCE_TOPMOST_OBJECT :: 2;
        DRIVER_RESOURCE_COMMAND_QUEUE :: 3;
        DRIVER_RESOURCE_QUEUE_FAMILY :: 4;
        DRIVER_RESOURCE_TEXTURE :: 5;
        DRIVER_RESOURCE_TEXTURE_VIEW :: 6;
        DRIVER_RESOURCE_TEXTURE_DATA_FORMAT :: 7;
        DRIVER_RESOURCE_SAMPLER :: 8;
        DRIVER_RESOURCE_UNIFORM_SET :: 9;
        DRIVER_RESOURCE_BUFFER :: 10;
        DRIVER_RESOURCE_COMPUTE_PIPELINE :: 11;
        DRIVER_RESOURCE_RENDER_PIPELINE :: 12;
        DRIVER_RESOURCE_VULKAN_DEVICE :: 0;
        DRIVER_RESOURCE_VULKAN_PHYSICAL_DEVICE :: 1;
        DRIVER_RESOURCE_VULKAN_INSTANCE :: 2;
        DRIVER_RESOURCE_VULKAN_QUEUE :: 3;
        DRIVER_RESOURCE_VULKAN_QUEUE_FAMILY_INDEX :: 4;
        DRIVER_RESOURCE_VULKAN_IMAGE :: 5;
        DRIVER_RESOURCE_VULKAN_IMAGE_VIEW :: 6;
        DRIVER_RESOURCE_VULKAN_IMAGE_NATIVE_TEXTURE_FORMAT :: 7;
        DRIVER_RESOURCE_VULKAN_SAMPLER :: 8;
        DRIVER_RESOURCE_VULKAN_DESCRIPTOR_SET :: 9;
        DRIVER_RESOURCE_VULKAN_BUFFER :: 10;
        DRIVER_RESOURCE_VULKAN_COMPUTE_PIPELINE :: 11;
        DRIVER_RESOURCE_VULKAN_RENDER_PIPELINE :: 12;
    }

    DataFormat :: enum s32 {
        DATA_FORMAT_R4G4_UNORM_PACK8 :: 0;
        DATA_FORMAT_R4G4B4A4_UNORM_PACK16 :: 1;
        DATA_FORMAT_B4G4R4A4_UNORM_PACK16 :: 2;
        DATA_FORMAT_R5G6B5_UNORM_PACK16 :: 3;
        DATA_FORMAT_B5G6R5_UNORM_PACK16 :: 4;
        DATA_FORMAT_R5G5B5A1_UNORM_PACK16 :: 5;
        DATA_FORMAT_B5G5R5A1_UNORM_PACK16 :: 6;
        DATA_FORMAT_A1R5G5B5_UNORM_PACK16 :: 7;
        DATA_FORMAT_R8_UNORM :: 8;
        DATA_FORMAT_R8_SNORM :: 9;
        DATA_FORMAT_R8_USCALED :: 10;
        DATA_FORMAT_R8_SSCALED :: 11;
        DATA_FORMAT_R8_UINT :: 12;
        DATA_FORMAT_R8_SINT :: 13;
        DATA_FORMAT_R8_SRGB :: 14;
        DATA_FORMAT_R8G8_UNORM :: 15;
        DATA_FORMAT_R8G8_SNORM :: 16;
        DATA_FORMAT_R8G8_USCALED :: 17;
        DATA_FORMAT_R8G8_SSCALED :: 18;
        DATA_FORMAT_R8G8_UINT :: 19;
        DATA_FORMAT_R8G8_SINT :: 20;
        DATA_FORMAT_R8G8_SRGB :: 21;
        DATA_FORMAT_R8G8B8_UNORM :: 22;
        DATA_FORMAT_R8G8B8_SNORM :: 23;
        DATA_FORMAT_R8G8B8_USCALED :: 24;
        DATA_FORMAT_R8G8B8_SSCALED :: 25;
        DATA_FORMAT_R8G8B8_UINT :: 26;
        DATA_FORMAT_R8G8B8_SINT :: 27;
        DATA_FORMAT_R8G8B8_SRGB :: 28;
        DATA_FORMAT_B8G8R8_UNORM :: 29;
        DATA_FORMAT_B8G8R8_SNORM :: 30;
        DATA_FORMAT_B8G8R8_USCALED :: 31;
        DATA_FORMAT_B8G8R8_SSCALED :: 32;
        DATA_FORMAT_B8G8R8_UINT :: 33;
        DATA_FORMAT_B8G8R8_SINT :: 34;
        DATA_FORMAT_B8G8R8_SRGB :: 35;
        DATA_FORMAT_R8G8B8A8_UNORM :: 36;
        DATA_FORMAT_R8G8B8A8_SNORM :: 37;
        DATA_FORMAT_R8G8B8A8_USCALED :: 38;
        DATA_FORMAT_R8G8B8A8_SSCALED :: 39;
        DATA_FORMAT_R8G8B8A8_UINT :: 40;
        DATA_FORMAT_R8G8B8A8_SINT :: 41;
        DATA_FORMAT_R8G8B8A8_SRGB :: 42;
        DATA_FORMAT_B8G8R8A8_UNORM :: 43;
        DATA_FORMAT_B8G8R8A8_SNORM :: 44;
        DATA_FORMAT_B8G8R8A8_USCALED :: 45;
        DATA_FORMAT_B8G8R8A8_SSCALED :: 46;
        DATA_FORMAT_B8G8R8A8_UINT :: 47;
        DATA_FORMAT_B8G8R8A8_SINT :: 48;
        DATA_FORMAT_B8G8R8A8_SRGB :: 49;
        DATA_FORMAT_A8B8G8R8_UNORM_PACK32 :: 50;
        DATA_FORMAT_A8B8G8R8_SNORM_PACK32 :: 51;
        DATA_FORMAT_A8B8G8R8_USCALED_PACK32 :: 52;
        DATA_FORMAT_A8B8G8R8_SSCALED_PACK32 :: 53;
        DATA_FORMAT_A8B8G8R8_UINT_PACK32 :: 54;
        DATA_FORMAT_A8B8G8R8_SINT_PACK32 :: 55;
        DATA_FORMAT_A8B8G8R8_SRGB_PACK32 :: 56;
        DATA_FORMAT_A2R10G10B10_UNORM_PACK32 :: 57;
        DATA_FORMAT_A2R10G10B10_SNORM_PACK32 :: 58;
        DATA_FORMAT_A2R10G10B10_USCALED_PACK32 :: 59;
        DATA_FORMAT_A2R10G10B10_SSCALED_PACK32 :: 60;
        DATA_FORMAT_A2R10G10B10_UINT_PACK32 :: 61;
        DATA_FORMAT_A2R10G10B10_SINT_PACK32 :: 62;
        DATA_FORMAT_A2B10G10R10_UNORM_PACK32 :: 63;
        DATA_FORMAT_A2B10G10R10_SNORM_PACK32 :: 64;
        DATA_FORMAT_A2B10G10R10_USCALED_PACK32 :: 65;
        DATA_FORMAT_A2B10G10R10_SSCALED_PACK32 :: 66;
        DATA_FORMAT_A2B10G10R10_UINT_PACK32 :: 67;
        DATA_FORMAT_A2B10G10R10_SINT_PACK32 :: 68;
        DATA_FORMAT_R16_UNORM :: 69;
        DATA_FORMAT_R16_SNORM :: 70;
        DATA_FORMAT_R16_USCALED :: 71;
        DATA_FORMAT_R16_SSCALED :: 72;
        DATA_FORMAT_R16_UINT :: 73;
        DATA_FORMAT_R16_SINT :: 74;
        DATA_FORMAT_R16_SFLOAT :: 75;
        DATA_FORMAT_R16G16_UNORM :: 76;
        DATA_FORMAT_R16G16_SNORM :: 77;
        DATA_FORMAT_R16G16_USCALED :: 78;
        DATA_FORMAT_R16G16_SSCALED :: 79;
        DATA_FORMAT_R16G16_UINT :: 80;
        DATA_FORMAT_R16G16_SINT :: 81;
        DATA_FORMAT_R16G16_SFLOAT :: 82;
        DATA_FORMAT_R16G16B16_UNORM :: 83;
        DATA_FORMAT_R16G16B16_SNORM :: 84;
        DATA_FORMAT_R16G16B16_USCALED :: 85;
        DATA_FORMAT_R16G16B16_SSCALED :: 86;
        DATA_FORMAT_R16G16B16_UINT :: 87;
        DATA_FORMAT_R16G16B16_SINT :: 88;
        DATA_FORMAT_R16G16B16_SFLOAT :: 89;
        DATA_FORMAT_R16G16B16A16_UNORM :: 90;
        DATA_FORMAT_R16G16B16A16_SNORM :: 91;
        DATA_FORMAT_R16G16B16A16_USCALED :: 92;
        DATA_FORMAT_R16G16B16A16_SSCALED :: 93;
        DATA_FORMAT_R16G16B16A16_UINT :: 94;
        DATA_FORMAT_R16G16B16A16_SINT :: 95;
        DATA_FORMAT_R16G16B16A16_SFLOAT :: 96;
        DATA_FORMAT_R32_UINT :: 97;
        DATA_FORMAT_R32_SINT :: 98;
        DATA_FORMAT_R32_SFLOAT :: 99;
        DATA_FORMAT_R32G32_UINT :: 100;
        DATA_FORMAT_R32G32_SINT :: 101;
        DATA_FORMAT_R32G32_SFLOAT :: 102;
        DATA_FORMAT_R32G32B32_UINT :: 103;
        DATA_FORMAT_R32G32B32_SINT :: 104;
        DATA_FORMAT_R32G32B32_SFLOAT :: 105;
        DATA_FORMAT_R32G32B32A32_UINT :: 106;
        DATA_FORMAT_R32G32B32A32_SINT :: 107;
        DATA_FORMAT_R32G32B32A32_SFLOAT :: 108;
        DATA_FORMAT_R64_UINT :: 109;
        DATA_FORMAT_R64_SINT :: 110;
        DATA_FORMAT_R64_SFLOAT :: 111;
        DATA_FORMAT_R64G64_UINT :: 112;
        DATA_FORMAT_R64G64_SINT :: 113;
        DATA_FORMAT_R64G64_SFLOAT :: 114;
        DATA_FORMAT_R64G64B64_UINT :: 115;
        DATA_FORMAT_R64G64B64_SINT :: 116;
        DATA_FORMAT_R64G64B64_SFLOAT :: 117;
        DATA_FORMAT_R64G64B64A64_UINT :: 118;
        DATA_FORMAT_R64G64B64A64_SINT :: 119;
        DATA_FORMAT_R64G64B64A64_SFLOAT :: 120;
        DATA_FORMAT_B10G11R11_UFLOAT_PACK32 :: 121;
        DATA_FORMAT_E5B9G9R9_UFLOAT_PACK32 :: 122;
        DATA_FORMAT_D16_UNORM :: 123;
        DATA_FORMAT_X8_D24_UNORM_PACK32 :: 124;
        DATA_FORMAT_D32_SFLOAT :: 125;
        DATA_FORMAT_S8_UINT :: 126;
        DATA_FORMAT_D16_UNORM_S8_UINT :: 127;
        DATA_FORMAT_D24_UNORM_S8_UINT :: 128;
        DATA_FORMAT_D32_SFLOAT_S8_UINT :: 129;
        DATA_FORMAT_BC1_RGB_UNORM_BLOCK :: 130;
        DATA_FORMAT_BC1_RGB_SRGB_BLOCK :: 131;
        DATA_FORMAT_BC1_RGBA_UNORM_BLOCK :: 132;
        DATA_FORMAT_BC1_RGBA_SRGB_BLOCK :: 133;
        DATA_FORMAT_BC2_UNORM_BLOCK :: 134;
        DATA_FORMAT_BC2_SRGB_BLOCK :: 135;
        DATA_FORMAT_BC3_UNORM_BLOCK :: 136;
        DATA_FORMAT_BC3_SRGB_BLOCK :: 137;
        DATA_FORMAT_BC4_UNORM_BLOCK :: 138;
        DATA_FORMAT_BC4_SNORM_BLOCK :: 139;
        DATA_FORMAT_BC5_UNORM_BLOCK :: 140;
        DATA_FORMAT_BC5_SNORM_BLOCK :: 141;
        DATA_FORMAT_BC6H_UFLOAT_BLOCK :: 142;
        DATA_FORMAT_BC6H_SFLOAT_BLOCK :: 143;
        DATA_FORMAT_BC7_UNORM_BLOCK :: 144;
        DATA_FORMAT_BC7_SRGB_BLOCK :: 145;
        DATA_FORMAT_ETC2_R8G8B8_UNORM_BLOCK :: 146;
        DATA_FORMAT_ETC2_R8G8B8_SRGB_BLOCK :: 147;
        DATA_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK :: 148;
        DATA_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK :: 149;
        DATA_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK :: 150;
        DATA_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK :: 151;
        DATA_FORMAT_EAC_R11_UNORM_BLOCK :: 152;
        DATA_FORMAT_EAC_R11_SNORM_BLOCK :: 153;
        DATA_FORMAT_EAC_R11G11_UNORM_BLOCK :: 154;
        DATA_FORMAT_EAC_R11G11_SNORM_BLOCK :: 155;
        DATA_FORMAT_ASTC_4x4_UNORM_BLOCK :: 156;
        DATA_FORMAT_ASTC_4x4_SRGB_BLOCK :: 157;
        DATA_FORMAT_ASTC_5x4_UNORM_BLOCK :: 158;
        DATA_FORMAT_ASTC_5x4_SRGB_BLOCK :: 159;
        DATA_FORMAT_ASTC_5x5_UNORM_BLOCK :: 160;
        DATA_FORMAT_ASTC_5x5_SRGB_BLOCK :: 161;
        DATA_FORMAT_ASTC_6x5_UNORM_BLOCK :: 162;
        DATA_FORMAT_ASTC_6x5_SRGB_BLOCK :: 163;
        DATA_FORMAT_ASTC_6x6_UNORM_BLOCK :: 164;
        DATA_FORMAT_ASTC_6x6_SRGB_BLOCK :: 165;
        DATA_FORMAT_ASTC_8x5_UNORM_BLOCK :: 166;
        DATA_FORMAT_ASTC_8x5_SRGB_BLOCK :: 167;
        DATA_FORMAT_ASTC_8x6_UNORM_BLOCK :: 168;
        DATA_FORMAT_ASTC_8x6_SRGB_BLOCK :: 169;
        DATA_FORMAT_ASTC_8x8_UNORM_BLOCK :: 170;
        DATA_FORMAT_ASTC_8x8_SRGB_BLOCK :: 171;
        DATA_FORMAT_ASTC_10x5_UNORM_BLOCK :: 172;
        DATA_FORMAT_ASTC_10x5_SRGB_BLOCK :: 173;
        DATA_FORMAT_ASTC_10x6_UNORM_BLOCK :: 174;
        DATA_FORMAT_ASTC_10x6_SRGB_BLOCK :: 175;
        DATA_FORMAT_ASTC_10x8_UNORM_BLOCK :: 176;
        DATA_FORMAT_ASTC_10x8_SRGB_BLOCK :: 177;
        DATA_FORMAT_ASTC_10x10_UNORM_BLOCK :: 178;
        DATA_FORMAT_ASTC_10x10_SRGB_BLOCK :: 179;
        DATA_FORMAT_ASTC_12x10_UNORM_BLOCK :: 180;
        DATA_FORMAT_ASTC_12x10_SRGB_BLOCK :: 181;
        DATA_FORMAT_ASTC_12x12_UNORM_BLOCK :: 182;
        DATA_FORMAT_ASTC_12x12_SRGB_BLOCK :: 183;
        DATA_FORMAT_G8B8G8R8_422_UNORM :: 184;
        DATA_FORMAT_B8G8R8G8_422_UNORM :: 185;
        DATA_FORMAT_G8_B8_R8_3PLANE_420_UNORM :: 186;
        DATA_FORMAT_G8_B8R8_2PLANE_420_UNORM :: 187;
        DATA_FORMAT_G8_B8_R8_3PLANE_422_UNORM :: 188;
        DATA_FORMAT_G8_B8R8_2PLANE_422_UNORM :: 189;
        DATA_FORMAT_G8_B8_R8_3PLANE_444_UNORM :: 190;
        DATA_FORMAT_R10X6_UNORM_PACK16 :: 191;
        DATA_FORMAT_R10X6G10X6_UNORM_2PACK16 :: 192;
        DATA_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 :: 193;
        DATA_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 :: 194;
        DATA_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 :: 195;
        DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 :: 196;
        DATA_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 :: 197;
        DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 :: 198;
        DATA_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 :: 199;
        DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 :: 200;
        DATA_FORMAT_R12X4_UNORM_PACK16 :: 201;
        DATA_FORMAT_R12X4G12X4_UNORM_2PACK16 :: 202;
        DATA_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 :: 203;
        DATA_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 :: 204;
        DATA_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 :: 205;
        DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 :: 206;
        DATA_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 :: 207;
        DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 :: 208;
        DATA_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 :: 209;
        DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 :: 210;
        DATA_FORMAT_G16B16G16R16_422_UNORM :: 211;
        DATA_FORMAT_B16G16R16G16_422_UNORM :: 212;
        DATA_FORMAT_G16_B16_R16_3PLANE_420_UNORM :: 213;
        DATA_FORMAT_G16_B16R16_2PLANE_420_UNORM :: 214;
        DATA_FORMAT_G16_B16_R16_3PLANE_422_UNORM :: 215;
        DATA_FORMAT_G16_B16R16_2PLANE_422_UNORM :: 216;
        DATA_FORMAT_G16_B16_R16_3PLANE_444_UNORM :: 217;
        DATA_FORMAT_MAX :: 218;
    }

    BarrierMask :: enum u64 {
        BARRIER_MASK_VERTEX :: 1;
        BARRIER_MASK_FRAGMENT :: 8;
        BARRIER_MASK_COMPUTE :: 2;
        BARRIER_MASK_TRANSFER :: 4;
        BARRIER_MASK_RASTER :: 9;
        BARRIER_MASK_ALL_BARRIERS :: 32767;
        BARRIER_MASK_NO_BARRIER :: 32768;
    } @bitfield

    TextureType :: enum s32 {
        TEXTURE_TYPE_1D :: 0;
        TEXTURE_TYPE_2D :: 1;
        TEXTURE_TYPE_3D :: 2;
        TEXTURE_TYPE_CUBE :: 3;
        TEXTURE_TYPE_1D_ARRAY :: 4;
        TEXTURE_TYPE_2D_ARRAY :: 5;
        TEXTURE_TYPE_CUBE_ARRAY :: 6;
        TEXTURE_TYPE_MAX :: 7;
    }

    TextureSamples :: enum s32 {
        TEXTURE_SAMPLES_1 :: 0;
        TEXTURE_SAMPLES_2 :: 1;
        TEXTURE_SAMPLES_4 :: 2;
        TEXTURE_SAMPLES_8 :: 3;
        TEXTURE_SAMPLES_16 :: 4;
        TEXTURE_SAMPLES_32 :: 5;
        TEXTURE_SAMPLES_64 :: 6;
        TEXTURE_SAMPLES_MAX :: 7;
    }

    TextureUsageBits :: enum u64 {
        TEXTURE_USAGE_SAMPLING_BIT :: 1;
        TEXTURE_USAGE_COLOR_ATTACHMENT_BIT :: 2;
        TEXTURE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT :: 4;
        TEXTURE_USAGE_STORAGE_BIT :: 8;
        TEXTURE_USAGE_STORAGE_ATOMIC_BIT :: 16;
        TEXTURE_USAGE_CPU_READ_BIT :: 32;
        TEXTURE_USAGE_CAN_UPDATE_BIT :: 64;
        TEXTURE_USAGE_CAN_COPY_FROM_BIT :: 128;
        TEXTURE_USAGE_CAN_COPY_TO_BIT :: 256;
        TEXTURE_USAGE_INPUT_ATTACHMENT_BIT :: 512;
    } @bitfield

    TextureSwizzle :: enum s32 {
        TEXTURE_SWIZZLE_IDENTITY :: 0;
        TEXTURE_SWIZZLE_ZERO :: 1;
        TEXTURE_SWIZZLE_ONE :: 2;
        TEXTURE_SWIZZLE_R :: 3;
        TEXTURE_SWIZZLE_G :: 4;
        TEXTURE_SWIZZLE_B :: 5;
        TEXTURE_SWIZZLE_A :: 6;
        TEXTURE_SWIZZLE_MAX :: 7;
    }

    TextureSliceType :: enum s32 {
        TEXTURE_SLICE_2D :: 0;
        TEXTURE_SLICE_CUBEMAP :: 1;
        TEXTURE_SLICE_3D :: 2;
    }

    SamplerFilter :: enum s32 {
        SAMPLER_FILTER_NEAREST :: 0;
        SAMPLER_FILTER_LINEAR :: 1;
    }

    SamplerRepeatMode :: enum s32 {
        SAMPLER_REPEAT_MODE_REPEAT :: 0;
        SAMPLER_REPEAT_MODE_MIRRORED_REPEAT :: 1;
        SAMPLER_REPEAT_MODE_CLAMP_TO_EDGE :: 2;
        SAMPLER_REPEAT_MODE_CLAMP_TO_BORDER :: 3;
        SAMPLER_REPEAT_MODE_MIRROR_CLAMP_TO_EDGE :: 4;
        SAMPLER_REPEAT_MODE_MAX :: 5;
    }

    SamplerBorderColor :: enum s32 {
        SAMPLER_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK :: 0;
        SAMPLER_BORDER_COLOR_INT_TRANSPARENT_BLACK :: 1;
        SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_BLACK :: 2;
        SAMPLER_BORDER_COLOR_INT_OPAQUE_BLACK :: 3;
        SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_WHITE :: 4;
        SAMPLER_BORDER_COLOR_INT_OPAQUE_WHITE :: 5;
        SAMPLER_BORDER_COLOR_MAX :: 6;
    }

    VertexFrequency :: enum s32 {
        VERTEX_FREQUENCY_VERTEX :: 0;
        VERTEX_FREQUENCY_INSTANCE :: 1;
    }

    IndexBufferFormat :: enum s32 {
        INDEX_BUFFER_FORMAT_UINT16 :: 0;
        INDEX_BUFFER_FORMAT_UINT32 :: 1;
    }

    StorageBufferUsage :: enum u64 {
        STORAGE_BUFFER_USAGE_DISPATCH_INDIRECT :: 1;
    } @bitfield

    UniformType :: enum s32 {
        UNIFORM_TYPE_SAMPLER :: 0;
        UNIFORM_TYPE_SAMPLER_WITH_TEXTURE :: 1;
        UNIFORM_TYPE_TEXTURE :: 2;
        UNIFORM_TYPE_IMAGE :: 3;
        UNIFORM_TYPE_TEXTURE_BUFFER :: 4;
        UNIFORM_TYPE_SAMPLER_WITH_TEXTURE_BUFFER :: 5;
        UNIFORM_TYPE_IMAGE_BUFFER :: 6;
        UNIFORM_TYPE_UNIFORM_BUFFER :: 7;
        UNIFORM_TYPE_STORAGE_BUFFER :: 8;
        UNIFORM_TYPE_INPUT_ATTACHMENT :: 9;
        UNIFORM_TYPE_MAX :: 10;
    }

    RenderPrimitive :: enum s32 {
        RENDER_PRIMITIVE_POINTS :: 0;
        RENDER_PRIMITIVE_LINES :: 1;
        RENDER_PRIMITIVE_LINES_WITH_ADJACENCY :: 2;
        RENDER_PRIMITIVE_LINESTRIPS :: 3;
        RENDER_PRIMITIVE_LINESTRIPS_WITH_ADJACENCY :: 4;
        RENDER_PRIMITIVE_TRIANGLES :: 5;
        RENDER_PRIMITIVE_TRIANGLES_WITH_ADJACENCY :: 6;
        RENDER_PRIMITIVE_TRIANGLE_STRIPS :: 7;
        RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_AJACENCY :: 8;
        RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_RESTART_INDEX :: 9;
        RENDER_PRIMITIVE_TESSELATION_PATCH :: 10;
        RENDER_PRIMITIVE_MAX :: 11;
    }

    PolygonCullMode :: enum s32 {
        POLYGON_CULL_DISABLED :: 0;
        POLYGON_CULL_FRONT :: 1;
        POLYGON_CULL_BACK :: 2;
    }

    PolygonFrontFace :: enum s32 {
        POLYGON_FRONT_FACE_CLOCKWISE :: 0;
        POLYGON_FRONT_FACE_COUNTER_CLOCKWISE :: 1;
    }

    StencilOperation :: enum s32 {
        STENCIL_OP_KEEP :: 0;
        STENCIL_OP_ZERO :: 1;
        STENCIL_OP_REPLACE :: 2;
        STENCIL_OP_INCREMENT_AND_CLAMP :: 3;
        STENCIL_OP_DECREMENT_AND_CLAMP :: 4;
        STENCIL_OP_INVERT :: 5;
        STENCIL_OP_INCREMENT_AND_WRAP :: 6;
        STENCIL_OP_DECREMENT_AND_WRAP :: 7;
        STENCIL_OP_MAX :: 8;
    }

    CompareOperator :: enum s32 {
        COMPARE_OP_NEVER :: 0;
        COMPARE_OP_LESS :: 1;
        COMPARE_OP_EQUAL :: 2;
        COMPARE_OP_LESS_OR_EQUAL :: 3;
        COMPARE_OP_GREATER :: 4;
        COMPARE_OP_NOT_EQUAL :: 5;
        COMPARE_OP_GREATER_OR_EQUAL :: 6;
        COMPARE_OP_ALWAYS :: 7;
        COMPARE_OP_MAX :: 8;
    }

    LogicOperation :: enum s32 {
        LOGIC_OP_CLEAR :: 0;
        LOGIC_OP_AND :: 1;
        LOGIC_OP_AND_REVERSE :: 2;
        LOGIC_OP_COPY :: 3;
        LOGIC_OP_AND_INVERTED :: 4;
        LOGIC_OP_NO_OP :: 5;
        LOGIC_OP_XOR :: 6;
        LOGIC_OP_OR :: 7;
        LOGIC_OP_NOR :: 8;
        LOGIC_OP_EQUIVALENT :: 9;
        LOGIC_OP_INVERT :: 10;
        LOGIC_OP_OR_REVERSE :: 11;
        LOGIC_OP_COPY_INVERTED :: 12;
        LOGIC_OP_OR_INVERTED :: 13;
        LOGIC_OP_NAND :: 14;
        LOGIC_OP_SET :: 15;
        LOGIC_OP_MAX :: 16;
    }

    BlendFactor :: enum s32 {
        BLEND_FACTOR_ZERO :: 0;
        BLEND_FACTOR_ONE :: 1;
        BLEND_FACTOR_SRC_COLOR :: 2;
        BLEND_FACTOR_ONE_MINUS_SRC_COLOR :: 3;
        BLEND_FACTOR_DST_COLOR :: 4;
        BLEND_FACTOR_ONE_MINUS_DST_COLOR :: 5;
        BLEND_FACTOR_SRC_ALPHA :: 6;
        BLEND_FACTOR_ONE_MINUS_SRC_ALPHA :: 7;
        BLEND_FACTOR_DST_ALPHA :: 8;
        BLEND_FACTOR_ONE_MINUS_DST_ALPHA :: 9;
        BLEND_FACTOR_CONSTANT_COLOR :: 10;
        BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR :: 11;
        BLEND_FACTOR_CONSTANT_ALPHA :: 12;
        BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA :: 13;
        BLEND_FACTOR_SRC_ALPHA_SATURATE :: 14;
        BLEND_FACTOR_SRC1_COLOR :: 15;
        BLEND_FACTOR_ONE_MINUS_SRC1_COLOR :: 16;
        BLEND_FACTOR_SRC1_ALPHA :: 17;
        BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA :: 18;
        BLEND_FACTOR_MAX :: 19;
    }

    BlendOperation :: enum s32 {
        BLEND_OP_ADD :: 0;
        BLEND_OP_SUBTRACT :: 1;
        BLEND_OP_REVERSE_SUBTRACT :: 2;
        BLEND_OP_MINIMUM :: 3;
        BLEND_OP_MAXIMUM :: 4;
        BLEND_OP_MAX :: 5;
    }

    PipelineDynamicStateFlags :: enum u64 {
        DYNAMIC_STATE_LINE_WIDTH :: 1;
        DYNAMIC_STATE_DEPTH_BIAS :: 2;
        DYNAMIC_STATE_BLEND_CONSTANTS :: 4;
        DYNAMIC_STATE_DEPTH_BOUNDS :: 8;
        DYNAMIC_STATE_STENCIL_COMPARE_MASK :: 16;
        DYNAMIC_STATE_STENCIL_WRITE_MASK :: 32;
        DYNAMIC_STATE_STENCIL_REFERENCE :: 64;
    } @bitfield

    InitialAction :: enum s32 {
        INITIAL_ACTION_LOAD :: 0;
        INITIAL_ACTION_CLEAR :: 1;
        INITIAL_ACTION_DISCARD :: 2;
        INITIAL_ACTION_MAX :: 3;
        INITIAL_ACTION_CLEAR_REGION :: 1;
        INITIAL_ACTION_CLEAR_REGION_CONTINUE :: 1;
        INITIAL_ACTION_KEEP :: 0;
        INITIAL_ACTION_DROP :: 2;
        INITIAL_ACTION_CONTINUE :: 0;
    }

    FinalAction :: enum s32 {
        FINAL_ACTION_STORE :: 0;
        FINAL_ACTION_DISCARD :: 1;
        FINAL_ACTION_MAX :: 2;
        FINAL_ACTION_READ :: 0;
        FINAL_ACTION_CONTINUE :: 0;
    }

    ShaderStage :: enum s32 {
        SHADER_STAGE_VERTEX :: 0;
        SHADER_STAGE_FRAGMENT :: 1;
        SHADER_STAGE_TESSELATION_CONTROL :: 2;
        SHADER_STAGE_TESSELATION_EVALUATION :: 3;
        SHADER_STAGE_COMPUTE :: 4;
        SHADER_STAGE_MAX :: 5;
        SHADER_STAGE_VERTEX_BIT :: 1;
        SHADER_STAGE_FRAGMENT_BIT :: 2;
        SHADER_STAGE_TESSELATION_CONTROL_BIT :: 4;
        SHADER_STAGE_TESSELATION_EVALUATION_BIT :: 8;
        SHADER_STAGE_COMPUTE_BIT :: 16;
    }

    ShaderLanguage :: enum s32 {
        SHADER_LANGUAGE_GLSL :: 0;
        SHADER_LANGUAGE_HLSL :: 1;
    }

    PipelineSpecializationConstantType :: enum s32 {
        PIPELINE_SPECIALIZATION_CONSTANT_TYPE_BOOL :: 0;
        PIPELINE_SPECIALIZATION_CONSTANT_TYPE_INT :: 1;
        PIPELINE_SPECIALIZATION_CONSTANT_TYPE_FLOAT :: 2;
    }

    Limit :: enum s32 {
        LIMIT_MAX_BOUND_UNIFORM_SETS :: 0;
        LIMIT_MAX_FRAMEBUFFER_COLOR_ATTACHMENTS :: 1;
        LIMIT_MAX_TEXTURES_PER_UNIFORM_SET :: 2;
        LIMIT_MAX_SAMPLERS_PER_UNIFORM_SET :: 3;
        LIMIT_MAX_STORAGE_BUFFERS_PER_UNIFORM_SET :: 4;
        LIMIT_MAX_STORAGE_IMAGES_PER_UNIFORM_SET :: 5;
        LIMIT_MAX_UNIFORM_BUFFERS_PER_UNIFORM_SET :: 6;
        LIMIT_MAX_DRAW_INDEXED_INDEX :: 7;
        LIMIT_MAX_FRAMEBUFFER_HEIGHT :: 8;
        LIMIT_MAX_FRAMEBUFFER_WIDTH :: 9;
        LIMIT_MAX_TEXTURE_ARRAY_LAYERS :: 10;
        LIMIT_MAX_TEXTURE_SIZE_1D :: 11;
        LIMIT_MAX_TEXTURE_SIZE_2D :: 12;
        LIMIT_MAX_TEXTURE_SIZE_3D :: 13;
        LIMIT_MAX_TEXTURE_SIZE_CUBE :: 14;
        LIMIT_MAX_TEXTURES_PER_SHADER_STAGE :: 15;
        LIMIT_MAX_SAMPLERS_PER_SHADER_STAGE :: 16;
        LIMIT_MAX_STORAGE_BUFFERS_PER_SHADER_STAGE :: 17;
        LIMIT_MAX_STORAGE_IMAGES_PER_SHADER_STAGE :: 18;
        LIMIT_MAX_UNIFORM_BUFFERS_PER_SHADER_STAGE :: 19;
        LIMIT_MAX_PUSH_CONSTANT_SIZE :: 20;
        LIMIT_MAX_UNIFORM_BUFFER_SIZE :: 21;
        LIMIT_MAX_VERTEX_INPUT_ATTRIBUTE_OFFSET :: 22;
        LIMIT_MAX_VERTEX_INPUT_ATTRIBUTES :: 23;
        LIMIT_MAX_VERTEX_INPUT_BINDINGS :: 24;
        LIMIT_MAX_VERTEX_INPUT_BINDING_STRIDE :: 25;
        LIMIT_MIN_UNIFORM_BUFFER_OFFSET_ALIGNMENT :: 26;
        LIMIT_MAX_COMPUTE_SHARED_MEMORY_SIZE :: 27;
        LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_X :: 28;
        LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_Y :: 29;
        LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_Z :: 30;
        LIMIT_MAX_COMPUTE_WORKGROUP_INVOCATIONS :: 31;
        LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_X :: 32;
        LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_Y :: 33;
        LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_Z :: 34;
        LIMIT_MAX_VIEWPORT_DIMENSIONS_X :: 35;
        LIMIT_MAX_VIEWPORT_DIMENSIONS_Y :: 36;
    }

    MemoryType :: enum s32 {
        MEMORY_TEXTURES :: 0;
        MEMORY_BUFFERS :: 1;
        MEMORY_TOTAL :: 2;
    }
}

RenderingServer :: struct {    // 574

        #as using base: OpaqueClass;

    TextureLayeredType :: enum s32 {
        TEXTURE_LAYERED_2D_ARRAY :: 0;
        TEXTURE_LAYERED_CUBEMAP :: 1;
        TEXTURE_LAYERED_CUBEMAP_ARRAY :: 2;
    }

    CubeMapLayer :: enum s32 {
        CUBEMAP_LAYER_LEFT :: 0;
        CUBEMAP_LAYER_RIGHT :: 1;
        CUBEMAP_LAYER_BOTTOM :: 2;
        CUBEMAP_LAYER_TOP :: 3;
        CUBEMAP_LAYER_FRONT :: 4;
        CUBEMAP_LAYER_BACK :: 5;
    }

    ShaderMode :: enum s32 {
        SHADER_SPATIAL :: 0;
        SHADER_CANVAS_ITEM :: 1;
        SHADER_PARTICLES :: 2;
        SHADER_SKY :: 3;
        SHADER_FOG :: 4;
        SHADER_MAX :: 5;
    }

    ArrayType :: enum s32 {
        ARRAY_VERTEX :: 0;
        ARRAY_NORMAL :: 1;
        ARRAY_TANGENT :: 2;
        ARRAY_COLOR :: 3;
        ARRAY_TEX_UV :: 4;
        ARRAY_TEX_UV2 :: 5;
        ARRAY_CUSTOM0 :: 6;
        ARRAY_CUSTOM1 :: 7;
        ARRAY_CUSTOM2 :: 8;
        ARRAY_CUSTOM3 :: 9;
        ARRAY_BONES :: 10;
        ARRAY_WEIGHTS :: 11;
        ARRAY_INDEX :: 12;
        ARRAY_MAX :: 13;
    }

    ArrayCustomFormat :: enum s32 {
        ARRAY_CUSTOM_RGBA8_UNORM :: 0;
        ARRAY_CUSTOM_RGBA8_SNORM :: 1;
        ARRAY_CUSTOM_RG_HALF :: 2;
        ARRAY_CUSTOM_RGBA_HALF :: 3;
        ARRAY_CUSTOM_R_FLOAT :: 4;
        ARRAY_CUSTOM_RG_FLOAT :: 5;
        ARRAY_CUSTOM_RGB_FLOAT :: 6;
        ARRAY_CUSTOM_RGBA_FLOAT :: 7;
        ARRAY_CUSTOM_MAX :: 8;
    }

    ArrayFormat :: enum u64 {
        ARRAY_FORMAT_VERTEX :: 1;
        ARRAY_FORMAT_NORMAL :: 2;
        ARRAY_FORMAT_TANGENT :: 4;
        ARRAY_FORMAT_COLOR :: 8;
        ARRAY_FORMAT_TEX_UV :: 16;
        ARRAY_FORMAT_TEX_UV2 :: 32;
        ARRAY_FORMAT_CUSTOM0 :: 64;
        ARRAY_FORMAT_CUSTOM1 :: 128;
        ARRAY_FORMAT_CUSTOM2 :: 256;
        ARRAY_FORMAT_CUSTOM3 :: 512;
        ARRAY_FORMAT_BONES :: 1024;
        ARRAY_FORMAT_WEIGHTS :: 2048;
        ARRAY_FORMAT_INDEX :: 4096;
        ARRAY_FORMAT_BLEND_SHAPE_MASK :: 7;
        ARRAY_FORMAT_CUSTOM_BASE :: 13;
        ARRAY_FORMAT_CUSTOM_BITS :: 3;
        ARRAY_FORMAT_CUSTOM0_SHIFT :: 13;
        ARRAY_FORMAT_CUSTOM1_SHIFT :: 16;
        ARRAY_FORMAT_CUSTOM2_SHIFT :: 19;
        ARRAY_FORMAT_CUSTOM3_SHIFT :: 22;
        ARRAY_FORMAT_CUSTOM_MASK :: 7;
        ARRAY_COMPRESS_FLAGS_BASE :: 25;
        ARRAY_FLAG_USE_2D_VERTICES :: 33554432;
        ARRAY_FLAG_USE_DYNAMIC_UPDATE :: 67108864;
        ARRAY_FLAG_USE_8_BONE_WEIGHTS :: 134217728;
        ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY :: 268435456;
        ARRAY_FLAG_COMPRESS_ATTRIBUTES :: 536870912;
        ARRAY_FLAG_FORMAT_VERSION_BASE :: 35;
        ARRAY_FLAG_FORMAT_VERSION_SHIFT :: 35;
        ARRAY_FLAG_FORMAT_VERSION_1 :: 0;
        ARRAY_FLAG_FORMAT_VERSION_2 :: 34359738368;
        ARRAY_FLAG_FORMAT_CURRENT_VERSION :: 34359738368;
        ARRAY_FLAG_FORMAT_VERSION_MASK :: 255;
    } @bitfield

    PrimitiveType :: enum s32 {
        PRIMITIVE_POINTS :: 0;
        PRIMITIVE_LINES :: 1;
        PRIMITIVE_LINE_STRIP :: 2;
        PRIMITIVE_TRIANGLES :: 3;
        PRIMITIVE_TRIANGLE_STRIP :: 4;
        PRIMITIVE_MAX :: 5;
    }

    BlendShapeMode :: enum s32 {
        BLEND_SHAPE_MODE_NORMALIZED :: 0;
        BLEND_SHAPE_MODE_RELATIVE :: 1;
    }

    MultimeshTransformFormat :: enum s32 {
        MULTIMESH_TRANSFORM_2D :: 0;
        MULTIMESH_TRANSFORM_3D :: 1;
    }

    LightProjectorFilter :: enum s32 {
        LIGHT_PROJECTOR_FILTER_NEAREST :: 0;
        LIGHT_PROJECTOR_FILTER_LINEAR :: 1;
        LIGHT_PROJECTOR_FILTER_NEAREST_MIPMAPS :: 2;
        LIGHT_PROJECTOR_FILTER_LINEAR_MIPMAPS :: 3;
        LIGHT_PROJECTOR_FILTER_NEAREST_MIPMAPS_ANISOTROPIC :: 4;
        LIGHT_PROJECTOR_FILTER_LINEAR_MIPMAPS_ANISOTROPIC :: 5;
    }

    LightType :: enum s32 {
        LIGHT_DIRECTIONAL :: 0;
        LIGHT_OMNI :: 1;
        LIGHT_SPOT :: 2;
    }

    LightParam :: enum s32 {
        LIGHT_PARAM_ENERGY :: 0;
        LIGHT_PARAM_INDIRECT_ENERGY :: 1;
        LIGHT_PARAM_VOLUMETRIC_FOG_ENERGY :: 2;
        LIGHT_PARAM_SPECULAR :: 3;
        LIGHT_PARAM_RANGE :: 4;
        LIGHT_PARAM_SIZE :: 5;
        LIGHT_PARAM_ATTENUATION :: 6;
        LIGHT_PARAM_SPOT_ANGLE :: 7;
        LIGHT_PARAM_SPOT_ATTENUATION :: 8;
        LIGHT_PARAM_SHADOW_MAX_DISTANCE :: 9;
        LIGHT_PARAM_SHADOW_SPLIT_1_OFFSET :: 10;
        LIGHT_PARAM_SHADOW_SPLIT_2_OFFSET :: 11;
        LIGHT_PARAM_SHADOW_SPLIT_3_OFFSET :: 12;
        LIGHT_PARAM_SHADOW_FADE_START :: 13;
        LIGHT_PARAM_SHADOW_NORMAL_BIAS :: 14;
        LIGHT_PARAM_SHADOW_BIAS :: 15;
        LIGHT_PARAM_SHADOW_PANCAKE_SIZE :: 16;
        LIGHT_PARAM_SHADOW_OPACITY :: 17;
        LIGHT_PARAM_SHADOW_BLUR :: 18;
        LIGHT_PARAM_TRANSMITTANCE_BIAS :: 19;
        LIGHT_PARAM_INTENSITY :: 20;
        LIGHT_PARAM_MAX :: 21;
    }

    LightBakeMode :: enum s32 {
        LIGHT_BAKE_DISABLED :: 0;
        LIGHT_BAKE_STATIC :: 1;
        LIGHT_BAKE_DYNAMIC :: 2;
    }

    LightOmniShadowMode :: enum s32 {
        LIGHT_OMNI_SHADOW_DUAL_PARABOLOID :: 0;
        LIGHT_OMNI_SHADOW_CUBE :: 1;
    }

    LightDirectionalShadowMode :: enum s32 {
        LIGHT_DIRECTIONAL_SHADOW_ORTHOGONAL :: 0;
        LIGHT_DIRECTIONAL_SHADOW_PARALLEL_2_SPLITS :: 1;
        LIGHT_DIRECTIONAL_SHADOW_PARALLEL_4_SPLITS :: 2;
    }

    LightDirectionalSkyMode :: enum s32 {
        LIGHT_DIRECTIONAL_SKY_MODE_LIGHT_AND_SKY :: 0;
        LIGHT_DIRECTIONAL_SKY_MODE_LIGHT_ONLY :: 1;
        LIGHT_DIRECTIONAL_SKY_MODE_SKY_ONLY :: 2;
    }

    ShadowQuality :: enum s32 {
        SHADOW_QUALITY_HARD :: 0;
        SHADOW_QUALITY_SOFT_VERY_LOW :: 1;
        SHADOW_QUALITY_SOFT_LOW :: 2;
        SHADOW_QUALITY_SOFT_MEDIUM :: 3;
        SHADOW_QUALITY_SOFT_HIGH :: 4;
        SHADOW_QUALITY_SOFT_ULTRA :: 5;
        SHADOW_QUALITY_MAX :: 6;
    }

    ReflectionProbeUpdateMode :: enum s32 {
        REFLECTION_PROBE_UPDATE_ONCE :: 0;
        REFLECTION_PROBE_UPDATE_ALWAYS :: 1;
    }

    ReflectionProbeAmbientMode :: enum s32 {
        REFLECTION_PROBE_AMBIENT_DISABLED :: 0;
        REFLECTION_PROBE_AMBIENT_ENVIRONMENT :: 1;
        REFLECTION_PROBE_AMBIENT_COLOR :: 2;
    }

    DecalTexture :: enum s32 {
        DECAL_TEXTURE_ALBEDO :: 0;
        DECAL_TEXTURE_NORMAL :: 1;
        DECAL_TEXTURE_ORM :: 2;
        DECAL_TEXTURE_EMISSION :: 3;
        DECAL_TEXTURE_MAX :: 4;
    }

    DecalFilter :: enum s32 {
        DECAL_FILTER_NEAREST :: 0;
        DECAL_FILTER_LINEAR :: 1;
        DECAL_FILTER_NEAREST_MIPMAPS :: 2;
        DECAL_FILTER_LINEAR_MIPMAPS :: 3;
        DECAL_FILTER_NEAREST_MIPMAPS_ANISOTROPIC :: 4;
        DECAL_FILTER_LINEAR_MIPMAPS_ANISOTROPIC :: 5;
    }

    VoxelGIQuality :: enum s32 {
        VOXEL_GI_QUALITY_LOW :: 0;
        VOXEL_GI_QUALITY_HIGH :: 1;
    }

    ParticlesMode :: enum s32 {
        PARTICLES_MODE_2D :: 0;
        PARTICLES_MODE_3D :: 1;
    }

    ParticlesTransformAlign :: enum s32 {
        PARTICLES_TRANSFORM_ALIGN_DISABLED :: 0;
        PARTICLES_TRANSFORM_ALIGN_Z_BILLBOARD :: 1;
        PARTICLES_TRANSFORM_ALIGN_Y_TO_VELOCITY :: 2;
        PARTICLES_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY :: 3;
    }

    ParticlesDrawOrder :: enum s32 {
        PARTICLES_DRAW_ORDER_INDEX :: 0;
        PARTICLES_DRAW_ORDER_LIFETIME :: 1;
        PARTICLES_DRAW_ORDER_REVERSE_LIFETIME :: 2;
        PARTICLES_DRAW_ORDER_VIEW_DEPTH :: 3;
    }

    ParticlesCollisionType :: enum s32 {
        PARTICLES_COLLISION_TYPE_SPHERE_ATTRACT :: 0;
        PARTICLES_COLLISION_TYPE_BOX_ATTRACT :: 1;
        PARTICLES_COLLISION_TYPE_VECTOR_FIELD_ATTRACT :: 2;
        PARTICLES_COLLISION_TYPE_SPHERE_COLLIDE :: 3;
        PARTICLES_COLLISION_TYPE_BOX_COLLIDE :: 4;
        PARTICLES_COLLISION_TYPE_SDF_COLLIDE :: 5;
        PARTICLES_COLLISION_TYPE_HEIGHTFIELD_COLLIDE :: 6;
    }

    ParticlesCollisionHeightfieldResolution :: enum s32 {
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_256 :: 0;
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_512 :: 1;
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_1024 :: 2;
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_2048 :: 3;
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_4096 :: 4;
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_8192 :: 5;
        PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_MAX :: 6;
    }

    FogVolumeShape :: enum s32 {
        FOG_VOLUME_SHAPE_ELLIPSOID :: 0;
        FOG_VOLUME_SHAPE_CONE :: 1;
        FOG_VOLUME_SHAPE_CYLINDER :: 2;
        FOG_VOLUME_SHAPE_BOX :: 3;
        FOG_VOLUME_SHAPE_WORLD :: 4;
        FOG_VOLUME_SHAPE_MAX :: 5;
    }

    ViewportScaling3DMode :: enum s32 {
        VIEWPORT_SCALING_3D_MODE_BILINEAR :: 0;
        VIEWPORT_SCALING_3D_MODE_FSR :: 1;
        VIEWPORT_SCALING_3D_MODE_FSR2 :: 2;
        VIEWPORT_SCALING_3D_MODE_MAX :: 3;
    }

    ViewportUpdateMode :: enum s32 {
        VIEWPORT_UPDATE_DISABLED :: 0;
        VIEWPORT_UPDATE_ONCE :: 1;
        VIEWPORT_UPDATE_WHEN_VISIBLE :: 2;
        VIEWPORT_UPDATE_WHEN_PARENT_VISIBLE :: 3;
        VIEWPORT_UPDATE_ALWAYS :: 4;
    }

    ViewportClearMode :: enum s32 {
        VIEWPORT_CLEAR_ALWAYS :: 0;
        VIEWPORT_CLEAR_NEVER :: 1;
        VIEWPORT_CLEAR_ONLY_NEXT_FRAME :: 2;
    }

    ViewportEnvironmentMode :: enum s32 {
        VIEWPORT_ENVIRONMENT_DISABLED :: 0;
        VIEWPORT_ENVIRONMENT_ENABLED :: 1;
        VIEWPORT_ENVIRONMENT_INHERIT :: 2;
        VIEWPORT_ENVIRONMENT_MAX :: 3;
    }

    ViewportSDFOversize :: enum s32 {
        VIEWPORT_SDF_OVERSIZE_100_PERCENT :: 0;
        VIEWPORT_SDF_OVERSIZE_120_PERCENT :: 1;
        VIEWPORT_SDF_OVERSIZE_150_PERCENT :: 2;
        VIEWPORT_SDF_OVERSIZE_200_PERCENT :: 3;
        VIEWPORT_SDF_OVERSIZE_MAX :: 4;
    }

    ViewportSDFScale :: enum s32 {
        VIEWPORT_SDF_SCALE_100_PERCENT :: 0;
        VIEWPORT_SDF_SCALE_50_PERCENT :: 1;
        VIEWPORT_SDF_SCALE_25_PERCENT :: 2;
        VIEWPORT_SDF_SCALE_MAX :: 3;
    }

    ViewportMSAA :: enum s32 {
        VIEWPORT_MSAA_DISABLED :: 0;
        VIEWPORT_MSAA_2X :: 1;
        VIEWPORT_MSAA_4X :: 2;
        VIEWPORT_MSAA_8X :: 3;
        VIEWPORT_MSAA_MAX :: 4;
    }

    ViewportScreenSpaceAA :: enum s32 {
        VIEWPORT_SCREEN_SPACE_AA_DISABLED :: 0;
        VIEWPORT_SCREEN_SPACE_AA_FXAA :: 1;
        VIEWPORT_SCREEN_SPACE_AA_MAX :: 2;
    }

    ViewportOcclusionCullingBuildQuality :: enum s32 {
        VIEWPORT_OCCLUSION_BUILD_QUALITY_LOW :: 0;
        VIEWPORT_OCCLUSION_BUILD_QUALITY_MEDIUM :: 1;
        VIEWPORT_OCCLUSION_BUILD_QUALITY_HIGH :: 2;
    }

    ViewportRenderInfo :: enum s32 {
        VIEWPORT_RENDER_INFO_OBJECTS_IN_FRAME :: 0;
        VIEWPORT_RENDER_INFO_PRIMITIVES_IN_FRAME :: 1;
        VIEWPORT_RENDER_INFO_DRAW_CALLS_IN_FRAME :: 2;
        VIEWPORT_RENDER_INFO_MAX :: 3;
    }

    ViewportRenderInfoType :: enum s32 {
        VIEWPORT_RENDER_INFO_TYPE_VISIBLE :: 0;
        VIEWPORT_RENDER_INFO_TYPE_SHADOW :: 1;
        VIEWPORT_RENDER_INFO_TYPE_CANVAS :: 2;
        VIEWPORT_RENDER_INFO_TYPE_MAX :: 3;
    }

    ViewportDebugDraw :: enum s32 {
        VIEWPORT_DEBUG_DRAW_DISABLED :: 0;
        VIEWPORT_DEBUG_DRAW_UNSHADED :: 1;
        VIEWPORT_DEBUG_DRAW_LIGHTING :: 2;
        VIEWPORT_DEBUG_DRAW_OVERDRAW :: 3;
        VIEWPORT_DEBUG_DRAW_WIREFRAME :: 4;
        VIEWPORT_DEBUG_DRAW_NORMAL_BUFFER :: 5;
        VIEWPORT_DEBUG_DRAW_VOXEL_GI_ALBEDO :: 6;
        VIEWPORT_DEBUG_DRAW_VOXEL_GI_LIGHTING :: 7;
        VIEWPORT_DEBUG_DRAW_VOXEL_GI_EMISSION :: 8;
        VIEWPORT_DEBUG_DRAW_SHADOW_ATLAS :: 9;
        VIEWPORT_DEBUG_DRAW_DIRECTIONAL_SHADOW_ATLAS :: 10;
        VIEWPORT_DEBUG_DRAW_SCENE_LUMINANCE :: 11;
        VIEWPORT_DEBUG_DRAW_SSAO :: 12;
        VIEWPORT_DEBUG_DRAW_SSIL :: 13;
        VIEWPORT_DEBUG_DRAW_PSSM_SPLITS :: 14;
        VIEWPORT_DEBUG_DRAW_DECAL_ATLAS :: 15;
        VIEWPORT_DEBUG_DRAW_SDFGI :: 16;
        VIEWPORT_DEBUG_DRAW_SDFGI_PROBES :: 17;
        VIEWPORT_DEBUG_DRAW_GI_BUFFER :: 18;
        VIEWPORT_DEBUG_DRAW_DISABLE_LOD :: 19;
        VIEWPORT_DEBUG_DRAW_CLUSTER_OMNI_LIGHTS :: 20;
        VIEWPORT_DEBUG_DRAW_CLUSTER_SPOT_LIGHTS :: 21;
        VIEWPORT_DEBUG_DRAW_CLUSTER_DECALS :: 22;
        VIEWPORT_DEBUG_DRAW_CLUSTER_REFLECTION_PROBES :: 23;
        VIEWPORT_DEBUG_DRAW_OCCLUDERS :: 24;
        VIEWPORT_DEBUG_DRAW_MOTION_VECTORS :: 25;
        VIEWPORT_DEBUG_DRAW_INTERNAL_BUFFER :: 26;
    }

    ViewportVRSMode :: enum s32 {
        VIEWPORT_VRS_DISABLED :: 0;
        VIEWPORT_VRS_TEXTURE :: 1;
        VIEWPORT_VRS_XR :: 2;
        VIEWPORT_VRS_MAX :: 3;
    }

    SkyMode :: enum s32 {
        SKY_MODE_AUTOMATIC :: 0;
        SKY_MODE_QUALITY :: 1;
        SKY_MODE_INCREMENTAL :: 2;
        SKY_MODE_REALTIME :: 3;
    }

    CompositorEffectFlags :: enum s32 {
        COMPOSITOR_EFFECT_FLAG_ACCESS_RESOLVED_COLOR :: 1;
        COMPOSITOR_EFFECT_FLAG_ACCESS_RESOLVED_DEPTH :: 2;
        COMPOSITOR_EFFECT_FLAG_NEEDS_MOTION_VECTORS :: 4;
        COMPOSITOR_EFFECT_FLAG_NEEDS_ROUGHNESS :: 8;
        COMPOSITOR_EFFECT_FLAG_NEEDS_SEPARATE_SPECULAR :: 16;
    }

    CompositorEffectCallbackType :: enum s32 {
        COMPOSITOR_EFFECT_CALLBACK_TYPE_PRE_OPAQUE :: 0;
        COMPOSITOR_EFFECT_CALLBACK_TYPE_POST_OPAQUE :: 1;
        COMPOSITOR_EFFECT_CALLBACK_TYPE_POST_SKY :: 2;
        COMPOSITOR_EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT :: 3;
        COMPOSITOR_EFFECT_CALLBACK_TYPE_POST_TRANSPARENT :: 4;
        COMPOSITOR_EFFECT_CALLBACK_TYPE_ANY :: -1;
    }

    EnvironmentBG :: enum s32 {
        ENV_BG_CLEAR_COLOR :: 0;
        ENV_BG_COLOR :: 1;
        ENV_BG_SKY :: 2;
        ENV_BG_CANVAS :: 3;
        ENV_BG_KEEP :: 4;
        ENV_BG_CAMERA_FEED :: 5;
        ENV_BG_MAX :: 6;
    }

    EnvironmentAmbientSource :: enum s32 {
        ENV_AMBIENT_SOURCE_BG :: 0;
        ENV_AMBIENT_SOURCE_DISABLED :: 1;
        ENV_AMBIENT_SOURCE_COLOR :: 2;
        ENV_AMBIENT_SOURCE_SKY :: 3;
    }

    EnvironmentReflectionSource :: enum s32 {
        ENV_REFLECTION_SOURCE_BG :: 0;
        ENV_REFLECTION_SOURCE_DISABLED :: 1;
        ENV_REFLECTION_SOURCE_SKY :: 2;
    }

    EnvironmentGlowBlendMode :: enum s32 {
        ENV_GLOW_BLEND_MODE_ADDITIVE :: 0;
        ENV_GLOW_BLEND_MODE_SCREEN :: 1;
        ENV_GLOW_BLEND_MODE_SOFTLIGHT :: 2;
        ENV_GLOW_BLEND_MODE_REPLACE :: 3;
        ENV_GLOW_BLEND_MODE_MIX :: 4;
    }

    EnvironmentFogMode :: enum s32 {
        ENV_FOG_MODE_EXPONENTIAL :: 0;
        ENV_FOG_MODE_DEPTH :: 1;
    }

    EnvironmentToneMapper :: enum s32 {
        ENV_TONE_MAPPER_LINEAR :: 0;
        ENV_TONE_MAPPER_REINHARD :: 1;
        ENV_TONE_MAPPER_FILMIC :: 2;
        ENV_TONE_MAPPER_ACES :: 3;
    }

    EnvironmentSSRRoughnessQuality :: enum s32 {
        ENV_SSR_ROUGHNESS_QUALITY_DISABLED :: 0;
        ENV_SSR_ROUGHNESS_QUALITY_LOW :: 1;
        ENV_SSR_ROUGHNESS_QUALITY_MEDIUM :: 2;
        ENV_SSR_ROUGHNESS_QUALITY_HIGH :: 3;
    }

    EnvironmentSSAOQuality :: enum s32 {
        ENV_SSAO_QUALITY_VERY_LOW :: 0;
        ENV_SSAO_QUALITY_LOW :: 1;
        ENV_SSAO_QUALITY_MEDIUM :: 2;
        ENV_SSAO_QUALITY_HIGH :: 3;
        ENV_SSAO_QUALITY_ULTRA :: 4;
    }

    EnvironmentSSILQuality :: enum s32 {
        ENV_SSIL_QUALITY_VERY_LOW :: 0;
        ENV_SSIL_QUALITY_LOW :: 1;
        ENV_SSIL_QUALITY_MEDIUM :: 2;
        ENV_SSIL_QUALITY_HIGH :: 3;
        ENV_SSIL_QUALITY_ULTRA :: 4;
    }

    EnvironmentSDFGIYScale :: enum s32 {
        ENV_SDFGI_Y_SCALE_50_PERCENT :: 0;
        ENV_SDFGI_Y_SCALE_75_PERCENT :: 1;
        ENV_SDFGI_Y_SCALE_100_PERCENT :: 2;
    }

    EnvironmentSDFGIRayCount :: enum s32 {
        ENV_SDFGI_RAY_COUNT_4 :: 0;
        ENV_SDFGI_RAY_COUNT_8 :: 1;
        ENV_SDFGI_RAY_COUNT_16 :: 2;
        ENV_SDFGI_RAY_COUNT_32 :: 3;
        ENV_SDFGI_RAY_COUNT_64 :: 4;
        ENV_SDFGI_RAY_COUNT_96 :: 5;
        ENV_SDFGI_RAY_COUNT_128 :: 6;
        ENV_SDFGI_RAY_COUNT_MAX :: 7;
    }

    EnvironmentSDFGIFramesToConverge :: enum s32 {
        ENV_SDFGI_CONVERGE_IN_5_FRAMES :: 0;
        ENV_SDFGI_CONVERGE_IN_10_FRAMES :: 1;
        ENV_SDFGI_CONVERGE_IN_15_FRAMES :: 2;
        ENV_SDFGI_CONVERGE_IN_20_FRAMES :: 3;
        ENV_SDFGI_CONVERGE_IN_25_FRAMES :: 4;
        ENV_SDFGI_CONVERGE_IN_30_FRAMES :: 5;
        ENV_SDFGI_CONVERGE_MAX :: 6;
    }

    EnvironmentSDFGIFramesToUpdateLight :: enum s32 {
        ENV_SDFGI_UPDATE_LIGHT_IN_1_FRAME :: 0;
        ENV_SDFGI_UPDATE_LIGHT_IN_2_FRAMES :: 1;
        ENV_SDFGI_UPDATE_LIGHT_IN_4_FRAMES :: 2;
        ENV_SDFGI_UPDATE_LIGHT_IN_8_FRAMES :: 3;
        ENV_SDFGI_UPDATE_LIGHT_IN_16_FRAMES :: 4;
        ENV_SDFGI_UPDATE_LIGHT_MAX :: 5;
    }

    SubSurfaceScatteringQuality :: enum s32 {
        SUB_SURFACE_SCATTERING_QUALITY_DISABLED :: 0;
        SUB_SURFACE_SCATTERING_QUALITY_LOW :: 1;
        SUB_SURFACE_SCATTERING_QUALITY_MEDIUM :: 2;
        SUB_SURFACE_SCATTERING_QUALITY_HIGH :: 3;
    }

    DOFBokehShape :: enum s32 {
        DOF_BOKEH_BOX :: 0;
        DOF_BOKEH_HEXAGON :: 1;
        DOF_BOKEH_CIRCLE :: 2;
    }

    DOFBlurQuality :: enum s32 {
        DOF_BLUR_QUALITY_VERY_LOW :: 0;
        DOF_BLUR_QUALITY_LOW :: 1;
        DOF_BLUR_QUALITY_MEDIUM :: 2;
        DOF_BLUR_QUALITY_HIGH :: 3;
    }

    InstanceType :: enum s32 {
        INSTANCE_NONE :: 0;
        INSTANCE_MESH :: 1;
        INSTANCE_MULTIMESH :: 2;
        INSTANCE_PARTICLES :: 3;
        INSTANCE_PARTICLES_COLLISION :: 4;
        INSTANCE_LIGHT :: 5;
        INSTANCE_REFLECTION_PROBE :: 6;
        INSTANCE_DECAL :: 7;
        INSTANCE_VOXEL_GI :: 8;
        INSTANCE_LIGHTMAP :: 9;
        INSTANCE_OCCLUDER :: 10;
        INSTANCE_VISIBLITY_NOTIFIER :: 11;
        INSTANCE_FOG_VOLUME :: 12;
        INSTANCE_MAX :: 13;
        INSTANCE_GEOMETRY_MASK :: 14;
    }

    InstanceFlags :: enum s32 {
        INSTANCE_FLAG_USE_BAKED_LIGHT :: 0;
        INSTANCE_FLAG_USE_DYNAMIC_GI :: 1;
        INSTANCE_FLAG_DRAW_NEXT_FRAME_IF_VISIBLE :: 2;
        INSTANCE_FLAG_IGNORE_OCCLUSION_CULLING :: 3;
        INSTANCE_FLAG_MAX :: 4;
    }

    ShadowCastingSetting :: enum s32 {
        SHADOW_CASTING_SETTING_OFF :: 0;
        SHADOW_CASTING_SETTING_ON :: 1;
        SHADOW_CASTING_SETTING_DOUBLE_SIDED :: 2;
        SHADOW_CASTING_SETTING_SHADOWS_ONLY :: 3;
    }

    VisibilityRangeFadeMode :: enum s32 {
        VISIBILITY_RANGE_FADE_DISABLED :: 0;
        VISIBILITY_RANGE_FADE_SELF :: 1;
        VISIBILITY_RANGE_FADE_DEPENDENCIES :: 2;
    }

    BakeChannels :: enum s32 {
        BAKE_CHANNEL_ALBEDO_ALPHA :: 0;
        BAKE_CHANNEL_NORMAL :: 1;
        BAKE_CHANNEL_ORM :: 2;
        BAKE_CHANNEL_EMISSION :: 3;
    }

    CanvasTextureChannel :: enum s32 {
        CANVAS_TEXTURE_CHANNEL_DIFFUSE :: 0;
        CANVAS_TEXTURE_CHANNEL_NORMAL :: 1;
        CANVAS_TEXTURE_CHANNEL_SPECULAR :: 2;
    }

    NinePatchAxisMode :: enum s32 {
        NINE_PATCH_STRETCH :: 0;
        NINE_PATCH_TILE :: 1;
        NINE_PATCH_TILE_FIT :: 2;
    }

    CanvasItemTextureFilter :: enum s32 {
        CANVAS_ITEM_TEXTURE_FILTER_DEFAULT :: 0;
        CANVAS_ITEM_TEXTURE_FILTER_NEAREST :: 1;
        CANVAS_ITEM_TEXTURE_FILTER_LINEAR :: 2;
        CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS :: 3;
        CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS :: 4;
        CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC :: 5;
        CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC :: 6;
        CANVAS_ITEM_TEXTURE_FILTER_MAX :: 7;
    }

    CanvasItemTextureRepeat :: enum s32 {
        CANVAS_ITEM_TEXTURE_REPEAT_DEFAULT :: 0;
        CANVAS_ITEM_TEXTURE_REPEAT_DISABLED :: 1;
        CANVAS_ITEM_TEXTURE_REPEAT_ENABLED :: 2;
        CANVAS_ITEM_TEXTURE_REPEAT_MIRROR :: 3;
        CANVAS_ITEM_TEXTURE_REPEAT_MAX :: 4;
    }

    CanvasGroupMode :: enum s32 {
        CANVAS_GROUP_MODE_DISABLED :: 0;
        CANVAS_GROUP_MODE_CLIP_ONLY :: 1;
        CANVAS_GROUP_MODE_CLIP_AND_DRAW :: 2;
        CANVAS_GROUP_MODE_TRANSPARENT :: 3;
    }

    CanvasLightMode :: enum s32 {
        CANVAS_LIGHT_MODE_POINT :: 0;
        CANVAS_LIGHT_MODE_DIRECTIONAL :: 1;
    }

    CanvasLightBlendMode :: enum s32 {
        CANVAS_LIGHT_BLEND_MODE_ADD :: 0;
        CANVAS_LIGHT_BLEND_MODE_SUB :: 1;
        CANVAS_LIGHT_BLEND_MODE_MIX :: 2;
    }

    CanvasLightShadowFilter :: enum s32 {
        CANVAS_LIGHT_FILTER_NONE :: 0;
        CANVAS_LIGHT_FILTER_PCF5 :: 1;
        CANVAS_LIGHT_FILTER_PCF13 :: 2;
        CANVAS_LIGHT_FILTER_MAX :: 3;
    }

    CanvasOccluderPolygonCullMode :: enum s32 {
        CANVAS_OCCLUDER_POLYGON_CULL_DISABLED :: 0;
        CANVAS_OCCLUDER_POLYGON_CULL_CLOCKWISE :: 1;
        CANVAS_OCCLUDER_POLYGON_CULL_COUNTER_CLOCKWISE :: 2;
    }

    GlobalShaderParameterType :: enum s32 {
        GLOBAL_VAR_TYPE_BOOL :: 0;
        GLOBAL_VAR_TYPE_BVEC2 :: 1;
        GLOBAL_VAR_TYPE_BVEC3 :: 2;
        GLOBAL_VAR_TYPE_BVEC4 :: 3;
        GLOBAL_VAR_TYPE_INT :: 4;
        GLOBAL_VAR_TYPE_IVEC2 :: 5;
        GLOBAL_VAR_TYPE_IVEC3 :: 6;
        GLOBAL_VAR_TYPE_IVEC4 :: 7;
        GLOBAL_VAR_TYPE_RECT2I :: 8;
        GLOBAL_VAR_TYPE_UINT :: 9;
        GLOBAL_VAR_TYPE_UVEC2 :: 10;
        GLOBAL_VAR_TYPE_UVEC3 :: 11;
        GLOBAL_VAR_TYPE_UVEC4 :: 12;
        GLOBAL_VAR_TYPE_FLOAT :: 13;
        GLOBAL_VAR_TYPE_VEC2 :: 14;
        GLOBAL_VAR_TYPE_VEC3 :: 15;
        GLOBAL_VAR_TYPE_VEC4 :: 16;
        GLOBAL_VAR_TYPE_COLOR :: 17;
        GLOBAL_VAR_TYPE_RECT2 :: 18;
        GLOBAL_VAR_TYPE_MAT2 :: 19;
        GLOBAL_VAR_TYPE_MAT3 :: 20;
        GLOBAL_VAR_TYPE_MAT4 :: 21;
        GLOBAL_VAR_TYPE_TRANSFORM_2D :: 22;
        GLOBAL_VAR_TYPE_TRANSFORM :: 23;
        GLOBAL_VAR_TYPE_SAMPLER2D :: 24;
        GLOBAL_VAR_TYPE_SAMPLER2DARRAY :: 25;
        GLOBAL_VAR_TYPE_SAMPLER3D :: 26;
        GLOBAL_VAR_TYPE_SAMPLERCUBE :: 27;
        GLOBAL_VAR_TYPE_MAX :: 28;
    }

    RenderingInfo :: enum s32 {
        RENDERING_INFO_TOTAL_OBJECTS_IN_FRAME :: 0;
        RENDERING_INFO_TOTAL_PRIMITIVES_IN_FRAME :: 1;
        RENDERING_INFO_TOTAL_DRAW_CALLS_IN_FRAME :: 2;
        RENDERING_INFO_TEXTURE_MEM_USED :: 3;
        RENDERING_INFO_BUFFER_MEM_USED :: 4;
        RENDERING_INFO_VIDEO_MEM_USED :: 5;
    }

    Features :: enum s32 {
        FEATURE_SHADERS :: 0;
        FEATURE_MULTITHREADED :: 1;
    }
}

Resource :: struct { #as using base: OpaqueClass; } // 575

ResourceFormatLoader :: struct {    // 576

        #as using base: OpaqueClass;

    CacheMode :: enum s32 {
        CACHE_MODE_IGNORE :: 0;
        CACHE_MODE_REUSE :: 1;
        CACHE_MODE_REPLACE :: 2;
        CACHE_MODE_IGNORE_DEEP :: 3;
        CACHE_MODE_REPLACE_DEEP :: 4;
    }
}

ResourceFormatSaver :: struct { #as using base: OpaqueClass; } // 577

ResourceImporter :: struct {    // 578

        #as using base: OpaqueClass;

    ImportOrder :: enum s32 {
        IMPORT_ORDER_DEFAULT :: 0;
        IMPORT_ORDER_SCENE :: 100;
    }
}

ResourceImporterBMFont :: struct { #as using base: OpaqueClass; } // 579

ResourceImporterBitMap :: struct { #as using base: OpaqueClass; } // 580

ResourceImporterCSVTranslation :: struct { #as using base: OpaqueClass; } // 581

ResourceImporterDynamicFont :: struct { #as using base: OpaqueClass; } // 582

ResourceImporterImage :: struct { #as using base: OpaqueClass; } // 583

ResourceImporterImageFont :: struct { #as using base: OpaqueClass; } // 584

ResourceImporterLayeredTexture :: struct { #as using base: OpaqueClass; } // 585

ResourceImporterMP3 :: struct { #as using base: OpaqueClass; } // 586

ResourceImporterOBJ :: struct { #as using base: OpaqueClass; } // 587

ResourceImporterOggVorbis :: struct { #as using base: OpaqueClass; } // 588

ResourceImporterScene :: struct { #as using base: OpaqueClass; } // 589

ResourceImporterShaderFile :: struct { #as using base: OpaqueClass; } // 590

ResourceImporterTexture :: struct { #as using base: OpaqueClass; } // 591

ResourceImporterTextureAtlas :: struct { #as using base: OpaqueClass; } // 592

ResourceImporterWAV :: struct { #as using base: OpaqueClass; } // 593

ResourceLoader :: struct {    // 594

        #as using base: OpaqueClass;

    ThreadLoadStatus :: enum s32 {
        THREAD_LOAD_INVALID_RESOURCE :: 0;
        THREAD_LOAD_IN_PROGRESS :: 1;
        THREAD_LOAD_FAILED :: 2;
        THREAD_LOAD_LOADED :: 3;
    }

    CacheMode :: enum s32 {
        CACHE_MODE_IGNORE :: 0;
        CACHE_MODE_REUSE :: 1;
        CACHE_MODE_REPLACE :: 2;
        CACHE_MODE_IGNORE_DEEP :: 3;
        CACHE_MODE_REPLACE_DEEP :: 4;
    }
}

ResourcePreloader :: struct { #as using base: OpaqueClass; } // 595

ResourceSaver :: struct {    // 596

        #as using base: OpaqueClass;

    SaverFlags :: enum u64 {
        FLAG_NONE :: 0;
        FLAG_RELATIVE_PATHS :: 1;
        FLAG_BUNDLE_RESOURCES :: 2;
        FLAG_CHANGE_PATH :: 4;
        FLAG_OMIT_EDITOR_PROPERTIES :: 8;
        FLAG_SAVE_BIG_ENDIAN :: 16;
        FLAG_COMPRESS :: 32;
        FLAG_REPLACE_SUBRESOURCE_PATHS :: 64;
    } @bitfield
}

ResourceUID :: struct { #as using base: OpaqueClass; } // 597

RibbonTrailMesh :: struct {    // 598

        #as using base: OpaqueClass;

    Shape :: enum s32 {
        SHAPE_FLAT :: 0;
        SHAPE_CROSS :: 1;
    }
}

RichTextEffect :: struct { #as using base: OpaqueClass; } // 599

RichTextLabel :: struct {    // 600

        #as using base: OpaqueClass;

    ListType :: enum s32 {
        LIST_NUMBERS :: 0;
        LIST_LETTERS :: 1;
        LIST_ROMAN :: 2;
        LIST_DOTS :: 3;
    }

    MenuItems :: enum s32 {
        MENU_COPY :: 0;
        MENU_SELECT_ALL :: 1;
        MENU_MAX :: 2;
    }

    MetaUnderline :: enum s32 {
        META_UNDERLINE_NEVER :: 0;
        META_UNDERLINE_ALWAYS :: 1;
        META_UNDERLINE_ON_HOVER :: 2;
    }

    ImageUpdateMask :: enum u64 {
        UPDATE_TEXTURE :: 1;
        UPDATE_SIZE :: 2;
        UPDATE_COLOR :: 4;
        UPDATE_ALIGNMENT :: 8;
        UPDATE_REGION :: 16;
        UPDATE_PAD :: 32;
        UPDATE_TOOLTIP :: 64;
        UPDATE_WIDTH_IN_PERCENT :: 128;
    } @bitfield
}

RigidBody2D :: struct {    // 601

        #as using base: OpaqueClass;

    FreezeMode :: enum s32 {
        FREEZE_MODE_STATIC :: 0;
        FREEZE_MODE_KINEMATIC :: 1;
    }

    CenterOfMassMode :: enum s32 {
        CENTER_OF_MASS_MODE_AUTO :: 0;
        CENTER_OF_MASS_MODE_CUSTOM :: 1;
    }

    DampMode :: enum s32 {
        DAMP_MODE_COMBINE :: 0;
        DAMP_MODE_REPLACE :: 1;
    }

    CCDMode :: enum s32 {
        CCD_MODE_DISABLED :: 0;
        CCD_MODE_CAST_RAY :: 1;
        CCD_MODE_CAST_SHAPE :: 2;
    }
}

RigidBody3D :: struct {    // 602

        #as using base: OpaqueClass;

    FreezeMode :: enum s32 {
        FREEZE_MODE_STATIC :: 0;
        FREEZE_MODE_KINEMATIC :: 1;
    }

    CenterOfMassMode :: enum s32 {
        CENTER_OF_MASS_MODE_AUTO :: 0;
        CENTER_OF_MASS_MODE_CUSTOM :: 1;
    }

    DampMode :: enum s32 {
        DAMP_MODE_COMBINE :: 0;
        DAMP_MODE_REPLACE :: 1;
    }
}

RootMotionView :: struct { #as using base: OpaqueClass; } // 603

SceneMultiplayer :: struct { #as using base: OpaqueClass; } // 604

SceneReplicationConfig :: struct {    // 605

        #as using base: OpaqueClass;

    ReplicationMode :: enum s32 {
        REPLICATION_MODE_NEVER :: 0;
        REPLICATION_MODE_ALWAYS :: 1;
        REPLICATION_MODE_ON_CHANGE :: 2;
    }
}

SceneState :: struct {    // 606

        #as using base: OpaqueClass;

    GenEditState :: enum s32 {
        GEN_EDIT_STATE_DISABLED :: 0;
        GEN_EDIT_STATE_INSTANCE :: 1;
        GEN_EDIT_STATE_MAIN :: 2;
        GEN_EDIT_STATE_MAIN_INHERITED :: 3;
    }
}

SceneTree :: struct {    // 607

        #as using base: OpaqueClass;

    GroupCallFlags :: enum s32 {
        GROUP_CALL_DEFAULT :: 0;
        GROUP_CALL_REVERSE :: 1;
        GROUP_CALL_DEFERRED :: 2;
        GROUP_CALL_UNIQUE :: 4;
    }
}

SceneTreeTimer :: struct { #as using base: OpaqueClass; } // 608

Script :: struct { #as using base: OpaqueClass; } // 609

ScriptCreateDialog :: struct { #as using base: OpaqueClass; } // 610

ScriptEditor :: struct { #as using base: OpaqueClass; } // 611

ScriptEditorBase :: struct { #as using base: OpaqueClass; } // 612

ScriptExtension :: struct { #as using base: OpaqueClass; } // 613

ScriptLanguage :: struct {    // 614

        #as using base: OpaqueClass;

    ScriptNameCasing :: enum s32 {
        SCRIPT_NAME_CASING_AUTO :: 0;
        SCRIPT_NAME_CASING_PASCAL_CASE :: 1;
        SCRIPT_NAME_CASING_SNAKE_CASE :: 2;
        SCRIPT_NAME_CASING_KEBAB_CASE :: 3;
    }
}

ScriptLanguageExtension :: struct {    // 615

        #as using base: OpaqueClass;

    LookupResultType :: enum s32 {
        LOOKUP_RESULT_SCRIPT_LOCATION :: 0;
        LOOKUP_RESULT_CLASS :: 1;
        LOOKUP_RESULT_CLASS_CONSTANT :: 2;
        LOOKUP_RESULT_CLASS_PROPERTY :: 3;
        LOOKUP_RESULT_CLASS_METHOD :: 4;
        LOOKUP_RESULT_CLASS_SIGNAL :: 5;
        LOOKUP_RESULT_CLASS_ENUM :: 6;
        LOOKUP_RESULT_CLASS_TBD_GLOBALSCOPE :: 7;
        LOOKUP_RESULT_CLASS_ANNOTATION :: 8;
        LOOKUP_RESULT_MAX :: 9;
    }

    CodeCompletionLocation :: enum s32 {
        LOCATION_LOCAL :: 0;
        LOCATION_PARENT_MASK :: 256;
        LOCATION_OTHER_USER_CODE :: 512;
        LOCATION_OTHER :: 1024;
    }

    CodeCompletionKind :: enum s32 {
        CODE_COMPLETION_KIND_CLASS :: 0;
        CODE_COMPLETION_KIND_FUNCTION :: 1;
        CODE_COMPLETION_KIND_SIGNAL :: 2;
        CODE_COMPLETION_KIND_VARIABLE :: 3;
        CODE_COMPLETION_KIND_MEMBER :: 4;
        CODE_COMPLETION_KIND_ENUM :: 5;
        CODE_COMPLETION_KIND_CONSTANT :: 6;
        CODE_COMPLETION_KIND_NODE_PATH :: 7;
        CODE_COMPLETION_KIND_FILE_PATH :: 8;
        CODE_COMPLETION_KIND_PLAIN_TEXT :: 9;
        CODE_COMPLETION_KIND_MAX :: 10;
    }
}

ScrollBar :: struct { #as using base: OpaqueClass; } // 616

ScrollContainer :: struct {    // 617

        #as using base: OpaqueClass;

    ScrollMode :: enum s32 {
        SCROLL_MODE_DISABLED :: 0;
        SCROLL_MODE_AUTO :: 1;
        SCROLL_MODE_SHOW_ALWAYS :: 2;
        SCROLL_MODE_SHOW_NEVER :: 3;
    }
}

SegmentShape2D :: struct { #as using base: OpaqueClass; } // 618

Semaphore :: struct { #as using base: OpaqueClass; } // 619

SeparationRayShape2D :: struct { #as using base: OpaqueClass; } // 620

SeparationRayShape3D :: struct { #as using base: OpaqueClass; } // 621

Separator :: struct { #as using base: OpaqueClass; } // 622

Shader :: struct {    // 623

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        MODE_SPATIAL :: 0;
        MODE_CANVAS_ITEM :: 1;
        MODE_PARTICLES :: 2;
        MODE_SKY :: 3;
        MODE_FOG :: 4;
    }
}

ShaderGlobalsOverride :: struct { #as using base: OpaqueClass; } // 624

ShaderInclude :: struct { #as using base: OpaqueClass; } // 625

ShaderMaterial :: struct { #as using base: OpaqueClass; } // 626

Shape2D :: struct { #as using base: OpaqueClass; } // 627

Shape3D :: struct { #as using base: OpaqueClass; } // 628

ShapeCast2D :: struct { #as using base: OpaqueClass; } // 629

ShapeCast3D :: struct { #as using base: OpaqueClass; } // 630

Shortcut :: struct { #as using base: OpaqueClass; } // 631

Skeleton2D :: struct { #as using base: OpaqueClass; } // 632

Skeleton3D :: struct { #as using base: OpaqueClass; } // 633

SkeletonIK3D :: struct { #as using base: OpaqueClass; } // 634

SkeletonModification2D :: struct { #as using base: OpaqueClass; } // 635

SkeletonModification2DCCDIK :: struct { #as using base: OpaqueClass; } // 636

SkeletonModification2DFABRIK :: struct { #as using base: OpaqueClass; } // 637

SkeletonModification2DJiggle :: struct { #as using base: OpaqueClass; } // 638

SkeletonModification2DLookAt :: struct { #as using base: OpaqueClass; } // 639

SkeletonModification2DPhysicalBones :: struct { #as using base: OpaqueClass; } // 640

SkeletonModification2DStackHolder :: struct { #as using base: OpaqueClass; } // 641

SkeletonModification2DTwoBoneIK :: struct { #as using base: OpaqueClass; } // 642

SkeletonModificationStack2D :: struct { #as using base: OpaqueClass; } // 643

SkeletonProfile :: struct {    // 644

        #as using base: OpaqueClass;

    TailDirection :: enum s32 {
        TAIL_DIRECTION_AVERAGE_CHILDREN :: 0;
        TAIL_DIRECTION_SPECIFIC_CHILD :: 1;
        TAIL_DIRECTION_END :: 2;
    }
}

SkeletonProfileHumanoid :: struct { #as using base: OpaqueClass; } // 645

Skin :: struct { #as using base: OpaqueClass; } // 646

SkinReference :: struct { #as using base: OpaqueClass; } // 647

Sky :: struct {    // 648

        #as using base: OpaqueClass;

    RadianceSize :: enum s32 {
        RADIANCE_SIZE_32 :: 0;
        RADIANCE_SIZE_64 :: 1;
        RADIANCE_SIZE_128 :: 2;
        RADIANCE_SIZE_256 :: 3;
        RADIANCE_SIZE_512 :: 4;
        RADIANCE_SIZE_1024 :: 5;
        RADIANCE_SIZE_2048 :: 6;
        RADIANCE_SIZE_MAX :: 7;
    }

    ProcessMode :: enum s32 {
        PROCESS_MODE_AUTOMATIC :: 0;
        PROCESS_MODE_QUALITY :: 1;
        PROCESS_MODE_INCREMENTAL :: 2;
        PROCESS_MODE_REALTIME :: 3;
    }
}

Slider :: struct { #as using base: OpaqueClass; } // 649

SliderJoint3D :: struct {    // 650

        #as using base: OpaqueClass;

    Param :: enum s32 {
        PARAM_LINEAR_LIMIT_UPPER :: 0;
        PARAM_LINEAR_LIMIT_LOWER :: 1;
        PARAM_LINEAR_LIMIT_SOFTNESS :: 2;
        PARAM_LINEAR_LIMIT_RESTITUTION :: 3;
        PARAM_LINEAR_LIMIT_DAMPING :: 4;
        PARAM_LINEAR_MOTION_SOFTNESS :: 5;
        PARAM_LINEAR_MOTION_RESTITUTION :: 6;
        PARAM_LINEAR_MOTION_DAMPING :: 7;
        PARAM_LINEAR_ORTHOGONAL_SOFTNESS :: 8;
        PARAM_LINEAR_ORTHOGONAL_RESTITUTION :: 9;
        PARAM_LINEAR_ORTHOGONAL_DAMPING :: 10;
        PARAM_ANGULAR_LIMIT_UPPER :: 11;
        PARAM_ANGULAR_LIMIT_LOWER :: 12;
        PARAM_ANGULAR_LIMIT_SOFTNESS :: 13;
        PARAM_ANGULAR_LIMIT_RESTITUTION :: 14;
        PARAM_ANGULAR_LIMIT_DAMPING :: 15;
        PARAM_ANGULAR_MOTION_SOFTNESS :: 16;
        PARAM_ANGULAR_MOTION_RESTITUTION :: 17;
        PARAM_ANGULAR_MOTION_DAMPING :: 18;
        PARAM_ANGULAR_ORTHOGONAL_SOFTNESS :: 19;
        PARAM_ANGULAR_ORTHOGONAL_RESTITUTION :: 20;
        PARAM_ANGULAR_ORTHOGONAL_DAMPING :: 21;
        PARAM_MAX :: 22;
    }
}

SoftBody3D :: struct {    // 651

        #as using base: OpaqueClass;

    DisableMode :: enum s32 {
        DISABLE_MODE_REMOVE :: 0;
        DISABLE_MODE_KEEP_ACTIVE :: 1;
    }
}

SphereMesh :: struct { #as using base: OpaqueClass; } // 652

SphereOccluder3D :: struct { #as using base: OpaqueClass; } // 653

SphereShape3D :: struct { #as using base: OpaqueClass; } // 654

SpinBox :: struct { #as using base: OpaqueClass; } // 655

SplitContainer :: struct {    // 656

        #as using base: OpaqueClass;

    DraggerVisibility :: enum s32 {
        DRAGGER_VISIBLE :: 0;
        DRAGGER_HIDDEN :: 1;
        DRAGGER_HIDDEN_COLLAPSED :: 2;
    }
}

SpotLight3D :: struct { #as using base: OpaqueClass; } // 657

SpringArm3D :: struct { #as using base: OpaqueClass; } // 658

Sprite2D :: struct { #as using base: OpaqueClass; } // 659

Sprite3D :: struct { #as using base: OpaqueClass; } // 660

SpriteBase3D :: struct {    // 661

        #as using base: OpaqueClass;

    DrawFlags :: enum s32 {
        FLAG_TRANSPARENT :: 0;
        FLAG_SHADED :: 1;
        FLAG_DOUBLE_SIDED :: 2;
        FLAG_DISABLE_DEPTH_TEST :: 3;
        FLAG_FIXED_SIZE :: 4;
        FLAG_MAX :: 5;
    }

    AlphaCutMode :: enum s32 {
        ALPHA_CUT_DISABLED :: 0;
        ALPHA_CUT_DISCARD :: 1;
        ALPHA_CUT_OPAQUE_PREPASS :: 2;
        ALPHA_CUT_HASH :: 3;
    }
}

SpriteFrames :: struct { #as using base: OpaqueClass; } // 662

StandardMaterial3D :: struct { #as using base: OpaqueClass; } // 663

StaticBody2D :: struct { #as using base: OpaqueClass; } // 664

StaticBody3D :: struct { #as using base: OpaqueClass; } // 665

StatusIndicator :: struct { #as using base: OpaqueClass; } // 666

StreamPeer :: struct { #as using base: OpaqueClass; } // 667

StreamPeerBuffer :: struct { #as using base: OpaqueClass; } // 668

StreamPeerExtension :: struct { #as using base: OpaqueClass; } // 669

StreamPeerGZIP :: struct { #as using base: OpaqueClass; } // 670

StreamPeerTCP :: struct {    // 671

        #as using base: OpaqueClass;

    Status :: enum s32 {
        STATUS_NONE :: 0;
        STATUS_CONNECTING :: 1;
        STATUS_CONNECTED :: 2;
        STATUS_ERROR :: 3;
    }
}

StreamPeerTLS :: struct {    // 672

        #as using base: OpaqueClass;

    Status :: enum s32 {
        STATUS_DISCONNECTED :: 0;
        STATUS_HANDSHAKING :: 1;
        STATUS_CONNECTED :: 2;
        STATUS_ERROR :: 3;
        STATUS_ERROR_HOSTNAME_MISMATCH :: 4;
    }
}

StyleBox :: struct { #as using base: OpaqueClass; } // 673

StyleBoxEmpty :: struct { #as using base: OpaqueClass; } // 674

StyleBoxFlat :: struct { #as using base: OpaqueClass; } // 675

StyleBoxLine :: struct { #as using base: OpaqueClass; } // 676

StyleBoxTexture :: struct {    // 677

        #as using base: OpaqueClass;

    AxisStretchMode :: enum s32 {
        AXIS_STRETCH_MODE_STRETCH :: 0;
        AXIS_STRETCH_MODE_TILE :: 1;
        AXIS_STRETCH_MODE_TILE_FIT :: 2;
    }
}

SubViewport :: struct {    // 678

        #as using base: OpaqueClass;

    ClearMode :: enum s32 {
        CLEAR_MODE_ALWAYS :: 0;
        CLEAR_MODE_NEVER :: 1;
        CLEAR_MODE_ONCE :: 2;
    }

    UpdateMode :: enum s32 {
        UPDATE_DISABLED :: 0;
        UPDATE_ONCE :: 1;
        UPDATE_WHEN_VISIBLE :: 2;
        UPDATE_WHEN_PARENT_VISIBLE :: 3;
        UPDATE_ALWAYS :: 4;
    }
}

SubViewportContainer :: struct { #as using base: OpaqueClass; } // 679

SurfaceTool :: struct {    // 680

        #as using base: OpaqueClass;

    CustomFormat :: enum s32 {
        CUSTOM_RGBA8_UNORM :: 0;
        CUSTOM_RGBA8_SNORM :: 1;
        CUSTOM_RG_HALF :: 2;
        CUSTOM_RGBA_HALF :: 3;
        CUSTOM_R_FLOAT :: 4;
        CUSTOM_RG_FLOAT :: 5;
        CUSTOM_RGB_FLOAT :: 6;
        CUSTOM_RGBA_FLOAT :: 7;
        CUSTOM_MAX :: 8;
    }

    SkinWeightCount :: enum s32 {
        SKIN_4_WEIGHTS :: 0;
        SKIN_8_WEIGHTS :: 1;
    }
}

SyntaxHighlighter :: struct { #as using base: OpaqueClass; } // 681

SystemFont :: struct { #as using base: OpaqueClass; } // 682

TCPServer :: struct { #as using base: OpaqueClass; } // 683

TLSOptions :: struct { #as using base: OpaqueClass; } // 684

TabBar :: struct {    // 685

        #as using base: OpaqueClass;

    AlignmentMode :: enum s32 {
        ALIGNMENT_LEFT :: 0;
        ALIGNMENT_CENTER :: 1;
        ALIGNMENT_RIGHT :: 2;
        ALIGNMENT_MAX :: 3;
    }

    CloseButtonDisplayPolicy :: enum s32 {
        CLOSE_BUTTON_SHOW_NEVER :: 0;
        CLOSE_BUTTON_SHOW_ACTIVE_ONLY :: 1;
        CLOSE_BUTTON_SHOW_ALWAYS :: 2;
        CLOSE_BUTTON_MAX :: 3;
    }
}

TabContainer :: struct {    // 686

        #as using base: OpaqueClass;

    TabPosition :: enum s32 {
        POSITION_TOP :: 0;
        POSITION_BOTTOM :: 1;
        POSITION_MAX :: 2;
    }
}

TextEdit :: struct {    // 687

        #as using base: OpaqueClass;

    MenuItems :: enum s32 {
        MENU_CUT :: 0;
        MENU_COPY :: 1;
        MENU_PASTE :: 2;
        MENU_CLEAR :: 3;
        MENU_SELECT_ALL :: 4;
        MENU_UNDO :: 5;
        MENU_REDO :: 6;
        MENU_SUBMENU_TEXT_DIR :: 7;
        MENU_DIR_INHERITED :: 8;
        MENU_DIR_AUTO :: 9;
        MENU_DIR_LTR :: 10;
        MENU_DIR_RTL :: 11;
        MENU_DISPLAY_UCC :: 12;
        MENU_SUBMENU_INSERT_UCC :: 13;
        MENU_INSERT_LRM :: 14;
        MENU_INSERT_RLM :: 15;
        MENU_INSERT_LRE :: 16;
        MENU_INSERT_RLE :: 17;
        MENU_INSERT_LRO :: 18;
        MENU_INSERT_RLO :: 19;
        MENU_INSERT_PDF :: 20;
        MENU_INSERT_ALM :: 21;
        MENU_INSERT_LRI :: 22;
        MENU_INSERT_RLI :: 23;
        MENU_INSERT_FSI :: 24;
        MENU_INSERT_PDI :: 25;
        MENU_INSERT_ZWJ :: 26;
        MENU_INSERT_ZWNJ :: 27;
        MENU_INSERT_WJ :: 28;
        MENU_INSERT_SHY :: 29;
        MENU_MAX :: 30;
    }

    EditAction :: enum s32 {
        ACTION_NONE :: 0;
        ACTION_TYPING :: 1;
        ACTION_BACKSPACE :: 2;
        ACTION_DELETE :: 3;
    }

    SearchFlags :: enum s32 {
        SEARCH_MATCH_CASE :: 1;
        SEARCH_WHOLE_WORDS :: 2;
        SEARCH_BACKWARDS :: 4;
    }

    CaretType :: enum s32 {
        CARET_TYPE_LINE :: 0;
        CARET_TYPE_BLOCK :: 1;
    }

    SelectionMode :: enum s32 {
        SELECTION_MODE_NONE :: 0;
        SELECTION_MODE_SHIFT :: 1;
        SELECTION_MODE_POINTER :: 2;
        SELECTION_MODE_WORD :: 3;
        SELECTION_MODE_LINE :: 4;
    }

    LineWrappingMode :: enum s32 {
        LINE_WRAPPING_NONE :: 0;
        LINE_WRAPPING_BOUNDARY :: 1;
    }

    GutterType :: enum s32 {
        GUTTER_TYPE_STRING :: 0;
        GUTTER_TYPE_ICON :: 1;
        GUTTER_TYPE_CUSTOM :: 2;
    }
}

TextLine :: struct { #as using base: OpaqueClass; } // 688

TextMesh :: struct { #as using base: OpaqueClass; } // 689

TextParagraph :: struct { #as using base: OpaqueClass; } // 690

TextServer :: struct {    // 691

        #as using base: OpaqueClass;

    FontAntialiasing :: enum s32 {
        FONT_ANTIALIASING_NONE :: 0;
        FONT_ANTIALIASING_GRAY :: 1;
        FONT_ANTIALIASING_LCD :: 2;
    }

    FontLCDSubpixelLayout :: enum s32 {
        FONT_LCD_SUBPIXEL_LAYOUT_NONE :: 0;
        FONT_LCD_SUBPIXEL_LAYOUT_HRGB :: 1;
        FONT_LCD_SUBPIXEL_LAYOUT_HBGR :: 2;
        FONT_LCD_SUBPIXEL_LAYOUT_VRGB :: 3;
        FONT_LCD_SUBPIXEL_LAYOUT_VBGR :: 4;
        FONT_LCD_SUBPIXEL_LAYOUT_MAX :: 5;
    }

    Direction :: enum s32 {
        DIRECTION_AUTO :: 0;
        DIRECTION_LTR :: 1;
        DIRECTION_RTL :: 2;
        DIRECTION_INHERITED :: 3;
    }

    Orientation :: enum s32 {
        ORIENTATION_HORIZONTAL :: 0;
        ORIENTATION_VERTICAL :: 1;
    }

    JustificationFlag :: enum u64 {
        JUSTIFICATION_NONE :: 0;
        JUSTIFICATION_KASHIDA :: 1;
        JUSTIFICATION_WORD_BOUND :: 2;
        JUSTIFICATION_TRIM_EDGE_SPACES :: 4;
        JUSTIFICATION_AFTER_LAST_TAB :: 8;
        JUSTIFICATION_CONSTRAIN_ELLIPSIS :: 16;
        JUSTIFICATION_SKIP_LAST_LINE :: 32;
        JUSTIFICATION_SKIP_LAST_LINE_WITH_VISIBLE_CHARS :: 64;
        JUSTIFICATION_DO_NOT_SKIP_SINGLE_LINE :: 128;
    } @bitfield

    AutowrapMode :: enum s32 {
        AUTOWRAP_OFF :: 0;
        AUTOWRAP_ARBITRARY :: 1;
        AUTOWRAP_WORD :: 2;
        AUTOWRAP_WORD_SMART :: 3;
    }

    LineBreakFlag :: enum u64 {
        BREAK_NONE :: 0;
        BREAK_MANDATORY :: 1;
        BREAK_WORD_BOUND :: 2;
        BREAK_GRAPHEME_BOUND :: 4;
        BREAK_ADAPTIVE :: 8;
        BREAK_TRIM_EDGE_SPACES :: 16;
        BREAK_TRIM_INDENT :: 32;
    } @bitfield

    VisibleCharactersBehavior :: enum s32 {
        VC_CHARS_BEFORE_SHAPING :: 0;
        VC_CHARS_AFTER_SHAPING :: 1;
        VC_GLYPHS_AUTO :: 2;
        VC_GLYPHS_LTR :: 3;
        VC_GLYPHS_RTL :: 4;
    }

    OverrunBehavior :: enum s32 {
        OVERRUN_NO_TRIMMING :: 0;
        OVERRUN_TRIM_CHAR :: 1;
        OVERRUN_TRIM_WORD :: 2;
        OVERRUN_TRIM_ELLIPSIS :: 3;
        OVERRUN_TRIM_WORD_ELLIPSIS :: 4;
    }

    TextOverrunFlag :: enum u64 {
        OVERRUN_NO_TRIM :: 0;
        OVERRUN_TRIM :: 1;
        OVERRUN_TRIM_WORD_ONLY :: 2;
        OVERRUN_ADD_ELLIPSIS :: 4;
        OVERRUN_ENFORCE_ELLIPSIS :: 8;
        OVERRUN_JUSTIFICATION_AWARE :: 16;
    } @bitfield

    GraphemeFlag :: enum u64 {
        GRAPHEME_IS_VALID :: 1;
        GRAPHEME_IS_RTL :: 2;
        GRAPHEME_IS_VIRTUAL :: 4;
        GRAPHEME_IS_SPACE :: 8;
        GRAPHEME_IS_BREAK_HARD :: 16;
        GRAPHEME_IS_BREAK_SOFT :: 32;
        GRAPHEME_IS_TAB :: 64;
        GRAPHEME_IS_ELONGATION :: 128;
        GRAPHEME_IS_PUNCTUATION :: 256;
        GRAPHEME_IS_UNDERSCORE :: 512;
        GRAPHEME_IS_CONNECTED :: 1024;
        GRAPHEME_IS_SAFE_TO_INSERT_TATWEEL :: 2048;
        GRAPHEME_IS_EMBEDDED_OBJECT :: 4096;
        GRAPHEME_IS_SOFT_HYPHEN :: 8192;
    } @bitfield

    Hinting :: enum s32 {
        HINTING_NONE :: 0;
        HINTING_LIGHT :: 1;
        HINTING_NORMAL :: 2;
    }

    SubpixelPositioning :: enum s32 {
        SUBPIXEL_POSITIONING_DISABLED :: 0;
        SUBPIXEL_POSITIONING_AUTO :: 1;
        SUBPIXEL_POSITIONING_ONE_HALF :: 2;
        SUBPIXEL_POSITIONING_ONE_QUARTER :: 3;
        SUBPIXEL_POSITIONING_ONE_HALF_MAX_SIZE :: 20;
        SUBPIXEL_POSITIONING_ONE_QUARTER_MAX_SIZE :: 16;
    }

    Feature :: enum s32 {
        FEATURE_SIMPLE_LAYOUT :: 1;
        FEATURE_BIDI_LAYOUT :: 2;
        FEATURE_VERTICAL_LAYOUT :: 4;
        FEATURE_SHAPING :: 8;
        FEATURE_KASHIDA_JUSTIFICATION :: 16;
        FEATURE_BREAK_ITERATORS :: 32;
        FEATURE_FONT_BITMAP :: 64;
        FEATURE_FONT_DYNAMIC :: 128;
        FEATURE_FONT_MSDF :: 256;
        FEATURE_FONT_SYSTEM :: 512;
        FEATURE_FONT_VARIABLE :: 1024;
        FEATURE_CONTEXT_SENSITIVE_CASE_CONVERSION :: 2048;
        FEATURE_USE_SUPPORT_DATA :: 4096;
        FEATURE_UNICODE_IDENTIFIERS :: 8192;
        FEATURE_UNICODE_SECURITY :: 16384;
    }

    ContourPointTag :: enum s32 {
        CONTOUR_CURVE_TAG_ON :: 1;
        CONTOUR_CURVE_TAG_OFF_CONIC :: 0;
        CONTOUR_CURVE_TAG_OFF_CUBIC :: 2;
    }

    SpacingType :: enum s32 {
        SPACING_GLYPH :: 0;
        SPACING_SPACE :: 1;
        SPACING_TOP :: 2;
        SPACING_BOTTOM :: 3;
        SPACING_MAX :: 4;
    }

    FontStyle :: enum u64 {
        FONT_BOLD :: 1;
        FONT_ITALIC :: 2;
        FONT_FIXED_WIDTH :: 4;
    } @bitfield

    StructuredTextParser :: enum s32 {
        STRUCTURED_TEXT_DEFAULT :: 0;
        STRUCTURED_TEXT_URI :: 1;
        STRUCTURED_TEXT_FILE :: 2;
        STRUCTURED_TEXT_EMAIL :: 3;
        STRUCTURED_TEXT_LIST :: 4;
        STRUCTURED_TEXT_GDSCRIPT :: 5;
        STRUCTURED_TEXT_CUSTOM :: 6;
    }

    FixedSizeScaleMode :: enum s32 {
        FIXED_SIZE_SCALE_DISABLE :: 0;
        FIXED_SIZE_SCALE_INTEGER_ONLY :: 1;
        FIXED_SIZE_SCALE_ENABLED :: 2;
    }
}

TextServerAdvanced :: struct { #as using base: OpaqueClass; } // 692

TextServerDummy :: struct { #as using base: OpaqueClass; } // 693

TextServerExtension :: struct { #as using base: OpaqueClass; } // 694

TextServerManager :: struct { #as using base: OpaqueClass; } // 695

Texture :: struct { #as using base: OpaqueClass; } // 696

Texture2D :: struct { #as using base: OpaqueClass; } // 697

Texture2DArray :: struct { #as using base: OpaqueClass; } // 698

Texture2DArrayRD :: struct { #as using base: OpaqueClass; } // 699

Texture2DRD :: struct { #as using base: OpaqueClass; } // 700

Texture3D :: struct { #as using base: OpaqueClass; } // 701

Texture3DRD :: struct { #as using base: OpaqueClass; } // 702

TextureButton :: struct {    // 703

        #as using base: OpaqueClass;

    StretchMode :: enum s32 {
        STRETCH_SCALE :: 0;
        STRETCH_TILE :: 1;
        STRETCH_KEEP :: 2;
        STRETCH_KEEP_CENTERED :: 3;
        STRETCH_KEEP_ASPECT :: 4;
        STRETCH_KEEP_ASPECT_CENTERED :: 5;
        STRETCH_KEEP_ASPECT_COVERED :: 6;
    }
}

TextureCubemapArrayRD :: struct { #as using base: OpaqueClass; } // 704

TextureCubemapRD :: struct { #as using base: OpaqueClass; } // 705

TextureLayered :: struct {    // 706

        #as using base: OpaqueClass;

    LayeredType :: enum s32 {
        LAYERED_TYPE_2D_ARRAY :: 0;
        LAYERED_TYPE_CUBEMAP :: 1;
        LAYERED_TYPE_CUBEMAP_ARRAY :: 2;
    }
}

TextureLayeredRD :: struct { #as using base: OpaqueClass; } // 707

TextureProgressBar :: struct {    // 708

        #as using base: OpaqueClass;

    FillMode :: enum s32 {
        FILL_LEFT_TO_RIGHT :: 0;
        FILL_RIGHT_TO_LEFT :: 1;
        FILL_TOP_TO_BOTTOM :: 2;
        FILL_BOTTOM_TO_TOP :: 3;
        FILL_CLOCKWISE :: 4;
        FILL_COUNTER_CLOCKWISE :: 5;
        FILL_BILINEAR_LEFT_AND_RIGHT :: 6;
        FILL_BILINEAR_TOP_AND_BOTTOM :: 7;
        FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE :: 8;
    }
}

TextureRect :: struct {    // 709

        #as using base: OpaqueClass;

    ExpandMode :: enum s32 {
        EXPAND_KEEP_SIZE :: 0;
        EXPAND_IGNORE_SIZE :: 1;
        EXPAND_FIT_WIDTH :: 2;
        EXPAND_FIT_WIDTH_PROPORTIONAL :: 3;
        EXPAND_FIT_HEIGHT :: 4;
        EXPAND_FIT_HEIGHT_PROPORTIONAL :: 5;
    }

    StretchMode :: enum s32 {
        STRETCH_SCALE :: 0;
        STRETCH_TILE :: 1;
        STRETCH_KEEP :: 2;
        STRETCH_KEEP_CENTERED :: 3;
        STRETCH_KEEP_ASPECT :: 4;
        STRETCH_KEEP_ASPECT_CENTERED :: 5;
        STRETCH_KEEP_ASPECT_COVERED :: 6;
    }
}

Theme :: struct {    // 710

        #as using base: OpaqueClass;

    DataType :: enum s32 {
        DATA_TYPE_COLOR :: 0;
        DATA_TYPE_CONSTANT :: 1;
        DATA_TYPE_FONT :: 2;
        DATA_TYPE_FONT_SIZE :: 3;
        DATA_TYPE_ICON :: 4;
        DATA_TYPE_STYLEBOX :: 5;
        DATA_TYPE_MAX :: 6;
    }
}

ThemeDB :: struct { #as using base: OpaqueClass; } // 711

Thread :: struct {    // 712

        #as using base: OpaqueClass;

    Priority :: enum s32 {
        PRIORITY_LOW :: 0;
        PRIORITY_NORMAL :: 1;
        PRIORITY_HIGH :: 2;
    }
}

TileData :: struct { #as using base: OpaqueClass; } // 713

TileMap :: struct {    // 714

        #as using base: OpaqueClass;

    VisibilityMode :: enum s32 {
        VISIBILITY_MODE_DEFAULT :: 0;
        VISIBILITY_MODE_FORCE_HIDE :: 2;
        VISIBILITY_MODE_FORCE_SHOW :: 1;
    }
}

TileMapLayerGroup :: struct { #as using base: OpaqueClass; } // 715

TileMapPattern :: struct { #as using base: OpaqueClass; } // 716

TileSet :: struct {    // 717

        #as using base: OpaqueClass;

    TileShape :: enum s32 {
        TILE_SHAPE_SQUARE :: 0;
        TILE_SHAPE_ISOMETRIC :: 1;
        TILE_SHAPE_HALF_OFFSET_SQUARE :: 2;
        TILE_SHAPE_HEXAGON :: 3;
    }

    TileLayout :: enum s32 {
        TILE_LAYOUT_STACKED :: 0;
        TILE_LAYOUT_STACKED_OFFSET :: 1;
        TILE_LAYOUT_STAIRS_RIGHT :: 2;
        TILE_LAYOUT_STAIRS_DOWN :: 3;
        TILE_LAYOUT_DIAMOND_RIGHT :: 4;
        TILE_LAYOUT_DIAMOND_DOWN :: 5;
    }

    TileOffsetAxis :: enum s32 {
        TILE_OFFSET_AXIS_HORIZONTAL :: 0;
        TILE_OFFSET_AXIS_VERTICAL :: 1;
    }

    CellNeighbor :: enum s32 {
        CELL_NEIGHBOR_RIGHT_SIDE :: 0;
        CELL_NEIGHBOR_RIGHT_CORNER :: 1;
        CELL_NEIGHBOR_BOTTOM_RIGHT_SIDE :: 2;
        CELL_NEIGHBOR_BOTTOM_RIGHT_CORNER :: 3;
        CELL_NEIGHBOR_BOTTOM_SIDE :: 4;
        CELL_NEIGHBOR_BOTTOM_CORNER :: 5;
        CELL_NEIGHBOR_BOTTOM_LEFT_SIDE :: 6;
        CELL_NEIGHBOR_BOTTOM_LEFT_CORNER :: 7;
        CELL_NEIGHBOR_LEFT_SIDE :: 8;
        CELL_NEIGHBOR_LEFT_CORNER :: 9;
        CELL_NEIGHBOR_TOP_LEFT_SIDE :: 10;
        CELL_NEIGHBOR_TOP_LEFT_CORNER :: 11;
        CELL_NEIGHBOR_TOP_SIDE :: 12;
        CELL_NEIGHBOR_TOP_CORNER :: 13;
        CELL_NEIGHBOR_TOP_RIGHT_SIDE :: 14;
        CELL_NEIGHBOR_TOP_RIGHT_CORNER :: 15;
    }

    TerrainMode :: enum s32 {
        TERRAIN_MODE_MATCH_CORNERS_AND_SIDES :: 0;
        TERRAIN_MODE_MATCH_CORNERS :: 1;
        TERRAIN_MODE_MATCH_SIDES :: 2;
    }
}

TileSetAtlasSource :: struct {    // 718

        #as using base: OpaqueClass;

    TileAnimationMode :: enum s32 {
        TILE_ANIMATION_MODE_DEFAULT :: 0;
        TILE_ANIMATION_MODE_RANDOM_START_TIMES :: 1;
        TILE_ANIMATION_MODE_MAX :: 2;
    }
}

TileSetScenesCollectionSource :: struct { #as using base: OpaqueClass; } // 719

TileSetSource :: struct { #as using base: OpaqueClass; } // 720

Time :: struct {    // 721

        #as using base: OpaqueClass;

    Month :: enum s32 {
        MONTH_JANUARY :: 1;
        MONTH_FEBRUARY :: 2;
        MONTH_MARCH :: 3;
        MONTH_APRIL :: 4;
        MONTH_MAY :: 5;
        MONTH_JUNE :: 6;
        MONTH_JULY :: 7;
        MONTH_AUGUST :: 8;
        MONTH_SEPTEMBER :: 9;
        MONTH_OCTOBER :: 10;
        MONTH_NOVEMBER :: 11;
        MONTH_DECEMBER :: 12;
    }

    Weekday :: enum s32 {
        WEEKDAY_SUNDAY :: 0;
        WEEKDAY_MONDAY :: 1;
        WEEKDAY_TUESDAY :: 2;
        WEEKDAY_WEDNESDAY :: 3;
        WEEKDAY_THURSDAY :: 4;
        WEEKDAY_FRIDAY :: 5;
        WEEKDAY_SATURDAY :: 6;
    }
}

Timer :: struct {    // 722

        #as using base: OpaqueClass;

    TimerProcessCallback :: enum s32 {
        TIMER_PROCESS_PHYSICS :: 0;
        TIMER_PROCESS_IDLE :: 1;
    }
}

TorusMesh :: struct { #as using base: OpaqueClass; } // 723

TouchScreenButton :: struct {    // 724

        #as using base: OpaqueClass;

    VisibilityMode :: enum s32 {
        VISIBILITY_ALWAYS :: 0;
        VISIBILITY_TOUCHSCREEN_ONLY :: 1;
    }
}

Translation :: struct { #as using base: OpaqueClass; } // 725

TranslationServer :: struct { #as using base: OpaqueClass; } // 726

Tree :: struct {    // 727

        #as using base: OpaqueClass;

    SelectMode :: enum s32 {
        SELECT_SINGLE :: 0;
        SELECT_ROW :: 1;
        SELECT_MULTI :: 2;
    }

    DropModeFlags :: enum s32 {
        DROP_MODE_DISABLED :: 0;
        DROP_MODE_ON_ITEM :: 1;
        DROP_MODE_INBETWEEN :: 2;
    }
}

TreeItem :: struct {    // 728

        #as using base: OpaqueClass;

    TreeCellMode :: enum s32 {
        CELL_MODE_STRING :: 0;
        CELL_MODE_CHECK :: 1;
        CELL_MODE_RANGE :: 2;
        CELL_MODE_ICON :: 3;
        CELL_MODE_CUSTOM :: 4;
    }
}

TriangleMesh :: struct { #as using base: OpaqueClass; } // 729

TubeTrailMesh :: struct { #as using base: OpaqueClass; } // 730

Tween :: struct {    // 731

        #as using base: OpaqueClass;

    TweenProcessMode :: enum s32 {
        TWEEN_PROCESS_PHYSICS :: 0;
        TWEEN_PROCESS_IDLE :: 1;
    }

    TweenPauseMode :: enum s32 {
        TWEEN_PAUSE_BOUND :: 0;
        TWEEN_PAUSE_STOP :: 1;
        TWEEN_PAUSE_PROCESS :: 2;
    }

    TransitionType :: enum s32 {
        TRANS_LINEAR :: 0;
        TRANS_SINE :: 1;
        TRANS_QUINT :: 2;
        TRANS_QUART :: 3;
        TRANS_QUAD :: 4;
        TRANS_EXPO :: 5;
        TRANS_ELASTIC :: 6;
        TRANS_CUBIC :: 7;
        TRANS_CIRC :: 8;
        TRANS_BOUNCE :: 9;
        TRANS_BACK :: 10;
        TRANS_SPRING :: 11;
    }

    EaseType :: enum s32 {
        EASE_IN :: 0;
        EASE_OUT :: 1;
        EASE_IN_OUT :: 2;
        EASE_OUT_IN :: 3;
    }
}

Tweener :: struct { #as using base: OpaqueClass; } // 732

UDPServer :: struct { #as using base: OpaqueClass; } // 733

UPNP :: struct {    // 734

        #as using base: OpaqueClass;

    UPNPResult :: enum s32 {
        UPNP_RESULT_SUCCESS :: 0;
        UPNP_RESULT_NOT_AUTHORIZED :: 1;
        UPNP_RESULT_PORT_MAPPING_NOT_FOUND :: 2;
        UPNP_RESULT_INCONSISTENT_PARAMETERS :: 3;
        UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY :: 4;
        UPNP_RESULT_ACTION_FAILED :: 5;
        UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED :: 6;
        UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED :: 7;
        UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED :: 8;
        UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD :: 9;
        UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD :: 10;
        UPNP_RESULT_NO_PORT_MAPS_AVAILABLE :: 11;
        UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM :: 12;
        UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING :: 13;
        UPNP_RESULT_SAME_PORT_VALUES_REQUIRED :: 14;
        UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED :: 15;
        UPNP_RESULT_INVALID_GATEWAY :: 16;
        UPNP_RESULT_INVALID_PORT :: 17;
        UPNP_RESULT_INVALID_PROTOCOL :: 18;
        UPNP_RESULT_INVALID_DURATION :: 19;
        UPNP_RESULT_INVALID_ARGS :: 20;
        UPNP_RESULT_INVALID_RESPONSE :: 21;
        UPNP_RESULT_INVALID_PARAM :: 22;
        UPNP_RESULT_HTTP_ERROR :: 23;
        UPNP_RESULT_SOCKET_ERROR :: 24;
        UPNP_RESULT_MEM_ALLOC_ERROR :: 25;
        UPNP_RESULT_NO_GATEWAY :: 26;
        UPNP_RESULT_NO_DEVICES :: 27;
        UPNP_RESULT_UNKNOWN_ERROR :: 28;
    }
}

UPNPDevice :: struct {    // 735

        #as using base: OpaqueClass;

    IGDStatus :: enum s32 {
        IGD_STATUS_OK :: 0;
        IGD_STATUS_HTTP_ERROR :: 1;
        IGD_STATUS_HTTP_EMPTY :: 2;
        IGD_STATUS_NO_URLS :: 3;
        IGD_STATUS_NO_IGD :: 4;
        IGD_STATUS_DISCONNECTED :: 5;
        IGD_STATUS_UNKNOWN_DEVICE :: 6;
        IGD_STATUS_INVALID_CONTROL :: 7;
        IGD_STATUS_MALLOC_ERROR :: 8;
        IGD_STATUS_UNKNOWN_ERROR :: 9;
    }
}

UndoRedo :: struct {    // 736

        #as using base: OpaqueClass;

    MergeMode :: enum s32 {
        MERGE_DISABLE :: 0;
        MERGE_ENDS :: 1;
        MERGE_ALL :: 2;
    }
}

UniformSetCacheRD :: struct { #as using base: OpaqueClass; } // 737

VBoxContainer :: struct { #as using base: OpaqueClass; } // 738

VFlowContainer :: struct { #as using base: OpaqueClass; } // 739

VScrollBar :: struct { #as using base: OpaqueClass; } // 740

VSeparator :: struct { #as using base: OpaqueClass; } // 741

VSlider :: struct { #as using base: OpaqueClass; } // 742

VSplitContainer :: struct { #as using base: OpaqueClass; } // 743

VehicleBody3D :: struct { #as using base: OpaqueClass; } // 744

VehicleWheel3D :: struct { #as using base: OpaqueClass; } // 745

VideoStream :: struct { #as using base: OpaqueClass; } // 746

VideoStreamPlayback :: struct { #as using base: OpaqueClass; } // 747

VideoStreamPlayer :: struct { #as using base: OpaqueClass; } // 748

VideoStreamTheora :: struct { #as using base: OpaqueClass; } // 749

Viewport :: struct {    // 750

        #as using base: OpaqueClass;

    PositionalShadowAtlasQuadrantSubdiv :: enum s32 {
        SHADOW_ATLAS_QUADRANT_SUBDIV_DISABLED :: 0;
        SHADOW_ATLAS_QUADRANT_SUBDIV_1 :: 1;
        SHADOW_ATLAS_QUADRANT_SUBDIV_4 :: 2;
        SHADOW_ATLAS_QUADRANT_SUBDIV_16 :: 3;
        SHADOW_ATLAS_QUADRANT_SUBDIV_64 :: 4;
        SHADOW_ATLAS_QUADRANT_SUBDIV_256 :: 5;
        SHADOW_ATLAS_QUADRANT_SUBDIV_1024 :: 6;
        SHADOW_ATLAS_QUADRANT_SUBDIV_MAX :: 7;
    }

    Scaling3DMode :: enum s32 {
        SCALING_3D_MODE_BILINEAR :: 0;
        SCALING_3D_MODE_FSR :: 1;
        SCALING_3D_MODE_FSR2 :: 2;
        SCALING_3D_MODE_MAX :: 3;
    }

    MSAA :: enum s32 {
        MSAA_DISABLED :: 0;
        MSAA_2X :: 1;
        MSAA_4X :: 2;
        MSAA_8X :: 3;
        MSAA_MAX :: 4;
    }

    ScreenSpaceAA :: enum s32 {
        SCREEN_SPACE_AA_DISABLED :: 0;
        SCREEN_SPACE_AA_FXAA :: 1;
        SCREEN_SPACE_AA_MAX :: 2;
    }

    RenderInfo :: enum s32 {
        RENDER_INFO_OBJECTS_IN_FRAME :: 0;
        RENDER_INFO_PRIMITIVES_IN_FRAME :: 1;
        RENDER_INFO_DRAW_CALLS_IN_FRAME :: 2;
        RENDER_INFO_MAX :: 3;
    }

    RenderInfoType :: enum s32 {
        RENDER_INFO_TYPE_VISIBLE :: 0;
        RENDER_INFO_TYPE_SHADOW :: 1;
        RENDER_INFO_TYPE_MAX :: 2;
    }

    DebugDraw :: enum s32 {
        DEBUG_DRAW_DISABLED :: 0;
        DEBUG_DRAW_UNSHADED :: 1;
        DEBUG_DRAW_LIGHTING :: 2;
        DEBUG_DRAW_OVERDRAW :: 3;
        DEBUG_DRAW_WIREFRAME :: 4;
        DEBUG_DRAW_NORMAL_BUFFER :: 5;
        DEBUG_DRAW_VOXEL_GI_ALBEDO :: 6;
        DEBUG_DRAW_VOXEL_GI_LIGHTING :: 7;
        DEBUG_DRAW_VOXEL_GI_EMISSION :: 8;
        DEBUG_DRAW_SHADOW_ATLAS :: 9;
        DEBUG_DRAW_DIRECTIONAL_SHADOW_ATLAS :: 10;
        DEBUG_DRAW_SCENE_LUMINANCE :: 11;
        DEBUG_DRAW_SSAO :: 12;
        DEBUG_DRAW_SSIL :: 13;
        DEBUG_DRAW_PSSM_SPLITS :: 14;
        DEBUG_DRAW_DECAL_ATLAS :: 15;
        DEBUG_DRAW_SDFGI :: 16;
        DEBUG_DRAW_SDFGI_PROBES :: 17;
        DEBUG_DRAW_GI_BUFFER :: 18;
        DEBUG_DRAW_DISABLE_LOD :: 19;
        DEBUG_DRAW_CLUSTER_OMNI_LIGHTS :: 20;
        DEBUG_DRAW_CLUSTER_SPOT_LIGHTS :: 21;
        DEBUG_DRAW_CLUSTER_DECALS :: 22;
        DEBUG_DRAW_CLUSTER_REFLECTION_PROBES :: 23;
        DEBUG_DRAW_OCCLUDERS :: 24;
        DEBUG_DRAW_MOTION_VECTORS :: 25;
        DEBUG_DRAW_INTERNAL_BUFFER :: 26;
    }

    DefaultCanvasItemTextureFilter :: enum s32 {
        DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST :: 0;
        DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR :: 1;
        DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS :: 2;
        DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS :: 3;
        DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_MAX :: 4;
    }

    DefaultCanvasItemTextureRepeat :: enum s32 {
        DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_DISABLED :: 0;
        DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_ENABLED :: 1;
        DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_MIRROR :: 2;
        DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_MAX :: 3;
    }

    SDFOversize :: enum s32 {
        SDF_OVERSIZE_100_PERCENT :: 0;
        SDF_OVERSIZE_120_PERCENT :: 1;
        SDF_OVERSIZE_150_PERCENT :: 2;
        SDF_OVERSIZE_200_PERCENT :: 3;
        SDF_OVERSIZE_MAX :: 4;
    }

    SDFScale :: enum s32 {
        SDF_SCALE_100_PERCENT :: 0;
        SDF_SCALE_50_PERCENT :: 1;
        SDF_SCALE_25_PERCENT :: 2;
        SDF_SCALE_MAX :: 3;
    }

    VRSMode :: enum s32 {
        VRS_DISABLED :: 0;
        VRS_TEXTURE :: 1;
        VRS_XR :: 2;
        VRS_MAX :: 3;
    }
}

ViewportTexture :: struct { #as using base: OpaqueClass; } // 751

VisibleOnScreenEnabler2D :: struct {    // 752

        #as using base: OpaqueClass;

    EnableMode :: enum s32 {
        ENABLE_MODE_INHERIT :: 0;
        ENABLE_MODE_ALWAYS :: 1;
        ENABLE_MODE_WHEN_PAUSED :: 2;
    }
}

VisibleOnScreenEnabler3D :: struct {    // 753

        #as using base: OpaqueClass;

    EnableMode :: enum s32 {
        ENABLE_MODE_INHERIT :: 0;
        ENABLE_MODE_ALWAYS :: 1;
        ENABLE_MODE_WHEN_PAUSED :: 2;
    }
}

VisibleOnScreenNotifier2D :: struct { #as using base: OpaqueClass; } // 754

VisibleOnScreenNotifier3D :: struct { #as using base: OpaqueClass; } // 755

VisualInstance3D :: struct { #as using base: OpaqueClass; } // 756

VisualShader :: struct {    // 757

        #as using base: OpaqueClass;

    Type :: enum s32 {
        TYPE_VERTEX :: 0;
        TYPE_FRAGMENT :: 1;
        TYPE_LIGHT :: 2;
        TYPE_START :: 3;
        TYPE_PROCESS :: 4;
        TYPE_COLLIDE :: 5;
        TYPE_START_CUSTOM :: 6;
        TYPE_PROCESS_CUSTOM :: 7;
        TYPE_SKY :: 8;
        TYPE_FOG :: 9;
        TYPE_MAX :: 10;
    }

    VaryingMode :: enum s32 {
        VARYING_MODE_VERTEX_TO_FRAG_LIGHT :: 0;
        VARYING_MODE_FRAG_TO_LIGHT :: 1;
        VARYING_MODE_MAX :: 2;
    }

    VaryingType :: enum s32 {
        VARYING_TYPE_FLOAT :: 0;
        VARYING_TYPE_INT :: 1;
        VARYING_TYPE_UINT :: 2;
        VARYING_TYPE_VECTOR_2D :: 3;
        VARYING_TYPE_VECTOR_3D :: 4;
        VARYING_TYPE_VECTOR_4D :: 5;
        VARYING_TYPE_BOOLEAN :: 6;
        VARYING_TYPE_TRANSFORM :: 7;
        VARYING_TYPE_MAX :: 8;
    }
}

VisualShaderNode :: struct {    // 758

        #as using base: OpaqueClass;

    PortType :: enum s32 {
        PORT_TYPE_SCALAR :: 0;
        PORT_TYPE_SCALAR_INT :: 1;
        PORT_TYPE_SCALAR_UINT :: 2;
        PORT_TYPE_VECTOR_2D :: 3;
        PORT_TYPE_VECTOR_3D :: 4;
        PORT_TYPE_VECTOR_4D :: 5;
        PORT_TYPE_BOOLEAN :: 6;
        PORT_TYPE_TRANSFORM :: 7;
        PORT_TYPE_SAMPLER :: 8;
        PORT_TYPE_MAX :: 9;
    }
}

VisualShaderNodeBillboard :: struct {    // 759

        #as using base: OpaqueClass;

    BillboardType :: enum s32 {
        BILLBOARD_TYPE_DISABLED :: 0;
        BILLBOARD_TYPE_ENABLED :: 1;
        BILLBOARD_TYPE_FIXED_Y :: 2;
        BILLBOARD_TYPE_PARTICLES :: 3;
        BILLBOARD_TYPE_MAX :: 4;
    }
}

VisualShaderNodeBooleanConstant :: struct { #as using base: OpaqueClass; } // 760

VisualShaderNodeBooleanParameter :: struct { #as using base: OpaqueClass; } // 761

VisualShaderNodeClamp :: struct {    // 762

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_FLOAT :: 0;
        OP_TYPE_INT :: 1;
        OP_TYPE_UINT :: 2;
        OP_TYPE_VECTOR_2D :: 3;
        OP_TYPE_VECTOR_3D :: 4;
        OP_TYPE_VECTOR_4D :: 5;
        OP_TYPE_MAX :: 6;
    }
}

VisualShaderNodeColorConstant :: struct { #as using base: OpaqueClass; } // 763

VisualShaderNodeColorFunc :: struct {    // 764

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_GRAYSCALE :: 0;
        FUNC_HSV2RGB :: 1;
        FUNC_RGB2HSV :: 2;
        FUNC_SEPIA :: 3;
        FUNC_MAX :: 4;
    }
}

VisualShaderNodeColorOp :: struct {    // 765

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_SCREEN :: 0;
        OP_DIFFERENCE :: 1;
        OP_DARKEN :: 2;
        OP_LIGHTEN :: 3;
        OP_OVERLAY :: 4;
        OP_DODGE :: 5;
        OP_BURN :: 6;
        OP_SOFT_LIGHT :: 7;
        OP_HARD_LIGHT :: 8;
        OP_MAX :: 9;
    }
}

VisualShaderNodeColorParameter :: struct { #as using base: OpaqueClass; } // 766

VisualShaderNodeComment :: struct { #as using base: OpaqueClass; } // 767

VisualShaderNodeCompare :: struct {    // 768

        #as using base: OpaqueClass;

    ComparisonType :: enum s32 {
        CTYPE_SCALAR :: 0;
        CTYPE_SCALAR_INT :: 1;
        CTYPE_SCALAR_UINT :: 2;
        CTYPE_VECTOR_2D :: 3;
        CTYPE_VECTOR_3D :: 4;
        CTYPE_VECTOR_4D :: 5;
        CTYPE_BOOLEAN :: 6;
        CTYPE_TRANSFORM :: 7;
        CTYPE_MAX :: 8;
    }

    Function :: enum s32 {
        FUNC_EQUAL :: 0;
        FUNC_NOT_EQUAL :: 1;
        FUNC_GREATER_THAN :: 2;
        FUNC_GREATER_THAN_EQUAL :: 3;
        FUNC_LESS_THAN :: 4;
        FUNC_LESS_THAN_EQUAL :: 5;
        FUNC_MAX :: 6;
    }

    Condition :: enum s32 {
        COND_ALL :: 0;
        COND_ANY :: 1;
        COND_MAX :: 2;
    }
}

VisualShaderNodeConstant :: struct { #as using base: OpaqueClass; } // 769

VisualShaderNodeCubemap :: struct {    // 770

        #as using base: OpaqueClass;

    Source :: enum s32 {
        SOURCE_TEXTURE :: 0;
        SOURCE_PORT :: 1;
        SOURCE_MAX :: 2;
    }

    TextureType :: enum s32 {
        TYPE_DATA :: 0;
        TYPE_COLOR :: 1;
        TYPE_NORMAL_MAP :: 2;
        TYPE_MAX :: 3;
    }
}

VisualShaderNodeCubemapParameter :: struct { #as using base: OpaqueClass; } // 771

VisualShaderNodeCurveTexture :: struct { #as using base: OpaqueClass; } // 772

VisualShaderNodeCurveXYZTexture :: struct { #as using base: OpaqueClass; } // 773

VisualShaderNodeCustom :: struct { #as using base: OpaqueClass; } // 774

VisualShaderNodeDerivativeFunc :: struct {    // 775

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_SCALAR :: 0;
        OP_TYPE_VECTOR_2D :: 1;
        OP_TYPE_VECTOR_3D :: 2;
        OP_TYPE_VECTOR_4D :: 3;
        OP_TYPE_MAX :: 4;
    }

    Function :: enum s32 {
        FUNC_SUM :: 0;
        FUNC_X :: 1;
        FUNC_Y :: 2;
        FUNC_MAX :: 3;
    }

    Precision :: enum s32 {
        PRECISION_NONE :: 0;
        PRECISION_COARSE :: 1;
        PRECISION_FINE :: 2;
        PRECISION_MAX :: 3;
    }
}

VisualShaderNodeDeterminant :: struct { #as using base: OpaqueClass; } // 776

VisualShaderNodeDistanceFade :: struct { #as using base: OpaqueClass; } // 777

VisualShaderNodeDotProduct :: struct { #as using base: OpaqueClass; } // 778

VisualShaderNodeExpression :: struct { #as using base: OpaqueClass; } // 779

VisualShaderNodeFaceForward :: struct { #as using base: OpaqueClass; } // 780

VisualShaderNodeFloatConstant :: struct { #as using base: OpaqueClass; } // 781

VisualShaderNodeFloatFunc :: struct {    // 782

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_SIN :: 0;
        FUNC_COS :: 1;
        FUNC_TAN :: 2;
        FUNC_ASIN :: 3;
        FUNC_ACOS :: 4;
        FUNC_ATAN :: 5;
        FUNC_SINH :: 6;
        FUNC_COSH :: 7;
        FUNC_TANH :: 8;
        FUNC_LOG :: 9;
        FUNC_EXP :: 10;
        FUNC_SQRT :: 11;
        FUNC_ABS :: 12;
        FUNC_SIGN :: 13;
        FUNC_FLOOR :: 14;
        FUNC_ROUND :: 15;
        FUNC_CEIL :: 16;
        FUNC_FRACT :: 17;
        FUNC_SATURATE :: 18;
        FUNC_NEGATE :: 19;
        FUNC_ACOSH :: 20;
        FUNC_ASINH :: 21;
        FUNC_ATANH :: 22;
        FUNC_DEGREES :: 23;
        FUNC_EXP2 :: 24;
        FUNC_INVERSE_SQRT :: 25;
        FUNC_LOG2 :: 26;
        FUNC_RADIANS :: 27;
        FUNC_RECIPROCAL :: 28;
        FUNC_ROUNDEVEN :: 29;
        FUNC_TRUNC :: 30;
        FUNC_ONEMINUS :: 31;
        FUNC_MAX :: 32;
    }
}

VisualShaderNodeFloatOp :: struct {    // 783

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_ADD :: 0;
        OP_SUB :: 1;
        OP_MUL :: 2;
        OP_DIV :: 3;
        OP_MOD :: 4;
        OP_POW :: 5;
        OP_MAX :: 6;
        OP_MIN :: 7;
        OP_ATAN2 :: 8;
        OP_STEP :: 9;
        OP_ENUM_SIZE :: 10;
    }
}

VisualShaderNodeFloatParameter :: struct {    // 784

        #as using base: OpaqueClass;

    Hint :: enum s32 {
        HINT_NONE :: 0;
        HINT_RANGE :: 1;
        HINT_RANGE_STEP :: 2;
        HINT_MAX :: 3;
    }
}

VisualShaderNodeFresnel :: struct { #as using base: OpaqueClass; } // 785

VisualShaderNodeGlobalExpression :: struct { #as using base: OpaqueClass; } // 786

VisualShaderNodeGroupBase :: struct { #as using base: OpaqueClass; } // 787

VisualShaderNodeIf :: struct { #as using base: OpaqueClass; } // 788

VisualShaderNodeInput :: struct { #as using base: OpaqueClass; } // 789

VisualShaderNodeIntConstant :: struct { #as using base: OpaqueClass; } // 790

VisualShaderNodeIntFunc :: struct {    // 791

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_ABS :: 0;
        FUNC_NEGATE :: 1;
        FUNC_SIGN :: 2;
        FUNC_BITWISE_NOT :: 3;
        FUNC_MAX :: 4;
    }
}

VisualShaderNodeIntOp :: struct {    // 792

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_ADD :: 0;
        OP_SUB :: 1;
        OP_MUL :: 2;
        OP_DIV :: 3;
        OP_MOD :: 4;
        OP_MAX :: 5;
        OP_MIN :: 6;
        OP_BITWISE_AND :: 7;
        OP_BITWISE_OR :: 8;
        OP_BITWISE_XOR :: 9;
        OP_BITWISE_LEFT_SHIFT :: 10;
        OP_BITWISE_RIGHT_SHIFT :: 11;
        OP_ENUM_SIZE :: 12;
    }
}

VisualShaderNodeIntParameter :: struct {    // 793

        #as using base: OpaqueClass;

    Hint :: enum s32 {
        HINT_NONE :: 0;
        HINT_RANGE :: 1;
        HINT_RANGE_STEP :: 2;
        HINT_MAX :: 3;
    }
}

VisualShaderNodeIs :: struct {    // 794

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_IS_INF :: 0;
        FUNC_IS_NAN :: 1;
        FUNC_MAX :: 2;
    }
}

VisualShaderNodeLinearSceneDepth :: struct { #as using base: OpaqueClass; } // 795

VisualShaderNodeMix :: struct {    // 796

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_SCALAR :: 0;
        OP_TYPE_VECTOR_2D :: 1;
        OP_TYPE_VECTOR_2D_SCALAR :: 2;
        OP_TYPE_VECTOR_3D :: 3;
        OP_TYPE_VECTOR_3D_SCALAR :: 4;
        OP_TYPE_VECTOR_4D :: 5;
        OP_TYPE_VECTOR_4D_SCALAR :: 6;
        OP_TYPE_MAX :: 7;
    }
}

VisualShaderNodeMultiplyAdd :: struct {    // 797

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_SCALAR :: 0;
        OP_TYPE_VECTOR_2D :: 1;
        OP_TYPE_VECTOR_3D :: 2;
        OP_TYPE_VECTOR_4D :: 3;
        OP_TYPE_MAX :: 4;
    }
}

VisualShaderNodeOuterProduct :: struct { #as using base: OpaqueClass; } // 798

VisualShaderNodeOutput :: struct { #as using base: OpaqueClass; } // 799

VisualShaderNodeParameter :: struct {    // 800

        #as using base: OpaqueClass;

    Qualifier :: enum s32 {
        QUAL_NONE :: 0;
        QUAL_GLOBAL :: 1;
        QUAL_INSTANCE :: 2;
        QUAL_MAX :: 3;
    }
}

VisualShaderNodeParameterRef :: struct { #as using base: OpaqueClass; } // 801

VisualShaderNodeParticleAccelerator :: struct {    // 802

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        MODE_LINEAR :: 0;
        MODE_RADIAL :: 1;
        MODE_TANGENTIAL :: 2;
        MODE_MAX :: 3;
    }
}

VisualShaderNodeParticleBoxEmitter :: struct { #as using base: OpaqueClass; } // 803

VisualShaderNodeParticleConeVelocity :: struct { #as using base: OpaqueClass; } // 804

VisualShaderNodeParticleEmit :: struct {    // 805

        #as using base: OpaqueClass;

    EmitFlags :: enum s32 {
        EMIT_FLAG_POSITION :: 1;
        EMIT_FLAG_ROT_SCALE :: 2;
        EMIT_FLAG_VELOCITY :: 4;
        EMIT_FLAG_COLOR :: 8;
        EMIT_FLAG_CUSTOM :: 16;
    }
}

VisualShaderNodeParticleEmitter :: struct { #as using base: OpaqueClass; } // 806

VisualShaderNodeParticleMeshEmitter :: struct { #as using base: OpaqueClass; } // 807

VisualShaderNodeParticleMultiplyByAxisAngle :: struct { #as using base: OpaqueClass; } // 808

VisualShaderNodeParticleOutput :: struct { #as using base: OpaqueClass; } // 809

VisualShaderNodeParticleRandomness :: struct {    // 810

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_SCALAR :: 0;
        OP_TYPE_VECTOR_2D :: 1;
        OP_TYPE_VECTOR_3D :: 2;
        OP_TYPE_VECTOR_4D :: 3;
        OP_TYPE_MAX :: 4;
    }
}

VisualShaderNodeParticleRingEmitter :: struct { #as using base: OpaqueClass; } // 811

VisualShaderNodeParticleSphereEmitter :: struct { #as using base: OpaqueClass; } // 812

VisualShaderNodeProximityFade :: struct { #as using base: OpaqueClass; } // 813

VisualShaderNodeRandomRange :: struct { #as using base: OpaqueClass; } // 814

VisualShaderNodeRemap :: struct { #as using base: OpaqueClass; } // 815

VisualShaderNodeResizableBase :: struct { #as using base: OpaqueClass; } // 816

VisualShaderNodeRotationByAxis :: struct { #as using base: OpaqueClass; } // 817

VisualShaderNodeSDFRaymarch :: struct { #as using base: OpaqueClass; } // 818

VisualShaderNodeSDFToScreenUV :: struct { #as using base: OpaqueClass; } // 819

VisualShaderNodeSample3D :: struct {    // 820

        #as using base: OpaqueClass;

    Source :: enum s32 {
        SOURCE_TEXTURE :: 0;
        SOURCE_PORT :: 1;
        SOURCE_MAX :: 2;
    }
}

VisualShaderNodeScreenNormalWorldSpace :: struct { #as using base: OpaqueClass; } // 821

VisualShaderNodeScreenUVToSDF :: struct { #as using base: OpaqueClass; } // 822

VisualShaderNodeSmoothStep :: struct {    // 823

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_SCALAR :: 0;
        OP_TYPE_VECTOR_2D :: 1;
        OP_TYPE_VECTOR_2D_SCALAR :: 2;
        OP_TYPE_VECTOR_3D :: 3;
        OP_TYPE_VECTOR_3D_SCALAR :: 4;
        OP_TYPE_VECTOR_4D :: 5;
        OP_TYPE_VECTOR_4D_SCALAR :: 6;
        OP_TYPE_MAX :: 7;
    }
}

VisualShaderNodeStep :: struct {    // 824

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_SCALAR :: 0;
        OP_TYPE_VECTOR_2D :: 1;
        OP_TYPE_VECTOR_2D_SCALAR :: 2;
        OP_TYPE_VECTOR_3D :: 3;
        OP_TYPE_VECTOR_3D_SCALAR :: 4;
        OP_TYPE_VECTOR_4D :: 5;
        OP_TYPE_VECTOR_4D_SCALAR :: 6;
        OP_TYPE_MAX :: 7;
    }
}

VisualShaderNodeSwitch :: struct {    // 825

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_FLOAT :: 0;
        OP_TYPE_INT :: 1;
        OP_TYPE_UINT :: 2;
        OP_TYPE_VECTOR_2D :: 3;
        OP_TYPE_VECTOR_3D :: 4;
        OP_TYPE_VECTOR_4D :: 5;
        OP_TYPE_BOOLEAN :: 6;
        OP_TYPE_TRANSFORM :: 7;
        OP_TYPE_MAX :: 8;
    }
}

VisualShaderNodeTexture :: struct {    // 826

        #as using base: OpaqueClass;

    Source :: enum s32 {
        SOURCE_TEXTURE :: 0;
        SOURCE_SCREEN :: 1;
        SOURCE_2D_TEXTURE :: 2;
        SOURCE_2D_NORMAL :: 3;
        SOURCE_DEPTH :: 4;
        SOURCE_PORT :: 5;
        SOURCE_3D_NORMAL :: 6;
        SOURCE_ROUGHNESS :: 7;
        SOURCE_MAX :: 8;
    }

    TextureType :: enum s32 {
        TYPE_DATA :: 0;
        TYPE_COLOR :: 1;
        TYPE_NORMAL_MAP :: 2;
        TYPE_MAX :: 3;
    }
}

VisualShaderNodeTexture2DArray :: struct { #as using base: OpaqueClass; } // 827

VisualShaderNodeTexture2DArrayParameter :: struct { #as using base: OpaqueClass; } // 828

VisualShaderNodeTexture2DParameter :: struct { #as using base: OpaqueClass; } // 829

VisualShaderNodeTexture3D :: struct { #as using base: OpaqueClass; } // 830

VisualShaderNodeTexture3DParameter :: struct { #as using base: OpaqueClass; } // 831

VisualShaderNodeTextureParameter :: struct {    // 832

        #as using base: OpaqueClass;

    TextureType :: enum s32 {
        TYPE_DATA :: 0;
        TYPE_COLOR :: 1;
        TYPE_NORMAL_MAP :: 2;
        TYPE_ANISOTROPY :: 3;
        TYPE_MAX :: 4;
    }

    ColorDefault :: enum s32 {
        COLOR_DEFAULT_WHITE :: 0;
        COLOR_DEFAULT_BLACK :: 1;
        COLOR_DEFAULT_TRANSPARENT :: 2;
        COLOR_DEFAULT_MAX :: 3;
    }

    TextureFilter :: enum s32 {
        FILTER_DEFAULT :: 0;
        FILTER_NEAREST :: 1;
        FILTER_LINEAR :: 2;
        FILTER_NEAREST_MIPMAP :: 3;
        FILTER_LINEAR_MIPMAP :: 4;
        FILTER_NEAREST_MIPMAP_ANISOTROPIC :: 5;
        FILTER_LINEAR_MIPMAP_ANISOTROPIC :: 6;
        FILTER_MAX :: 7;
    }

    TextureRepeat :: enum s32 {
        REPEAT_DEFAULT :: 0;
        REPEAT_ENABLED :: 1;
        REPEAT_DISABLED :: 2;
        REPEAT_MAX :: 3;
    }

    TextureSource :: enum s32 {
        SOURCE_NONE :: 0;
        SOURCE_SCREEN :: 1;
        SOURCE_DEPTH :: 2;
        SOURCE_NORMAL_ROUGHNESS :: 3;
        SOURCE_MAX :: 4;
    }
}

VisualShaderNodeTextureParameterTriplanar :: struct { #as using base: OpaqueClass; } // 833

VisualShaderNodeTextureSDF :: struct { #as using base: OpaqueClass; } // 834

VisualShaderNodeTextureSDFNormal :: struct { #as using base: OpaqueClass; } // 835

VisualShaderNodeTransformCompose :: struct { #as using base: OpaqueClass; } // 836

VisualShaderNodeTransformConstant :: struct { #as using base: OpaqueClass; } // 837

VisualShaderNodeTransformDecompose :: struct { #as using base: OpaqueClass; } // 838

VisualShaderNodeTransformFunc :: struct {    // 839

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_INVERSE :: 0;
        FUNC_TRANSPOSE :: 1;
        FUNC_MAX :: 2;
    }
}

VisualShaderNodeTransformOp :: struct {    // 840

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_AxB :: 0;
        OP_BxA :: 1;
        OP_AxB_COMP :: 2;
        OP_BxA_COMP :: 3;
        OP_ADD :: 4;
        OP_A_MINUS_B :: 5;
        OP_B_MINUS_A :: 6;
        OP_A_DIV_B :: 7;
        OP_B_DIV_A :: 8;
        OP_MAX :: 9;
    }
}

VisualShaderNodeTransformParameter :: struct { #as using base: OpaqueClass; } // 841

VisualShaderNodeTransformVecMult :: struct {    // 842

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_AxB :: 0;
        OP_BxA :: 1;
        OP_3x3_AxB :: 2;
        OP_3x3_BxA :: 3;
        OP_MAX :: 4;
    }
}

VisualShaderNodeUIntConstant :: struct { #as using base: OpaqueClass; } // 843

VisualShaderNodeUIntFunc :: struct {    // 844

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_NEGATE :: 0;
        FUNC_BITWISE_NOT :: 1;
        FUNC_MAX :: 2;
    }
}

VisualShaderNodeUIntOp :: struct {    // 845

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_ADD :: 0;
        OP_SUB :: 1;
        OP_MUL :: 2;
        OP_DIV :: 3;
        OP_MOD :: 4;
        OP_MAX :: 5;
        OP_MIN :: 6;
        OP_BITWISE_AND :: 7;
        OP_BITWISE_OR :: 8;
        OP_BITWISE_XOR :: 9;
        OP_BITWISE_LEFT_SHIFT :: 10;
        OP_BITWISE_RIGHT_SHIFT :: 11;
        OP_ENUM_SIZE :: 12;
    }
}

VisualShaderNodeUIntParameter :: struct { #as using base: OpaqueClass; } // 846

VisualShaderNodeUVFunc :: struct {    // 847

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_PANNING :: 0;
        FUNC_SCALING :: 1;
        FUNC_MAX :: 2;
    }
}

VisualShaderNodeUVPolarCoord :: struct { #as using base: OpaqueClass; } // 848

VisualShaderNodeVarying :: struct { #as using base: OpaqueClass; } // 849

VisualShaderNodeVaryingGetter :: struct { #as using base: OpaqueClass; } // 850

VisualShaderNodeVaryingSetter :: struct { #as using base: OpaqueClass; } // 851

VisualShaderNodeVec2Constant :: struct { #as using base: OpaqueClass; } // 852

VisualShaderNodeVec2Parameter :: struct { #as using base: OpaqueClass; } // 853

VisualShaderNodeVec3Constant :: struct { #as using base: OpaqueClass; } // 854

VisualShaderNodeVec3Parameter :: struct { #as using base: OpaqueClass; } // 855

VisualShaderNodeVec4Constant :: struct { #as using base: OpaqueClass; } // 856

VisualShaderNodeVec4Parameter :: struct { #as using base: OpaqueClass; } // 857

VisualShaderNodeVectorBase :: struct {    // 858

        #as using base: OpaqueClass;

    OpType :: enum s32 {
        OP_TYPE_VECTOR_2D :: 0;
        OP_TYPE_VECTOR_3D :: 1;
        OP_TYPE_VECTOR_4D :: 2;
        OP_TYPE_MAX :: 3;
    }
}

VisualShaderNodeVectorCompose :: struct { #as using base: OpaqueClass; } // 859

VisualShaderNodeVectorDecompose :: struct { #as using base: OpaqueClass; } // 860

VisualShaderNodeVectorDistance :: struct { #as using base: OpaqueClass; } // 861

VisualShaderNodeVectorFunc :: struct {    // 862

        #as using base: OpaqueClass;

    Function :: enum s32 {
        FUNC_NORMALIZE :: 0;
        FUNC_SATURATE :: 1;
        FUNC_NEGATE :: 2;
        FUNC_RECIPROCAL :: 3;
        FUNC_ABS :: 4;
        FUNC_ACOS :: 5;
        FUNC_ACOSH :: 6;
        FUNC_ASIN :: 7;
        FUNC_ASINH :: 8;
        FUNC_ATAN :: 9;
        FUNC_ATANH :: 10;
        FUNC_CEIL :: 11;
        FUNC_COS :: 12;
        FUNC_COSH :: 13;
        FUNC_DEGREES :: 14;
        FUNC_EXP :: 15;
        FUNC_EXP2 :: 16;
        FUNC_FLOOR :: 17;
        FUNC_FRACT :: 18;
        FUNC_INVERSE_SQRT :: 19;
        FUNC_LOG :: 20;
        FUNC_LOG2 :: 21;
        FUNC_RADIANS :: 22;
        FUNC_ROUND :: 23;
        FUNC_ROUNDEVEN :: 24;
        FUNC_SIGN :: 25;
        FUNC_SIN :: 26;
        FUNC_SINH :: 27;
        FUNC_SQRT :: 28;
        FUNC_TAN :: 29;
        FUNC_TANH :: 30;
        FUNC_TRUNC :: 31;
        FUNC_ONEMINUS :: 32;
        FUNC_MAX :: 33;
    }
}

VisualShaderNodeVectorLen :: struct { #as using base: OpaqueClass; } // 863

VisualShaderNodeVectorOp :: struct {    // 864

        #as using base: OpaqueClass;

    Operator :: enum s32 {
        OP_ADD :: 0;
        OP_SUB :: 1;
        OP_MUL :: 2;
        OP_DIV :: 3;
        OP_MOD :: 4;
        OP_POW :: 5;
        OP_MAX :: 6;
        OP_MIN :: 7;
        OP_CROSS :: 8;
        OP_ATAN2 :: 9;
        OP_REFLECT :: 10;
        OP_STEP :: 11;
        OP_ENUM_SIZE :: 12;
    }
}

VisualShaderNodeVectorRefract :: struct { #as using base: OpaqueClass; } // 865

VisualShaderNodeWorldPositionFromDepth :: struct { #as using base: OpaqueClass; } // 866

VoxelGI :: struct {    // 867

        #as using base: OpaqueClass;

    Subdiv :: enum s32 {
        SUBDIV_64 :: 0;
        SUBDIV_128 :: 1;
        SUBDIV_256 :: 2;
        SUBDIV_512 :: 3;
        SUBDIV_MAX :: 4;
    }
}

VoxelGIData :: struct { #as using base: OpaqueClass; } // 868

WeakRef :: struct { #as using base: OpaqueClass; } // 869

WebRTCDataChannel :: struct {    // 870

        #as using base: OpaqueClass;

    WriteMode :: enum s32 {
        WRITE_MODE_TEXT :: 0;
        WRITE_MODE_BINARY :: 1;
    }

    ChannelState :: enum s32 {
        STATE_CONNECTING :: 0;
        STATE_OPEN :: 1;
        STATE_CLOSING :: 2;
        STATE_CLOSED :: 3;
    }
}

WebRTCDataChannelExtension :: struct { #as using base: OpaqueClass; } // 871

WebRTCMultiplayerPeer :: struct { #as using base: OpaqueClass; } // 872

WebRTCPeerConnection :: struct {    // 873

        #as using base: OpaqueClass;

    ConnectionState :: enum s32 {
        STATE_NEW :: 0;
        STATE_CONNECTING :: 1;
        STATE_CONNECTED :: 2;
        STATE_DISCONNECTED :: 3;
        STATE_FAILED :: 4;
        STATE_CLOSED :: 5;
    }

    GatheringState :: enum s32 {
        GATHERING_STATE_NEW :: 0;
        GATHERING_STATE_GATHERING :: 1;
        GATHERING_STATE_COMPLETE :: 2;
    }

    SignalingState :: enum s32 {
        SIGNALING_STATE_STABLE :: 0;
        SIGNALING_STATE_HAVE_LOCAL_OFFER :: 1;
        SIGNALING_STATE_HAVE_REMOTE_OFFER :: 2;
        SIGNALING_STATE_HAVE_LOCAL_PRANSWER :: 3;
        SIGNALING_STATE_HAVE_REMOTE_PRANSWER :: 4;
        SIGNALING_STATE_CLOSED :: 5;
    }
}

WebRTCPeerConnectionExtension :: struct { #as using base: OpaqueClass; } // 874

WebSocketMultiplayerPeer :: struct { #as using base: OpaqueClass; } // 875

WebSocketPeer :: struct {    // 876

        #as using base: OpaqueClass;

    WriteMode :: enum s32 {
        WRITE_MODE_TEXT :: 0;
        WRITE_MODE_BINARY :: 1;
    }

    State :: enum s32 {
        STATE_CONNECTING :: 0;
        STATE_OPEN :: 1;
        STATE_CLOSING :: 2;
        STATE_CLOSED :: 3;
    }
}

WebXRInterface :: struct {    // 877

        #as using base: OpaqueClass;

    TargetRayMode :: enum s32 {
        TARGET_RAY_MODE_UNKNOWN :: 0;
        TARGET_RAY_MODE_GAZE :: 1;
        TARGET_RAY_MODE_TRACKED_POINTER :: 2;
        TARGET_RAY_MODE_SCREEN :: 3;
    }
}

Window :: struct {    // 878

        #as using base: OpaqueClass;

    Mode :: enum s32 {
        MODE_WINDOWED :: 0;
        MODE_MINIMIZED :: 1;
        MODE_MAXIMIZED :: 2;
        MODE_FULLSCREEN :: 3;
        MODE_EXCLUSIVE_FULLSCREEN :: 4;
    }

    Flags :: enum s32 {
        FLAG_RESIZE_DISABLED :: 0;
        FLAG_BORDERLESS :: 1;
        FLAG_ALWAYS_ON_TOP :: 2;
        FLAG_TRANSPARENT :: 3;
        FLAG_NO_FOCUS :: 4;
        FLAG_POPUP :: 5;
        FLAG_EXTEND_TO_TITLE :: 6;
        FLAG_MOUSE_PASSTHROUGH :: 7;
        FLAG_MAX :: 8;
    }

    ContentScaleMode :: enum s32 {
        CONTENT_SCALE_MODE_DISABLED :: 0;
        CONTENT_SCALE_MODE_CANVAS_ITEMS :: 1;
        CONTENT_SCALE_MODE_VIEWPORT :: 2;
    }

    ContentScaleAspect :: enum s32 {
        CONTENT_SCALE_ASPECT_IGNORE :: 0;
        CONTENT_SCALE_ASPECT_KEEP :: 1;
        CONTENT_SCALE_ASPECT_KEEP_WIDTH :: 2;
        CONTENT_SCALE_ASPECT_KEEP_HEIGHT :: 3;
        CONTENT_SCALE_ASPECT_EXPAND :: 4;
    }

    ContentScaleStretch :: enum s32 {
        CONTENT_SCALE_STRETCH_FRACTIONAL :: 0;
        CONTENT_SCALE_STRETCH_INTEGER :: 1;
    }

    LayoutDirection :: enum s32 {
        LAYOUT_DIRECTION_INHERITED :: 0;
        LAYOUT_DIRECTION_LOCALE :: 1;
        LAYOUT_DIRECTION_LTR :: 2;
        LAYOUT_DIRECTION_RTL :: 3;
    }

    WindowInitialPosition :: enum s32 {
        WINDOW_INITIAL_POSITION_ABSOLUTE :: 0;
        WINDOW_INITIAL_POSITION_CENTER_PRIMARY_SCREEN :: 1;
        WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN :: 2;
        WINDOW_INITIAL_POSITION_CENTER_OTHER_SCREEN :: 3;
        WINDOW_INITIAL_POSITION_CENTER_SCREEN_WITH_MOUSE_FOCUS :: 4;
        WINDOW_INITIAL_POSITION_CENTER_SCREEN_WITH_KEYBOARD_FOCUS :: 5;
    }
}

WorkerThreadPool :: struct { #as using base: OpaqueClass; } // 879

World2D :: struct { #as using base: OpaqueClass; } // 880

World3D :: struct { #as using base: OpaqueClass; } // 881

WorldBoundaryShape2D :: struct { #as using base: OpaqueClass; } // 882

WorldBoundaryShape3D :: struct { #as using base: OpaqueClass; } // 883

WorldEnvironment :: struct { #as using base: OpaqueClass; } // 884

X509Certificate :: struct { #as using base: OpaqueClass; } // 885

XMLParser :: struct {    // 886

        #as using base: OpaqueClass;

    NodeType :: enum s32 {
        NODE_NONE :: 0;
        NODE_ELEMENT :: 1;
        NODE_ELEMENT_END :: 2;
        NODE_TEXT :: 3;
        NODE_COMMENT :: 4;
        NODE_CDATA :: 5;
        NODE_UNKNOWN :: 6;
    }
}

XRAnchor3D :: struct { #as using base: OpaqueClass; } // 887

XRBodyModifier3D :: struct {    // 888

        #as using base: OpaqueClass;

    BodyUpdate :: enum u64 {
        BODY_UPDATE_UPPER_BODY :: 1;
        BODY_UPDATE_LOWER_BODY :: 2;
        BODY_UPDATE_HANDS :: 4;
    } @bitfield

    BoneUpdate :: enum s32 {
        BONE_UPDATE_FULL :: 0;
        BONE_UPDATE_ROTATION_ONLY :: 1;
        BONE_UPDATE_MAX :: 2;
    }
}

XRBodyTracker :: struct {    // 889

        #as using base: OpaqueClass;

    BodyFlags :: enum u64 {
        BODY_FLAG_UPPER_BODY_SUPPORTED :: 1;
        BODY_FLAG_LOWER_BODY_SUPPORTED :: 2;
        BODY_FLAG_HANDS_SUPPORTED :: 4;
    } @bitfield

    Joint :: enum s32 {
        JOINT_ROOT :: 0;
        JOINT_HIPS :: 1;
        JOINT_SPINE :: 2;
        JOINT_CHEST :: 3;
        JOINT_UPPER_CHEST :: 4;
        JOINT_NECK :: 5;
        JOINT_HEAD :: 6;
        JOINT_HEAD_TIP :: 7;
        JOINT_LEFT_SHOULDER :: 8;
        JOINT_LEFT_UPPER_ARM :: 9;
        JOINT_LEFT_LOWER_ARM :: 10;
        JOINT_RIGHT_SHOULDER :: 11;
        JOINT_RIGHT_UPPER_ARM :: 12;
        JOINT_RIGHT_LOWER_ARM :: 13;
        JOINT_LEFT_UPPER_LEG :: 14;
        JOINT_LEFT_LOWER_LEG :: 15;
        JOINT_LEFT_FOOT :: 16;
        JOINT_LEFT_TOES :: 17;
        JOINT_RIGHT_UPPER_LEG :: 18;
        JOINT_RIGHT_LOWER_LEG :: 19;
        JOINT_RIGHT_FOOT :: 20;
        JOINT_RIGHT_TOES :: 21;
        JOINT_LEFT_HAND :: 22;
        JOINT_LEFT_PALM :: 23;
        JOINT_LEFT_WRIST :: 24;
        JOINT_LEFT_THUMB_METACARPAL :: 25;
        JOINT_LEFT_THUMB_PHALANX_PROXIMAL :: 26;
        JOINT_LEFT_THUMB_PHALANX_DISTAL :: 27;
        JOINT_LEFT_THUMB_TIP :: 28;
        JOINT_LEFT_INDEX_FINGER_METACARPAL :: 29;
        JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL :: 30;
        JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE :: 31;
        JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL :: 32;
        JOINT_LEFT_INDEX_FINGER_TIP :: 33;
        JOINT_LEFT_MIDDLE_FINGER_METACARPAL :: 34;
        JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL :: 35;
        JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE :: 36;
        JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL :: 37;
        JOINT_LEFT_MIDDLE_FINGER_TIP :: 38;
        JOINT_LEFT_RING_FINGER_METACARPAL :: 39;
        JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL :: 40;
        JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE :: 41;
        JOINT_LEFT_RING_FINGER_PHALANX_DISTAL :: 42;
        JOINT_LEFT_RING_FINGER_TIP :: 43;
        JOINT_LEFT_PINKY_FINGER_METACARPAL :: 44;
        JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL :: 45;
        JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE :: 46;
        JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL :: 47;
        JOINT_LEFT_PINKY_FINGER_TIP :: 48;
        JOINT_RIGHT_HAND :: 49;
        JOINT_RIGHT_PALM :: 50;
        JOINT_RIGHT_WRIST :: 51;
        JOINT_RIGHT_THUMB_METACARPAL :: 52;
        JOINT_RIGHT_THUMB_PHALANX_PROXIMAL :: 53;
        JOINT_RIGHT_THUMB_PHALANX_DISTAL :: 54;
        JOINT_RIGHT_THUMB_TIP :: 55;
        JOINT_RIGHT_INDEX_FINGER_METACARPAL :: 56;
        JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL :: 57;
        JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE :: 58;
        JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL :: 59;
        JOINT_RIGHT_INDEX_FINGER_TIP :: 60;
        JOINT_RIGHT_MIDDLE_FINGER_METACARPAL :: 61;
        JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL :: 62;
        JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE :: 63;
        JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL :: 64;
        JOINT_RIGHT_MIDDLE_FINGER_TIP :: 65;
        JOINT_RIGHT_RING_FINGER_METACARPAL :: 66;
        JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL :: 67;
        JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE :: 68;
        JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL :: 69;
        JOINT_RIGHT_RING_FINGER_TIP :: 70;
        JOINT_RIGHT_PINKY_FINGER_METACARPAL :: 71;
        JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL :: 72;
        JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE :: 73;
        JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL :: 74;
        JOINT_RIGHT_PINKY_FINGER_TIP :: 75;
        JOINT_MAX :: 76;
    }

    JointFlags :: enum u64 {
        JOINT_FLAG_ORIENTATION_VALID :: 1;
        JOINT_FLAG_ORIENTATION_TRACKED :: 2;
        JOINT_FLAG_POSITION_VALID :: 4;
        JOINT_FLAG_POSITION_TRACKED :: 8;
    } @bitfield
}

XRCamera3D :: struct { #as using base: OpaqueClass; } // 890

XRController3D :: struct { #as using base: OpaqueClass; } // 891

XRFaceModifier3D :: struct { #as using base: OpaqueClass; } // 892

XRFaceTracker :: struct {    // 893

        #as using base: OpaqueClass;

    BlendShapeEntry :: enum s32 {
        FT_EYE_LOOK_OUT_RIGHT :: 0;
        FT_EYE_LOOK_IN_RIGHT :: 1;
        FT_EYE_LOOK_UP_RIGHT :: 2;
        FT_EYE_LOOK_DOWN_RIGHT :: 3;
        FT_EYE_LOOK_OUT_LEFT :: 4;
        FT_EYE_LOOK_IN_LEFT :: 5;
        FT_EYE_LOOK_UP_LEFT :: 6;
        FT_EYE_LOOK_DOWN_LEFT :: 7;
        FT_EYE_CLOSED_RIGHT :: 8;
        FT_EYE_CLOSED_LEFT :: 9;
        FT_EYE_SQUINT_RIGHT :: 10;
        FT_EYE_SQUINT_LEFT :: 11;
        FT_EYE_WIDE_RIGHT :: 12;
        FT_EYE_WIDE_LEFT :: 13;
        FT_EYE_DILATION_RIGHT :: 14;
        FT_EYE_DILATION_LEFT :: 15;
        FT_EYE_CONSTRICT_RIGHT :: 16;
        FT_EYE_CONSTRICT_LEFT :: 17;
        FT_BROW_PINCH_RIGHT :: 18;
        FT_BROW_PINCH_LEFT :: 19;
        FT_BROW_LOWERER_RIGHT :: 20;
        FT_BROW_LOWERER_LEFT :: 21;
        FT_BROW_INNER_UP_RIGHT :: 22;
        FT_BROW_INNER_UP_LEFT :: 23;
        FT_BROW_OUTER_UP_RIGHT :: 24;
        FT_BROW_OUTER_UP_LEFT :: 25;
        FT_NOSE_SNEER_RIGHT :: 26;
        FT_NOSE_SNEER_LEFT :: 27;
        FT_NASAL_DILATION_RIGHT :: 28;
        FT_NASAL_DILATION_LEFT :: 29;
        FT_NASAL_CONSTRICT_RIGHT :: 30;
        FT_NASAL_CONSTRICT_LEFT :: 31;
        FT_CHEEK_SQUINT_RIGHT :: 32;
        FT_CHEEK_SQUINT_LEFT :: 33;
        FT_CHEEK_PUFF_RIGHT :: 34;
        FT_CHEEK_PUFF_LEFT :: 35;
        FT_CHEEK_SUCK_RIGHT :: 36;
        FT_CHEEK_SUCK_LEFT :: 37;
        FT_JAW_OPEN :: 38;
        FT_MOUTH_CLOSED :: 39;
        FT_JAW_RIGHT :: 40;
        FT_JAW_LEFT :: 41;
        FT_JAW_FORWARD :: 42;
        FT_JAW_BACKWARD :: 43;
        FT_JAW_CLENCH :: 44;
        FT_JAW_MANDIBLE_RAISE :: 45;
        FT_LIP_SUCK_UPPER_RIGHT :: 46;
        FT_LIP_SUCK_UPPER_LEFT :: 47;
        FT_LIP_SUCK_LOWER_RIGHT :: 48;
        FT_LIP_SUCK_LOWER_LEFT :: 49;
        FT_LIP_SUCK_CORNER_RIGHT :: 50;
        FT_LIP_SUCK_CORNER_LEFT :: 51;
        FT_LIP_FUNNEL_UPPER_RIGHT :: 52;
        FT_LIP_FUNNEL_UPPER_LEFT :: 53;
        FT_LIP_FUNNEL_LOWER_RIGHT :: 54;
        FT_LIP_FUNNEL_LOWER_LEFT :: 55;
        FT_LIP_PUCKER_UPPER_RIGHT :: 56;
        FT_LIP_PUCKER_UPPER_LEFT :: 57;
        FT_LIP_PUCKER_LOWER_RIGHT :: 58;
        FT_LIP_PUCKER_LOWER_LEFT :: 59;
        FT_MOUTH_UPPER_UP_RIGHT :: 60;
        FT_MOUTH_UPPER_UP_LEFT :: 61;
        FT_MOUTH_LOWER_DOWN_RIGHT :: 62;
        FT_MOUTH_LOWER_DOWN_LEFT :: 63;
        FT_MOUTH_UPPER_DEEPEN_RIGHT :: 64;
        FT_MOUTH_UPPER_DEEPEN_LEFT :: 65;
        FT_MOUTH_UPPER_RIGHT :: 66;
        FT_MOUTH_UPPER_LEFT :: 67;
        FT_MOUTH_LOWER_RIGHT :: 68;
        FT_MOUTH_LOWER_LEFT :: 69;
        FT_MOUTH_CORNER_PULL_RIGHT :: 70;
        FT_MOUTH_CORNER_PULL_LEFT :: 71;
        FT_MOUTH_CORNER_SLANT_RIGHT :: 72;
        FT_MOUTH_CORNER_SLANT_LEFT :: 73;
        FT_MOUTH_FROWN_RIGHT :: 74;
        FT_MOUTH_FROWN_LEFT :: 75;
        FT_MOUTH_STRETCH_RIGHT :: 76;
        FT_MOUTH_STRETCH_LEFT :: 77;
        FT_MOUTH_DIMPLE_RIGHT :: 78;
        FT_MOUTH_DIMPLE_LEFT :: 79;
        FT_MOUTH_RAISER_UPPER :: 80;
        FT_MOUTH_RAISER_LOWER :: 81;
        FT_MOUTH_PRESS_RIGHT :: 82;
        FT_MOUTH_PRESS_LEFT :: 83;
        FT_MOUTH_TIGHTENER_RIGHT :: 84;
        FT_MOUTH_TIGHTENER_LEFT :: 85;
        FT_TONGUE_OUT :: 86;
        FT_TONGUE_UP :: 87;
        FT_TONGUE_DOWN :: 88;
        FT_TONGUE_RIGHT :: 89;
        FT_TONGUE_LEFT :: 90;
        FT_TONGUE_ROLL :: 91;
        FT_TONGUE_BLEND_DOWN :: 92;
        FT_TONGUE_CURL_UP :: 93;
        FT_TONGUE_SQUISH :: 94;
        FT_TONGUE_FLAT :: 95;
        FT_TONGUE_TWIST_RIGHT :: 96;
        FT_TONGUE_TWIST_LEFT :: 97;
        FT_SOFT_PALATE_CLOSE :: 98;
        FT_THROAT_SWALLOW :: 99;
        FT_NECK_FLEX_RIGHT :: 100;
        FT_NECK_FLEX_LEFT :: 101;
        FT_EYE_CLOSED :: 102;
        FT_EYE_WIDE :: 103;
        FT_EYE_SQUINT :: 104;
        FT_EYE_DILATION :: 105;
        FT_EYE_CONSTRICT :: 106;
        FT_BROW_DOWN_RIGHT :: 107;
        FT_BROW_DOWN_LEFT :: 108;
        FT_BROW_DOWN :: 109;
        FT_BROW_UP_RIGHT :: 110;
        FT_BROW_UP_LEFT :: 111;
        FT_BROW_UP :: 112;
        FT_NOSE_SNEER :: 113;
        FT_NASAL_DILATION :: 114;
        FT_NASAL_CONSTRICT :: 115;
        FT_CHEEK_PUFF :: 116;
        FT_CHEEK_SUCK :: 117;
        FT_CHEEK_SQUINT :: 118;
        FT_LIP_SUCK_UPPER :: 119;
        FT_LIP_SUCK_LOWER :: 120;
        FT_LIP_SUCK :: 121;
        FT_LIP_FUNNEL_UPPER :: 122;
        FT_LIP_FUNNEL_LOWER :: 123;
        FT_LIP_FUNNEL :: 124;
        FT_LIP_PUCKER_UPPER :: 125;
        FT_LIP_PUCKER_LOWER :: 126;
        FT_LIP_PUCKER :: 127;
        FT_MOUTH_UPPER_UP :: 128;
        FT_MOUTH_LOWER_DOWN :: 129;
        FT_MOUTH_OPEN :: 130;
        FT_MOUTH_RIGHT :: 131;
        FT_MOUTH_LEFT :: 132;
        FT_MOUTH_SMILE_RIGHT :: 133;
        FT_MOUTH_SMILE_LEFT :: 134;
        FT_MOUTH_SMILE :: 135;
        FT_MOUTH_SAD_RIGHT :: 136;
        FT_MOUTH_SAD_LEFT :: 137;
        FT_MOUTH_SAD :: 138;
        FT_MOUTH_STRETCH :: 139;
        FT_MOUTH_DIMPLE :: 140;
        FT_MOUTH_TIGHTENER :: 141;
        FT_MOUTH_PRESS :: 142;
        FT_MAX :: 143;
    }
}

XRHandModifier3D :: struct {    // 894

        #as using base: OpaqueClass;

    BoneUpdate :: enum s32 {
        BONE_UPDATE_FULL :: 0;
        BONE_UPDATE_ROTATION_ONLY :: 1;
        BONE_UPDATE_MAX :: 2;
    }
}

XRHandTracker :: struct {    // 895

        #as using base: OpaqueClass;

    Hand :: enum s32 {
        HAND_LEFT :: 0;
        HAND_RIGHT :: 1;
        HAND_MAX :: 2;
    }

    HandTrackingSource :: enum s32 {
        HAND_TRACKING_SOURCE_UNKNOWN :: 0;
        HAND_TRACKING_SOURCE_UNOBSTRUCTED :: 1;
        HAND_TRACKING_SOURCE_CONTROLLER :: 2;
        HAND_TRACKING_SOURCE_MAX :: 3;
    }

    HandJoint :: enum s32 {
        HAND_JOINT_PALM :: 0;
        HAND_JOINT_WRIST :: 1;
        HAND_JOINT_THUMB_METACARPAL :: 2;
        HAND_JOINT_THUMB_PHALANX_PROXIMAL :: 3;
        HAND_JOINT_THUMB_PHALANX_DISTAL :: 4;
        HAND_JOINT_THUMB_TIP :: 5;
        HAND_JOINT_INDEX_FINGER_METACARPAL :: 6;
        HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL :: 7;
        HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE :: 8;
        HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL :: 9;
        HAND_JOINT_INDEX_FINGER_TIP :: 10;
        HAND_JOINT_MIDDLE_FINGER_METACARPAL :: 11;
        HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL :: 12;
        HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE :: 13;
        HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL :: 14;
        HAND_JOINT_MIDDLE_FINGER_TIP :: 15;
        HAND_JOINT_RING_FINGER_METACARPAL :: 16;
        HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL :: 17;
        HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE :: 18;
        HAND_JOINT_RING_FINGER_PHALANX_DISTAL :: 19;
        HAND_JOINT_RING_FINGER_TIP :: 20;
        HAND_JOINT_PINKY_FINGER_METACARPAL :: 21;
        HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL :: 22;
        HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE :: 23;
        HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL :: 24;
        HAND_JOINT_PINKY_FINGER_TIP :: 25;
        HAND_JOINT_MAX :: 26;
    }

    HandJointFlags :: enum u64 {
        HAND_JOINT_FLAG_ORIENTATION_VALID :: 1;
        HAND_JOINT_FLAG_ORIENTATION_TRACKED :: 2;
        HAND_JOINT_FLAG_POSITION_VALID :: 4;
        HAND_JOINT_FLAG_POSITION_TRACKED :: 8;
        HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID :: 16;
        HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID :: 32;
    } @bitfield
}

XRInterface :: struct {    // 896

        #as using base: OpaqueClass;

    Capabilities :: enum s32 {
        XR_NONE :: 0;
        XR_MONO :: 1;
        XR_STEREO :: 2;
        XR_QUAD :: 4;
        XR_VR :: 8;
        XR_AR :: 16;
        XR_EXTERNAL :: 32;
    }

    TrackingStatus :: enum s32 {
        XR_NORMAL_TRACKING :: 0;
        XR_EXCESSIVE_MOTION :: 1;
        XR_INSUFFICIENT_FEATURES :: 2;
        XR_UNKNOWN_TRACKING :: 3;
        XR_NOT_TRACKING :: 4;
    }

    PlayAreaMode :: enum s32 {
        XR_PLAY_AREA_UNKNOWN :: 0;
        XR_PLAY_AREA_3DOF :: 1;
        XR_PLAY_AREA_SITTING :: 2;
        XR_PLAY_AREA_ROOMSCALE :: 3;
        XR_PLAY_AREA_STAGE :: 4;
    }

    EnvironmentBlendMode :: enum s32 {
        XR_ENV_BLEND_MODE_OPAQUE :: 0;
        XR_ENV_BLEND_MODE_ADDITIVE :: 1;
        XR_ENV_BLEND_MODE_ALPHA_BLEND :: 2;
    }
}

XRInterfaceExtension :: struct { #as using base: OpaqueClass; } // 897

XRNode3D :: struct { #as using base: OpaqueClass; } // 898

XROrigin3D :: struct { #as using base: OpaqueClass; } // 899

XRPose :: struct {    // 900

        #as using base: OpaqueClass;

    TrackingConfidence :: enum s32 {
        XR_TRACKING_CONFIDENCE_NONE :: 0;
        XR_TRACKING_CONFIDENCE_LOW :: 1;
        XR_TRACKING_CONFIDENCE_HIGH :: 2;
    }
}

XRPositionalTracker :: struct {    // 901

        #as using base: OpaqueClass;

    TrackerHand :: enum s32 {
        TRACKER_HAND_UNKNOWN :: 0;
        TRACKER_HAND_LEFT :: 1;
        TRACKER_HAND_RIGHT :: 2;
    }
}

XRServer :: struct {    // 902

        #as using base: OpaqueClass;

    TrackerType :: enum s32 {
        TRACKER_HEAD :: 1;
        TRACKER_CONTROLLER :: 2;
        TRACKER_BASESTATION :: 4;
        TRACKER_ANCHOR :: 8;
        TRACKER_ANY_KNOWN :: 127;
        TRACKER_UNKNOWN :: 128;
        TRACKER_ANY :: 255;
    }

    RotationMode :: enum s32 {
        RESET_FULL_ROTATION :: 0;
        RESET_BUT_KEEP_TILT :: 1;
        DONT_RESET_ROTATION :: 2;
    }
}

ZIPPacker :: struct {    // 903

        #as using base: OpaqueClass;

    ZipAppend :: enum s32 {
        APPEND_CREATE :: 0;
        APPEND_CREATEAFTER :: 1;
        APPEND_ADDINZIP :: 2;
    }
}

ZIPReader :: struct { #as using base: OpaqueClass; } // 904


ALL_METHODS :: Table(string, u32).{count = 905, allocated = 905, slots_filled = 905, entries = .[
    .{key = "start", value = 3122411423},
    .{key = "update", value = 527836100},
    .{key = "get_iv_state", value = 2115431945},
    .{key = "finish", value = 3218959716},
    .{key = "get_available_point_id", value = 3905245786},
    .{key = "add_point", value = 4074201818},
    .{key = "get_point_position", value = 2299179447},
    .{key = "set_point_position", value = 163021252},
    .{key = "get_point_weight_scale", value = 2339986948},
    .{key = "set_point_weight_scale", value = 1602489585},
    .{key = "remove_point", value = 1286410249},
    .{key = "has_point", value = 1116898809},
    .{key = "get_point_connections", value = 2865087369},
    .{key = "get_point_ids", value = 3851388692},
    .{key = "set_point_disabled", value = 972357352},
    .{key = "is_point_disabled", value = 1116898809},
    .{key = "connect_points", value = 3710494224},
    .{key = "disconnect_points", value = 3710494224},
    .{key = "are_points_connected", value = 2288175859},
    .{key = "get_point_count", value = 3905245786},
    .{key = "get_point_capacity", value = 3905245786},
    .{key = "reserve_space", value = 1286410249},
    .{key = "clear", value = 3218959716},
    .{key = "get_closest_point", value = 2300324924},
    .{key = "get_closest_position_in_segment", value = 2656412154},
    .{key = "get_point_path", value = 281625055},
    .{key = "get_id_path", value = 3404614526},
    .{key = "get_available_point_id", value = 3905245786},
    .{key = "add_point", value = 1038703438},
    .{key = "get_point_position", value = 711720468},
    .{key = "set_point_position", value = 1530502735},
    .{key = "get_point_weight_scale", value = 2339986948},
    .{key = "set_point_weight_scale", value = 1602489585},
    .{key = "remove_point", value = 1286410249},
    .{key = "has_point", value = 1116898809},
    .{key = "get_point_connections", value = 2865087369},
    .{key = "get_point_ids", value = 3851388692},
    .{key = "set_point_disabled", value = 972357352},
    .{key = "is_point_disabled", value = 1116898809},
    .{key = "connect_points", value = 3710494224},
    .{key = "disconnect_points", value = 3710494224},
    .{key = "are_points_connected", value = 2288175859},
    .{key = "get_point_count", value = 3905245786},
    .{key = "get_point_capacity", value = 3905245786},
    .{key = "reserve_space", value = 1286410249},
    .{key = "clear", value = 3218959716},
    .{key = "get_closest_point", value = 3241074317},
    .{key = "get_closest_position_in_segment", value = 192990374},
    .{key = "get_point_path", value = 880819742},
    .{key = "get_id_path", value = 3404614526},
    .{key = "set_region", value = 1763793166},
    .{key = "get_region", value = 410525958},
    .{key = "set_size", value = 1130785943},
    .{key = "get_size", value = 3690982128},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_cell_size", value = 743155724},
    .{key = "get_cell_size", value = 3341600327},
    .{key = "set_cell_shape", value = 4130591146},
    .{key = "get_cell_shape", value = 3293463634},
    .{key = "is_in_bounds", value = 2522259332},
    .{key = "is_in_boundsv", value = 3900751641},
    .{key = "is_dirty", value = 36873697},
    .{key = "update", value = 3218959716},
    .{key = "set_jumping_enabled", value = 2586408642},
    .{key = "is_jumping_enabled", value = 36873697},
    .{key = "set_diagonal_mode", value = 1017829798},
    .{key = "get_diagonal_mode", value = 3129282674},
    .{key = "set_default_compute_heuristic", value = 1044375519},
    .{key = "get_default_compute_heuristic", value = 2074731422},
    .{key = "set_default_estimate_heuristic", value = 1044375519},
    .{key = "get_default_estimate_heuristic", value = 2074731422},
    .{key = "set_point_solid", value = 1765703753},
    .{key = "is_point_solid", value = 3900751641},
    .{key = "set_point_weight_scale", value = 2262553149},
    .{key = "get_point_weight_scale", value = 719993801},
    .{key = "fill_solid_region", value = 2261970063},
    .{key = "fill_weight_scale_region", value = 2793244083},
    .{key = "clear", value = 3218959716},
    .{key = "get_point_position", value = 108438297},
    .{key = "get_point_path", value = 690373547},
    .{key = "get_id_path", value = 1989391000},
    .{key = "get_ok_button", value = 1856205918},
    .{key = "get_label", value = 566733104},
    .{key = "set_hide_on_ok", value = 2586408642},
    .{key = "get_hide_on_ok", value = 36873697},
    .{key = "set_close_on_escape", value = 2586408642},
    .{key = "get_close_on_escape", value = 36873697},
    .{key = "add_button", value = 3328440682},
    .{key = "add_cancel_button", value = 242045556},
    .{key = "remove_button", value = 2068354942},
    .{key = "register_text_enter", value = 3714008017},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "set_autowrap", value = 2586408642},
    .{key = "has_autowrap", value = 2240911060},
    .{key = "set_ok_button_text", value = 83702148},
    .{key = "get_ok_button_text", value = 201670096},
    .{key = "set_sync_to_physics", value = 2586408642},
    .{key = "is_sync_to_physics_enabled", value = 36873697},
    .{key = "set_sync_to_physics", value = 2586408642},
    .{key = "is_sync_to_physics_enabled", value = 36873697},
    .{key = "set_sprite_frames", value = 905781144},
    .{key = "get_sprite_frames", value = 3804851214},
    .{key = "set_animation", value = 3304788590},
    .{key = "get_animation", value = 2002593661},
    .{key = "set_autoplay", value = 83702148},
    .{key = "get_autoplay", value = 201670096},
    .{key = "is_playing", value = 36873697},
    .{key = "play", value = 2372066587},
    .{key = "play_backwards", value = 1421762485},
    .{key = "pause", value = 3218959716},
    .{key = "stop", value = 3218959716},
    .{key = "set_centered", value = 2586408642},
    .{key = "is_centered", value = 36873697},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_flip_h", value = 2586408642},
    .{key = "is_flipped_h", value = 36873697},
    .{key = "set_flip_v", value = 2586408642},
    .{key = "is_flipped_v", value = 36873697},
    .{key = "set_frame", value = 1286410249},
    .{key = "get_frame", value = 3905245786},
    .{key = "set_frame_progress", value = 373806689},
    .{key = "get_frame_progress", value = 1740695150},
    .{key = "set_frame_and_progress", value = 1602489585},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "get_playing_speed", value = 1740695150},
    .{key = "set_sprite_frames", value = 905781144},
    .{key = "get_sprite_frames", value = 3804851214},
    .{key = "set_animation", value = 3304788590},
    .{key = "get_animation", value = 2002593661},
    .{key = "set_autoplay", value = 83702148},
    .{key = "get_autoplay", value = 201670096},
    .{key = "is_playing", value = 36873697},
    .{key = "play", value = 2372066587},
    .{key = "play_backwards", value = 1421762485},
    .{key = "pause", value = 3218959716},
    .{key = "stop", value = 3218959716},
    .{key = "set_frame", value = 1286410249},
    .{key = "get_frame", value = 3905245786},
    .{key = "set_frame_progress", value = 373806689},
    .{key = "get_frame_progress", value = 1740695150},
    .{key = "set_frame_and_progress", value = 1602489585},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "get_playing_speed", value = 1740695150},
    .{key = "set_frames", value = 1286410249},
    .{key = "get_frames", value = 3905245786},
    .{key = "set_current_frame", value = 1286410249},
    .{key = "get_current_frame", value = 3905245786},
    .{key = "set_pause", value = 2586408642},
    .{key = "get_pause", value = 36873697},
    .{key = "set_one_shot", value = 2586408642},
    .{key = "get_one_shot", value = 36873697},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "set_frame_texture", value = 666127730},
    .{key = "get_frame_texture", value = 3536238170},
    .{key = "set_frame_duration", value = 1602489585},
    .{key = "get_frame_duration", value = 2339986948},
    .{key = "add_track", value = 3843682357},
    .{key = "remove_track", value = 1286410249},
    .{key = "get_track_count", value = 3905245786},
    .{key = "track_get_type", value = 3445944217},
    .{key = "track_get_path", value = 408788394},
    .{key = "track_set_path", value = 2761262315},
    .{key = "find_track", value = 245376003},
    .{key = "track_move_up", value = 1286410249},
    .{key = "track_move_down", value = 1286410249},
    .{key = "track_move_to", value = 3937882851},
    .{key = "track_swap", value = 3937882851},
    .{key = "track_set_imported", value = 300928843},
    .{key = "track_is_imported", value = 1116898809},
    .{key = "track_set_enabled", value = 300928843},
    .{key = "track_is_enabled", value = 1116898809},
    .{key = "position_track_insert_key", value = 2540608232},
    .{key = "rotation_track_insert_key", value = 4165004800},
    .{key = "scale_track_insert_key", value = 2540608232},
    .{key = "blend_shape_track_insert_key", value = 1534913637},
    .{key = "position_track_interpolate", value = 3530011197},
    .{key = "rotation_track_interpolate", value = 2915876792},
    .{key = "scale_track_interpolate", value = 3530011197},
    .{key = "blend_shape_track_interpolate", value = 2482365182},
    .{key = "track_insert_key", value = 808952278},
    .{key = "track_remove_key", value = 3937882851},
    .{key = "track_remove_key_at_time", value = 1602489585},
    .{key = "track_set_key_value", value = 2060538656},
    .{key = "track_set_key_transition", value = 3506521499},
    .{key = "track_set_key_time", value = 3506521499},
    .{key = "track_get_key_transition", value = 3085491603},
    .{key = "track_get_key_count", value = 923996154},
    .{key = "track_get_key_value", value = 678354945},
    .{key = "track_get_key_time", value = 3085491603},
    .{key = "track_find_key", value = 189695464},
    .{key = "track_set_interpolation_type", value = 4112932513},
    .{key = "track_get_interpolation_type", value = 1530756894},
    .{key = "track_set_interpolation_loop_wrap", value = 300928843},
    .{key = "track_get_interpolation_loop_wrap", value = 1116898809},
    .{key = "track_is_compressed", value = 1116898809},
    .{key = "value_track_set_update_mode", value = 2854058312},
    .{key = "value_track_get_update_mode", value = 1440326473},
    .{key = "value_track_interpolate", value = 747269075},
    .{key = "method_track_get_name", value = 351665558},
    .{key = "method_track_get_params", value = 2345056839},
    .{key = "bezier_track_insert_key", value = 3656773645},
    .{key = "bezier_track_set_key_value", value = 3506521499},
    .{key = "bezier_track_set_key_in_handle", value = 1719223284},
    .{key = "bezier_track_set_key_out_handle", value = 1719223284},
    .{key = "bezier_track_get_key_value", value = 3085491603},
    .{key = "bezier_track_get_key_in_handle", value = 3016396712},
    .{key = "bezier_track_get_key_out_handle", value = 3016396712},
    .{key = "bezier_track_interpolate", value = 1900462983},
    .{key = "audio_track_insert_key", value = 4021027286},
    .{key = "audio_track_set_key_stream", value = 3886397084},
    .{key = "audio_track_set_key_start_offset", value = 3506521499},
    .{key = "audio_track_set_key_end_offset", value = 3506521499},
    .{key = "audio_track_get_key_stream", value = 635277205},
    .{key = "audio_track_get_key_start_offset", value = 3085491603},
    .{key = "audio_track_get_key_end_offset", value = 3085491603},
    .{key = "audio_track_set_use_blend", value = 300928843},
    .{key = "audio_track_is_use_blend", value = 1116898809},
    .{key = "animation_track_insert_key", value = 158676774},
    .{key = "animation_track_set_key_animation", value = 117615382},
    .{key = "animation_track_get_key_animation", value = 351665558},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_loop_mode", value = 3155355575},
    .{key = "get_loop_mode", value = 1988889481},
    .{key = "set_step", value = 373806689},
    .{key = "get_step", value = 1740695150},
    .{key = "clear", value = 3218959716},
    .{key = "copy_track", value = 148001024},
    .{key = "compress", value = 3608408117},
    .{key = "add_animation", value = 1811855551},
    .{key = "remove_animation", value = 3304788590},
    .{key = "rename_animation", value = 3740211285},
    .{key = "has_animation", value = 2619796661},
    .{key = "get_animation", value = 2933122410},
    .{key = "get_animation_list", value = 3995934104},
    .{key = "add_animation_library", value = 618909818},
    .{key = "remove_animation_library", value = 3304788590},
    .{key = "rename_animation_library", value = 3740211285},
    .{key = "has_animation_library", value = 2619796661},
    .{key = "get_animation_library", value = 147342321},
    .{key = "get_animation_library_list", value = 3995934104},
    .{key = "has_animation", value = 2619796661},
    .{key = "get_animation", value = 2933122410},
    .{key = "get_animation_list", value = 1139954409},
    .{key = "set_active", value = 2586408642},
    .{key = "is_active", value = 36873697},
    .{key = "set_deterministic", value = 2586408642},
    .{key = "is_deterministic", value = 36873697},
    .{key = "set_root_node", value = 1348162250},
    .{key = "get_root_node", value = 4075236667},
    .{key = "set_callback_mode_process", value = 2153733086},
    .{key = "get_callback_mode_process", value = 1394468472},
    .{key = "set_callback_mode_method", value = 742218271},
    .{key = "get_callback_mode_method", value = 489449656},
    .{key = "set_callback_mode_discrete", value = 1998944670},
    .{key = "get_callback_mode_discrete", value = 3493168860},
    .{key = "set_audio_max_polyphony", value = 1286410249},
    .{key = "get_audio_max_polyphony", value = 3905245786},
    .{key = "set_root_motion_track", value = 1348162250},
    .{key = "get_root_motion_track", value = 4075236667},
    .{key = "get_root_motion_position", value = 3360562783},
    .{key = "get_root_motion_rotation", value = 1222331677},
    .{key = "get_root_motion_scale", value = 3360562783},
    .{key = "get_root_motion_position_accumulator", value = 3360562783},
    .{key = "get_root_motion_rotation_accumulator", value = 1222331677},
    .{key = "get_root_motion_scale_accumulator", value = 3360562783},
    .{key = "clear_caches", value = 3218959716},
    .{key = "advance", value = 373806689},
    .{key = "set_reset_on_save_enabled", value = 2586408642},
    .{key = "is_reset_on_save_enabled", value = 36873697},
    .{key = "capture", value = 1333632127},
    .{key = "find_animation", value = 1559484580},
    .{key = "find_animation_library", value = 1559484580},
    .{key = "add_input", value = 2323990056},
    .{key = "remove_input", value = 1286410249},
    .{key = "set_input_name", value = 215573526},
    .{key = "get_input_name", value = 844755477},
    .{key = "get_input_count", value = 3905245786},
    .{key = "find_input", value = 1321353865},
    .{key = "set_filter_path", value = 3868023870},
    .{key = "is_path_filtered", value = 861721659},
    .{key = "set_filter_enabled", value = 2586408642},
    .{key = "is_filter_enabled", value = 36873697},
    .{key = "blend_animation", value = 1630801826},
    .{key = "blend_node", value = 1746075988},
    .{key = "blend_input", value = 1361527350},
    .{key = "set_parameter", value = 3776071444},
    .{key = "get_parameter", value = 2760726917},
    .{key = "set_animation", value = 3304788590},
    .{key = "get_animation", value = 2002593661},
    .{key = "set_play_mode", value = 3347718873},
    .{key = "get_play_mode", value = 2061244637},
    .{key = "add_blend_point", value = 285050433},
    .{key = "set_blend_point_position", value = 1602489585},
    .{key = "get_blend_point_position", value = 2339986948},
    .{key = "set_blend_point_node", value = 4240341528},
    .{key = "get_blend_point_node", value = 665599029},
    .{key = "remove_blend_point", value = 1286410249},
    .{key = "get_blend_point_count", value = 3905245786},
    .{key = "set_min_space", value = 373806689},
    .{key = "get_min_space", value = 1740695150},
    .{key = "set_max_space", value = 373806689},
    .{key = "get_max_space", value = 1740695150},
    .{key = "set_snap", value = 373806689},
    .{key = "get_snap", value = 1740695150},
    .{key = "set_value_label", value = 83702148},
    .{key = "get_value_label", value = 201670096},
    .{key = "set_blend_mode", value = 2600869457},
    .{key = "get_blend_mode", value = 1547667849},
    .{key = "set_use_sync", value = 2586408642},
    .{key = "is_using_sync", value = 36873697},
    .{key = "add_blend_point", value = 402261981},
    .{key = "set_blend_point_position", value = 163021252},
    .{key = "get_blend_point_position", value = 2299179447},
    .{key = "set_blend_point_node", value = 4240341528},
    .{key = "get_blend_point_node", value = 665599029},
    .{key = "remove_blend_point", value = 1286410249},
    .{key = "get_blend_point_count", value = 3905245786},
    .{key = "add_triangle", value = 753017335},
    .{key = "get_triangle_point", value = 50157827},
    .{key = "remove_triangle", value = 1286410249},
    .{key = "get_triangle_count", value = 3905245786},
    .{key = "set_min_space", value = 743155724},
    .{key = "get_min_space", value = 3341600327},
    .{key = "set_max_space", value = 743155724},
    .{key = "get_max_space", value = 3341600327},
    .{key = "set_snap", value = 743155724},
    .{key = "get_snap", value = 3341600327},
    .{key = "set_x_label", value = 83702148},
    .{key = "get_x_label", value = 201670096},
    .{key = "set_y_label", value = 83702148},
    .{key = "get_y_label", value = 201670096},
    .{key = "set_auto_triangles", value = 2586408642},
    .{key = "get_auto_triangles", value = 36873697},
    .{key = "set_blend_mode", value = 81193520},
    .{key = "get_blend_mode", value = 1398433632},
    .{key = "set_use_sync", value = 2586408642},
    .{key = "is_using_sync", value = 36873697},
    .{key = "add_node", value = 1980270704},
    .{key = "get_node", value = 625644256},
    .{key = "remove_node", value = 3304788590},
    .{key = "rename_node", value = 3740211285},
    .{key = "has_node", value = 2619796661},
    .{key = "connect_node", value = 2168001410},
    .{key = "disconnect_node", value = 2415702435},
    .{key = "set_node_position", value = 1999414630},
    .{key = "get_node_position", value = 3100822709},
    .{key = "set_graph_offset", value = 743155724},
    .{key = "get_graph_offset", value = 3341600327},
    .{key = "set_fadein_time", value = 373806689},
    .{key = "get_fadein_time", value = 1740695150},
    .{key = "set_fadein_curve", value = 270443179},
    .{key = "get_fadein_curve", value = 2460114913},
    .{key = "set_fadeout_time", value = 373806689},
    .{key = "get_fadeout_time", value = 1740695150},
    .{key = "set_fadeout_curve", value = 270443179},
    .{key = "get_fadeout_curve", value = 2460114913},
    .{key = "set_autorestart", value = 2586408642},
    .{key = "has_autorestart", value = 36873697},
    .{key = "set_autorestart_delay", value = 373806689},
    .{key = "get_autorestart_delay", value = 1740695150},
    .{key = "set_autorestart_random_delay", value = 373806689},
    .{key = "get_autorestart_random_delay", value = 1740695150},
    .{key = "set_mix_mode", value = 1018899799},
    .{key = "get_mix_mode", value = 3076550526},
    .{key = "add_node", value = 1980270704},
    .{key = "replace_node", value = 2559412862},
    .{key = "get_node", value = 625644256},
    .{key = "remove_node", value = 3304788590},
    .{key = "rename_node", value = 3740211285},
    .{key = "has_node", value = 2619796661},
    .{key = "get_node_name", value = 739213945},
    .{key = "set_node_position", value = 1999414630},
    .{key = "get_node_position", value = 3100822709},
    .{key = "has_transition", value = 471820014},
    .{key = "add_transition", value = 795486887},
    .{key = "get_transition", value = 4192381260},
    .{key = "get_transition_from", value = 659327637},
    .{key = "get_transition_to", value = 659327637},
    .{key = "get_transition_count", value = 3905245786},
    .{key = "remove_transition_by_index", value = 1286410249},
    .{key = "remove_transition", value = 3740211285},
    .{key = "set_graph_offset", value = 743155724},
    .{key = "get_graph_offset", value = 3341600327},
    .{key = "set_state_machine_type", value = 2584759088},
    .{key = "get_state_machine_type", value = 1140726469},
    .{key = "set_allow_transition_to_self", value = 2586408642},
    .{key = "is_allow_transition_to_self", value = 36873697},
    .{key = "set_reset_ends", value = 2586408642},
    .{key = "are_ends_reset", value = 36873697},
    .{key = "travel", value = 3823612587},
    .{key = "start", value = 3823612587},
    .{key = "next", value = 3218959716},
    .{key = "stop", value = 3218959716},
    .{key = "is_playing", value = 36873697},
    .{key = "get_current_node", value = 2002593661},
    .{key = "get_current_play_position", value = 1740695150},
    .{key = "get_current_length", value = 1740695150},
    .{key = "get_fading_from_node", value = 2002593661},
    .{key = "get_travel_path", value = 3995934104},
    .{key = "set_switch_mode", value = 2074906633},
    .{key = "get_switch_mode", value = 2138562085},
    .{key = "set_advance_mode", value = 1210869868},
    .{key = "get_advance_mode", value = 61101689},
    .{key = "set_advance_condition", value = 3304788590},
    .{key = "get_advance_condition", value = 2002593661},
    .{key = "set_xfade_time", value = 373806689},
    .{key = "get_xfade_time", value = 1740695150},
    .{key = "set_xfade_curve", value = 270443179},
    .{key = "get_xfade_curve", value = 2460114913},
    .{key = "set_reset", value = 2586408642},
    .{key = "is_reset", value = 36873697},
    .{key = "set_priority", value = 1286410249},
    .{key = "get_priority", value = 3905245786},
    .{key = "set_advance_expression", value = 83702148},
    .{key = "get_advance_expression", value = 201670096},
    .{key = "set_use_sync", value = 2586408642},
    .{key = "is_using_sync", value = 36873697},
    .{key = "set_input_count", value = 1286410249},
    .{key = "set_input_as_auto_advance", value = 300928843},
    .{key = "is_input_set_as_auto_advance", value = 1116898809},
    .{key = "set_input_reset", value = 300928843},
    .{key = "is_input_reset", value = 1116898809},
    .{key = "set_xfade_time", value = 373806689},
    .{key = "get_xfade_time", value = 1740695150},
    .{key = "set_xfade_curve", value = 270443179},
    .{key = "get_xfade_curve", value = 2460114913},
    .{key = "set_allow_transition_to_self", value = 2586408642},
    .{key = "is_allow_transition_to_self", value = 36873697},
    .{key = "animation_set_next", value = 3740211285},
    .{key = "animation_get_next", value = 1965194235},
    .{key = "set_blend_time", value = 3231131886},
    .{key = "get_blend_time", value = 1958752504},
    .{key = "set_default_blend_time", value = 373806689},
    .{key = "get_default_blend_time", value = 1740695150},
    .{key = "play", value = 3697947785},
    .{key = "play_backwards", value = 3890664824},
    .{key = "play_with_capture", value = 3265781472},
    .{key = "pause", value = 3218959716},
    .{key = "stop", value = 107499316},
    .{key = "is_playing", value = 36873697},
    .{key = "set_current_animation", value = 83702148},
    .{key = "get_current_animation", value = 201670096},
    .{key = "set_assigned_animation", value = 83702148},
    .{key = "get_assigned_animation", value = 201670096},
    .{key = "queue", value = 3304788590},
    .{key = "get_queue", value = 2981934095},
    .{key = "clear_queue", value = 3218959716},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "get_playing_speed", value = 1740695150},
    .{key = "set_autoplay", value = 83702148},
    .{key = "get_autoplay", value = 201670096},
    .{key = "set_movie_quit_on_finish_enabled", value = 2586408642},
    .{key = "is_movie_quit_on_finish_enabled", value = 36873697},
    .{key = "get_current_animation_position", value = 1740695150},
    .{key = "get_current_animation_length", value = 1740695150},
    .{key = "seek", value = 1807872683},
    .{key = "set_process_callback", value = 1663839457},
    .{key = "get_process_callback", value = 4207496604},
    .{key = "set_method_call_mode", value = 3413514846},
    .{key = "get_method_call_mode", value = 3583380054},
    .{key = "set_root", value = 1348162250},
    .{key = "get_root", value = 4075236667},
    .{key = "set_tree_root", value = 2581683800},
    .{key = "get_tree_root", value = 4110384712},
    .{key = "set_advance_expression_base_node", value = 1348162250},
    .{key = "get_advance_expression_base_node", value = 4075236667},
    .{key = "set_animation_player", value = 1348162250},
    .{key = "get_animation_player", value = 4075236667},
    .{key = "set_process_callback", value = 1723352826},
    .{key = "get_process_callback", value = 891317132},
    .{key = "set_gravity_space_override_mode", value = 2879900038},
    .{key = "get_gravity_space_override_mode", value = 3990256304},
    .{key = "set_gravity_is_point", value = 2586408642},
    .{key = "is_gravity_a_point", value = 36873697},
    .{key = "set_gravity_point_unit_distance", value = 373806689},
    .{key = "get_gravity_point_unit_distance", value = 1740695150},
    .{key = "set_gravity_point_center", value = 743155724},
    .{key = "get_gravity_point_center", value = 3341600327},
    .{key = "set_gravity_direction", value = 743155724},
    .{key = "get_gravity_direction", value = 3341600327},
    .{key = "set_gravity", value = 373806689},
    .{key = "get_gravity", value = 1740695150},
    .{key = "set_linear_damp_space_override_mode", value = 2879900038},
    .{key = "get_linear_damp_space_override_mode", value = 3990256304},
    .{key = "set_angular_damp_space_override_mode", value = 2879900038},
    .{key = "get_angular_damp_space_override_mode", value = 3990256304},
    .{key = "set_linear_damp", value = 373806689},
    .{key = "get_linear_damp", value = 1740695150},
    .{key = "set_angular_damp", value = 373806689},
    .{key = "get_angular_damp", value = 1740695150},
    .{key = "set_priority", value = 1286410249},
    .{key = "get_priority", value = 3905245786},
    .{key = "set_monitoring", value = 2586408642},
    .{key = "is_monitoring", value = 36873697},
    .{key = "set_monitorable", value = 2586408642},
    .{key = "is_monitorable", value = 36873697},
    .{key = "get_overlapping_bodies", value = 3995934104},
    .{key = "get_overlapping_areas", value = 3995934104},
    .{key = "has_overlapping_bodies", value = 36873697},
    .{key = "has_overlapping_areas", value = 36873697},
    .{key = "overlaps_body", value = 3093956946},
    .{key = "overlaps_area", value = 3093956946},
    .{key = "set_audio_bus_name", value = 3304788590},
    .{key = "get_audio_bus_name", value = 2002593661},
    .{key = "set_audio_bus_override", value = 2586408642},
    .{key = "is_overriding_audio_bus", value = 36873697},
    .{key = "set_gravity_space_override_mode", value = 2311433571},
    .{key = "get_gravity_space_override_mode", value = 958191869},
    .{key = "set_gravity_is_point", value = 2586408642},
    .{key = "is_gravity_a_point", value = 36873697},
    .{key = "set_gravity_point_unit_distance", value = 373806689},
    .{key = "get_gravity_point_unit_distance", value = 1740695150},
    .{key = "set_gravity_point_center", value = 3460891852},
    .{key = "get_gravity_point_center", value = 3360562783},
    .{key = "set_gravity_direction", value = 3460891852},
    .{key = "get_gravity_direction", value = 3360562783},
    .{key = "set_gravity", value = 373806689},
    .{key = "get_gravity", value = 1740695150},
    .{key = "set_linear_damp_space_override_mode", value = 2311433571},
    .{key = "get_linear_damp_space_override_mode", value = 958191869},
    .{key = "set_angular_damp_space_override_mode", value = 2311433571},
    .{key = "get_angular_damp_space_override_mode", value = 958191869},
    .{key = "set_angular_damp", value = 373806689},
    .{key = "get_angular_damp", value = 1740695150},
    .{key = "set_linear_damp", value = 373806689},
    .{key = "get_linear_damp", value = 1740695150},
    .{key = "set_priority", value = 1286410249},
    .{key = "get_priority", value = 3905245786},
    .{key = "set_wind_force_magnitude", value = 373806689},
    .{key = "get_wind_force_magnitude", value = 1740695150},
    .{key = "set_wind_attenuation_factor", value = 373806689},
    .{key = "get_wind_attenuation_factor", value = 1740695150},
    .{key = "set_wind_source_path", value = 1348162250},
    .{key = "get_wind_source_path", value = 4075236667},
    .{key = "set_monitorable", value = 2586408642},
    .{key = "is_monitorable", value = 36873697},
    .{key = "set_monitoring", value = 2586408642},
    .{key = "is_monitoring", value = 36873697},
    .{key = "get_overlapping_bodies", value = 3995934104},
    .{key = "get_overlapping_areas", value = 3995934104},
    .{key = "has_overlapping_bodies", value = 36873697},
    .{key = "has_overlapping_areas", value = 36873697},
    .{key = "overlaps_body", value = 3093956946},
    .{key = "overlaps_area", value = 3093956946},
    .{key = "set_audio_bus_override", value = 2586408642},
    .{key = "is_overriding_audio_bus", value = 36873697},
    .{key = "set_audio_bus_name", value = 3304788590},
    .{key = "get_audio_bus_name", value = 2002593661},
    .{key = "set_use_reverb_bus", value = 2586408642},
    .{key = "is_using_reverb_bus", value = 36873697},
    .{key = "set_reverb_bus_name", value = 3304788590},
    .{key = "get_reverb_bus_name", value = 2002593661},
    .{key = "set_reverb_amount", value = 373806689},
    .{key = "get_reverb_amount", value = 1740695150},
    .{key = "set_reverb_uniformity", value = 373806689},
    .{key = "get_reverb_uniformity", value = 1740695150},
    .{key = "add_blend_shape", value = 3304788590},
    .{key = "get_blend_shape_count", value = 3905245786},
    .{key = "get_blend_shape_name", value = 659327637},
    .{key = "set_blend_shape_name", value = 3780747571},
    .{key = "clear_blend_shapes", value = 3218959716},
    .{key = "set_blend_shape_mode", value = 227983991},
    .{key = "get_blend_shape_mode", value = 836485024},
    .{key = "add_surface_from_arrays", value = 1796411378},
    .{key = "clear_surfaces", value = 3218959716},
    .{key = "surface_update_vertex_region", value = 3837166854},
    .{key = "surface_update_attribute_region", value = 3837166854},
    .{key = "surface_update_skin_region", value = 3837166854},
    .{key = "surface_get_array_len", value = 923996154},
    .{key = "surface_get_array_index_len", value = 923996154},
    .{key = "surface_get_format", value = 3718287884},
    .{key = "surface_get_primitive_type", value = 4141943888},
    .{key = "surface_find_by_name", value = 1321353865},
    .{key = "surface_set_name", value = 501894301},
    .{key = "surface_get_name", value = 844755477},
    .{key = "regen_normal_maps", value = 3218959716},
    .{key = "lightmap_unwrap", value = 1476641071},
    .{key = "set_custom_aabb", value = 259215842},
    .{key = "get_custom_aabb", value = 1068685055},
    .{key = "set_shadow_mesh", value = 3377897901},
    .{key = "get_shadow_mesh", value = 3206942465},
    .{key = "set_arrays", value = 3233972621},
    .{key = "set_vertices", value = 334873810},
    .{key = "set_indices", value = 3614634198},
    .{key = "set_ratio", value = 373806689},
    .{key = "get_ratio", value = 1740695150},
    .{key = "set_stretch_mode", value = 1876743467},
    .{key = "get_stretch_mode", value = 3416449033},
    .{key = "set_alignment_horizontal", value = 2147829016},
    .{key = "get_alignment_horizontal", value = 3838875429},
    .{key = "set_alignment_vertical", value = 2147829016},
    .{key = "get_alignment_vertical", value = 3838875429},
    .{key = "set_atlas", value = 4051416890},
    .{key = "get_atlas", value = 3635182373},
    .{key = "set_region", value = 2046264180},
    .{key = "get_region", value = 1639390495},
    .{key = "set_margin", value = 2046264180},
    .{key = "get_margin", value = 1639390495},
    .{key = "set_filter_clip", value = 2586408642},
    .{key = "has_filter_clip", value = 36873697},
    .{key = "set_volume_db", value = 373806689},
    .{key = "get_volume_db", value = 1740695150},
    .{key = "can_get_buffer", value = 1116898809},
    .{key = "get_buffer", value = 2649534757},
    .{key = "clear_buffer", value = 3218959716},
    .{key = "set_buffer_length", value = 373806689},
    .{key = "get_buffer_length", value = 191475506},
    .{key = "get_frames_available", value = 3905245786},
    .{key = "get_discarded_frames", value = 3905245786},
    .{key = "get_buffer_length_frames", value = 3905245786},
    .{key = "get_pushed_frames", value = 3905245786},
    .{key = "set_voice_count", value = 1286410249},
    .{key = "get_voice_count", value = 3905245786},
    .{key = "set_voice_delay_ms", value = 1602489585},
    .{key = "get_voice_delay_ms", value = 2339986948},
    .{key = "set_voice_rate_hz", value = 1602489585},
    .{key = "get_voice_rate_hz", value = 2339986948},
    .{key = "set_voice_depth_ms", value = 1602489585},
    .{key = "get_voice_depth_ms", value = 2339986948},
    .{key = "set_voice_level_db", value = 1602489585},
    .{key = "get_voice_level_db", value = 2339986948},
    .{key = "set_voice_cutoff_hz", value = 1602489585},
    .{key = "get_voice_cutoff_hz", value = 2339986948},
    .{key = "set_voice_pan", value = 1602489585},
    .{key = "get_voice_pan", value = 2339986948},
    .{key = "set_wet", value = 373806689},
    .{key = "get_wet", value = 1740695150},
    .{key = "set_dry", value = 373806689},
    .{key = "get_dry", value = 1740695150},
    .{key = "set_threshold", value = 373806689},
    .{key = "get_threshold", value = 1740695150},
    .{key = "set_ratio", value = 373806689},
    .{key = "get_ratio", value = 1740695150},
    .{key = "set_gain", value = 373806689},
    .{key = "get_gain", value = 1740695150},
    .{key = "set_attack_us", value = 373806689},
    .{key = "get_attack_us", value = 1740695150},
    .{key = "set_release_ms", value = 373806689},
    .{key = "get_release_ms", value = 1740695150},
    .{key = "set_mix", value = 373806689},
    .{key = "get_mix", value = 1740695150},
    .{key = "set_sidechain", value = 3304788590},
    .{key = "get_sidechain", value = 2002593661},
    .{key = "set_dry", value = 373806689},
    .{key = "get_dry", value = 191475506},
    .{key = "set_tap1_active", value = 2586408642},
    .{key = "is_tap1_active", value = 36873697},
    .{key = "set_tap1_delay_ms", value = 373806689},
    .{key = "get_tap1_delay_ms", value = 1740695150},
    .{key = "set_tap1_level_db", value = 373806689},
    .{key = "get_tap1_level_db", value = 1740695150},
    .{key = "set_tap1_pan", value = 373806689},
    .{key = "get_tap1_pan", value = 1740695150},
    .{key = "set_tap2_active", value = 2586408642},
    .{key = "is_tap2_active", value = 36873697},
    .{key = "set_tap2_delay_ms", value = 373806689},
    .{key = "get_tap2_delay_ms", value = 1740695150},
    .{key = "set_tap2_level_db", value = 373806689},
    .{key = "get_tap2_level_db", value = 1740695150},
    .{key = "set_tap2_pan", value = 373806689},
    .{key = "get_tap2_pan", value = 1740695150},
    .{key = "set_feedback_active", value = 2586408642},
    .{key = "is_feedback_active", value = 36873697},
    .{key = "set_feedback_delay_ms", value = 373806689},
    .{key = "get_feedback_delay_ms", value = 1740695150},
    .{key = "set_feedback_level_db", value = 373806689},
    .{key = "get_feedback_level_db", value = 1740695150},
    .{key = "set_feedback_lowpass", value = 373806689},
    .{key = "get_feedback_lowpass", value = 1740695150},
    .{key = "set_mode", value = 1314744793},
    .{key = "get_mode", value = 809118343},
    .{key = "set_pre_gain", value = 373806689},
    .{key = "get_pre_gain", value = 1740695150},
    .{key = "set_keep_hf_hz", value = 373806689},
    .{key = "get_keep_hf_hz", value = 1740695150},
    .{key = "set_drive", value = 373806689},
    .{key = "get_drive", value = 1740695150},
    .{key = "set_post_gain", value = 373806689},
    .{key = "get_post_gain", value = 1740695150},
    .{key = "set_band_gain_db", value = 1602489585},
    .{key = "get_band_gain_db", value = 2339986948},
    .{key = "get_band_count", value = 3905245786},
    .{key = "set_cutoff", value = 373806689},
    .{key = "get_cutoff", value = 1740695150},
    .{key = "set_resonance", value = 373806689},
    .{key = "get_resonance", value = 1740695150},
    .{key = "set_gain", value = 373806689},
    .{key = "get_gain", value = 1740695150},
    .{key = "set_db", value = 771740901},
    .{key = "get_db", value = 3981721890},
    .{key = "set_ceiling_db", value = 373806689},
    .{key = "get_ceiling_db", value = 1740695150},
    .{key = "set_threshold_db", value = 373806689},
    .{key = "get_threshold_db", value = 1740695150},
    .{key = "set_soft_clip_db", value = 373806689},
    .{key = "get_soft_clip_db", value = 1740695150},
    .{key = "set_soft_clip_ratio", value = 373806689},
    .{key = "get_soft_clip_ratio", value = 1740695150},
    .{key = "set_pan", value = 373806689},
    .{key = "get_pan", value = 1740695150},
    .{key = "set_range_min_hz", value = 373806689},
    .{key = "get_range_min_hz", value = 1740695150},
    .{key = "set_range_max_hz", value = 373806689},
    .{key = "get_range_max_hz", value = 1740695150},
    .{key = "set_rate_hz", value = 373806689},
    .{key = "get_rate_hz", value = 1740695150},
    .{key = "set_feedback", value = 373806689},
    .{key = "get_feedback", value = 1740695150},
    .{key = "set_depth", value = 373806689},
    .{key = "get_depth", value = 1740695150},
    .{key = "set_pitch_scale", value = 373806689},
    .{key = "get_pitch_scale", value = 1740695150},
    .{key = "set_oversampling", value = 1286410249},
    .{key = "get_oversampling", value = 3905245786},
    .{key = "set_fft_size", value = 2323518741},
    .{key = "get_fft_size", value = 2361246789},
    .{key = "set_recording_active", value = 2586408642},
    .{key = "is_recording_active", value = 36873697},
    .{key = "set_format", value = 60648488},
    .{key = "get_format", value = 3151724922},
    .{key = "get_recording", value = 2964110865},
    .{key = "set_predelay_msec", value = 373806689},
    .{key = "get_predelay_msec", value = 1740695150},
    .{key = "set_predelay_feedback", value = 373806689},
    .{key = "get_predelay_feedback", value = 1740695150},
    .{key = "set_room_size", value = 373806689},
    .{key = "get_room_size", value = 1740695150},
    .{key = "set_damping", value = 373806689},
    .{key = "get_damping", value = 1740695150},
    .{key = "set_spread", value = 373806689},
    .{key = "get_spread", value = 1740695150},
    .{key = "set_dry", value = 373806689},
    .{key = "get_dry", value = 1740695150},
    .{key = "set_wet", value = 373806689},
    .{key = "get_wet", value = 1740695150},
    .{key = "set_hpf", value = 373806689},
    .{key = "get_hpf", value = 1740695150},
    .{key = "set_buffer_length", value = 373806689},
    .{key = "get_buffer_length", value = 1740695150},
    .{key = "set_tap_back_pos", value = 373806689},
    .{key = "get_tap_back_pos", value = 1740695150},
    .{key = "set_fft_size", value = 1202879215},
    .{key = "get_fft_size", value = 3925405343},
    .{key = "get_magnitude_for_frequency_range", value = 797993915},
    .{key = "set_pan_pullout", value = 373806689},
    .{key = "get_pan_pullout", value = 1740695150},
    .{key = "set_time_pullout", value = 373806689},
    .{key = "get_time_pullout", value = 1740695150},
    .{key = "set_surround", value = 373806689},
    .{key = "get_surround", value = 1740695150},
    .{key = "make_current", value = 3218959716},
    .{key = "clear_current", value = 3218959716},
    .{key = "is_current", value = 36873697},
    .{key = "make_current", value = 3218959716},
    .{key = "clear_current", value = 3218959716},
    .{key = "is_current", value = 36873697},
    .{key = "get_listener_transform", value = 3229777777},
    .{key = "set_bus_count", value = 1286410249},
    .{key = "get_bus_count", value = 3905245786},
    .{key = "remove_bus", value = 1286410249},
    .{key = "add_bus", value = 1025054187},
    .{key = "move_bus", value = 3937882851},
    .{key = "set_bus_name", value = 501894301},
    .{key = "get_bus_name", value = 844755477},
    .{key = "get_bus_index", value = 2458036349},
    .{key = "get_bus_channels", value = 923996154},
    .{key = "set_bus_volume_db", value = 1602489585},
    .{key = "get_bus_volume_db", value = 2339986948},
    .{key = "set_bus_send", value = 3780747571},
    .{key = "get_bus_send", value = 659327637},
    .{key = "set_bus_solo", value = 300928843},
    .{key = "is_bus_solo", value = 1116898809},
    .{key = "set_bus_mute", value = 300928843},
    .{key = "is_bus_mute", value = 1116898809},
    .{key = "set_bus_bypass_effects", value = 300928843},
    .{key = "is_bus_bypassing_effects", value = 1116898809},
    .{key = "add_bus_effect", value = 4068819785},
    .{key = "remove_bus_effect", value = 3937882851},
    .{key = "get_bus_effect_count", value = 3744713108},
    .{key = "get_bus_effect", value = 726064442},
    .{key = "get_bus_effect_instance", value = 1829771234},
    .{key = "swap_bus_effects", value = 1649997291},
    .{key = "set_bus_effect_enabled", value = 1383440665},
    .{key = "is_bus_effect_enabled", value = 2522259332},
    .{key = "get_bus_peak_volume_left_db", value = 3085491603},
    .{key = "get_bus_peak_volume_right_db", value = 3085491603},
    .{key = "set_playback_speed_scale", value = 373806689},
    .{key = "get_playback_speed_scale", value = 1740695150},
    .{key = "lock", value = 3218959716},
    .{key = "unlock", value = 3218959716},
    .{key = "get_speaker_mode", value = 2549190337},
    .{key = "get_mix_rate", value = 1740695150},
    .{key = "get_output_device_list", value = 2981934095},
    .{key = "get_output_device", value = 2841200299},
    .{key = "set_output_device", value = 83702148},
    .{key = "get_time_to_next_mix", value = 1740695150},
    .{key = "get_time_since_last_mix", value = 1740695150},
    .{key = "get_output_latency", value = 1740695150},
    .{key = "get_input_device_list", value = 2981934095},
    .{key = "get_input_device", value = 2841200299},
    .{key = "set_input_device", value = 83702148},
    .{key = "set_bus_layout", value = 3319058824},
    .{key = "generate_bus_layout", value = 3769973890},
    .{key = "set_enable_tagging_used_audio_streams", value = 2586408642},
    .{key = "get_length", value = 1740695150},
    .{key = "is_monophonic", value = 36873697},
    .{key = "instantiate_playback", value = 210135309},
    .{key = "set_mix_rate", value = 373806689},
    .{key = "get_mix_rate", value = 1740695150},
    .{key = "set_buffer_length", value = 373806689},
    .{key = "get_buffer_length", value = 1740695150},
    .{key = "push_frame", value = 3975407249},
    .{key = "can_push_buffer", value = 1116898809},
    .{key = "push_buffer", value = 1361156557},
    .{key = "get_frames_available", value = 3905245786},
    .{key = "get_skips", value = 3905245786},
    .{key = "clear_buffer", value = 3218959716},
    .{key = "set_clip_count", value = 1286410249},
    .{key = "get_clip_count", value = 3905245786},
    .{key = "set_initial_clip", value = 1286410249},
    .{key = "get_initial_clip", value = 3905245786},
    .{key = "set_clip_name", value = 3780747571},
    .{key = "get_clip_name", value = 659327637},
    .{key = "set_clip_stream", value = 111075094},
    .{key = "get_clip_stream", value = 2739380747},
    .{key = "set_clip_auto_advance", value = 57217598},
    .{key = "get_clip_auto_advance", value = 1778634807},
    .{key = "set_clip_auto_advance_next_clip", value = 3937882851},
    .{key = "get_clip_auto_advance_next_clip", value = 923996154},
    .{key = "add_transition", value = 1630280552},
    .{key = "has_transition", value = 2522259332},
    .{key = "erase_transition", value = 3937882851},
    .{key = "get_transition_list", value = 1930428628},
    .{key = "get_transition_from_time", value = 3453338158},
    .{key = "get_transition_to_time", value = 1369651373},
    .{key = "get_transition_fade_mode", value = 4065396087},
    .{key = "get_transition_fade_beats", value = 3085491603},
    .{key = "is_transition_using_filler_clip", value = 2522259332},
    .{key = "get_transition_filler_clip", value = 3175239445},
    .{key = "is_transition_holding_previous", value = 2522259332},
    .{key = "set_data", value = 2971499966},
    .{key = "get_data", value = 2362200018},
    .{key = "set_loop", value = 2586408642},
    .{key = "has_loop", value = 36873697},
    .{key = "set_loop_offset", value = 373806689},
    .{key = "get_loop_offset", value = 1740695150},
    .{key = "set_bpm", value = 373806689},
    .{key = "get_bpm", value = 1740695150},
    .{key = "set_beat_count", value = 1286410249},
    .{key = "get_beat_count", value = 3905245786},
    .{key = "set_bar_beats", value = 1286410249},
    .{key = "get_bar_beats", value = 3905245786},
    .{key = "load_from_buffer", value = 354904730},
    .{key = "load_from_file", value = 797568536},
    .{key = "set_packet_sequence", value = 438882457},
    .{key = "get_packet_sequence", value = 2801636033},
    .{key = "set_loop", value = 2586408642},
    .{key = "has_loop", value = 36873697},
    .{key = "set_loop_offset", value = 373806689},
    .{key = "get_loop_offset", value = 1740695150},
    .{key = "set_bpm", value = 373806689},
    .{key = "get_bpm", value = 1740695150},
    .{key = "set_beat_count", value = 1286410249},
    .{key = "get_beat_count", value = 3905245786},
    .{key = "set_bar_beats", value = 1286410249},
    .{key = "get_bar_beats", value = 3905245786},
    .{key = "switch_to_clip_by_name", value = 3304788590},
    .{key = "switch_to_clip", value = 1286410249},
    .{key = "play_stream", value = 604492179},
    .{key = "set_stream_volume", value = 1602489585},
    .{key = "set_stream_pitch_scale", value = 1602489585},
    .{key = "is_stream_playing", value = 1116898809},
    .{key = "stop_stream", value = 1286410249},
    .{key = "begin_resample", value = 3218959716},
    .{key = "set_stream", value = 2210767741},
    .{key = "get_stream", value = 160907539},
    .{key = "set_volume_db", value = 373806689},
    .{key = "get_volume_db", value = 1740695150},
    .{key = "set_pitch_scale", value = 373806689},
    .{key = "get_pitch_scale", value = 1740695150},
    .{key = "play", value = 1958160172},
    .{key = "seek", value = 373806689},
    .{key = "stop", value = 3218959716},
    .{key = "is_playing", value = 36873697},
    .{key = "get_playback_position", value = 191475506},
    .{key = "set_bus", value = 3304788590},
    .{key = "get_bus", value = 2002593661},
    .{key = "set_autoplay", value = 2586408642},
    .{key = "is_autoplay_enabled", value = 36873697},
    .{key = "set_mix_target", value = 2300306138},
    .{key = "get_mix_target", value = 172807476},
    .{key = "set_stream_paused", value = 2586408642},
    .{key = "get_stream_paused", value = 36873697},
    .{key = "set_max_polyphony", value = 1286410249},
    .{key = "get_max_polyphony", value = 3905245786},
    .{key = "has_stream_playback", value = 2240911060},
    .{key = "get_stream_playback", value = 210135309},
    .{key = "set_stream", value = 2210767741},
    .{key = "get_stream", value = 160907539},
    .{key = "set_volume_db", value = 373806689},
    .{key = "get_volume_db", value = 1740695150},
    .{key = "set_pitch_scale", value = 373806689},
    .{key = "get_pitch_scale", value = 1740695150},
    .{key = "play", value = 1958160172},
    .{key = "seek", value = 373806689},
    .{key = "stop", value = 3218959716},
    .{key = "is_playing", value = 36873697},
    .{key = "get_playback_position", value = 191475506},
    .{key = "set_bus", value = 3304788590},
    .{key = "get_bus", value = 2002593661},
    .{key = "set_autoplay", value = 2586408642},
    .{key = "is_autoplay_enabled", value = 36873697},
    .{key = "set_max_distance", value = 373806689},
    .{key = "get_max_distance", value = 1740695150},
    .{key = "set_attenuation", value = 373806689},
    .{key = "get_attenuation", value = 1740695150},
    .{key = "set_area_mask", value = 1286410249},
    .{key = "get_area_mask", value = 3905245786},
    .{key = "set_stream_paused", value = 2586408642},
    .{key = "get_stream_paused", value = 36873697},
    .{key = "set_max_polyphony", value = 1286410249},
    .{key = "get_max_polyphony", value = 3905245786},
    .{key = "set_panning_strength", value = 373806689},
    .{key = "get_panning_strength", value = 1740695150},
    .{key = "has_stream_playback", value = 2240911060},
    .{key = "get_stream_playback", value = 210135309},
    .{key = "set_stream", value = 2210767741},
    .{key = "get_stream", value = 160907539},
    .{key = "set_volume_db", value = 373806689},
    .{key = "get_volume_db", value = 1740695150},
    .{key = "set_unit_size", value = 373806689},
    .{key = "get_unit_size", value = 1740695150},
    .{key = "set_max_db", value = 373806689},
    .{key = "get_max_db", value = 1740695150},
    .{key = "set_pitch_scale", value = 373806689},
    .{key = "get_pitch_scale", value = 1740695150},
    .{key = "play", value = 1958160172},
    .{key = "seek", value = 373806689},
    .{key = "stop", value = 3218959716},
    .{key = "is_playing", value = 36873697},
    .{key = "get_playback_position", value = 191475506},
    .{key = "set_bus", value = 3304788590},
    .{key = "get_bus", value = 2002593661},
    .{key = "set_autoplay", value = 2586408642},
    .{key = "is_autoplay_enabled", value = 36873697},
    .{key = "set_max_distance", value = 373806689},
    .{key = "get_max_distance", value = 1740695150},
    .{key = "set_area_mask", value = 1286410249},
    .{key = "get_area_mask", value = 3905245786},
    .{key = "set_emission_angle", value = 373806689},
    .{key = "get_emission_angle", value = 1740695150},
    .{key = "set_emission_angle_enabled", value = 2586408642},
    .{key = "is_emission_angle_enabled", value = 36873697},
    .{key = "set_emission_angle_filter_attenuation_db", value = 373806689},
    .{key = "get_emission_angle_filter_attenuation_db", value = 1740695150},
    .{key = "set_attenuation_filter_cutoff_hz", value = 373806689},
    .{key = "get_attenuation_filter_cutoff_hz", value = 1740695150},
    .{key = "set_attenuation_filter_db", value = 373806689},
    .{key = "get_attenuation_filter_db", value = 1740695150},
    .{key = "set_attenuation_model", value = 2988086229},
    .{key = "get_attenuation_model", value = 3035106060},
    .{key = "set_doppler_tracking", value = 3968161450},
    .{key = "get_doppler_tracking", value = 1702418664},
    .{key = "set_stream_paused", value = 2586408642},
    .{key = "get_stream_paused", value = 36873697},
    .{key = "set_max_polyphony", value = 1286410249},
    .{key = "get_max_polyphony", value = 3905245786},
    .{key = "set_panning_strength", value = 373806689},
    .{key = "get_panning_strength", value = 1740695150},
    .{key = "has_stream_playback", value = 2240911060},
    .{key = "get_stream_playback", value = 210135309},
    .{key = "set_stream_count", value = 1286410249},
    .{key = "get_stream_count", value = 3905245786},
    .{key = "get_bpm", value = 1740695150},
    .{key = "set_list_stream", value = 111075094},
    .{key = "get_list_stream", value = 2739380747},
    .{key = "set_shuffle", value = 2586408642},
    .{key = "get_shuffle", value = 36873697},
    .{key = "set_fade_time", value = 373806689},
    .{key = "get_fade_time", value = 1740695150},
    .{key = "set_loop", value = 2586408642},
    .{key = "has_loop", value = 36873697},
    .{key = "set_polyphony", value = 1286410249},
    .{key = "get_polyphony", value = 3905245786},
    .{key = "add_stream", value = 1892018854},
    .{key = "move_stream", value = 3937882851},
    .{key = "remove_stream", value = 1286410249},
    .{key = "set_stream", value = 111075094},
    .{key = "get_stream", value = 2739380747},
    .{key = "set_stream_probability_weight", value = 1602489585},
    .{key = "get_stream_probability_weight", value = 2339986948},
    .{key = "set_streams_count", value = 1286410249},
    .{key = "get_streams_count", value = 3905245786},
    .{key = "set_random_pitch", value = 373806689},
    .{key = "get_random_pitch", value = 1740695150},
    .{key = "set_random_volume_offset_db", value = 373806689},
    .{key = "get_random_volume_offset_db", value = 1740695150},
    .{key = "set_playback_mode", value = 3950967023},
    .{key = "get_playback_mode", value = 3943055077},
    .{key = "set_stream_count", value = 1286410249},
    .{key = "get_stream_count", value = 3905245786},
    .{key = "set_sync_stream", value = 111075094},
    .{key = "get_sync_stream", value = 2739380747},
    .{key = "set_sync_stream_volume", value = 1602489585},
    .{key = "get_sync_stream_volume", value = 2339986948},
    .{key = "set_data", value = 2971499966},
    .{key = "get_data", value = 2362200018},
    .{key = "set_format", value = 60648488},
    .{key = "get_format", value = 3151724922},
    .{key = "set_loop_mode", value = 2444882972},
    .{key = "get_loop_mode", value = 393560655},
    .{key = "set_loop_begin", value = 1286410249},
    .{key = "get_loop_begin", value = 3905245786},
    .{key = "set_loop_end", value = 1286410249},
    .{key = "get_loop_end", value = 3905245786},
    .{key = "set_mix_rate", value = 1286410249},
    .{key = "get_mix_rate", value = 3905245786},
    .{key = "set_stereo", value = 2586408642},
    .{key = "is_stereo", value = 36873697},
    .{key = "save_to_wav", value = 166001499},
    .{key = "set_rect", value = 2046264180},
    .{key = "get_rect", value = 1639390495},
    .{key = "set_copy_mode", value = 1713538590},
    .{key = "get_copy_mode", value = 3271169440},
    .{key = "set_pressed", value = 2586408642},
    .{key = "is_pressed", value = 36873697},
    .{key = "set_pressed_no_signal", value = 2586408642},
    .{key = "is_hovered", value = 36873697},
    .{key = "set_toggle_mode", value = 2586408642},
    .{key = "is_toggle_mode", value = 36873697},
    .{key = "set_shortcut_in_tooltip", value = 2586408642},
    .{key = "is_shortcut_in_tooltip_enabled", value = 36873697},
    .{key = "set_disabled", value = 2586408642},
    .{key = "is_disabled", value = 36873697},
    .{key = "set_action_mode", value = 1985162088},
    .{key = "get_action_mode", value = 2589712189},
    .{key = "set_button_mask", value = 3950145251},
    .{key = "get_button_mask", value = 2512161324},
    .{key = "get_draw_mode", value = 2492721305},
    .{key = "set_keep_pressed_outside", value = 2586408642},
    .{key = "is_keep_pressed_outside", value = 36873697},
    .{key = "set_shortcut_feedback", value = 2586408642},
    .{key = "is_shortcut_feedback", value = 36873697},
    .{key = "set_shortcut", value = 857163497},
    .{key = "get_shortcut", value = 3415666916},
    .{key = "set_button_group", value = 1794463739},
    .{key = "get_button_group", value = 281644053},
    .{key = "set_albedo", value = 2920490490},
    .{key = "get_albedo", value = 3444240500},
    .{key = "set_transparency", value = 3435651667},
    .{key = "get_transparency", value = 990903061},
    .{key = "set_alpha_antialiasing", value = 3212649852},
    .{key = "get_alpha_antialiasing", value = 2889939400},
    .{key = "set_alpha_antialiasing_edge", value = 373806689},
    .{key = "get_alpha_antialiasing_edge", value = 1740695150},
    .{key = "set_shading_mode", value = 3368750322},
    .{key = "get_shading_mode", value = 2132070559},
    .{key = "set_specular", value = 373806689},
    .{key = "get_specular", value = 1740695150},
    .{key = "set_metallic", value = 373806689},
    .{key = "get_metallic", value = 1740695150},
    .{key = "set_roughness", value = 373806689},
    .{key = "get_roughness", value = 1740695150},
    .{key = "set_emission", value = 2920490490},
    .{key = "get_emission", value = 3444240500},
    .{key = "set_emission_energy_multiplier", value = 373806689},
    .{key = "get_emission_energy_multiplier", value = 1740695150},
    .{key = "set_emission_intensity", value = 373806689},
    .{key = "get_emission_intensity", value = 1740695150},
    .{key = "set_normal_scale", value = 373806689},
    .{key = "get_normal_scale", value = 1740695150},
    .{key = "set_rim", value = 373806689},
    .{key = "get_rim", value = 1740695150},
    .{key = "set_rim_tint", value = 373806689},
    .{key = "get_rim_tint", value = 1740695150},
    .{key = "set_clearcoat", value = 373806689},
    .{key = "get_clearcoat", value = 1740695150},
    .{key = "set_clearcoat_roughness", value = 373806689},
    .{key = "get_clearcoat_roughness", value = 1740695150},
    .{key = "set_anisotropy", value = 373806689},
    .{key = "get_anisotropy", value = 1740695150},
    .{key = "set_heightmap_scale", value = 373806689},
    .{key = "get_heightmap_scale", value = 1740695150},
    .{key = "set_subsurface_scattering_strength", value = 373806689},
    .{key = "get_subsurface_scattering_strength", value = 1740695150},
    .{key = "set_transmittance_color", value = 2920490490},
    .{key = "get_transmittance_color", value = 3444240500},
    .{key = "set_transmittance_depth", value = 373806689},
    .{key = "get_transmittance_depth", value = 1740695150},
    .{key = "set_transmittance_boost", value = 373806689},
    .{key = "get_transmittance_boost", value = 1740695150},
    .{key = "set_backlight", value = 2920490490},
    .{key = "get_backlight", value = 3444240500},
    .{key = "set_refraction", value = 373806689},
    .{key = "get_refraction", value = 1740695150},
    .{key = "set_point_size", value = 373806689},
    .{key = "get_point_size", value = 1740695150},
    .{key = "set_detail_uv", value = 456801921},
    .{key = "get_detail_uv", value = 2306920512},
    .{key = "set_blend_mode", value = 2830186259},
    .{key = "get_blend_mode", value = 4022690962},
    .{key = "set_depth_draw_mode", value = 1456584748},
    .{key = "get_depth_draw_mode", value = 2578197639},
    .{key = "set_cull_mode", value = 2338909218},
    .{key = "get_cull_mode", value = 1941499586},
    .{key = "set_diffuse_mode", value = 1045299638},
    .{key = "get_diffuse_mode", value = 3973617136},
    .{key = "set_specular_mode", value = 584737147},
    .{key = "get_specular_mode", value = 2569953298},
    .{key = "set_flag", value = 3070159527},
    .{key = "get_flag", value = 1286410065},
    .{key = "set_texture_filter", value = 22904437},
    .{key = "get_texture_filter", value = 3289213076},
    .{key = "set_feature", value = 2819288693},
    .{key = "get_feature", value = 1965241794},
    .{key = "set_texture", value = 464208135},
    .{key = "get_texture", value = 329605813},
    .{key = "set_detail_blend_mode", value = 2830186259},
    .{key = "get_detail_blend_mode", value = 4022690962},
    .{key = "set_uv1_scale", value = 3460891852},
    .{key = "get_uv1_scale", value = 3360562783},
    .{key = "set_uv1_offset", value = 3460891852},
    .{key = "get_uv1_offset", value = 3360562783},
    .{key = "set_uv1_triplanar_blend_sharpness", value = 373806689},
    .{key = "get_uv1_triplanar_blend_sharpness", value = 1740695150},
    .{key = "set_uv2_scale", value = 3460891852},
    .{key = "get_uv2_scale", value = 3360562783},
    .{key = "set_uv2_offset", value = 3460891852},
    .{key = "get_uv2_offset", value = 3360562783},
    .{key = "set_uv2_triplanar_blend_sharpness", value = 373806689},
    .{key = "get_uv2_triplanar_blend_sharpness", value = 1740695150},
    .{key = "set_billboard_mode", value = 4202036497},
    .{key = "get_billboard_mode", value = 1283840139},
    .{key = "set_particles_anim_h_frames", value = 1286410249},
    .{key = "get_particles_anim_h_frames", value = 3905245786},
    .{key = "set_particles_anim_v_frames", value = 1286410249},
    .{key = "get_particles_anim_v_frames", value = 3905245786},
    .{key = "set_particles_anim_loop", value = 2586408642},
    .{key = "get_particles_anim_loop", value = 36873697},
    .{key = "set_heightmap_deep_parallax", value = 2586408642},
    .{key = "is_heightmap_deep_parallax_enabled", value = 36873697},
    .{key = "set_heightmap_deep_parallax_min_layers", value = 1286410249},
    .{key = "get_heightmap_deep_parallax_min_layers", value = 3905245786},
    .{key = "set_heightmap_deep_parallax_max_layers", value = 1286410249},
    .{key = "get_heightmap_deep_parallax_max_layers", value = 3905245786},
    .{key = "set_heightmap_deep_parallax_flip_tangent", value = 2586408642},
    .{key = "get_heightmap_deep_parallax_flip_tangent", value = 36873697},
    .{key = "set_heightmap_deep_parallax_flip_binormal", value = 2586408642},
    .{key = "get_heightmap_deep_parallax_flip_binormal", value = 36873697},
    .{key = "set_grow", value = 373806689},
    .{key = "get_grow", value = 1740695150},
    .{key = "set_emission_operator", value = 3825128922},
    .{key = "get_emission_operator", value = 974205018},
    .{key = "set_ao_light_affect", value = 373806689},
    .{key = "get_ao_light_affect", value = 1740695150},
    .{key = "set_alpha_scissor_threshold", value = 373806689},
    .{key = "get_alpha_scissor_threshold", value = 1740695150},
    .{key = "set_alpha_hash_scale", value = 373806689},
    .{key = "get_alpha_hash_scale", value = 1740695150},
    .{key = "set_grow_enabled", value = 2586408642},
    .{key = "is_grow_enabled", value = 36873697},
    .{key = "set_metallic_texture_channel", value = 744167988},
    .{key = "get_metallic_texture_channel", value = 568133867},
    .{key = "set_roughness_texture_channel", value = 744167988},
    .{key = "get_roughness_texture_channel", value = 568133867},
    .{key = "set_ao_texture_channel", value = 744167988},
    .{key = "get_ao_texture_channel", value = 568133867},
    .{key = "set_refraction_texture_channel", value = 744167988},
    .{key = "get_refraction_texture_channel", value = 568133867},
    .{key = "set_proximity_fade_enabled", value = 2586408642},
    .{key = "is_proximity_fade_enabled", value = 36873697},
    .{key = "set_proximity_fade_distance", value = 373806689},
    .{key = "get_proximity_fade_distance", value = 1740695150},
    .{key = "set_msdf_pixel_range", value = 373806689},
    .{key = "get_msdf_pixel_range", value = 1740695150},
    .{key = "set_msdf_outline_size", value = 373806689},
    .{key = "get_msdf_outline_size", value = 1740695150},
    .{key = "set_distance_fade", value = 1379478617},
    .{key = "get_distance_fade", value = 2694575734},
    .{key = "set_distance_fade_max_distance", value = 373806689},
    .{key = "get_distance_fade_max_distance", value = 1740695150},
    .{key = "set_distance_fade_min_distance", value = 373806689},
    .{key = "get_distance_fade_min_distance", value = 1740695150},
    .{key = "create", value = 1130785943},
    .{key = "create_from_image_alpha", value = 106271684},
    .{key = "set_bitv", value = 4153096796},
    .{key = "set_bit", value = 1383440665},
    .{key = "get_bitv", value = 3900751641},
    .{key = "get_bit", value = 2522259332},
    .{key = "set_bit_rect", value = 472162941},
    .{key = "get_true_bit_count", value = 3905245786},
    .{key = "get_size", value = 3690982128},
    .{key = "resize", value = 1130785943},
    .{key = "grow_mask", value = 3317281434},
    .{key = "convert_to_image", value = 4190603485},
    .{key = "opaque_to_polygons", value = 48478126},
    .{key = "set_rest", value = 2761652528},
    .{key = "get_rest", value = 3814499831},
    .{key = "apply_rest", value = 3218959716},
    .{key = "get_skeleton_rest", value = 3814499831},
    .{key = "get_index_in_skeleton", value = 3905245786},
    .{key = "set_autocalculate_length_and_angle", value = 2586408642},
    .{key = "get_autocalculate_length_and_angle", value = 36873697},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_bone_angle", value = 373806689},
    .{key = "get_bone_angle", value = 1740695150},
    .{key = "set_bone_name", value = 83702148},
    .{key = "get_bone_name", value = 201670096},
    .{key = "set_bone_idx", value = 1286410249},
    .{key = "get_bone_idx", value = 3905245786},
    .{key = "on_bone_pose_update", value = 1286410249},
    .{key = "set_override_pose", value = 2586408642},
    .{key = "get_override_pose", value = 36873697},
    .{key = "set_use_external_skeleton", value = 2586408642},
    .{key = "get_use_external_skeleton", value = 36873697},
    .{key = "set_external_skeleton", value = 1348162250},
    .{key = "get_external_skeleton", value = 4075236667},
    .{key = "get_profile", value = 4291782652},
    .{key = "set_profile", value = 3870374136},
    .{key = "get_skeleton_bone_name", value = 1965194235},
    .{key = "set_skeleton_bone_name", value = 3740211285},
    .{key = "find_profile_bone_name", value = 1965194235},
    .{key = "add_spacer", value = 1326660695},
    .{key = "set_alignment", value = 2456745134},
    .{key = "get_alignment", value = 1915476527},
    .{key = "set_vertical", value = 2586408642},
    .{key = "is_vertical", value = 36873697},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_subdivide_width", value = 1286410249},
    .{key = "get_subdivide_width", value = 3905245786},
    .{key = "set_subdivide_height", value = 1286410249},
    .{key = "get_subdivide_height", value = 3905245786},
    .{key = "set_subdivide_depth", value = 1286410249},
    .{key = "get_subdivide_depth", value = 3905245786},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "set_text_overrun_behavior", value = 1008890932},
    .{key = "get_text_overrun_behavior", value = 3779142101},
    .{key = "set_autowrap_mode", value = 3289138044},
    .{key = "get_autowrap_mode", value = 1549071663},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_button_icon", value = 4051416890},
    .{key = "get_button_icon", value = 3635182373},
    .{key = "set_flat", value = 2586408642},
    .{key = "is_flat", value = 36873697},
    .{key = "set_clip_text", value = 2586408642},
    .{key = "get_clip_text", value = 36873697},
    .{key = "set_text_alignment", value = 2312603777},
    .{key = "get_text_alignment", value = 341400642},
    .{key = "set_icon_alignment", value = 2312603777},
    .{key = "get_icon_alignment", value = 341400642},
    .{key = "set_vertical_icon_alignment", value = 1796458609},
    .{key = "get_vertical_icon_alignment", value = 3274884059},
    .{key = "set_expand_icon", value = 2586408642},
    .{key = "is_expand_icon", value = 36873697},
    .{key = "get_pressed_button", value = 3886434893},
    .{key = "get_buttons", value = 2915620761},
    .{key = "set_allow_unpress", value = 2586408642},
    .{key = "is_allow_unpress", value = 2240911060},
    .{key = "set_emitting", value = 2586408642},
    .{key = "set_amount", value = 1286410249},
    .{key = "set_lifetime", value = 373806689},
    .{key = "set_one_shot", value = 2586408642},
    .{key = "set_pre_process_time", value = 373806689},
    .{key = "set_explosiveness_ratio", value = 373806689},
    .{key = "set_randomness_ratio", value = 373806689},
    .{key = "set_lifetime_randomness", value = 373806689},
    .{key = "set_use_local_coordinates", value = 2586408642},
    .{key = "set_fixed_fps", value = 1286410249},
    .{key = "set_fractional_delta", value = 2586408642},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "is_emitting", value = 36873697},
    .{key = "get_amount", value = 3905245786},
    .{key = "get_lifetime", value = 1740695150},
    .{key = "get_one_shot", value = 36873697},
    .{key = "get_pre_process_time", value = 1740695150},
    .{key = "get_explosiveness_ratio", value = 1740695150},
    .{key = "get_randomness_ratio", value = 1740695150},
    .{key = "get_lifetime_randomness", value = 1740695150},
    .{key = "get_use_local_coordinates", value = 36873697},
    .{key = "get_fixed_fps", value = 3905245786},
    .{key = "get_fractional_delta", value = 36873697},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "set_draw_order", value = 4183193490},
    .{key = "get_draw_order", value = 1668655735},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "restart", value = 3218959716},
    .{key = "set_direction", value = 743155724},
    .{key = "get_direction", value = 3341600327},
    .{key = "set_spread", value = 373806689},
    .{key = "get_spread", value = 1740695150},
    .{key = "set_param_min", value = 3320615296},
    .{key = "get_param_min", value = 2038050600},
    .{key = "set_param_max", value = 3320615296},
    .{key = "get_param_max", value = 2038050600},
    .{key = "set_param_curve", value = 2959350143},
    .{key = "get_param_curve", value = 2603158474},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_color_ramp", value = 2756054477},
    .{key = "get_color_ramp", value = 132272999},
    .{key = "set_color_initial_ramp", value = 2756054477},
    .{key = "get_color_initial_ramp", value = 132272999},
    .{key = "set_particle_flag", value = 4178137949},
    .{key = "get_particle_flag", value = 2829976507},
    .{key = "set_emission_shape", value = 393763892},
    .{key = "get_emission_shape", value = 1740246024},
    .{key = "set_emission_sphere_radius", value = 373806689},
    .{key = "get_emission_sphere_radius", value = 1740695150},
    .{key = "set_emission_rect_extents", value = 743155724},
    .{key = "get_emission_rect_extents", value = 3341600327},
    .{key = "set_emission_points", value = 1509147220},
    .{key = "get_emission_points", value = 2961356807},
    .{key = "set_emission_normals", value = 1509147220},
    .{key = "get_emission_normals", value = 2961356807},
    .{key = "set_emission_colors", value = 3546319833},
    .{key = "get_emission_colors", value = 1392750486},
    .{key = "get_gravity", value = 3341600327},
    .{key = "set_gravity", value = 743155724},
    .{key = "get_split_scale", value = 2240911060},
    .{key = "set_split_scale", value = 2586408642},
    .{key = "get_scale_curve_x", value = 2460114913},
    .{key = "set_scale_curve_x", value = 270443179},
    .{key = "get_scale_curve_y", value = 2460114913},
    .{key = "set_scale_curve_y", value = 270443179},
    .{key = "convert_from_particles", value = 1078189570},
    .{key = "set_emitting", value = 2586408642},
    .{key = "set_amount", value = 1286410249},
    .{key = "set_lifetime", value = 373806689},
    .{key = "set_one_shot", value = 2586408642},
    .{key = "set_pre_process_time", value = 373806689},
    .{key = "set_explosiveness_ratio", value = 373806689},
    .{key = "set_randomness_ratio", value = 373806689},
    .{key = "set_visibility_aabb", value = 259215842},
    .{key = "set_lifetime_randomness", value = 373806689},
    .{key = "set_use_local_coordinates", value = 2586408642},
    .{key = "set_fixed_fps", value = 1286410249},
    .{key = "set_fractional_delta", value = 2586408642},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "is_emitting", value = 36873697},
    .{key = "get_amount", value = 3905245786},
    .{key = "get_lifetime", value = 1740695150},
    .{key = "get_one_shot", value = 36873697},
    .{key = "get_pre_process_time", value = 1740695150},
    .{key = "get_explosiveness_ratio", value = 1740695150},
    .{key = "get_randomness_ratio", value = 1740695150},
    .{key = "get_visibility_aabb", value = 1068685055},
    .{key = "get_lifetime_randomness", value = 1740695150},
    .{key = "get_use_local_coordinates", value = 36873697},
    .{key = "get_fixed_fps", value = 3905245786},
    .{key = "get_fractional_delta", value = 36873697},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "set_draw_order", value = 1427401774},
    .{key = "get_draw_order", value = 1321900776},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 1808005922},
    .{key = "restart", value = 3218959716},
    .{key = "set_direction", value = 3460891852},
    .{key = "get_direction", value = 3360562783},
    .{key = "set_spread", value = 373806689},
    .{key = "get_spread", value = 1740695150},
    .{key = "set_flatness", value = 373806689},
    .{key = "get_flatness", value = 1740695150},
    .{key = "set_param_min", value = 557936109},
    .{key = "get_param_min", value = 597646162},
    .{key = "set_param_max", value = 557936109},
    .{key = "get_param_max", value = 597646162},
    .{key = "set_param_curve", value = 4044142537},
    .{key = "get_param_curve", value = 4132790277},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_color_ramp", value = 2756054477},
    .{key = "get_color_ramp", value = 132272999},
    .{key = "set_color_initial_ramp", value = 2756054477},
    .{key = "get_color_initial_ramp", value = 132272999},
    .{key = "set_particle_flag", value = 3515406498},
    .{key = "get_particle_flag", value = 2845201987},
    .{key = "set_emission_shape", value = 491823814},
    .{key = "get_emission_shape", value = 2961454842},
    .{key = "set_emission_sphere_radius", value = 373806689},
    .{key = "get_emission_sphere_radius", value = 1740695150},
    .{key = "set_emission_box_extents", value = 3460891852},
    .{key = "get_emission_box_extents", value = 3360562783},
    .{key = "set_emission_points", value = 334873810},
    .{key = "get_emission_points", value = 497664490},
    .{key = "set_emission_normals", value = 334873810},
    .{key = "get_emission_normals", value = 497664490},
    .{key = "set_emission_colors", value = 3546319833},
    .{key = "get_emission_colors", value = 1392750486},
    .{key = "set_emission_ring_axis", value = 3460891852},
    .{key = "get_emission_ring_axis", value = 3360562783},
    .{key = "set_emission_ring_height", value = 373806689},
    .{key = "get_emission_ring_height", value = 1740695150},
    .{key = "set_emission_ring_radius", value = 373806689},
    .{key = "get_emission_ring_radius", value = 1740695150},
    .{key = "set_emission_ring_inner_radius", value = 373806689},
    .{key = "get_emission_ring_inner_radius", value = 1740695150},
    .{key = "get_gravity", value = 3360562783},
    .{key = "set_gravity", value = 3460891852},
    .{key = "get_split_scale", value = 2240911060},
    .{key = "set_split_scale", value = 2586408642},
    .{key = "get_scale_curve_x", value = 2460114913},
    .{key = "set_scale_curve_x", value = 270443179},
    .{key = "get_scale_curve_y", value = 2460114913},
    .{key = "set_scale_curve_y", value = 270443179},
    .{key = "get_scale_curve_z", value = 2460114913},
    .{key = "set_scale_curve_z", value = 270443179},
    .{key = "convert_from_particles", value = 1078189570},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_sides", value = 1286410249},
    .{key = "get_sides", value = 3905245786},
    .{key = "set_cone", value = 2586408642},
    .{key = "is_cone", value = 36873697},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_smooth_faces", value = 2586408642},
    .{key = "get_smooth_faces", value = 36873697},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 4081188045},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_polygon", value = 1509147220},
    .{key = "get_polygon", value = 2961356807},
    .{key = "set_mode", value = 3158377035},
    .{key = "get_mode", value = 1201612222},
    .{key = "set_depth", value = 373806689},
    .{key = "get_depth", value = 1740695150},
    .{key = "set_spin_degrees", value = 373806689},
    .{key = "get_spin_degrees", value = 1740695150},
    .{key = "set_spin_sides", value = 1286410249},
    .{key = "get_spin_sides", value = 3905245786},
    .{key = "set_path_node", value = 1348162250},
    .{key = "get_path_node", value = 4075236667},
    .{key = "set_path_interval_type", value = 3744240707},
    .{key = "get_path_interval_type", value = 3434618397},
    .{key = "set_path_interval", value = 373806689},
    .{key = "get_path_interval", value = 1740695150},
    .{key = "set_path_simplify_angle", value = 373806689},
    .{key = "get_path_simplify_angle", value = 1740695150},
    .{key = "set_path_rotation", value = 1412947288},
    .{key = "get_path_rotation", value = 647219346},
    .{key = "set_path_local", value = 2586408642},
    .{key = "is_path_local", value = 36873697},
    .{key = "set_path_continuous_u", value = 2586408642},
    .{key = "is_path_continuous_u", value = 36873697},
    .{key = "set_path_u_distance", value = 373806689},
    .{key = "get_path_u_distance", value = 1740695150},
    .{key = "set_path_joined", value = 2586408642},
    .{key = "is_path_joined", value = 36873697},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_smooth_faces", value = 2586408642},
    .{key = "get_smooth_faces", value = 36873697},
    .{key = "set_flip_faces", value = 2586408642},
    .{key = "get_flip_faces", value = 2240911060},
    .{key = "is_root_shape", value = 36873697},
    .{key = "set_operation", value = 811425055},
    .{key = "get_operation", value = 2662425879},
    .{key = "set_snap", value = 373806689},
    .{key = "get_snap", value = 1740695150},
    .{key = "set_use_collision", value = 2586408642},
    .{key = "is_using_collision", value = 36873697},
    .{key = "set_collision_layer", value = 1286410249},
    .{key = "get_collision_layer", value = 3905245786},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_collision_layer_value", value = 300928843},
    .{key = "get_collision_layer_value", value = 1116898809},
    .{key = "set_collision_priority", value = 373806689},
    .{key = "get_collision_priority", value = 1740695150},
    .{key = "set_calculate_tangents", value = 2586408642},
    .{key = "is_calculating_tangents", value = 36873697},
    .{key = "get_meshes", value = 3995934104},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_radial_segments", value = 1286410249},
    .{key = "get_radial_segments", value = 3905245786},
    .{key = "set_rings", value = 1286410249},
    .{key = "get_rings", value = 3905245786},
    .{key = "set_smooth_faces", value = 2586408642},
    .{key = "get_smooth_faces", value = 36873697},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_inner_radius", value = 373806689},
    .{key = "get_inner_radius", value = 1740695150},
    .{key = "set_outer_radius", value = 373806689},
    .{key = "get_outer_radius", value = 1740695150},
    .{key = "set_sides", value = 1286410249},
    .{key = "get_sides", value = 3905245786},
    .{key = "set_ring_sides", value = 1286410249},
    .{key = "get_ring_sides", value = 3905245786},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_smooth_faces", value = 2586408642},
    .{key = "get_smooth_faces", value = 36873697},
    .{key = "set_delay", value = 3008182292},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_anchor_mode", value = 2050398218},
    .{key = "get_anchor_mode", value = 155978067},
    .{key = "set_ignore_rotation", value = 2586408642},
    .{key = "is_ignoring_rotation", value = 36873697},
    .{key = "set_process_callback", value = 4201947462},
    .{key = "get_process_callback", value = 2325344499},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "make_current", value = 3218959716},
    .{key = "is_current", value = 36873697},
    .{key = "set_limit", value = 437707142},
    .{key = "get_limit", value = 1983885014},
    .{key = "set_limit_smoothing_enabled", value = 2586408642},
    .{key = "is_limit_smoothing_enabled", value = 36873697},
    .{key = "set_drag_vertical_enabled", value = 2586408642},
    .{key = "is_drag_vertical_enabled", value = 36873697},
    .{key = "set_drag_horizontal_enabled", value = 2586408642},
    .{key = "is_drag_horizontal_enabled", value = 36873697},
    .{key = "set_drag_vertical_offset", value = 373806689},
    .{key = "get_drag_vertical_offset", value = 1740695150},
    .{key = "set_drag_horizontal_offset", value = 373806689},
    .{key = "get_drag_horizontal_offset", value = 1740695150},
    .{key = "set_drag_margin", value = 4290182280},
    .{key = "get_drag_margin", value = 2869120046},
    .{key = "get_target_position", value = 3341600327},
    .{key = "get_screen_center_position", value = 3341600327},
    .{key = "set_zoom", value = 743155724},
    .{key = "get_zoom", value = 3341600327},
    .{key = "set_custom_viewport", value = 1078189570},
    .{key = "get_custom_viewport", value = 3160264692},
    .{key = "set_position_smoothing_speed", value = 373806689},
    .{key = "get_position_smoothing_speed", value = 1740695150},
    .{key = "set_position_smoothing_enabled", value = 2586408642},
    .{key = "is_position_smoothing_enabled", value = 36873697},
    .{key = "set_rotation_smoothing_enabled", value = 2586408642},
    .{key = "is_rotation_smoothing_enabled", value = 36873697},
    .{key = "set_rotation_smoothing_speed", value = 373806689},
    .{key = "get_rotation_smoothing_speed", value = 1740695150},
    .{key = "force_update_scroll", value = 3218959716},
    .{key = "reset_smoothing", value = 3218959716},
    .{key = "align", value = 3218959716},
    .{key = "set_screen_drawing_enabled", value = 2586408642},
    .{key = "is_screen_drawing_enabled", value = 36873697},
    .{key = "set_limit_drawing_enabled", value = 2586408642},
    .{key = "is_limit_drawing_enabled", value = 36873697},
    .{key = "set_margin_drawing_enabled", value = 2586408642},
    .{key = "is_margin_drawing_enabled", value = 36873697},
    .{key = "project_ray_normal", value = 1718073306},
    .{key = "project_local_ray_normal", value = 1718073306},
    .{key = "project_ray_origin", value = 1718073306},
    .{key = "unproject_position", value = 3758901831},
    .{key = "is_position_behind", value = 3108956480},
    .{key = "project_position", value = 2171975744},
    .{key = "set_perspective", value = 2385087082},
    .{key = "set_orthogonal", value = 2385087082},
    .{key = "set_frustum", value = 354890663},
    .{key = "make_current", value = 3218959716},
    .{key = "clear_current", value = 3216645846},
    .{key = "set_current", value = 2586408642},
    .{key = "is_current", value = 36873697},
    .{key = "get_camera_transform", value = 3229777777},
    .{key = "get_camera_projection", value = 2910717950},
    .{key = "get_fov", value = 1740695150},
    .{key = "get_frustum_offset", value = 3341600327},
    .{key = "get_size", value = 1740695150},
    .{key = "get_far", value = 1740695150},
    .{key = "get_near", value = 1740695150},
    .{key = "set_fov", value = 373806689},
    .{key = "set_frustum_offset", value = 743155724},
    .{key = "set_size", value = 373806689},
    .{key = "set_far", value = 373806689},
    .{key = "set_near", value = 373806689},
    .{key = "get_projection", value = 2624185235},
    .{key = "set_projection", value = 4218540108},
    .{key = "set_h_offset", value = 373806689},
    .{key = "get_h_offset", value = 1740695150},
    .{key = "set_v_offset", value = 373806689},
    .{key = "get_v_offset", value = 1740695150},
    .{key = "set_cull_mask", value = 1286410249},
    .{key = "get_cull_mask", value = 3905245786},
    .{key = "set_environment", value = 4143518816},
    .{key = "get_environment", value = 3082064660},
    .{key = "set_attributes", value = 2817810567},
    .{key = "get_attributes", value = 3921283215},
    .{key = "set_compositor", value = 1586754307},
    .{key = "get_compositor", value = 3647707413},
    .{key = "set_keep_aspect_mode", value = 1740651252},
    .{key = "get_keep_aspect_mode", value = 2790278316},
    .{key = "set_doppler_tracking", value = 3109431270},
    .{key = "get_doppler_tracking", value = 1584483649},
    .{key = "get_frustum", value = 3995934104},
    .{key = "is_position_in_frustum", value = 3108956480},
    .{key = "get_camera_rid", value = 2944877500},
    .{key = "get_pyramid_shape_rid", value = 529393457},
    .{key = "set_cull_mask_value", value = 300928843},
    .{key = "get_cull_mask_value", value = 1116898809},
    .{key = "set_exposure_multiplier", value = 373806689},
    .{key = "get_exposure_multiplier", value = 1740695150},
    .{key = "set_exposure_sensitivity", value = 373806689},
    .{key = "get_exposure_sensitivity", value = 1740695150},
    .{key = "set_auto_exposure_enabled", value = 2586408642},
    .{key = "is_auto_exposure_enabled", value = 36873697},
    .{key = "set_auto_exposure_speed", value = 373806689},
    .{key = "get_auto_exposure_speed", value = 1740695150},
    .{key = "set_auto_exposure_scale", value = 373806689},
    .{key = "get_auto_exposure_scale", value = 1740695150},
    .{key = "set_aperture", value = 373806689},
    .{key = "get_aperture", value = 1740695150},
    .{key = "set_shutter_speed", value = 373806689},
    .{key = "get_shutter_speed", value = 1740695150},
    .{key = "set_focal_length", value = 373806689},
    .{key = "get_focal_length", value = 1740695150},
    .{key = "set_focus_distance", value = 373806689},
    .{key = "get_focus_distance", value = 1740695150},
    .{key = "set_near", value = 373806689},
    .{key = "get_near", value = 1740695150},
    .{key = "set_far", value = 373806689},
    .{key = "get_far", value = 1740695150},
    .{key = "get_fov", value = 1740695150},
    .{key = "set_auto_exposure_max_exposure_value", value = 373806689},
    .{key = "get_auto_exposure_max_exposure_value", value = 1740695150},
    .{key = "set_auto_exposure_min_exposure_value", value = 373806689},
    .{key = "get_auto_exposure_min_exposure_value", value = 1740695150},
    .{key = "set_dof_blur_far_enabled", value = 2586408642},
    .{key = "is_dof_blur_far_enabled", value = 36873697},
    .{key = "set_dof_blur_far_distance", value = 373806689},
    .{key = "get_dof_blur_far_distance", value = 1740695150},
    .{key = "set_dof_blur_far_transition", value = 373806689},
    .{key = "get_dof_blur_far_transition", value = 1740695150},
    .{key = "set_dof_blur_near_enabled", value = 2586408642},
    .{key = "is_dof_blur_near_enabled", value = 36873697},
    .{key = "set_dof_blur_near_distance", value = 373806689},
    .{key = "get_dof_blur_near_distance", value = 1740695150},
    .{key = "set_dof_blur_near_transition", value = 373806689},
    .{key = "get_dof_blur_near_transition", value = 1740695150},
    .{key = "set_dof_blur_amount", value = 373806689},
    .{key = "get_dof_blur_amount", value = 1740695150},
    .{key = "set_auto_exposure_max_sensitivity", value = 373806689},
    .{key = "get_auto_exposure_max_sensitivity", value = 1740695150},
    .{key = "set_auto_exposure_min_sensitivity", value = 373806689},
    .{key = "get_auto_exposure_min_sensitivity", value = 1740695150},
    .{key = "get_id", value = 3905245786},
    .{key = "is_active", value = 36873697},
    .{key = "set_active", value = 2586408642},
    .{key = "get_name", value = 201670096},
    .{key = "get_position", value = 2711679033},
    .{key = "get_transform", value = 3814499831},
    .{key = "set_transform", value = 2761652528},
    .{key = "get_datatype", value = 1477782850},
    .{key = "get_feed", value = 361927068},
    .{key = "get_feed_count", value = 2455072627},
    .{key = "feeds", value = 2915620761},
    .{key = "add_feed", value = 3204782488},
    .{key = "remove_feed", value = 3204782488},
    .{key = "set_camera_feed_id", value = 1286410249},
    .{key = "get_camera_feed_id", value = 3905245786},
    .{key = "set_which_feed", value = 1595299230},
    .{key = "get_which_feed", value = 91039457},
    .{key = "set_camera_active", value = 2586408642},
    .{key = "get_camera_active", value = 36873697},
    .{key = "set_fit_margin", value = 373806689},
    .{key = "get_fit_margin", value = 1740695150},
    .{key = "set_clear_margin", value = 373806689},
    .{key = "get_clear_margin", value = 1740695150},
    .{key = "set_use_mipmaps", value = 2586408642},
    .{key = "is_using_mipmaps", value = 36873697},
    .{key = "get_canvas_item", value = 2944877500},
    .{key = "set_visible", value = 2586408642},
    .{key = "is_visible", value = 36873697},
    .{key = "is_visible_in_tree", value = 36873697},
    .{key = "show", value = 3218959716},
    .{key = "hide", value = 3218959716},
    .{key = "queue_redraw", value = 3218959716},
    .{key = "move_to_front", value = 3218959716},
    .{key = "set_as_top_level", value = 2586408642},
    .{key = "is_set_as_top_level", value = 36873697},
    .{key = "set_light_mask", value = 1286410249},
    .{key = "get_light_mask", value = 3905245786},
    .{key = "set_modulate", value = 2920490490},
    .{key = "get_modulate", value = 3444240500},
    .{key = "set_self_modulate", value = 2920490490},
    .{key = "get_self_modulate", value = 3444240500},
    .{key = "set_z_index", value = 1286410249},
    .{key = "get_z_index", value = 3905245786},
    .{key = "set_z_as_relative", value = 2586408642},
    .{key = "is_z_relative", value = 36873697},
    .{key = "set_y_sort_enabled", value = 2586408642},
    .{key = "is_y_sort_enabled", value = 36873697},
    .{key = "set_draw_behind_parent", value = 2586408642},
    .{key = "is_draw_behind_parent_enabled", value = 36873697},
    .{key = "draw_line", value = 1562330099},
    .{key = "draw_dashed_line", value = 684651049},
    .{key = "draw_polyline", value = 3797364428},
    .{key = "draw_polyline_colors", value = 2311979562},
    .{key = "draw_arc", value = 4140652635},
    .{key = "draw_multiline", value = 2239075205},
    .{key = "draw_multiline_colors", value = 4072951537},
    .{key = "draw_rect", value = 2417231121},
    .{key = "draw_circle", value = 3063020269},
    .{key = "draw_texture", value = 520200117},
    .{key = "draw_texture_rect", value = 3832805018},
    .{key = "draw_texture_rect_region", value = 3883821411},
    .{key = "draw_msdf_texture_rect_region", value = 4219163252},
    .{key = "draw_lcd_texture_rect_region", value = 3212350954},
    .{key = "draw_style_box", value = 388176283},
    .{key = "draw_primitive", value = 3288481815},
    .{key = "draw_polygon", value = 974537912},
    .{key = "draw_colored_polygon", value = 15245644},
    .{key = "draw_string", value = 728290553},
    .{key = "draw_multiline_string", value = 1927038192},
    .{key = "draw_string_outline", value = 340562381},
    .{key = "draw_multiline_string_outline", value = 1912318525},
    .{key = "draw_char", value = 3339793283},
    .{key = "draw_char_outline", value = 3302344391},
    .{key = "draw_mesh", value = 153818295},
    .{key = "draw_multimesh", value = 937992368},
    .{key = "draw_set_transform", value = 288975085},
    .{key = "draw_set_transform_matrix", value = 2761652528},
    .{key = "draw_animation_slice", value = 3112831842},
    .{key = "draw_end_animation", value = 3218959716},
    .{key = "get_transform", value = 3814499831},
    .{key = "get_global_transform", value = 3814499831},
    .{key = "get_global_transform_with_canvas", value = 3814499831},
    .{key = "get_viewport_transform", value = 3814499831},
    .{key = "get_viewport_rect", value = 1639390495},
    .{key = "get_canvas_transform", value = 3814499831},
    .{key = "get_screen_transform", value = 3814499831},
    .{key = "get_local_mouse_position", value = 3341600327},
    .{key = "get_global_mouse_position", value = 3341600327},
    .{key = "get_canvas", value = 2944877500},
    .{key = "get_canvas_layer_node", value = 2602762519},
    .{key = "get_world_2d", value = 2339128592},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_use_parent_material", value = 2586408642},
    .{key = "get_use_parent_material", value = 36873697},
    .{key = "set_notify_local_transform", value = 2586408642},
    .{key = "is_local_transform_notification_enabled", value = 36873697},
    .{key = "set_notify_transform", value = 2586408642},
    .{key = "is_transform_notification_enabled", value = 36873697},
    .{key = "force_update_transform", value = 3218959716},
    .{key = "make_canvas_position_local", value = 2656412154},
    .{key = "make_input_local", value = 811130057},
    .{key = "set_visibility_layer", value = 1286410249},
    .{key = "get_visibility_layer", value = 3905245786},
    .{key = "set_visibility_layer_bit", value = 300928843},
    .{key = "get_visibility_layer_bit", value = 1116898809},
    .{key = "set_texture_filter", value = 1037999706},
    .{key = "get_texture_filter", value = 121960042},
    .{key = "set_texture_repeat", value = 1716472974},
    .{key = "get_texture_repeat", value = 2667158319},
    .{key = "set_clip_children_mode", value = 1319393776},
    .{key = "get_clip_children_mode", value = 3581808349},
    .{key = "set_blend_mode", value = 1786054936},
    .{key = "get_blend_mode", value = 3318684035},
    .{key = "set_light_mode", value = 628074070},
    .{key = "get_light_mode", value = 3863292382},
    .{key = "set_particles_animation", value = 2586408642},
    .{key = "get_particles_animation", value = 36873697},
    .{key = "set_particles_anim_h_frames", value = 1286410249},
    .{key = "get_particles_anim_h_frames", value = 3905245786},
    .{key = "set_particles_anim_v_frames", value = 1286410249},
    .{key = "get_particles_anim_v_frames", value = 3905245786},
    .{key = "set_particles_anim_loop", value = 2586408642},
    .{key = "get_particles_anim_loop", value = 36873697},
    .{key = "set_layer", value = 1286410249},
    .{key = "get_layer", value = 3905245786},
    .{key = "set_visible", value = 2586408642},
    .{key = "is_visible", value = 36873697},
    .{key = "show", value = 3218959716},
    .{key = "hide", value = 3218959716},
    .{key = "set_transform", value = 2761652528},
    .{key = "get_transform", value = 3814499831},
    .{key = "get_final_transform", value = 3814499831},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_rotation", value = 373806689},
    .{key = "get_rotation", value = 1740695150},
    .{key = "set_scale", value = 743155724},
    .{key = "get_scale", value = 3341600327},
    .{key = "set_follow_viewport", value = 2586408642},
    .{key = "is_following_viewport", value = 36873697},
    .{key = "set_follow_viewport_scale", value = 373806689},
    .{key = "get_follow_viewport_scale", value = 1740695150},
    .{key = "set_custom_viewport", value = 1078189570},
    .{key = "get_custom_viewport", value = 3160264692},
    .{key = "get_canvas", value = 2944877500},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_diffuse_texture", value = 4051416890},
    .{key = "get_diffuse_texture", value = 3635182373},
    .{key = "set_normal_texture", value = 4051416890},
    .{key = "get_normal_texture", value = 3635182373},
    .{key = "set_specular_texture", value = 4051416890},
    .{key = "get_specular_texture", value = 3635182373},
    .{key = "set_specular_color", value = 2920490490},
    .{key = "get_specular_color", value = 3444240500},
    .{key = "set_specular_shininess", value = 373806689},
    .{key = "get_specular_shininess", value = 1740695150},
    .{key = "set_texture_filter", value = 1037999706},
    .{key = "get_texture_filter", value = 121960042},
    .{key = "set_texture_repeat", value = 1716472974},
    .{key = "get_texture_repeat", value = 2667158319},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_radial_segments", value = 1286410249},
    .{key = "get_radial_segments", value = 3905245786},
    .{key = "set_rings", value = 1286410249},
    .{key = "get_rings", value = 3905245786},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_use_top_left", value = 2586408642},
    .{key = "is_using_top_left", value = 36873697},
    .{key = "get_transform", value = 3761352769},
    .{key = "set_transform", value = 2761652528},
    .{key = "get_range", value = 2741790807},
    .{key = "set_range", value = 1130785943},
    .{key = "get_elapsed_time", value = 191475506},
    .{key = "set_elapsed_time", value = 373806689},
    .{key = "is_visible", value = 2240911060},
    .{key = "set_visibility", value = 2586408642},
    .{key = "is_outline", value = 2240911060},
    .{key = "set_outline", value = 2586408642},
    .{key = "get_offset", value = 1497962370},
    .{key = "set_offset", value = 743155724},
    .{key = "get_color", value = 3200896285},
    .{key = "set_color", value = 2920490490},
    .{key = "get_environment", value = 2382534195},
    .{key = "set_environment", value = 4155329257},
    .{key = "get_glyph_index", value = 3905245786},
    .{key = "set_glyph_index", value = 1286410249},
    .{key = "get_relative_index", value = 3905245786},
    .{key = "set_relative_index", value = 1286410249},
    .{key = "get_glyph_count", value = 3905245786},
    .{key = "set_glyph_count", value = 1286410249},
    .{key = "get_glyph_flags", value = 3905245786},
    .{key = "set_glyph_flags", value = 1286410249},
    .{key = "get_font", value = 2944877500},
    .{key = "set_font", value = 2722037293},
    .{key = "move_and_slide", value = 2240911060},
    .{key = "apply_floor_snap", value = 3218959716},
    .{key = "set_velocity", value = 743155724},
    .{key = "get_velocity", value = 3341600327},
    .{key = "set_safe_margin", value = 373806689},
    .{key = "get_safe_margin", value = 1740695150},
    .{key = "is_floor_stop_on_slope_enabled", value = 36873697},
    .{key = "set_floor_stop_on_slope_enabled", value = 2586408642},
    .{key = "set_floor_constant_speed_enabled", value = 2586408642},
    .{key = "is_floor_constant_speed_enabled", value = 36873697},
    .{key = "set_floor_block_on_wall_enabled", value = 2586408642},
    .{key = "is_floor_block_on_wall_enabled", value = 36873697},
    .{key = "set_slide_on_ceiling_enabled", value = 2586408642},
    .{key = "is_slide_on_ceiling_enabled", value = 36873697},
    .{key = "set_platform_floor_layers", value = 1286410249},
    .{key = "get_platform_floor_layers", value = 3905245786},
    .{key = "set_platform_wall_layers", value = 1286410249},
    .{key = "get_platform_wall_layers", value = 3905245786},
    .{key = "get_max_slides", value = 3905245786},
    .{key = "set_max_slides", value = 1286410249},
    .{key = "get_floor_max_angle", value = 1740695150},
    .{key = "set_floor_max_angle", value = 373806689},
    .{key = "get_floor_snap_length", value = 191475506},
    .{key = "set_floor_snap_length", value = 373806689},
    .{key = "get_wall_min_slide_angle", value = 1740695150},
    .{key = "set_wall_min_slide_angle", value = 373806689},
    .{key = "get_up_direction", value = 3341600327},
    .{key = "set_up_direction", value = 743155724},
    .{key = "set_motion_mode", value = 1224392233},
    .{key = "get_motion_mode", value = 1160151236},
    .{key = "set_platform_on_leave", value = 2423324375},
    .{key = "get_platform_on_leave", value = 4054324341},
    .{key = "is_on_floor", value = 36873697},
    .{key = "is_on_floor_only", value = 36873697},
    .{key = "is_on_ceiling", value = 36873697},
    .{key = "is_on_ceiling_only", value = 36873697},
    .{key = "is_on_wall", value = 36873697},
    .{key = "is_on_wall_only", value = 36873697},
    .{key = "get_floor_normal", value = 3341600327},
    .{key = "get_wall_normal", value = 3341600327},
    .{key = "get_last_motion", value = 3341600327},
    .{key = "get_position_delta", value = 3341600327},
    .{key = "get_real_velocity", value = 3341600327},
    .{key = "get_floor_angle", value = 2841063350},
    .{key = "get_platform_velocity", value = 3341600327},
    .{key = "get_slide_collision_count", value = 3905245786},
    .{key = "get_slide_collision", value = 860659811},
    .{key = "get_last_slide_collision", value = 2161834755},
    .{key = "move_and_slide", value = 2240911060},
    .{key = "apply_floor_snap", value = 3218959716},
    .{key = "set_velocity", value = 3460891852},
    .{key = "get_velocity", value = 3360562783},
    .{key = "set_safe_margin", value = 373806689},
    .{key = "get_safe_margin", value = 1740695150},
    .{key = "is_floor_stop_on_slope_enabled", value = 36873697},
    .{key = "set_floor_stop_on_slope_enabled", value = 2586408642},
    .{key = "set_floor_constant_speed_enabled", value = 2586408642},
    .{key = "is_floor_constant_speed_enabled", value = 36873697},
    .{key = "set_floor_block_on_wall_enabled", value = 2586408642},
    .{key = "is_floor_block_on_wall_enabled", value = 36873697},
    .{key = "set_slide_on_ceiling_enabled", value = 2586408642},
    .{key = "is_slide_on_ceiling_enabled", value = 36873697},
    .{key = "set_platform_floor_layers", value = 1286410249},
    .{key = "get_platform_floor_layers", value = 3905245786},
    .{key = "set_platform_wall_layers", value = 1286410249},
    .{key = "get_platform_wall_layers", value = 3905245786},
    .{key = "get_max_slides", value = 3905245786},
    .{key = "set_max_slides", value = 1286410249},
    .{key = "get_floor_max_angle", value = 1740695150},
    .{key = "set_floor_max_angle", value = 373806689},
    .{key = "get_floor_snap_length", value = 191475506},
    .{key = "set_floor_snap_length", value = 373806689},
    .{key = "get_wall_min_slide_angle", value = 1740695150},
    .{key = "set_wall_min_slide_angle", value = 373806689},
    .{key = "get_up_direction", value = 3360562783},
    .{key = "set_up_direction", value = 3460891852},
    .{key = "set_motion_mode", value = 2690739026},
    .{key = "get_motion_mode", value = 3529553604},
    .{key = "set_platform_on_leave", value = 1459986142},
    .{key = "get_platform_on_leave", value = 996491171},
    .{key = "is_on_floor", value = 36873697},
    .{key = "is_on_floor_only", value = 36873697},
    .{key = "is_on_ceiling", value = 36873697},
    .{key = "is_on_ceiling_only", value = 36873697},
    .{key = "is_on_wall", value = 36873697},
    .{key = "is_on_wall_only", value = 36873697},
    .{key = "get_floor_normal", value = 3360562783},
    .{key = "get_wall_normal", value = 3360562783},
    .{key = "get_last_motion", value = 3360562783},
    .{key = "get_position_delta", value = 3360562783},
    .{key = "get_real_velocity", value = 3360562783},
    .{key = "get_floor_angle", value = 2906300789},
    .{key = "get_platform_velocity", value = 3360562783},
    .{key = "get_platform_angular_velocity", value = 3360562783},
    .{key = "get_slide_collision_count", value = 3905245786},
    .{key = "get_slide_collision", value = 107003663},
    .{key = "get_last_slide_collision", value = 186875014},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "get_class_list", value = 1139954409},
    .{key = "get_inheriters_from_class", value = 1761182771},
    .{key = "get_parent_class", value = 1965194235},
    .{key = "class_exists", value = 2619796661},
    .{key = "is_parent_class", value = 471820014},
    .{key = "can_instantiate", value = 2619796661},
    .{key = "instantiate", value = 2760726917},
    .{key = "class_has_signal", value = 471820014},
    .{key = "class_get_signal", value = 3061114238},
    .{key = "class_get_signal_list", value = 3504980660},
    .{key = "class_get_property_list", value = 3504980660},
    .{key = "class_get_property", value = 2498641674},
    .{key = "class_set_property", value = 1690314931},
    .{key = "class_has_method", value = 3860701026},
    .{key = "class_get_method_argument_count", value = 3885694822},
    .{key = "class_get_method_list", value = 3504980660},
    .{key = "class_get_integer_constant_list", value = 3031669221},
    .{key = "class_has_integer_constant", value = 471820014},
    .{key = "class_get_integer_constant", value = 2419549490},
    .{key = "class_has_enum", value = 3860701026},
    .{key = "class_get_enum_list", value = 3031669221},
    .{key = "class_get_enum_constants", value = 661528303},
    .{key = "class_get_integer_constant_enum", value = 2457504236},
    .{key = "is_class_enabled", value = 2619796661},
    .{key = "set_indent_size", value = 1286410249},
    .{key = "get_indent_size", value = 3905245786},
    .{key = "set_indent_using_spaces", value = 2586408642},
    .{key = "is_indent_using_spaces", value = 36873697},
    .{key = "set_auto_indent_enabled", value = 2586408642},
    .{key = "is_auto_indent_enabled", value = 36873697},
    .{key = "set_auto_indent_prefixes", value = 381264803},
    .{key = "get_auto_indent_prefixes", value = 3995934104},
    .{key = "do_indent", value = 3218959716},
    .{key = "indent_lines", value = 3218959716},
    .{key = "unindent_lines", value = 3218959716},
    .{key = "convert_indent", value = 423910286},
    .{key = "set_auto_brace_completion_enabled", value = 2586408642},
    .{key = "is_auto_brace_completion_enabled", value = 36873697},
    .{key = "set_highlight_matching_braces_enabled", value = 2586408642},
    .{key = "is_highlight_matching_braces_enabled", value = 36873697},
    .{key = "add_auto_brace_completion_pair", value = 3186203200},
    .{key = "set_auto_brace_completion_pairs", value = 4155329257},
    .{key = "get_auto_brace_completion_pairs", value = 3102165223},
    .{key = "has_auto_brace_completion_open_key", value = 3927539163},
    .{key = "has_auto_brace_completion_close_key", value = 3927539163},
    .{key = "get_auto_brace_completion_close_key", value = 3135753539},
    .{key = "set_draw_breakpoints_gutter", value = 2586408642},
    .{key = "is_drawing_breakpoints_gutter", value = 36873697},
    .{key = "set_draw_bookmarks_gutter", value = 2586408642},
    .{key = "is_drawing_bookmarks_gutter", value = 36873697},
    .{key = "set_draw_executing_lines_gutter", value = 2586408642},
    .{key = "is_drawing_executing_lines_gutter", value = 36873697},
    .{key = "set_line_as_breakpoint", value = 300928843},
    .{key = "is_line_breakpointed", value = 1116898809},
    .{key = "clear_breakpointed_lines", value = 3218959716},
    .{key = "get_breakpointed_lines", value = 1930428628},
    .{key = "set_line_as_bookmarked", value = 300928843},
    .{key = "is_line_bookmarked", value = 1116898809},
    .{key = "clear_bookmarked_lines", value = 3218959716},
    .{key = "get_bookmarked_lines", value = 1930428628},
    .{key = "set_line_as_executing", value = 300928843},
    .{key = "is_line_executing", value = 1116898809},
    .{key = "clear_executing_lines", value = 3218959716},
    .{key = "get_executing_lines", value = 1930428628},
    .{key = "set_draw_line_numbers", value = 2586408642},
    .{key = "is_draw_line_numbers_enabled", value = 36873697},
    .{key = "set_line_numbers_zero_padded", value = 2586408642},
    .{key = "is_line_numbers_zero_padded", value = 36873697},
    .{key = "set_draw_fold_gutter", value = 2586408642},
    .{key = "is_drawing_fold_gutter", value = 36873697},
    .{key = "set_line_folding_enabled", value = 2586408642},
    .{key = "is_line_folding_enabled", value = 36873697},
    .{key = "can_fold_line", value = 1116898809},
    .{key = "fold_line", value = 1286410249},
    .{key = "unfold_line", value = 1286410249},
    .{key = "fold_all_lines", value = 3218959716},
    .{key = "unfold_all_lines", value = 3218959716},
    .{key = "toggle_foldable_line", value = 1286410249},
    .{key = "is_line_folded", value = 1116898809},
    .{key = "get_folded_lines", value = 3995934104},
    .{key = "create_code_region", value = 3218959716},
    .{key = "get_code_region_start_tag", value = 201670096},
    .{key = "get_code_region_end_tag", value = 201670096},
    .{key = "set_code_region_tags", value = 708800718},
    .{key = "is_line_code_region_start", value = 1116898809},
    .{key = "is_line_code_region_end", value = 1116898809},
    .{key = "add_string_delimiter", value = 3146098955},
    .{key = "remove_string_delimiter", value = 83702148},
    .{key = "has_string_delimiter", value = 3927539163},
    .{key = "set_string_delimiters", value = 381264803},
    .{key = "clear_string_delimiters", value = 3218959716},
    .{key = "get_string_delimiters", value = 3995934104},
    .{key = "is_in_string", value = 688195400},
    .{key = "add_comment_delimiter", value = 3146098955},
    .{key = "remove_comment_delimiter", value = 83702148},
    .{key = "has_comment_delimiter", value = 3927539163},
    .{key = "set_comment_delimiters", value = 381264803},
    .{key = "clear_comment_delimiters", value = 3218959716},
    .{key = "get_comment_delimiters", value = 3995934104},
    .{key = "is_in_comment", value = 688195400},
    .{key = "get_delimiter_start_key", value = 844755477},
    .{key = "get_delimiter_end_key", value = 844755477},
    .{key = "get_delimiter_start_position", value = 3016396712},
    .{key = "get_delimiter_end_position", value = 3016396712},
    .{key = "set_code_hint", value = 83702148},
    .{key = "set_code_hint_draw_below", value = 2586408642},
    .{key = "get_text_for_code_completion", value = 201670096},
    .{key = "request_code_completion", value = 107499316},
    .{key = "add_code_completion_option", value = 3944379502},
    .{key = "update_code_completion_options", value = 2586408642},
    .{key = "get_code_completion_options", value = 3995934104},
    .{key = "get_code_completion_option", value = 3485342025},
    .{key = "get_code_completion_selected_index", value = 3905245786},
    .{key = "set_code_completion_selected_index", value = 1286410249},
    .{key = "confirm_code_completion", value = 107499316},
    .{key = "cancel_code_completion", value = 3218959716},
    .{key = "set_code_completion_enabled", value = 2586408642},
    .{key = "is_code_completion_enabled", value = 36873697},
    .{key = "set_code_completion_prefixes", value = 381264803},
    .{key = "get_code_completion_prefixes", value = 3995934104},
    .{key = "set_line_length_guidelines", value = 381264803},
    .{key = "get_line_length_guidelines", value = 3995934104},
    .{key = "set_symbol_lookup_on_click_enabled", value = 2586408642},
    .{key = "is_symbol_lookup_on_click_enabled", value = 36873697},
    .{key = "get_text_for_symbol_lookup", value = 201670096},
    .{key = "get_text_with_cursor_char", value = 1391810591},
    .{key = "set_symbol_lookup_word_as_valid", value = 2586408642},
    .{key = "duplicate_lines", value = 3218959716},
    .{key = "add_keyword_color", value = 1636512886},
    .{key = "remove_keyword_color", value = 83702148},
    .{key = "has_keyword_color", value = 3927539163},
    .{key = "get_keyword_color", value = 3855908743},
    .{key = "set_keyword_colors", value = 4155329257},
    .{key = "clear_keyword_colors", value = 3218959716},
    .{key = "get_keyword_colors", value = 3102165223},
    .{key = "add_member_keyword_color", value = 1636512886},
    .{key = "remove_member_keyword_color", value = 83702148},
    .{key = "has_member_keyword_color", value = 3927539163},
    .{key = "get_member_keyword_color", value = 3855908743},
    .{key = "set_member_keyword_colors", value = 4155329257},
    .{key = "clear_member_keyword_colors", value = 3218959716},
    .{key = "get_member_keyword_colors", value = 3102165223},
    .{key = "add_color_region", value = 2924977451},
    .{key = "remove_color_region", value = 83702148},
    .{key = "has_color_region", value = 3927539163},
    .{key = "set_color_regions", value = 4155329257},
    .{key = "clear_color_regions", value = 3218959716},
    .{key = "get_color_regions", value = 3102165223},
    .{key = "set_function_color", value = 2920490490},
    .{key = "get_function_color", value = 3444240500},
    .{key = "set_number_color", value = 2920490490},
    .{key = "get_number_color", value = 3444240500},
    .{key = "set_symbol_color", value = 2920490490},
    .{key = "get_symbol_color", value = 3444240500},
    .{key = "set_member_variable_color", value = 2920490490},
    .{key = "get_member_variable_color", value = 3444240500},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_collision_layer", value = 1286410249},
    .{key = "get_collision_layer", value = 3905245786},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_layer_value", value = 300928843},
    .{key = "get_collision_layer_value", value = 1116898809},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_collision_priority", value = 373806689},
    .{key = "get_collision_priority", value = 1740695150},
    .{key = "set_disable_mode", value = 1919204045},
    .{key = "get_disable_mode", value = 3172846349},
    .{key = "set_pickable", value = 2586408642},
    .{key = "is_pickable", value = 36873697},
    .{key = "create_shape_owner", value = 3429307534},
    .{key = "remove_shape_owner", value = 1286410249},
    .{key = "get_shape_owners", value = 969006518},
    .{key = "shape_owner_set_transform", value = 30160968},
    .{key = "shape_owner_get_transform", value = 3836996910},
    .{key = "shape_owner_get_owner", value = 3332903315},
    .{key = "shape_owner_set_disabled", value = 300928843},
    .{key = "is_shape_owner_disabled", value = 1116898809},
    .{key = "shape_owner_set_one_way_collision", value = 300928843},
    .{key = "is_shape_owner_one_way_collision_enabled", value = 1116898809},
    .{key = "shape_owner_set_one_way_collision_margin", value = 1602489585},
    .{key = "get_shape_owner_one_way_collision_margin", value = 2339986948},
    .{key = "shape_owner_add_shape", value = 2077425081},
    .{key = "shape_owner_get_shape_count", value = 923996154},
    .{key = "shape_owner_get_shape", value = 3106725749},
    .{key = "shape_owner_get_shape_index", value = 3175239445},
    .{key = "shape_owner_remove_shape", value = 3937882851},
    .{key = "shape_owner_clear_shapes", value = 1286410249},
    .{key = "shape_find_owner", value = 923996154},
    .{key = "set_collision_layer", value = 1286410249},
    .{key = "get_collision_layer", value = 3905245786},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_layer_value", value = 300928843},
    .{key = "get_collision_layer_value", value = 1116898809},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_collision_priority", value = 373806689},
    .{key = "get_collision_priority", value = 1740695150},
    .{key = "set_disable_mode", value = 1623620376},
    .{key = "get_disable_mode", value = 410164780},
    .{key = "set_ray_pickable", value = 2586408642},
    .{key = "is_ray_pickable", value = 36873697},
    .{key = "set_capture_input_on_drag", value = 2586408642},
    .{key = "get_capture_input_on_drag", value = 36873697},
    .{key = "get_rid", value = 2944877500},
    .{key = "create_shape_owner", value = 3429307534},
    .{key = "remove_shape_owner", value = 1286410249},
    .{key = "get_shape_owners", value = 969006518},
    .{key = "shape_owner_set_transform", value = 3616898986},
    .{key = "shape_owner_get_transform", value = 1965739696},
    .{key = "shape_owner_get_owner", value = 3332903315},
    .{key = "shape_owner_set_disabled", value = 300928843},
    .{key = "is_shape_owner_disabled", value = 1116898809},
    .{key = "shape_owner_add_shape", value = 2566676345},
    .{key = "shape_owner_get_shape_count", value = 923996154},
    .{key = "shape_owner_get_shape", value = 4015519174},
    .{key = "shape_owner_get_shape_index", value = 3175239445},
    .{key = "shape_owner_remove_shape", value = 3937882851},
    .{key = "shape_owner_clear_shapes", value = 1286410249},
    .{key = "shape_find_owner", value = 923996154},
    .{key = "set_polygon", value = 1509147220},
    .{key = "get_polygon", value = 2961356807},
    .{key = "set_build_mode", value = 2780803135},
    .{key = "get_build_mode", value = 3044948800},
    .{key = "set_disabled", value = 2586408642},
    .{key = "is_disabled", value = 36873697},
    .{key = "set_one_way_collision", value = 2586408642},
    .{key = "is_one_way_collision_enabled", value = 36873697},
    .{key = "set_one_way_collision_margin", value = 373806689},
    .{key = "get_one_way_collision_margin", value = 1740695150},
    .{key = "set_depth", value = 373806689},
    .{key = "get_depth", value = 1740695150},
    .{key = "set_polygon", value = 1509147220},
    .{key = "get_polygon", value = 2961356807},
    .{key = "set_disabled", value = 2586408642},
    .{key = "is_disabled", value = 36873697},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_shape", value = 771364740},
    .{key = "get_shape", value = 522005891},
    .{key = "set_disabled", value = 2586408642},
    .{key = "is_disabled", value = 36873697},
    .{key = "set_one_way_collision", value = 2586408642},
    .{key = "is_one_way_collision_enabled", value = 36873697},
    .{key = "set_one_way_collision_margin", value = 373806689},
    .{key = "get_one_way_collision_margin", value = 1740695150},
    .{key = "set_debug_color", value = 2920490490},
    .{key = "get_debug_color", value = 3444240500},
    .{key = "resource_changed", value = 968641751},
    .{key = "set_shape", value = 1549710052},
    .{key = "get_shape", value = 3214262478},
    .{key = "set_disabled", value = 2586408642},
    .{key = "is_disabled", value = 36873697},
    .{key = "make_convex_from_siblings", value = 3218959716},
    .{key = "set_pick_color", value = 2920490490},
    .{key = "get_pick_color", value = 3444240500},
    .{key = "set_deferred_mode", value = 2586408642},
    .{key = "is_deferred_mode", value = 36873697},
    .{key = "set_color_mode", value = 1579114136},
    .{key = "get_color_mode", value = 392907674},
    .{key = "set_edit_alpha", value = 2586408642},
    .{key = "is_editing_alpha", value = 36873697},
    .{key = "set_can_add_swatches", value = 2586408642},
    .{key = "are_swatches_enabled", value = 36873697},
    .{key = "set_presets_visible", value = 2586408642},
    .{key = "are_presets_visible", value = 36873697},
    .{key = "set_modes_visible", value = 2586408642},
    .{key = "are_modes_visible", value = 36873697},
    .{key = "set_sampler_visible", value = 2586408642},
    .{key = "is_sampler_visible", value = 36873697},
    .{key = "set_sliders_visible", value = 2586408642},
    .{key = "are_sliders_visible", value = 36873697},
    .{key = "set_hex_visible", value = 2586408642},
    .{key = "is_hex_visible", value = 36873697},
    .{key = "add_preset", value = 2920490490},
    .{key = "erase_preset", value = 2920490490},
    .{key = "get_presets", value = 1392750486},
    .{key = "add_recent_preset", value = 2920490490},
    .{key = "erase_recent_preset", value = 2920490490},
    .{key = "get_recent_presets", value = 1392750486},
    .{key = "set_picker_shape", value = 3981373861},
    .{key = "get_picker_shape", value = 1143229889},
    .{key = "set_pick_color", value = 2920490490},
    .{key = "get_pick_color", value = 3444240500},
    .{key = "get_picker", value = 331835996},
    .{key = "get_popup", value = 1322440207},
    .{key = "set_edit_alpha", value = 2586408642},
    .{key = "is_editing_alpha", value = 36873697},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_compositor_effects", value = 381264803},
    .{key = "get_compositor_effects", value = 3995934104},
    .{key = "set_enabled", value = 2586408642},
    .{key = "get_enabled", value = 36873697},
    .{key = "set_effect_callback_type", value = 1390728419},
    .{key = "get_effect_callback_type", value = 1221912590},
    .{key = "set_access_resolved_color", value = 2586408642},
    .{key = "get_access_resolved_color", value = 36873697},
    .{key = "set_access_resolved_depth", value = 2586408642},
    .{key = "get_access_resolved_depth", value = 36873697},
    .{key = "set_needs_motion_vectors", value = 2586408642},
    .{key = "get_needs_motion_vectors", value = 36873697},
    .{key = "set_needs_normal_roughness", value = 2586408642},
    .{key = "get_needs_normal_roughness", value = 36873697},
    .{key = "set_needs_separate_specular", value = 2586408642},
    .{key = "get_needs_separate_specular", value = 36873697},
    .{key = "load", value = 166001499},
    .{key = "get_load_path", value = 201670096},
    .{key = "load", value = 166001499},
    .{key = "get_load_path", value = 201670096},
    .{key = "load", value = 166001499},
    .{key = "get_load_path", value = 201670096},
    .{key = "set_segments", value = 1509147220},
    .{key = "get_segments", value = 2961356807},
    .{key = "set_faces", value = 334873810},
    .{key = "get_faces", value = 497664490},
    .{key = "set_backface_collision_enabled", value = 2586408642},
    .{key = "is_backface_collision_enabled", value = 36873697},
    .{key = "set_param", value = 1062470226},
    .{key = "get_param", value = 2928790850},
    .{key = "set_value", value = 2504492430},
    .{key = "get_value", value = 89809366},
    .{key = "has_section", value = 3927539163},
    .{key = "has_section_key", value = 820780508},
    .{key = "get_sections", value = 1139954409},
    .{key = "get_section_keys", value = 4291131558},
    .{key = "erase_section", value = 83702148},
    .{key = "erase_section_key", value = 3186203200},
    .{key = "load", value = 166001499},
    .{key = "parse", value = 166001499},
    .{key = "save", value = 166001499},
    .{key = "encode_to_text", value = 201670096},
    .{key = "load_encrypted", value = 887037711},
    .{key = "load_encrypted_pass", value = 852856452},
    .{key = "save_encrypted", value = 887037711},
    .{key = "save_encrypted_pass", value = 852856452},
    .{key = "clear", value = 3218959716},
    .{key = "get_cancel_button", value = 1856205918},
    .{key = "set_cancel_button_text", value = 83702148},
    .{key = "get_cancel_button_text", value = 201670096},
    .{key = "queue_sort", value = 3218959716},
    .{key = "fit_child_in_rect", value = 1993438598},
    .{key = "accept_event", value = 3218959716},
    .{key = "get_minimum_size", value = 3341600327},
    .{key = "get_combined_minimum_size", value = 3341600327},
    .{key = "set_anchors_preset", value = 509135270},
    .{key = "set_offsets_preset", value = 3724524307},
    .{key = "set_anchors_and_offsets_preset", value = 3724524307},
    .{key = "set_anchor", value = 2302782885},
    .{key = "get_anchor", value = 2869120046},
    .{key = "set_offset", value = 4290182280},
    .{key = "get_offset", value = 2869120046},
    .{key = "set_anchor_and_offset", value = 4031722181},
    .{key = "set_begin", value = 743155724},
    .{key = "set_end", value = 743155724},
    .{key = "set_position", value = 2436320129},
    .{key = "set_size", value = 2436320129},
    .{key = "reset_size", value = 3218959716},
    .{key = "set_custom_minimum_size", value = 743155724},
    .{key = "set_global_position", value = 2436320129},
    .{key = "set_rotation", value = 373806689},
    .{key = "set_rotation_degrees", value = 373806689},
    .{key = "set_scale", value = 743155724},
    .{key = "set_pivot_offset", value = 743155724},
    .{key = "get_begin", value = 3341600327},
    .{key = "get_end", value = 3341600327},
    .{key = "get_position", value = 3341600327},
    .{key = "get_size", value = 3341600327},
    .{key = "get_rotation", value = 1740695150},
    .{key = "get_rotation_degrees", value = 1740695150},
    .{key = "get_scale", value = 3341600327},
    .{key = "get_pivot_offset", value = 3341600327},
    .{key = "get_custom_minimum_size", value = 3341600327},
    .{key = "get_parent_area_size", value = 3341600327},
    .{key = "get_global_position", value = 3341600327},
    .{key = "get_screen_position", value = 3341600327},
    .{key = "get_rect", value = 1639390495},
    .{key = "get_global_rect", value = 1639390495},
    .{key = "set_focus_mode", value = 3232914922},
    .{key = "get_focus_mode", value = 2132829277},
    .{key = "has_focus", value = 36873697},
    .{key = "grab_focus", value = 3218959716},
    .{key = "release_focus", value = 3218959716},
    .{key = "find_prev_valid_focus", value = 2783021301},
    .{key = "find_next_valid_focus", value = 2783021301},
    .{key = "find_valid_focus_neighbor", value = 1543910170},
    .{key = "set_h_size_flags", value = 394851643},
    .{key = "get_h_size_flags", value = 3781367401},
    .{key = "set_stretch_ratio", value = 373806689},
    .{key = "get_stretch_ratio", value = 1740695150},
    .{key = "set_v_size_flags", value = 394851643},
    .{key = "get_v_size_flags", value = 3781367401},
    .{key = "set_theme", value = 2326690814},
    .{key = "get_theme", value = 3846893731},
    .{key = "set_theme_type_variation", value = 3304788590},
    .{key = "get_theme_type_variation", value = 2002593661},
    .{key = "begin_bulk_theme_override", value = 3218959716},
    .{key = "end_bulk_theme_override", value = 3218959716},
    .{key = "add_theme_icon_override", value = 1373065600},
    .{key = "add_theme_stylebox_override", value = 4188838905},
    .{key = "add_theme_font_override", value = 3518018674},
    .{key = "add_theme_font_size_override", value = 2415702435},
    .{key = "add_theme_color_override", value = 4260178595},
    .{key = "add_theme_constant_override", value = 2415702435},
    .{key = "remove_theme_icon_override", value = 3304788590},
    .{key = "remove_theme_stylebox_override", value = 3304788590},
    .{key = "remove_theme_font_override", value = 3304788590},
    .{key = "remove_theme_font_size_override", value = 3304788590},
    .{key = "remove_theme_color_override", value = 3304788590},
    .{key = "remove_theme_constant_override", value = 3304788590},
    .{key = "get_theme_icon", value = 2336455395},
    .{key = "get_theme_stylebox", value = 2759935355},
    .{key = "get_theme_font", value = 387378635},
    .{key = "get_theme_font_size", value = 229578101},
    .{key = "get_theme_color", value = 2377051548},
    .{key = "get_theme_constant", value = 229578101},
    .{key = "has_theme_icon_override", value = 2619796661},
    .{key = "has_theme_stylebox_override", value = 2619796661},
    .{key = "has_theme_font_override", value = 2619796661},
    .{key = "has_theme_font_size_override", value = 2619796661},
    .{key = "has_theme_color_override", value = 2619796661},
    .{key = "has_theme_constant_override", value = 2619796661},
    .{key = "has_theme_icon", value = 1187511791},
    .{key = "has_theme_stylebox", value = 1187511791},
    .{key = "has_theme_font", value = 1187511791},
    .{key = "has_theme_font_size", value = 1187511791},
    .{key = "has_theme_color", value = 1187511791},
    .{key = "has_theme_constant", value = 1187511791},
    .{key = "get_theme_default_base_scale", value = 1740695150},
    .{key = "get_theme_default_font", value = 3229501585},
    .{key = "get_theme_default_font_size", value = 3905245786},
    .{key = "get_parent_control", value = 2783021301},
    .{key = "set_h_grow_direction", value = 2022385301},
    .{key = "get_h_grow_direction", value = 3635610155},
    .{key = "set_v_grow_direction", value = 2022385301},
    .{key = "get_v_grow_direction", value = 3635610155},
    .{key = "set_tooltip_text", value = 83702148},
    .{key = "get_tooltip_text", value = 201670096},
    .{key = "get_tooltip", value = 2895288280},
    .{key = "set_default_cursor_shape", value = 217062046},
    .{key = "get_default_cursor_shape", value = 2359535750},
    .{key = "get_cursor_shape", value = 1395773853},
    .{key = "set_focus_neighbor", value = 2024461774},
    .{key = "get_focus_neighbor", value = 2757935761},
    .{key = "set_focus_next", value = 1348162250},
    .{key = "get_focus_next", value = 4075236667},
    .{key = "set_focus_previous", value = 1348162250},
    .{key = "get_focus_previous", value = 4075236667},
    .{key = "force_drag", value = 3191844692},
    .{key = "set_mouse_filter", value = 3891156122},
    .{key = "get_mouse_filter", value = 1572545674},
    .{key = "set_force_pass_scroll_events", value = 2586408642},
    .{key = "is_force_pass_scroll_events", value = 36873697},
    .{key = "set_clip_contents", value = 2586408642},
    .{key = "is_clipping_contents", value = 2240911060},
    .{key = "grab_click_focus", value = 3218959716},
    .{key = "set_drag_forwarding", value = 1076571380},
    .{key = "set_drag_preview", value = 1496901182},
    .{key = "is_drag_successful", value = 36873697},
    .{key = "warp_mouse", value = 743155724},
    .{key = "set_shortcut_context", value = 1078189570},
    .{key = "get_shortcut_context", value = 3160264692},
    .{key = "update_minimum_size", value = 3218959716},
    .{key = "set_layout_direction", value = 3310692370},
    .{key = "get_layout_direction", value = 1546772008},
    .{key = "is_layout_rtl", value = 36873697},
    .{key = "set_auto_translate", value = 2586408642},
    .{key = "is_auto_translating", value = 36873697},
    .{key = "set_localize_numeral_system", value = 2586408642},
    .{key = "is_localizing_numeral_system", value = 36873697},
    .{key = "set_point_cloud", value = 1509147220},
    .{key = "set_points", value = 1509147220},
    .{key = "get_points", value = 2961356807},
    .{key = "set_points", value = 334873810},
    .{key = "get_points", value = 497664490},
    .{key = "generate_random_bytes", value = 47165747},
    .{key = "generate_rsa", value = 1237515462},
    .{key = "generate_self_signed_certificate", value = 492266173},
    .{key = "sign", value = 1673662703},
    .{key = "verify", value = 2805902225},
    .{key = "encrypt", value = 2361793670},
    .{key = "decrypt", value = 2361793670},
    .{key = "hmac_digest", value = 2368951203},
    .{key = "constant_time_compare", value = 1024142237},
    .{key = "save", value = 885841341},
    .{key = "load", value = 885841341},
    .{key = "is_public_only", value = 36873697},
    .{key = "save_to_string", value = 32795936},
    .{key = "load_from_string", value = 885841341},
    .{key = "create_placeholder", value = 121922552},
    .{key = "create_placeholder", value = 121922552},
    .{key = "get_point_count", value = 3905245786},
    .{key = "set_point_count", value = 1286410249},
    .{key = "add_point", value = 434072736},
    .{key = "remove_point", value = 1286410249},
    .{key = "clear_points", value = 3218959716},
    .{key = "get_point_position", value = 2299179447},
    .{key = "set_point_value", value = 1602489585},
    .{key = "set_point_offset", value = 3780573764},
    .{key = "sample", value = 3919130443},
    .{key = "sample_baked", value = 3919130443},
    .{key = "get_point_left_tangent", value = 2339986948},
    .{key = "get_point_right_tangent", value = 2339986948},
    .{key = "get_point_left_mode", value = 426950354},
    .{key = "get_point_right_mode", value = 426950354},
    .{key = "set_point_left_tangent", value = 1602489585},
    .{key = "set_point_right_tangent", value = 1602489585},
    .{key = "set_point_left_mode", value = 1217242874},
    .{key = "set_point_right_mode", value = 1217242874},
    .{key = "get_min_value", value = 1740695150},
    .{key = "set_min_value", value = 373806689},
    .{key = "get_max_value", value = 1740695150},
    .{key = "set_max_value", value = 373806689},
    .{key = "clean_dupes", value = 3218959716},
    .{key = "bake", value = 3218959716},
    .{key = "get_bake_resolution", value = 3905245786},
    .{key = "set_bake_resolution", value = 1286410249},
    .{key = "get_point_count", value = 3905245786},
    .{key = "set_point_count", value = 1286410249},
    .{key = "add_point", value = 4175465202},
    .{key = "set_point_position", value = 163021252},
    .{key = "get_point_position", value = 2299179447},
    .{key = "set_point_in", value = 163021252},
    .{key = "get_point_in", value = 2299179447},
    .{key = "set_point_out", value = 163021252},
    .{key = "get_point_out", value = 2299179447},
    .{key = "remove_point", value = 1286410249},
    .{key = "clear_points", value = 3218959716},
    .{key = "sample", value = 26514310},
    .{key = "samplef", value = 3588506812},
    .{key = "set_bake_interval", value = 373806689},
    .{key = "get_bake_interval", value = 1740695150},
    .{key = "get_baked_length", value = 1740695150},
    .{key = "sample_baked", value = 3464257706},
    .{key = "sample_baked_with_rotation", value = 3296056341},
    .{key = "get_baked_points", value = 2961356807},
    .{key = "get_closest_point", value = 2656412154},
    .{key = "get_closest_offset", value = 2276447920},
    .{key = "tessellate", value = 958145977},
    .{key = "tessellate_even_length", value = 2319761637},
    .{key = "get_point_count", value = 3905245786},
    .{key = "set_point_count", value = 1286410249},
    .{key = "add_point", value = 2931053748},
    .{key = "set_point_position", value = 1530502735},
    .{key = "get_point_position", value = 711720468},
    .{key = "set_point_tilt", value = 1602489585},
    .{key = "get_point_tilt", value = 2339986948},
    .{key = "set_point_in", value = 1530502735},
    .{key = "get_point_in", value = 711720468},
    .{key = "set_point_out", value = 1530502735},
    .{key = "get_point_out", value = 711720468},
    .{key = "remove_point", value = 1286410249},
    .{key = "clear_points", value = 3218959716},
    .{key = "sample", value = 3285246857},
    .{key = "samplef", value = 2553580215},
    .{key = "set_bake_interval", value = 373806689},
    .{key = "get_bake_interval", value = 1740695150},
    .{key = "set_up_vector_enabled", value = 2586408642},
    .{key = "is_up_vector_enabled", value = 36873697},
    .{key = "get_baked_length", value = 1740695150},
    .{key = "sample_baked", value = 1350085894},
    .{key = "sample_baked_with_rotation", value = 1939359131},
    .{key = "sample_baked_up_vector", value = 1362627031},
    .{key = "get_baked_points", value = 497664490},
    .{key = "get_baked_tilts", value = 675695659},
    .{key = "get_baked_up_vectors", value = 497664490},
    .{key = "get_closest_point", value = 192990374},
    .{key = "get_closest_offset", value = 1109078154},
    .{key = "tessellate", value = 1519759391},
    .{key = "tessellate_even_length", value = 133237049},
    .{key = "set_width", value = 1286410249},
    .{key = "set_curve", value = 270443179},
    .{key = "get_curve", value = 2460114913},
    .{key = "set_texture_mode", value = 1321955367},
    .{key = "get_texture_mode", value = 715756376},
    .{key = "set_width", value = 1286410249},
    .{key = "set_curve_x", value = 270443179},
    .{key = "get_curve_x", value = 2460114913},
    .{key = "set_curve_y", value = 270443179},
    .{key = "get_curve_y", value = 2460114913},
    .{key = "set_curve_z", value = 270443179},
    .{key = "get_curve_z", value = 2460114913},
    .{key = "set_top_radius", value = 373806689},
    .{key = "get_top_radius", value = 1740695150},
    .{key = "set_bottom_radius", value = 373806689},
    .{key = "get_bottom_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_radial_segments", value = 1286410249},
    .{key = "get_radial_segments", value = 3905245786},
    .{key = "set_rings", value = 1286410249},
    .{key = "get_rings", value = 3905245786},
    .{key = "set_cap_top", value = 2586408642},
    .{key = "is_cap_top", value = 36873697},
    .{key = "set_cap_bottom", value = 2586408642},
    .{key = "is_cap_bottom", value = 36873697},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "setup", value = 1262296096},
    .{key = "take_connection", value = 3946580474},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_rest_length", value = 373806689},
    .{key = "get_rest_length", value = 1740695150},
    .{key = "set_stiffness", value = 373806689},
    .{key = "get_stiffness", value = 1740695150},
    .{key = "set_damping", value = 373806689},
    .{key = "get_damping", value = 1740695150},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_texture", value = 2086764391},
    .{key = "get_texture", value = 3244119503},
    .{key = "set_emission_energy", value = 373806689},
    .{key = "get_emission_energy", value = 1740695150},
    .{key = "set_albedo_mix", value = 373806689},
    .{key = "get_albedo_mix", value = 1740695150},
    .{key = "set_modulate", value = 2920490490},
    .{key = "get_modulate", value = 3444240500},
    .{key = "set_upper_fade", value = 373806689},
    .{key = "get_upper_fade", value = 1740695150},
    .{key = "set_lower_fade", value = 373806689},
    .{key = "get_lower_fade", value = 1740695150},
    .{key = "set_normal_fade", value = 373806689},
    .{key = "get_normal_fade", value = 1740695150},
    .{key = "set_enable_distance_fade", value = 2586408642},
    .{key = "is_distance_fade_enabled", value = 36873697},
    .{key = "set_distance_fade_begin", value = 373806689},
    .{key = "get_distance_fade_begin", value = 1740695150},
    .{key = "set_distance_fade_length", value = 373806689},
    .{key = "get_distance_fade_length", value = 1740695150},
    .{key = "set_cull_mask", value = 1286410249},
    .{key = "get_cull_mask", value = 3905245786},
    .{key = "open", value = 1923528528},
    .{key = "get_open_error", value = 166280745},
    .{key = "list_dir_begin", value = 2610976713},
    .{key = "get_next", value = 2841200299},
    .{key = "current_is_dir", value = 36873697},
    .{key = "list_dir_end", value = 3218959716},
    .{key = "get_files", value = 2981934095},
    .{key = "get_files_at", value = 3538744774},
    .{key = "get_directories", value = 2981934095},
    .{key = "get_directories_at", value = 3538744774},
    .{key = "get_drive_count", value = 2455072627},
    .{key = "get_drive_name", value = 990163283},
    .{key = "get_current_drive", value = 2455072627},
    .{key = "change_dir", value = 166001499},
    .{key = "get_current_dir", value = 1287308131},
    .{key = "make_dir", value = 166001499},
    .{key = "make_dir_absolute", value = 166001499},
    .{key = "make_dir_recursive", value = 166001499},
    .{key = "make_dir_recursive_absolute", value = 166001499},
    .{key = "file_exists", value = 2323990056},
    .{key = "dir_exists", value = 2323990056},
    .{key = "dir_exists_absolute", value = 2323990056},
    .{key = "get_space_left", value = 2455072627},
    .{key = "copy", value = 1063198817},
    .{key = "copy_absolute", value = 1063198817},
    .{key = "rename", value = 852856452},
    .{key = "rename_absolute", value = 852856452},
    .{key = "remove", value = 166001499},
    .{key = "remove_absolute", value = 166001499},
    .{key = "set_include_navigational", value = 2586408642},
    .{key = "get_include_navigational", value = 36873697},
    .{key = "set_include_hidden", value = 2586408642},
    .{key = "get_include_hidden", value = 36873697},
    .{key = "is_case_sensitive", value = 3927539163},
    .{key = "set_max_distance", value = 373806689},
    .{key = "get_max_distance", value = 1740695150},
    .{key = "set_shadow_mode", value = 1261211726},
    .{key = "get_shadow_mode", value = 2765228544},
    .{key = "set_blend_splits", value = 2586408642},
    .{key = "is_blend_splits_enabled", value = 36873697},
    .{key = "set_sky_mode", value = 2691194817},
    .{key = "get_sky_mode", value = 3819982774},
    .{key = "has_feature", value = 334065950},
    .{key = "get_name", value = 201670096},
    .{key = "help_set_search_callbacks", value = 1687350599},
    .{key = "global_menu_set_popup_callbacks", value = 3893727526},
    .{key = "global_menu_add_submenu_item", value = 2828985934},
    .{key = "global_menu_add_item", value = 3401266716},
    .{key = "global_menu_add_check_item", value = 3401266716},
    .{key = "global_menu_add_icon_item", value = 4245856523},
    .{key = "global_menu_add_icon_check_item", value = 4245856523},
    .{key = "global_menu_add_radio_check_item", value = 3401266716},
    .{key = "global_menu_add_icon_radio_check_item", value = 4245856523},
    .{key = "global_menu_add_multistate_item", value = 3431222859},
    .{key = "global_menu_add_separator", value = 3214812433},
    .{key = "global_menu_get_item_index_from_text", value = 2878152881},
    .{key = "global_menu_get_item_index_from_tag", value = 2941063483},
    .{key = "global_menu_is_item_checked", value = 3511468594},
    .{key = "global_menu_is_item_checkable", value = 3511468594},
    .{key = "global_menu_is_item_radio_checkable", value = 3511468594},
    .{key = "global_menu_get_item_callback", value = 748666903},
    .{key = "global_menu_get_item_key_callback", value = 748666903},
    .{key = "global_menu_get_item_tag", value = 330672633},
    .{key = "global_menu_get_item_text", value = 591067909},
    .{key = "global_menu_get_item_submenu", value = 591067909},
    .{key = "global_menu_get_item_accelerator", value = 936065394},
    .{key = "global_menu_is_item_disabled", value = 3511468594},
    .{key = "global_menu_is_item_hidden", value = 3511468594},
    .{key = "global_menu_get_item_tooltip", value = 591067909},
    .{key = "global_menu_get_item_state", value = 3422818498},
    .{key = "global_menu_get_item_max_states", value = 3422818498},
    .{key = "global_menu_get_item_icon", value = 3591713183},
    .{key = "global_menu_get_item_indentation_level", value = 3422818498},
    .{key = "global_menu_set_item_checked", value = 4108344793},
    .{key = "global_menu_set_item_checkable", value = 4108344793},
    .{key = "global_menu_set_item_radio_checkable", value = 4108344793},
    .{key = "global_menu_set_item_callback", value = 3809915389},
    .{key = "global_menu_set_item_hover_callbacks", value = 3809915389},
    .{key = "global_menu_set_item_key_callback", value = 3809915389},
    .{key = "global_menu_set_item_tag", value = 453659863},
    .{key = "global_menu_set_item_text", value = 965966136},
    .{key = "global_menu_set_item_submenu", value = 965966136},
    .{key = "global_menu_set_item_accelerator", value = 566943293},
    .{key = "global_menu_set_item_disabled", value = 4108344793},
    .{key = "global_menu_set_item_hidden", value = 4108344793},
    .{key = "global_menu_set_item_tooltip", value = 965966136},
    .{key = "global_menu_set_item_state", value = 3474840532},
    .{key = "global_menu_set_item_max_states", value = 3474840532},
    .{key = "global_menu_set_item_icon", value = 3201338066},
    .{key = "global_menu_set_item_indentation_level", value = 3474840532},
    .{key = "global_menu_get_item_count", value = 1321353865},
    .{key = "global_menu_remove_item", value = 2956805083},
    .{key = "global_menu_clear", value = 83702148},
    .{key = "global_menu_get_system_menu_roots", value = 3102165223},
    .{key = "tts_is_speaking", value = 36873697},
    .{key = "tts_is_paused", value = 36873697},
    .{key = "tts_get_voices", value = 3995934104},
    .{key = "tts_get_voices_for_language", value = 4291131558},
    .{key = "tts_speak", value = 903992738},
    .{key = "tts_pause", value = 3218959716},
    .{key = "tts_resume", value = 3218959716},
    .{key = "tts_stop", value = 3218959716},
    .{key = "tts_set_utterance_callback", value = 109679083},
    .{key = "is_dark_mode_supported", value = 36873697},
    .{key = "is_dark_mode", value = 36873697},
    .{key = "get_accent_color", value = 3444240500},
    .{key = "get_base_color", value = 3444240500},
    .{key = "set_system_theme_change_callback", value = 1611583062},
    .{key = "mouse_set_mode", value = 348288463},
    .{key = "mouse_get_mode", value = 1353961651},
    .{key = "warp_mouse", value = 1130785943},
    .{key = "mouse_get_position", value = 3690982128},
    .{key = "mouse_get_button_state", value = 2512161324},
    .{key = "clipboard_set", value = 83702148},
    .{key = "clipboard_get", value = 201670096},
    .{key = "clipboard_get_image", value = 4190603485},
    .{key = "clipboard_has", value = 36873697},
    .{key = "clipboard_has_image", value = 36873697},
    .{key = "clipboard_set_primary", value = 83702148},
    .{key = "clipboard_get_primary", value = 201670096},
    .{key = "get_display_cutouts", value = 3995934104},
    .{key = "get_display_safe_area", value = 410525958},
    .{key = "get_screen_count", value = 3905245786},
    .{key = "get_primary_screen", value = 3905245786},
    .{key = "get_keyboard_focus_screen", value = 3905245786},
    .{key = "get_screen_from_rect", value = 741354659},
    .{key = "screen_get_position", value = 1725937825},
    .{key = "screen_get_size", value = 1725937825},
    .{key = "screen_get_usable_rect", value = 2439012528},
    .{key = "screen_get_dpi", value = 181039630},
    .{key = "screen_get_scale", value = 909105437},
    .{key = "is_touchscreen_available", value = 3323674545},
    .{key = "screen_get_max_scale", value = 1740695150},
    .{key = "screen_get_refresh_rate", value = 909105437},
    .{key = "screen_get_pixel", value = 1532707496},
    .{key = "screen_get_image", value = 3813388802},
    .{key = "screen_set_orientation", value = 2211511631},
    .{key = "screen_get_orientation", value = 133818562},
    .{key = "screen_set_keep_on", value = 2586408642},
    .{key = "screen_is_kept_on", value = 36873697},
    .{key = "get_window_list", value = 1930428628},
    .{key = "get_window_at_screen_position", value = 2485466453},
    .{key = "window_get_native_handle", value = 1096425680},
    .{key = "window_get_active_popup", value = 3905245786},
    .{key = "window_set_popup_safe_rect", value = 3317281434},
    .{key = "window_get_popup_safe_rect", value = 2161169500},
    .{key = "window_set_title", value = 441246282},
    .{key = "window_get_title_size", value = 2925301799},
    .{key = "window_set_mouse_passthrough", value = 1993637420},
    .{key = "window_get_current_screen", value = 1591665591},
    .{key = "window_set_current_screen", value = 2230941749},
    .{key = "window_get_position", value = 763922886},
    .{key = "window_get_position_with_decorations", value = 763922886},
    .{key = "window_set_position", value = 2019273902},
    .{key = "window_get_size", value = 763922886},
    .{key = "window_set_size", value = 2019273902},
    .{key = "window_set_rect_changed_callback", value = 1091192925},
    .{key = "window_set_window_event_callback", value = 1091192925},
    .{key = "window_set_input_event_callback", value = 1091192925},
    .{key = "window_set_input_text_callback", value = 1091192925},
    .{key = "window_set_drop_files_callback", value = 1091192925},
    .{key = "window_get_attached_instance_id", value = 1591665591},
    .{key = "window_get_max_size", value = 763922886},
    .{key = "window_set_max_size", value = 2019273902},
    .{key = "window_get_min_size", value = 763922886},
    .{key = "window_set_min_size", value = 2019273902},
    .{key = "window_get_size_with_decorations", value = 763922886},
    .{key = "window_get_mode", value = 2185728461},
    .{key = "window_set_mode", value = 1319965401},
    .{key = "window_set_flag", value = 254894155},
    .{key = "window_get_flag", value = 802816991},
    .{key = "window_set_window_buttons_offset", value = 2019273902},
    .{key = "window_get_safe_title_margins", value = 2295066620},
    .{key = "window_request_attention", value = 1995695955},
    .{key = "window_move_to_foreground", value = 1995695955},
    .{key = "window_is_focused", value = 1051549951},
    .{key = "window_can_draw", value = 1051549951},
    .{key = "window_set_transient", value = 3937882851},
    .{key = "window_set_exclusive", value = 300928843},
    .{key = "window_set_ime_active", value = 1661950165},
    .{key = "window_set_ime_position", value = 2019273902},
    .{key = "window_set_vsync_mode", value = 2179333492},
    .{key = "window_get_vsync_mode", value = 578873795},
    .{key = "window_is_maximize_allowed", value = 1051549951},
    .{key = "window_maximize_on_title_dbl_click", value = 36873697},
    .{key = "window_minimize_on_title_dbl_click", value = 36873697},
    .{key = "ime_get_selection", value = 3690982128},
    .{key = "ime_get_text", value = 201670096},
    .{key = "virtual_keyboard_show", value = 3042891259},
    .{key = "virtual_keyboard_hide", value = 3218959716},
    .{key = "virtual_keyboard_get_height", value = 3905245786},
    .{key = "cursor_set_shape", value = 2026291549},
    .{key = "cursor_get_shape", value = 1087724927},
    .{key = "cursor_set_custom_image", value = 1816663697},
    .{key = "get_swap_cancel_ok", value = 2240911060},
    .{key = "enable_for_stealing_focus", value = 1286410249},
    .{key = "dialog_show", value = 4115553226},
    .{key = "dialog_input_text", value = 3088703427},
    .{key = "file_dialog_show", value = 1531299078},
    .{key = "file_dialog_with_options_show", value = 1305318754},
    .{key = "keyboard_get_layout_count", value = 3905245786},
    .{key = "keyboard_get_current_layout", value = 3905245786},
    .{key = "keyboard_set_current_layout", value = 1286410249},
    .{key = "keyboard_get_layout_language", value = 844755477},
    .{key = "keyboard_get_layout_name", value = 844755477},
    .{key = "keyboard_get_keycode_from_physical", value = 3447613187},
    .{key = "keyboard_get_label_from_physical", value = 3447613187},
    .{key = "process_events", value = 3218959716},
    .{key = "force_process_and_drop_events", value = 3218959716},
    .{key = "set_native_icon", value = 83702148},
    .{key = "set_icon", value = 532598488},
    .{key = "create_status_indicator", value = 680876788},
    .{key = "status_indicator_set_icon", value = 2448856460},
    .{key = "status_indicator_set_tooltip", value = 501894301},
    .{key = "status_indicator_set_callback", value = 957362965},
    .{key = "delete_status_indicator", value = 1286410249},
    .{key = "tablet_get_driver_count", value = 3905245786},
    .{key = "tablet_get_driver_name", value = 844755477},
    .{key = "tablet_get_current_driver", value = 201670096},
    .{key = "tablet_set_current_driver", value = 83702148},
    .{key = "create_host_bound", value = 1515002313},
    .{key = "create_host", value = 117198950},
    .{key = "destroy", value = 3218959716},
    .{key = "connect_to_host", value = 2171300490},
    .{key = "service", value = 2402345344},
    .{key = "flush", value = 3218959716},
    .{key = "bandwidth_limit", value = 2302169788},
    .{key = "channel_limit", value = 1286410249},
    .{key = "broadcast", value = 2772371345},
    .{key = "compress", value = 2660215187},
    .{key = "dtls_server_setup", value = 1262296096},
    .{key = "dtls_client_setup", value = 1966198364},
    .{key = "refuse_new_connections", value = 2586408642},
    .{key = "pop_statistic", value = 2166904170},
    .{key = "get_max_channels", value = 3905245786},
    .{key = "get_local_port", value = 3905245786},
    .{key = "get_peers", value = 2915620761},
    .{key = "socket_send", value = 1100646812},
    .{key = "create_server", value = 2917761309},
    .{key = "create_client", value = 2327163476},
    .{key = "create_mesh", value = 844576869},
    .{key = "add_mesh_peer", value = 1293458335},
    .{key = "set_bind_ip", value = 83702148},
    .{key = "get_host", value = 4103238886},
    .{key = "get_peer", value = 3793311544},
    .{key = "peer_disconnect", value = 1995695955},
    .{key = "peer_disconnect_later", value = 1995695955},
    .{key = "peer_disconnect_now", value = 1995695955},
    .{key = "ping", value = 3218959716},
    .{key = "ping_interval", value = 1286410249},
    .{key = "reset", value = 3218959716},
    .{key = "send", value = 120522849},
    .{key = "throttle_configure", value = 1649997291},
    .{key = "set_timeout", value = 1649997291},
    .{key = "get_remote_address", value = 201670096},
    .{key = "get_remote_port", value = 3905245786},
    .{key = "get_statistic", value = 1642578323},
    .{key = "get_state", value = 711068532},
    .{key = "get_channels", value = 3905245786},
    .{key = "is_active", value = 36873697},
    .{key = "add_command", value = 864043298},
    .{key = "remove_command", value = 83702148},
    .{key = "get_session", value = 3061968499},
    .{key = "get_sessions", value = 2915620761},
    .{key = "send_message", value = 85656714},
    .{key = "toggle_profiler", value = 1198443697},
    .{key = "is_breaked", value = 2240911060},
    .{key = "is_debuggable", value = 2240911060},
    .{key = "is_active", value = 2240911060},
    .{key = "add_session_tab", value = 1496901182},
    .{key = "remove_session_tab", value = 1496901182},
    .{key = "get_os_name", value = 201670096},
    .{key = "add_shared_object", value = 3098291045},
    .{key = "add_ios_project_static_lib", value = 83702148},
    .{key = "add_file", value = 527928637},
    .{key = "add_ios_framework", value = 83702148},
    .{key = "add_ios_embedded_framework", value = 83702148},
    .{key = "add_ios_plist_content", value = 83702148},
    .{key = "add_ios_linker_flags", value = 83702148},
    .{key = "add_ios_bundle_file", value = 83702148},
    .{key = "add_ios_cpp_code", value = 83702148},
    .{key = "add_macos_plugin_file", value = 83702148},
    .{key = "skip", value = 3218959716},
    .{key = "get_option", value = 2760726917},
    .{key = "set_disable_class", value = 2524380260},
    .{key = "is_class_disabled", value = 2619796661},
    .{key = "set_disable_class_editor", value = 2524380260},
    .{key = "is_class_editor_disabled", value = 2619796661},
    .{key = "set_disable_class_property", value = 865197084},
    .{key = "is_class_property_disabled", value = 471820014},
    .{key = "set_disable_feature", value = 1884871044},
    .{key = "is_feature_disabled", value = 2974403161},
    .{key = "get_feature_name", value = 3401335809},
    .{key = "save_to_file", value = 166001499},
    .{key = "load_from_file", value = 166001499},
    .{key = "clear_filters", value = 3218959716},
    .{key = "add_filter", value = 3388804757},
    .{key = "set_filters", value = 4015028928},
    .{key = "get_filters", value = 1139954409},
    .{key = "get_current_dir", value = 201670096},
    .{key = "get_current_file", value = 201670096},
    .{key = "get_current_path", value = 201670096},
    .{key = "set_current_dir", value = 83702148},
    .{key = "set_current_file", value = 83702148},
    .{key = "set_current_path", value = 83702148},
    .{key = "set_file_mode", value = 274150415},
    .{key = "get_file_mode", value = 2681044145},
    .{key = "get_vbox", value = 915758477},
    .{key = "get_line_edit", value = 4071694264},
    .{key = "set_access", value = 3882893764},
    .{key = "get_access", value = 778734016},
    .{key = "set_show_hidden_files", value = 2586408642},
    .{key = "is_showing_hidden_files", value = 36873697},
    .{key = "set_display_mode", value = 3049004050},
    .{key = "get_display_mode", value = 3517174669},
    .{key = "set_disable_overwrite_warning", value = 2586408642},
    .{key = "is_overwrite_warning_disabled", value = 36873697},
    .{key = "add_side_menu", value = 402368861},
    .{key = "invalidate", value = 3218959716},
    .{key = "get_filesystem", value = 842323275},
    .{key = "is_scanning", value = 36873697},
    .{key = "get_scanning_progress", value = 1740695150},
    .{key = "scan", value = 3218959716},
    .{key = "scan_sources", value = 3218959716},
    .{key = "update_file", value = 83702148},
    .{key = "get_filesystem_path", value = 3188521125},
    .{key = "get_file_type", value = 3135753539},
    .{key = "reimport_files", value = 4015028928},
    .{key = "get_subdir_count", value = 3905245786},
    .{key = "get_subdir", value = 2330964164},
    .{key = "get_file_count", value = 3905245786},
    .{key = "get_file", value = 844755477},
    .{key = "get_file_path", value = 844755477},
    .{key = "get_file_type", value = 659327637},
    .{key = "get_file_script_class_name", value = 844755477},
    .{key = "get_file_script_class_extends", value = 844755477},
    .{key = "get_file_import_is_valid", value = 1116898809},
    .{key = "get_name", value = 2841200299},
    .{key = "get_path", value = 201670096},
    .{key = "get_parent", value = 842323275},
    .{key = "find_file_index", value = 1321353865},
    .{key = "find_dir_index", value = 1321353865},
    .{key = "append_import_external_resource", value = 320493106},
    .{key = "get_selected_path", value = 201670096},
    .{key = "get_edited_object", value = 2050059866},
    .{key = "add_custom_control", value = 1496901182},
    .{key = "add_property_editor", value = 3406284123},
    .{key = "add_property_editor_for_multiple_properties", value = 788598683},
    .{key = "restart_editor", value = 3216645846},
    .{key = "get_command_palette", value = 2471163807},
    .{key = "get_resource_filesystem", value = 780151678},
    .{key = "get_editor_paths", value = 1595760068},
    .{key = "get_resource_previewer", value = 943486957},
    .{key = "get_selection", value = 2690272531},
    .{key = "get_editor_settings", value = 4086932459},
    .{key = "make_mesh_previews", value = 878078554},
    .{key = "set_plugin_enabled", value = 2678287736},
    .{key = "is_plugin_enabled", value = 3927539163},
    .{key = "get_editor_theme", value = 3846893731},
    .{key = "get_base_control", value = 2783021301},
    .{key = "get_editor_main_screen", value = 1706218421},
    .{key = "get_script_editor", value = 90868003},
    .{key = "get_editor_viewport_2d", value = 3750751911},
    .{key = "get_editor_viewport_3d", value = 1970834490},
    .{key = "set_main_screen_editor", value = 83702148},
    .{key = "set_distraction_free_mode", value = 2586408642},
    .{key = "is_distraction_free_mode_enabled", value = 36873697},
    .{key = "is_multi_window_enabled", value = 36873697},
    .{key = "get_editor_scale", value = 1740695150},
    .{key = "popup_dialog", value = 2015770942},
    .{key = "popup_dialog_centered", value = 346557367},
    .{key = "popup_dialog_centered_ratio", value = 2093669136},
    .{key = "popup_dialog_centered_clamped", value = 3763385571},
    .{key = "get_current_feature_profile", value = 201670096},
    .{key = "set_current_feature_profile", value = 83702148},
    .{key = "popup_node_selector", value = 2271411043},
    .{key = "popup_property_selector", value = 261221679},
    .{key = "get_file_system_dock", value = 3751012327},
    .{key = "select_file", value = 83702148},
    .{key = "get_selected_paths", value = 1139954409},
    .{key = "get_current_path", value = 201670096},
    .{key = "get_current_directory", value = 201670096},
    .{key = "get_inspector", value = 3517113938},
    .{key = "inspect_object", value = 127962172},
    .{key = "edit_resource", value = 968641751},
    .{key = "edit_node", value = 1078189570},
    .{key = "edit_script", value = 219829402},
    .{key = "open_scene_from_path", value = 83702148},
    .{key = "reload_scene_from_path", value = 83702148},
    .{key = "get_open_scenes", value = 1139954409},
    .{key = "get_edited_scene_root", value = 3160264692},
    .{key = "save_scene", value = 166280745},
    .{key = "save_scene_as", value = 3647332257},
    .{key = "save_all_scenes", value = 3218959716},
    .{key = "mark_scene_as_unsaved", value = 3218959716},
    .{key = "play_main_scene", value = 3218959716},
    .{key = "play_current_scene", value = 3218959716},
    .{key = "play_custom_scene", value = 83702148},
    .{key = "stop_playing_scene", value = 3218959716},
    .{key = "is_playing_scene", value = 36873697},
    .{key = "get_playing_scene", value = 201670096},
    .{key = "set_movie_maker_enabled", value = 2586408642},
    .{key = "is_movie_maker_enabled", value = 36873697},
    .{key = "add_lines", value = 2910971437},
    .{key = "add_mesh", value = 1579955111},
    .{key = "add_collision_segments", value = 334873810},
    .{key = "add_collision_triangles", value = 54901064},
    .{key = "add_unscaled_billboard", value = 520007164},
    .{key = "add_handles", value = 2254560097},
    .{key = "set_node_3d", value = 1078189570},
    .{key = "get_node_3d", value = 151077316},
    .{key = "get_plugin", value = 4250544552},
    .{key = "clear", value = 3218959716},
    .{key = "set_hidden", value = 2586408642},
    .{key = "is_subgizmo_selected", value = 1116898809},
    .{key = "get_subgizmo_selection", value = 1930428628},
    .{key = "create_material", value = 3486012546},
    .{key = "create_icon_material", value = 3804976916},
    .{key = "create_handle_material", value = 2486475223},
    .{key = "add_material", value = 1374068695},
    .{key = "get_material", value = 974464017},
    .{key = "get_data_dir", value = 201670096},
    .{key = "get_config_dir", value = 201670096},
    .{key = "get_cache_dir", value = 201670096},
    .{key = "is_self_contained", value = 36873697},
    .{key = "get_self_contained_file", value = 201670096},
    .{key = "get_project_settings_dir", value = 201670096},
    .{key = "add_control_to_container", value = 3092750152},
    .{key = "add_control_to_bottom_panel", value = 111032269},
    .{key = "add_control_to_dock", value = 2994930786},
    .{key = "remove_control_from_docks", value = 1496901182},
    .{key = "remove_control_from_bottom_panel", value = 1496901182},
    .{key = "remove_control_from_container", value = 3092750152},
    .{key = "add_tool_menu_item", value = 2137474292},
    .{key = "add_tool_submenu_item", value = 1019428915},
    .{key = "remove_tool_menu_item", value = 83702148},
    .{key = "get_export_as_menu", value = 1775878644},
    .{key = "add_custom_type", value = 1986814599},
    .{key = "remove_custom_type", value = 83702148},
    .{key = "add_autoload_singleton", value = 3186203200},
    .{key = "remove_autoload_singleton", value = 83702148},
    .{key = "update_overlays", value = 3905245786},
    .{key = "make_bottom_panel_item_visible", value = 1496901182},
    .{key = "hide_bottom_panel", value = 3218959716},
    .{key = "get_undo_redo", value = 773492341},
    .{key = "add_undo_redo_inspector_hook_callback", value = 1611583062},
    .{key = "remove_undo_redo_inspector_hook_callback", value = 1611583062},
    .{key = "queue_save_layout", value = 3218959716},
    .{key = "add_translation_parser_plugin", value = 3116463128},
    .{key = "remove_translation_parser_plugin", value = 3116463128},
    .{key = "add_import_plugin", value = 3113975762},
    .{key = "remove_import_plugin", value = 2312482773},
    .{key = "add_scene_format_importer_plugin", value = 2764104752},
    .{key = "remove_scene_format_importer_plugin", value = 2637776123},
    .{key = "add_scene_post_import_plugin", value = 3492436322},
    .{key = "remove_scene_post_import_plugin", value = 3045178206},
    .{key = "add_export_plugin", value = 4095952207},
    .{key = "remove_export_plugin", value = 4095952207},
    .{key = "add_node_3d_gizmo_plugin", value = 1541015022},
    .{key = "remove_node_3d_gizmo_plugin", value = 1541015022},
    .{key = "add_inspector_plugin", value = 546395733},
    .{key = "remove_inspector_plugin", value = 546395733},
    .{key = "add_resource_conversion_plugin", value = 2124849111},
    .{key = "remove_resource_conversion_plugin", value = 2124849111},
    .{key = "set_input_event_forwarding_always_enabled", value = 3218959716},
    .{key = "set_force_draw_over_forwarding_enabled", value = 3218959716},
    .{key = "get_editor_interface", value = 4223731786},
    .{key = "get_script_create_dialog", value = 3121871482},
    .{key = "add_debugger_plugin", value = 3749880309},
    .{key = "remove_debugger_plugin", value = 3749880309},
    .{key = "get_plugin_version", value = 201670096},
    .{key = "set_label", value = 83702148},
    .{key = "get_label", value = 201670096},
    .{key = "set_read_only", value = 2586408642},
    .{key = "is_read_only", value = 36873697},
    .{key = "set_checkable", value = 2586408642},
    .{key = "is_checkable", value = 36873697},
    .{key = "set_checked", value = 2586408642},
    .{key = "is_checked", value = 36873697},
    .{key = "set_draw_warning", value = 2586408642},
    .{key = "is_draw_warning", value = 36873697},
    .{key = "set_keying", value = 2586408642},
    .{key = "is_keying", value = 36873697},
    .{key = "set_deletable", value = 2586408642},
    .{key = "is_deletable", value = 36873697},
    .{key = "get_edited_property", value = 2002593661},
    .{key = "get_edited_object", value = 2050059866},
    .{key = "update_property", value = 3218959716},
    .{key = "add_focusable", value = 1496901182},
    .{key = "set_bottom_editor", value = 1496901182},
    .{key = "emit_changed", value = 3069422438},
    .{key = "set_base_type", value = 83702148},
    .{key = "get_base_type", value = 201670096},
    .{key = "get_allowed_types", value = 1139954409},
    .{key = "set_edited_resource", value = 968641751},
    .{key = "get_edited_resource", value = 2674603643},
    .{key = "set_toggle_mode", value = 2586408642},
    .{key = "is_toggle_mode", value = 36873697},
    .{key = "set_toggle_pressed", value = 2586408642},
    .{key = "set_editable", value = 2586408642},
    .{key = "is_editable", value = 36873697},
    .{key = "queue_resource_preview", value = 233177534},
    .{key = "queue_edited_resource_preview", value = 1608376650},
    .{key = "add_preview_generator", value = 332288124},
    .{key = "remove_preview_generator", value = 332288124},
    .{key = "check_for_invalidation", value = 83702148},
    .{key = "request_thumbnail", value = 3245519720},
    .{key = "get_source_file", value = 201670096},
    .{key = "get_option_value", value = 2760726917},
    .{key = "add_import_option", value = 402577236},
    .{key = "add_import_option_advanced", value = 3674075649},
    .{key = "add_root_node", value = 1078189570},
    .{key = "get_scene", value = 3160264692},
    .{key = "get_editor_interface", value = 1976662476},
    .{key = "set_script_owner", value = 1078189570},
    .{key = "get_script_owner", value = 3160264692},
    .{key = "clear", value = 3218959716},
    .{key = "add_node", value = 1078189570},
    .{key = "remove_node", value = 1078189570},
    .{key = "get_selected_nodes", value = 2915620761},
    .{key = "get_transformable_selected_nodes", value = 2915620761},
    .{key = "has_setting", value = 3927539163},
    .{key = "set_setting", value = 402577236},
    .{key = "get_setting", value = 1868160156},
    .{key = "erase", value = 83702148},
    .{key = "set_initial_value", value = 1529169264},
    .{key = "add_property_info", value = 4155329257},
    .{key = "set_project_metadata", value = 2504492430},
    .{key = "get_project_metadata", value = 89809366},
    .{key = "set_favorites", value = 4015028928},
    .{key = "get_favorites", value = 1139954409},
    .{key = "set_recent_dirs", value = 4015028928},
    .{key = "get_recent_dirs", value = 1139954409},
    .{key = "set_builtin_action_override", value = 1209351045},
    .{key = "check_changed_settings_in_group", value = 3927539163},
    .{key = "get_changed_settings", value = 1139954409},
    .{key = "mark_setting_changed", value = 83702148},
    .{key = "set_label", value = 83702148},
    .{key = "get_label", value = 201670096},
    .{key = "set_suffix", value = 83702148},
    .{key = "get_suffix", value = 201670096},
    .{key = "set_read_only", value = 2586408642},
    .{key = "is_read_only", value = 36873697},
    .{key = "set_flat", value = 2586408642},
    .{key = "is_flat", value = 36873697},
    .{key = "set_hide_slider", value = 2586408642},
    .{key = "is_hiding_slider", value = 36873697},
    .{key = "create_action", value = 2107025470},
    .{key = "commit_action", value = 3216645846},
    .{key = "is_committing_action", value = 36873697},
    .{key = "add_do_method", value = 1517810467},
    .{key = "add_undo_method", value = 1517810467},
    .{key = "add_do_property", value = 1017172818},
    .{key = "add_undo_property", value = 1017172818},
    .{key = "add_do_reference", value = 3975164845},
    .{key = "add_undo_reference", value = 3975164845},
    .{key = "get_object_history_id", value = 1107568780},
    .{key = "get_history_undo_redo", value = 2417974513},
    .{key = "create_diff_line", value = 2901184053},
    .{key = "create_diff_hunk", value = 3784842090},
    .{key = "create_diff_file", value = 2723227684},
    .{key = "create_commit", value = 1075983584},
    .{key = "create_status_file", value = 1083471673},
    .{key = "add_diff_hunks_into_diff_file", value = 4015243225},
    .{key = "add_line_diffs_into_diff_hunk", value = 4015243225},
    .{key = "popup_error", value = 83702148},
    .{key = "set_object_id", value = 1286410249},
    .{key = "get_object_id", value = 3905245786},
    .{key = "set_physics_ticks_per_second", value = 1286410249},
    .{key = "get_physics_ticks_per_second", value = 3905245786},
    .{key = "set_max_physics_steps_per_frame", value = 1286410249},
    .{key = "get_max_physics_steps_per_frame", value = 3905245786},
    .{key = "set_physics_jitter_fix", value = 373806689},
    .{key = "get_physics_jitter_fix", value = 1740695150},
    .{key = "get_physics_interpolation_fraction", value = 1740695150},
    .{key = "set_max_fps", value = 1286410249},
    .{key = "get_max_fps", value = 3905245786},
    .{key = "set_time_scale", value = 373806689},
    .{key = "get_time_scale", value = 191475506},
    .{key = "get_frames_drawn", value = 2455072627},
    .{key = "get_frames_per_second", value = 1740695150},
    .{key = "get_physics_frames", value = 3905245786},
    .{key = "get_process_frames", value = 3905245786},
    .{key = "get_main_loop", value = 1016888095},
    .{key = "get_version_info", value = 3102165223},
    .{key = "get_author_info", value = 3102165223},
    .{key = "get_copyright_info", value = 3995934104},
    .{key = "get_donor_info", value = 3102165223},
    .{key = "get_license_info", value = 3102165223},
    .{key = "get_license_text", value = 201670096},
    .{key = "get_architecture_name", value = 201670096},
    .{key = "is_in_physics_frame", value = 36873697},
    .{key = "has_singleton", value = 2619796661},
    .{key = "get_singleton", value = 1371597918},
    .{key = "register_singleton", value = 965313290},
    .{key = "unregister_singleton", value = 3304788590},
    .{key = "get_singleton_list", value = 1139954409},
    .{key = "register_script_language", value = 1850254898},
    .{key = "unregister_script_language", value = 1850254898},
    .{key = "get_script_language_count", value = 2455072627},
    .{key = "get_script_language", value = 2151255799},
    .{key = "is_editor_hint", value = 36873697},
    .{key = "get_write_movie_path", value = 201670096},
    .{key = "set_print_error_messages", value = 2586408642},
    .{key = "is_printing_error_messages", value = 36873697},
    .{key = "is_active", value = 2240911060},
    .{key = "register_profiler", value = 3651669560},
    .{key = "unregister_profiler", value = 3304788590},
    .{key = "is_profiling", value = 2041966384},
    .{key = "has_profiler", value = 2041966384},
    .{key = "profiler_add_frame_data", value = 1895267858},
    .{key = "profiler_enable", value = 3192561009},
    .{key = "register_message_capture", value = 1874754934},
    .{key = "unregister_message_capture", value = 3304788590},
    .{key = "has_capture", value = 2041966384},
    .{key = "send_message", value = 1209351045},
    .{key = "set_background", value = 4071623990},
    .{key = "get_background", value = 1843210413},
    .{key = "set_sky", value = 3336722921},
    .{key = "get_sky", value = 1177136966},
    .{key = "set_sky_custom_fov", value = 373806689},
    .{key = "get_sky_custom_fov", value = 1740695150},
    .{key = "set_sky_rotation", value = 3460891852},
    .{key = "get_sky_rotation", value = 3360562783},
    .{key = "set_bg_color", value = 2920490490},
    .{key = "get_bg_color", value = 3444240500},
    .{key = "set_bg_energy_multiplier", value = 373806689},
    .{key = "get_bg_energy_multiplier", value = 1740695150},
    .{key = "set_bg_intensity", value = 373806689},
    .{key = "get_bg_intensity", value = 1740695150},
    .{key = "set_canvas_max_layer", value = 1286410249},
    .{key = "get_canvas_max_layer", value = 3905245786},
    .{key = "set_camera_feed_id", value = 1286410249},
    .{key = "get_camera_feed_id", value = 3905245786},
    .{key = "set_ambient_light_color", value = 2920490490},
    .{key = "get_ambient_light_color", value = 3444240500},
    .{key = "set_ambient_source", value = 2607780160},
    .{key = "get_ambient_source", value = 67453933},
    .{key = "set_ambient_light_energy", value = 373806689},
    .{key = "get_ambient_light_energy", value = 1740695150},
    .{key = "set_ambient_light_sky_contribution", value = 373806689},
    .{key = "get_ambient_light_sky_contribution", value = 1740695150},
    .{key = "set_reflection_source", value = 299673197},
    .{key = "get_reflection_source", value = 777700713},
    .{key = "set_tonemapper", value = 1509116664},
    .{key = "get_tonemapper", value = 2908408137},
    .{key = "set_tonemap_exposure", value = 373806689},
    .{key = "get_tonemap_exposure", value = 1740695150},
    .{key = "set_tonemap_white", value = 373806689},
    .{key = "get_tonemap_white", value = 1740695150},
    .{key = "set_ssr_enabled", value = 2586408642},
    .{key = "is_ssr_enabled", value = 36873697},
    .{key = "set_ssr_max_steps", value = 1286410249},
    .{key = "get_ssr_max_steps", value = 3905245786},
    .{key = "set_ssr_fade_in", value = 373806689},
    .{key = "get_ssr_fade_in", value = 1740695150},
    .{key = "set_ssr_fade_out", value = 373806689},
    .{key = "get_ssr_fade_out", value = 1740695150},
    .{key = "set_ssr_depth_tolerance", value = 373806689},
    .{key = "get_ssr_depth_tolerance", value = 1740695150},
    .{key = "set_ssao_enabled", value = 2586408642},
    .{key = "is_ssao_enabled", value = 36873697},
    .{key = "set_ssao_radius", value = 373806689},
    .{key = "get_ssao_radius", value = 1740695150},
    .{key = "set_ssao_intensity", value = 373806689},
    .{key = "get_ssao_intensity", value = 1740695150},
    .{key = "set_ssao_power", value = 373806689},
    .{key = "get_ssao_power", value = 1740695150},
    .{key = "set_ssao_detail", value = 373806689},
    .{key = "get_ssao_detail", value = 1740695150},
    .{key = "set_ssao_horizon", value = 373806689},
    .{key = "get_ssao_horizon", value = 1740695150},
    .{key = "set_ssao_sharpness", value = 373806689},
    .{key = "get_ssao_sharpness", value = 1740695150},
    .{key = "set_ssao_direct_light_affect", value = 373806689},
    .{key = "get_ssao_direct_light_affect", value = 1740695150},
    .{key = "set_ssao_ao_channel_affect", value = 373806689},
    .{key = "get_ssao_ao_channel_affect", value = 1740695150},
    .{key = "set_ssil_enabled", value = 2586408642},
    .{key = "is_ssil_enabled", value = 36873697},
    .{key = "set_ssil_radius", value = 373806689},
    .{key = "get_ssil_radius", value = 1740695150},
    .{key = "set_ssil_intensity", value = 373806689},
    .{key = "get_ssil_intensity", value = 1740695150},
    .{key = "set_ssil_sharpness", value = 373806689},
    .{key = "get_ssil_sharpness", value = 1740695150},
    .{key = "set_ssil_normal_rejection", value = 373806689},
    .{key = "get_ssil_normal_rejection", value = 1740695150},
    .{key = "set_sdfgi_enabled", value = 2586408642},
    .{key = "is_sdfgi_enabled", value = 36873697},
    .{key = "set_sdfgi_cascades", value = 1286410249},
    .{key = "get_sdfgi_cascades", value = 3905245786},
    .{key = "set_sdfgi_min_cell_size", value = 373806689},
    .{key = "get_sdfgi_min_cell_size", value = 1740695150},
    .{key = "set_sdfgi_max_distance", value = 373806689},
    .{key = "get_sdfgi_max_distance", value = 1740695150},
    .{key = "set_sdfgi_cascade0_distance", value = 373806689},
    .{key = "get_sdfgi_cascade0_distance", value = 1740695150},
    .{key = "set_sdfgi_y_scale", value = 3608608372},
    .{key = "get_sdfgi_y_scale", value = 2568002245},
    .{key = "set_sdfgi_use_occlusion", value = 2586408642},
    .{key = "is_sdfgi_using_occlusion", value = 36873697},
    .{key = "set_sdfgi_bounce_feedback", value = 373806689},
    .{key = "get_sdfgi_bounce_feedback", value = 1740695150},
    .{key = "set_sdfgi_read_sky_light", value = 2586408642},
    .{key = "is_sdfgi_reading_sky_light", value = 36873697},
    .{key = "set_sdfgi_energy", value = 373806689},
    .{key = "get_sdfgi_energy", value = 1740695150},
    .{key = "set_sdfgi_normal_bias", value = 373806689},
    .{key = "get_sdfgi_normal_bias", value = 1740695150},
    .{key = "set_sdfgi_probe_bias", value = 373806689},
    .{key = "get_sdfgi_probe_bias", value = 1740695150},
    .{key = "set_glow_enabled", value = 2586408642},
    .{key = "is_glow_enabled", value = 36873697},
    .{key = "set_glow_level", value = 1602489585},
    .{key = "get_glow_level", value = 2339986948},
    .{key = "set_glow_normalized", value = 2586408642},
    .{key = "is_glow_normalized", value = 36873697},
    .{key = "set_glow_intensity", value = 373806689},
    .{key = "get_glow_intensity", value = 1740695150},
    .{key = "set_glow_strength", value = 373806689},
    .{key = "get_glow_strength", value = 1740695150},
    .{key = "set_glow_mix", value = 373806689},
    .{key = "get_glow_mix", value = 1740695150},
    .{key = "set_glow_bloom", value = 373806689},
    .{key = "get_glow_bloom", value = 1740695150},
    .{key = "set_glow_blend_mode", value = 2561587761},
    .{key = "get_glow_blend_mode", value = 1529667332},
    .{key = "set_glow_hdr_bleed_threshold", value = 373806689},
    .{key = "get_glow_hdr_bleed_threshold", value = 1740695150},
    .{key = "set_glow_hdr_bleed_scale", value = 373806689},
    .{key = "get_glow_hdr_bleed_scale", value = 1740695150},
    .{key = "set_glow_hdr_luminance_cap", value = 373806689},
    .{key = "get_glow_hdr_luminance_cap", value = 1740695150},
    .{key = "set_glow_map_strength", value = 373806689},
    .{key = "get_glow_map_strength", value = 1740695150},
    .{key = "set_glow_map", value = 1790811099},
    .{key = "get_glow_map", value = 4037048985},
    .{key = "set_fog_enabled", value = 2586408642},
    .{key = "is_fog_enabled", value = 36873697},
    .{key = "set_fog_mode", value = 3059806579},
    .{key = "get_fog_mode", value = 2456062483},
    .{key = "set_fog_light_color", value = 2920490490},
    .{key = "get_fog_light_color", value = 3444240500},
    .{key = "set_fog_light_energy", value = 373806689},
    .{key = "get_fog_light_energy", value = 1740695150},
    .{key = "set_fog_sun_scatter", value = 373806689},
    .{key = "get_fog_sun_scatter", value = 1740695150},
    .{key = "set_fog_density", value = 373806689},
    .{key = "get_fog_density", value = 1740695150},
    .{key = "set_fog_height", value = 373806689},
    .{key = "get_fog_height", value = 1740695150},
    .{key = "set_fog_height_density", value = 373806689},
    .{key = "get_fog_height_density", value = 1740695150},
    .{key = "set_fog_aerial_perspective", value = 373806689},
    .{key = "get_fog_aerial_perspective", value = 1740695150},
    .{key = "set_fog_sky_affect", value = 373806689},
    .{key = "get_fog_sky_affect", value = 1740695150},
    .{key = "set_fog_depth_curve", value = 373806689},
    .{key = "get_fog_depth_curve", value = 1740695150},
    .{key = "set_fog_depth_begin", value = 373806689},
    .{key = "get_fog_depth_begin", value = 1740695150},
    .{key = "set_fog_depth_end", value = 373806689},
    .{key = "get_fog_depth_end", value = 1740695150},
    .{key = "set_volumetric_fog_enabled", value = 2586408642},
    .{key = "is_volumetric_fog_enabled", value = 36873697},
    .{key = "set_volumetric_fog_emission", value = 2920490490},
    .{key = "get_volumetric_fog_emission", value = 3444240500},
    .{key = "set_volumetric_fog_albedo", value = 2920490490},
    .{key = "get_volumetric_fog_albedo", value = 3444240500},
    .{key = "set_volumetric_fog_density", value = 373806689},
    .{key = "get_volumetric_fog_density", value = 1740695150},
    .{key = "set_volumetric_fog_emission_energy", value = 373806689},
    .{key = "get_volumetric_fog_emission_energy", value = 1740695150},
    .{key = "set_volumetric_fog_anisotropy", value = 373806689},
    .{key = "get_volumetric_fog_anisotropy", value = 1740695150},
    .{key = "set_volumetric_fog_length", value = 373806689},
    .{key = "get_volumetric_fog_length", value = 1740695150},
    .{key = "set_volumetric_fog_detail_spread", value = 373806689},
    .{key = "get_volumetric_fog_detail_spread", value = 1740695150},
    .{key = "set_volumetric_fog_gi_inject", value = 373806689},
    .{key = "get_volumetric_fog_gi_inject", value = 1740695150},
    .{key = "set_volumetric_fog_ambient_inject", value = 373806689},
    .{key = "get_volumetric_fog_ambient_inject", value = 1740695150},
    .{key = "set_volumetric_fog_sky_affect", value = 373806689},
    .{key = "get_volumetric_fog_sky_affect", value = 1740695150},
    .{key = "set_volumetric_fog_temporal_reprojection_enabled", value = 2586408642},
    .{key = "is_volumetric_fog_temporal_reprojection_enabled", value = 36873697},
    .{key = "set_volumetric_fog_temporal_reprojection_amount", value = 373806689},
    .{key = "get_volumetric_fog_temporal_reprojection_amount", value = 1740695150},
    .{key = "set_adjustment_enabled", value = 2586408642},
    .{key = "is_adjustment_enabled", value = 36873697},
    .{key = "set_adjustment_brightness", value = 373806689},
    .{key = "get_adjustment_brightness", value = 1740695150},
    .{key = "set_adjustment_contrast", value = 373806689},
    .{key = "get_adjustment_contrast", value = 1740695150},
    .{key = "set_adjustment_saturation", value = 373806689},
    .{key = "get_adjustment_saturation", value = 1740695150},
    .{key = "set_adjustment_color_correction", value = 1790811099},
    .{key = "get_adjustment_color_correction", value = 4037048985},
    .{key = "parse", value = 3069722906},
    .{key = "execute", value = 3712471238},
    .{key = "has_execute_failed", value = 36873697},
    .{key = "get_error_text", value = 201670096},
    .{key = "get_allow_geometry_helper_nodes", value = 2240911060},
    .{key = "set_allow_geometry_helper_nodes", value = 2586408642},
    .{key = "set_noise_type", value = 2624461392},
    .{key = "get_noise_type", value = 1458108610},
    .{key = "set_seed", value = 1286410249},
    .{key = "get_seed", value = 3905245786},
    .{key = "set_frequency", value = 373806689},
    .{key = "get_frequency", value = 1740695150},
    .{key = "set_offset", value = 3460891852},
    .{key = "get_offset", value = 3360562783},
    .{key = "set_fractal_type", value = 4132731174},
    .{key = "get_fractal_type", value = 1036889279},
    .{key = "set_fractal_octaves", value = 1286410249},
    .{key = "get_fractal_octaves", value = 3905245786},
    .{key = "set_fractal_lacunarity", value = 373806689},
    .{key = "get_fractal_lacunarity", value = 1740695150},
    .{key = "set_fractal_gain", value = 373806689},
    .{key = "get_fractal_gain", value = 1740695150},
    .{key = "set_fractal_weighted_strength", value = 373806689},
    .{key = "get_fractal_weighted_strength", value = 1740695150},
    .{key = "set_fractal_ping_pong_strength", value = 373806689},
    .{key = "get_fractal_ping_pong_strength", value = 1740695150},
    .{key = "set_cellular_distance_function", value = 1006013267},
    .{key = "get_cellular_distance_function", value = 2021274088},
    .{key = "set_cellular_jitter", value = 373806689},
    .{key = "get_cellular_jitter", value = 1740695150},
    .{key = "set_cellular_return_type", value = 2654169698},
    .{key = "get_cellular_return_type", value = 3699796343},
    .{key = "set_domain_warp_enabled", value = 2586408642},
    .{key = "is_domain_warp_enabled", value = 36873697},
    .{key = "set_domain_warp_type", value = 3629692980},
    .{key = "get_domain_warp_type", value = 2980162020},
    .{key = "set_domain_warp_amplitude", value = 373806689},
    .{key = "get_domain_warp_amplitude", value = 1740695150},
    .{key = "set_domain_warp_frequency", value = 373806689},
    .{key = "get_domain_warp_frequency", value = 1740695150},
    .{key = "set_domain_warp_fractal_type", value = 3999408287},
    .{key = "get_domain_warp_fractal_type", value = 407716934},
    .{key = "set_domain_warp_fractal_octaves", value = 1286410249},
    .{key = "get_domain_warp_fractal_octaves", value = 3905245786},
    .{key = "set_domain_warp_fractal_lacunarity", value = 373806689},
    .{key = "get_domain_warp_fractal_lacunarity", value = 1740695150},
    .{key = "set_domain_warp_fractal_gain", value = 373806689},
    .{key = "get_domain_warp_fractal_gain", value = 1740695150},
    .{key = "open", value = 1247358404},
    .{key = "open_encrypted", value = 1482131466},
    .{key = "open_encrypted_with_pass", value = 790283377},
    .{key = "open_compressed", value = 3686439335},
    .{key = "get_open_error", value = 166280745},
    .{key = "get_file_as_bytes", value = 659035735},
    .{key = "get_file_as_string", value = 1703090593},
    .{key = "flush", value = 3218959716},
    .{key = "get_path", value = 201670096},
    .{key = "get_path_absolute", value = 201670096},
    .{key = "is_open", value = 36873697},
    .{key = "seek", value = 1286410249},
    .{key = "seek_end", value = 1995695955},
    .{key = "get_position", value = 3905245786},
    .{key = "get_length", value = 3905245786},
    .{key = "eof_reached", value = 36873697},
    .{key = "get_8", value = 3905245786},
    .{key = "get_16", value = 3905245786},
    .{key = "get_32", value = 3905245786},
    .{key = "get_64", value = 3905245786},
    .{key = "get_float", value = 1740695150},
    .{key = "get_double", value = 1740695150},
    .{key = "get_real", value = 1740695150},
    .{key = "get_buffer", value = 4131300905},
    .{key = "get_line", value = 201670096},
    .{key = "get_csv_line", value = 2358116058},
    .{key = "get_as_text", value = 1162154673},
    .{key = "get_md5", value = 1703090593},
    .{key = "get_sha256", value = 1703090593},
    .{key = "is_big_endian", value = 36873697},
    .{key = "set_big_endian", value = 2586408642},
    .{key = "get_error", value = 3185525595},
    .{key = "get_var", value = 189129690},
    .{key = "store_8", value = 1286410249},
    .{key = "store_16", value = 1286410249},
    .{key = "store_32", value = 1286410249},
    .{key = "store_64", value = 1286410249},
    .{key = "store_float", value = 373806689},
    .{key = "store_double", value = 373806689},
    .{key = "store_real", value = 373806689},
    .{key = "store_buffer", value = 2971499966},
    .{key = "store_line", value = 83702148},
    .{key = "store_csv_line", value = 2173791505},
    .{key = "store_string", value = 83702148},
    .{key = "store_var", value = 738511890},
    .{key = "store_pascal_string", value = 83702148},
    .{key = "get_pascal_string", value = 2841200299},
    .{key = "close", value = 3218959716},
    .{key = "file_exists", value = 2323990056},
    .{key = "get_modified_time", value = 1597066294},
    .{key = "get_unix_permissions", value = 524341837},
    .{key = "set_unix_permissions", value = 846038644},
    .{key = "get_hidden_attribute", value = 2323990056},
    .{key = "set_hidden_attribute", value = 2892558115},
    .{key = "set_read_only_attribute", value = 2892558115},
    .{key = "get_read_only_attribute", value = 2323990056},
    .{key = "clear_filters", value = 3218959716},
    .{key = "add_filter", value = 3388804757},
    .{key = "set_filters", value = 4015028928},
    .{key = "get_filters", value = 1139954409},
    .{key = "get_option_name", value = 844755477},
    .{key = "get_option_values", value = 647634434},
    .{key = "get_option_default", value = 923996154},
    .{key = "set_option_name", value = 501894301},
    .{key = "set_option_values", value = 3353661094},
    .{key = "set_option_default", value = 3937882851},
    .{key = "set_option_count", value = 1286410249},
    .{key = "get_option_count", value = 3905245786},
    .{key = "add_option", value = 149592325},
    .{key = "get_selected_options", value = 3102165223},
    .{key = "get_current_dir", value = 201670096},
    .{key = "get_current_file", value = 201670096},
    .{key = "get_current_path", value = 201670096},
    .{key = "set_current_dir", value = 83702148},
    .{key = "set_current_file", value = 83702148},
    .{key = "set_current_path", value = 83702148},
    .{key = "set_mode_overrides_title", value = 2586408642},
    .{key = "is_mode_overriding_title", value = 36873697},
    .{key = "set_file_mode", value = 3654936397},
    .{key = "get_file_mode", value = 4074825319},
    .{key = "get_vbox", value = 915758477},
    .{key = "get_line_edit", value = 4071694264},
    .{key = "set_access", value = 4104413466},
    .{key = "get_access", value = 3344081076},
    .{key = "set_root_subfolder", value = 83702148},
    .{key = "get_root_subfolder", value = 201670096},
    .{key = "set_show_hidden_files", value = 2586408642},
    .{key = "is_showing_hidden_files", value = 36873697},
    .{key = "set_use_native_dialog", value = 2586408642},
    .{key = "get_use_native_dialog", value = 36873697},
    .{key = "deselect_all", value = 3218959716},
    .{key = "invalidate", value = 3218959716},
    .{key = "navigate_to_path", value = 83702148},
    .{key = "add_resource_tooltip_plugin", value = 2258356838},
    .{key = "remove_resource_tooltip_plugin", value = 2258356838},
    .{key = "get_line_count", value = 3905245786},
    .{key = "set_alignment", value = 575250951},
    .{key = "get_alignment", value = 3749743559},
    .{key = "set_vertical", value = 2586408642},
    .{key = "is_vertical", value = 36873697},
    .{key = "set_reverse_fill", value = 2586408642},
    .{key = "is_reverse_fill", value = 36873697},
    .{key = "set_density", value = 373806689},
    .{key = "get_density", value = 1740695150},
    .{key = "set_albedo", value = 2920490490},
    .{key = "get_albedo", value = 3444240500},
    .{key = "set_emission", value = 2920490490},
    .{key = "get_emission", value = 3444240500},
    .{key = "set_height_falloff", value = 373806689},
    .{key = "get_height_falloff", value = 1740695150},
    .{key = "set_edge_fade", value = 373806689},
    .{key = "get_edge_fade", value = 1740695150},
    .{key = "set_density_texture", value = 1188404210},
    .{key = "get_density_texture", value = 373985333},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_shape", value = 1416323362},
    .{key = "get_shape", value = 3920334604},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_fallbacks", value = 381264803},
    .{key = "get_fallbacks", value = 3995934104},
    .{key = "find_variation", value = 2553855095},
    .{key = "get_rids", value = 3995934104},
    .{key = "get_height", value = 378113874},
    .{key = "get_ascent", value = 378113874},
    .{key = "get_descent", value = 378113874},
    .{key = "get_underline_position", value = 378113874},
    .{key = "get_underline_thickness", value = 378113874},
    .{key = "get_font_name", value = 201670096},
    .{key = "get_font_style_name", value = 201670096},
    .{key = "get_ot_name_strings", value = 3102165223},
    .{key = "get_font_style", value = 2520224254},
    .{key = "get_font_weight", value = 3905245786},
    .{key = "get_font_stretch", value = 3905245786},
    .{key = "get_spacing", value = 1310880908},
    .{key = "get_opentype_features", value = 3102165223},
    .{key = "set_cache_capacity", value = 3937882851},
    .{key = "get_string_size", value = 1868866121},
    .{key = "get_multiline_string_size", value = 519636710},
    .{key = "draw_string", value = 1983721962},
    .{key = "draw_multiline_string", value = 1171506176},
    .{key = "draw_string_outline", value = 623754045},
    .{key = "draw_multiline_string_outline", value = 3206388178},
    .{key = "get_char_size", value = 3016396712},
    .{key = "draw_char", value = 3815617597},
    .{key = "draw_char_outline", value = 209525354},
    .{key = "has_char", value = 1116898809},
    .{key = "get_supported_chars", value = 201670096},
    .{key = "is_language_supported", value = 3927539163},
    .{key = "is_script_supported", value = 3927539163},
    .{key = "get_supported_feature_list", value = 3102165223},
    .{key = "get_supported_variation_list", value = 3102165223},
    .{key = "get_face_count", value = 3905245786},
    .{key = "load_bitmap_font", value = 166001499},
    .{key = "load_dynamic_font", value = 166001499},
    .{key = "set_data", value = 2971499966},
    .{key = "get_data", value = 2362200018},
    .{key = "set_font_name", value = 83702148},
    .{key = "set_font_style_name", value = 83702148},
    .{key = "set_font_style", value = 918070724},
    .{key = "set_font_weight", value = 1286410249},
    .{key = "set_font_stretch", value = 1286410249},
    .{key = "set_antialiasing", value = 1669900},
    .{key = "get_antialiasing", value = 4262718649},
    .{key = "set_disable_embedded_bitmaps", value = 2586408642},
    .{key = "get_disable_embedded_bitmaps", value = 36873697},
    .{key = "set_generate_mipmaps", value = 2586408642},
    .{key = "get_generate_mipmaps", value = 36873697},
    .{key = "set_multichannel_signed_distance_field", value = 2586408642},
    .{key = "is_multichannel_signed_distance_field", value = 36873697},
    .{key = "set_msdf_pixel_range", value = 1286410249},
    .{key = "get_msdf_pixel_range", value = 3905245786},
    .{key = "set_msdf_size", value = 1286410249},
    .{key = "get_msdf_size", value = 3905245786},
    .{key = "set_fixed_size", value = 1286410249},
    .{key = "get_fixed_size", value = 3905245786},
    .{key = "set_fixed_size_scale_mode", value = 1660989956},
    .{key = "get_fixed_size_scale_mode", value = 753873478},
    .{key = "set_allow_system_fallback", value = 2586408642},
    .{key = "is_allow_system_fallback", value = 36873697},
    .{key = "set_force_autohinter", value = 2586408642},
    .{key = "is_force_autohinter", value = 36873697},
    .{key = "set_hinting", value = 1827459492},
    .{key = "get_hinting", value = 3683214614},
    .{key = "set_subpixel_positioning", value = 4225742182},
    .{key = "get_subpixel_positioning", value = 1069238588},
    .{key = "set_oversampling", value = 373806689},
    .{key = "get_oversampling", value = 1740695150},
    .{key = "get_cache_count", value = 3905245786},
    .{key = "clear_cache", value = 3218959716},
    .{key = "remove_cache", value = 1286410249},
    .{key = "get_size_cache_list", value = 663333327},
    .{key = "clear_size_cache", value = 1286410249},
    .{key = "remove_size_cache", value = 2311374912},
    .{key = "set_variation_coordinates", value = 64545446},
    .{key = "get_variation_coordinates", value = 3485342025},
    .{key = "set_embolden", value = 1602489585},
    .{key = "get_embolden", value = 2339986948},
    .{key = "set_transform", value = 30160968},
    .{key = "get_transform", value = 3836996910},
    .{key = "set_extra_spacing", value = 62942285},
    .{key = "get_extra_spacing", value = 1924257185},
    .{key = "set_extra_baseline_offset", value = 1602489585},
    .{key = "get_extra_baseline_offset", value = 2339986948},
    .{key = "set_face_index", value = 3937882851},
    .{key = "get_face_index", value = 923996154},
    .{key = "set_cache_ascent", value = 3506521499},
    .{key = "get_cache_ascent", value = 3085491603},
    .{key = "set_cache_descent", value = 3506521499},
    .{key = "get_cache_descent", value = 3085491603},
    .{key = "set_cache_underline_position", value = 3506521499},
    .{key = "get_cache_underline_position", value = 3085491603},
    .{key = "set_cache_underline_thickness", value = 3506521499},
    .{key = "get_cache_underline_thickness", value = 3085491603},
    .{key = "set_cache_scale", value = 3506521499},
    .{key = "get_cache_scale", value = 3085491603},
    .{key = "get_texture_count", value = 1987661582},
    .{key = "clear_textures", value = 2311374912},
    .{key = "remove_texture", value = 2328951467},
    .{key = "set_texture_image", value = 4157974066},
    .{key = "get_texture_image", value = 3878418953},
    .{key = "set_texture_offsets", value = 2849993437},
    .{key = "get_texture_offsets", value = 3703444828},
    .{key = "get_glyph_list", value = 681709689},
    .{key = "clear_glyphs", value = 2311374912},
    .{key = "remove_glyph", value = 2328951467},
    .{key = "set_glyph_advance", value = 947991729},
    .{key = "get_glyph_advance", value = 1601573536},
    .{key = "set_glyph_offset", value = 921719850},
    .{key = "get_glyph_offset", value = 3205412300},
    .{key = "set_glyph_size", value = 921719850},
    .{key = "get_glyph_size", value = 3205412300},
    .{key = "set_glyph_uv_rect", value = 3821620992},
    .{key = "get_glyph_uv_rect", value = 3927917900},
    .{key = "set_glyph_texture_idx", value = 355564111},
    .{key = "get_glyph_texture_idx", value = 1629411054},
    .{key = "get_kerning_list", value = 2345056839},
    .{key = "clear_kerning_map", value = 3937882851},
    .{key = "remove_kerning", value = 3930204747},
    .{key = "set_kerning", value = 3182200918},
    .{key = "get_kerning", value = 1611912865},
    .{key = "render_range", value = 355564111},
    .{key = "render_glyph", value = 2328951467},
    .{key = "set_language_support_override", value = 2678287736},
    .{key = "get_language_support_override", value = 3927539163},
    .{key = "remove_language_support_override", value = 83702148},
    .{key = "get_language_support_overrides", value = 1139954409},
    .{key = "set_script_support_override", value = 2678287736},
    .{key = "get_script_support_override", value = 3927539163},
    .{key = "remove_script_support_override", value = 83702148},
    .{key = "get_script_support_overrides", value = 1139954409},
    .{key = "set_opentype_feature_overrides", value = 4155329257},
    .{key = "get_opentype_feature_overrides", value = 3102165223},
    .{key = "get_glyph_index", value = 864943070},
    .{key = "get_char_from_glyph_index", value = 3175239445},
    .{key = "set_base_font", value = 1262170328},
    .{key = "get_base_font", value = 3229501585},
    .{key = "set_variation_opentype", value = 4155329257},
    .{key = "get_variation_opentype", value = 3102165223},
    .{key = "set_variation_embolden", value = 373806689},
    .{key = "get_variation_embolden", value = 1740695150},
    .{key = "set_variation_face_index", value = 1286410249},
    .{key = "get_variation_face_index", value = 3905245786},
    .{key = "set_variation_transform", value = 2761652528},
    .{key = "get_variation_transform", value = 3814499831},
    .{key = "set_opentype_features", value = 4155329257},
    .{key = "set_spacing", value = 3122339690},
    .{key = "set_baseline_offset", value = 373806689},
    .{key = "get_baseline_offset", value = 1740695150},
    .{key = "get_cache_multipass", value = 3437881813},
    .{key = "is_library_open", value = 36873697},
    .{key = "get_minimum_library_initialization_level", value = 964858755},
    .{key = "load_extension", value = 4024158731},
    .{key = "reload_extension", value = 4024158731},
    .{key = "unload_extension", value = 4024158731},
    .{key = "is_extension_loaded", value = 3927539163},
    .{key = "get_loaded_extensions", value = 1139954409},
    .{key = "get_extension", value = 49743343},
    .{key = "new", value = 1545262638},
    .{key = "get_buffer_view", value = 2455072627},
    .{key = "set_buffer_view", value = 1286410249},
    .{key = "get_byte_offset", value = 2455072627},
    .{key = "set_byte_offset", value = 1286410249},
    .{key = "get_component_type", value = 2455072627},
    .{key = "set_component_type", value = 1286410249},
    .{key = "get_normalized", value = 2240911060},
    .{key = "set_normalized", value = 2586408642},
    .{key = "get_count", value = 2455072627},
    .{key = "set_count", value = 1286410249},
    .{key = "get_type", value = 2455072627},
    .{key = "set_type", value = 1286410249},
    .{key = "get_min", value = 148677866},
    .{key = "set_min", value = 2576592201},
    .{key = "get_max", value = 148677866},
    .{key = "set_max", value = 2576592201},
    .{key = "get_sparse_count", value = 2455072627},
    .{key = "set_sparse_count", value = 1286410249},
    .{key = "get_sparse_indices_buffer_view", value = 2455072627},
    .{key = "set_sparse_indices_buffer_view", value = 1286410249},
    .{key = "get_sparse_indices_byte_offset", value = 2455072627},
    .{key = "set_sparse_indices_byte_offset", value = 1286410249},
    .{key = "get_sparse_indices_component_type", value = 2455072627},
    .{key = "set_sparse_indices_component_type", value = 1286410249},
    .{key = "get_sparse_values_buffer_view", value = 2455072627},
    .{key = "set_sparse_values_buffer_view", value = 1286410249},
    .{key = "get_sparse_values_byte_offset", value = 2455072627},
    .{key = "set_sparse_values_byte_offset", value = 1286410249},
    .{key = "get_original_name", value = 2841200299},
    .{key = "set_original_name", value = 83702148},
    .{key = "get_loop", value = 36873697},
    .{key = "set_loop", value = 2586408642},
    .{key = "get_additional_data", value = 2138907829},
    .{key = "set_additional_data", value = 3776071444},
    .{key = "load_buffer_view_data", value = 3945446907},
    .{key = "get_buffer", value = 3905245786},
    .{key = "set_buffer", value = 1286410249},
    .{key = "get_byte_offset", value = 3905245786},
    .{key = "set_byte_offset", value = 1286410249},
    .{key = "get_byte_length", value = 3905245786},
    .{key = "set_byte_length", value = 1286410249},
    .{key = "get_byte_stride", value = 3905245786},
    .{key = "set_byte_stride", value = 1286410249},
    .{key = "get_indices", value = 36873697},
    .{key = "set_indices", value = 2586408642},
    .{key = "get_vertex_attributes", value = 36873697},
    .{key = "set_vertex_attributes", value = 2586408642},
    .{key = "from_node", value = 237784},
    .{key = "to_node", value = 2285090890},
    .{key = "from_dictionary", value = 2495512509},
    .{key = "to_dictionary", value = 3102165223},
    .{key = "get_perspective", value = 36873697},
    .{key = "set_perspective", value = 2586408642},
    .{key = "get_fov", value = 1740695150},
    .{key = "set_fov", value = 373806689},
    .{key = "get_size_mag", value = 1740695150},
    .{key = "set_size_mag", value = 373806689},
    .{key = "get_depth_far", value = 1740695150},
    .{key = "set_depth_far", value = 373806689},
    .{key = "get_depth_near", value = 1740695150},
    .{key = "set_depth_near", value = 373806689},
    .{key = "set_image_format", value = 83702148},
    .{key = "get_image_format", value = 201670096},
    .{key = "set_lossy_quality", value = 373806689},
    .{key = "get_lossy_quality", value = 1740695150},
    .{key = "set_root_node_mode", value = 463633402},
    .{key = "get_root_node_mode", value = 948057992},
    .{key = "append_from_file", value = 866380864},
    .{key = "append_from_buffer", value = 1616081266},
    .{key = "append_from_scene", value = 1622574258},
    .{key = "generate_scene", value = 596118388},
    .{key = "generate_buffer", value = 741783455},
    .{key = "write_to_filesystem", value = 1784551478},
    .{key = "register_gltf_document_extension", value = 3752678331},
    .{key = "unregister_gltf_document_extension", value = 2684415758},
    .{key = "from_node", value = 3907677874},
    .{key = "to_node", value = 2040811672},
    .{key = "from_dictionary", value = 4057087208},
    .{key = "to_dictionary", value = 3102165223},
    .{key = "get_color", value = 3200896285},
    .{key = "set_color", value = 2920490490},
    .{key = "get_intensity", value = 191475506},
    .{key = "set_intensity", value = 373806689},
    .{key = "get_light_type", value = 2841200299},
    .{key = "set_light_type", value = 83702148},
    .{key = "get_range", value = 191475506},
    .{key = "set_range", value = 373806689},
    .{key = "get_inner_cone_angle", value = 191475506},
    .{key = "set_inner_cone_angle", value = 373806689},
    .{key = "get_outer_cone_angle", value = 191475506},
    .{key = "set_outer_cone_angle", value = 373806689},
    .{key = "get_additional_data", value = 2138907829},
    .{key = "set_additional_data", value = 3776071444},
    .{key = "get_original_name", value = 2841200299},
    .{key = "set_original_name", value = 83702148},
    .{key = "get_mesh", value = 3754628756},
    .{key = "set_mesh", value = 2255166972},
    .{key = "get_blend_weights", value = 2445143706},
    .{key = "set_blend_weights", value = 2899603908},
    .{key = "get_instance_materials", value = 2915620761},
    .{key = "set_instance_materials", value = 381264803},
    .{key = "get_additional_data", value = 2138907829},
    .{key = "set_additional_data", value = 3776071444},
    .{key = "get_original_name", value = 2841200299},
    .{key = "set_original_name", value = 83702148},
    .{key = "get_parent", value = 2455072627},
    .{key = "set_parent", value = 1286410249},
    .{key = "get_height", value = 2455072627},
    .{key = "set_height", value = 1286410249},
    .{key = "get_xform", value = 4183770049},
    .{key = "set_xform", value = 2952846383},
    .{key = "get_mesh", value = 2455072627},
    .{key = "set_mesh", value = 1286410249},
    .{key = "get_camera", value = 2455072627},
    .{key = "set_camera", value = 1286410249},
    .{key = "get_skin", value = 2455072627},
    .{key = "set_skin", value = 1286410249},
    .{key = "get_skeleton", value = 2455072627},
    .{key = "set_skeleton", value = 1286410249},
    .{key = "get_position", value = 3783033775},
    .{key = "set_position", value = 3460891852},
    .{key = "get_rotation", value = 2916281908},
    .{key = "set_rotation", value = 1727505552},
    .{key = "get_scale", value = 3783033775},
    .{key = "set_scale", value = 3460891852},
    .{key = "get_children", value = 969006518},
    .{key = "set_children", value = 3614634198},
    .{key = "get_light", value = 2455072627},
    .{key = "set_light", value = 1286410249},
    .{key = "get_additional_data", value = 2138907829},
    .{key = "set_additional_data", value = 3776071444},
    .{key = "from_node", value = 420544174},
    .{key = "to_node", value = 3224013656},
    .{key = "from_dictionary", value = 1177544336},
    .{key = "to_dictionary", value = 3102165223},
    .{key = "get_body_type", value = 201670096},
    .{key = "set_body_type", value = 83702148},
    .{key = "get_mass", value = 1740695150},
    .{key = "set_mass", value = 373806689},
    .{key = "get_linear_velocity", value = 3360562783},
    .{key = "set_linear_velocity", value = 3460891852},
    .{key = "get_angular_velocity", value = 3360562783},
    .{key = "set_angular_velocity", value = 3460891852},
    .{key = "get_center_of_mass", value = 3360562783},
    .{key = "set_center_of_mass", value = 3460891852},
    .{key = "get_inertia_diagonal", value = 3360562783},
    .{key = "set_inertia_diagonal", value = 3460891852},
    .{key = "get_inertia_orientation", value = 1222331677},
    .{key = "set_inertia_orientation", value = 1727505552},
    .{key = "get_inertia_tensor", value = 2716978435},
    .{key = "set_inertia_tensor", value = 1055510324},
    .{key = "from_node", value = 3613751275},
    .{key = "to_node", value = 563689933},
    .{key = "from_dictionary", value = 2390691823},
    .{key = "to_dictionary", value = 3102165223},
    .{key = "get_shape_type", value = 201670096},
    .{key = "set_shape_type", value = 83702148},
    .{key = "get_size", value = 3360562783},
    .{key = "set_size", value = 3460891852},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_is_trigger", value = 36873697},
    .{key = "set_is_trigger", value = 2586408642},
    .{key = "get_mesh_index", value = 3905245786},
    .{key = "set_mesh_index", value = 1286410249},
    .{key = "get_importer_mesh", value = 3161779525},
    .{key = "set_importer_mesh", value = 2255166972},
    .{key = "get_joints", value = 969006518},
    .{key = "set_joints", value = 3614634198},
    .{key = "get_roots", value = 969006518},
    .{key = "set_roots", value = 3614634198},
    .{key = "get_godot_skeleton", value = 1814733083},
    .{key = "get_unique_names", value = 2915620761},
    .{key = "set_unique_names", value = 381264803},
    .{key = "get_godot_bone_node", value = 2382534195},
    .{key = "set_godot_bone_node", value = 4155329257},
    .{key = "get_bone_attachment_count", value = 2455072627},
    .{key = "get_bone_attachment", value = 945440495},
    .{key = "get_skin_root", value = 2455072627},
    .{key = "set_skin_root", value = 1286410249},
    .{key = "get_joints_original", value = 969006518},
    .{key = "set_joints_original", value = 3614634198},
    .{key = "get_inverse_binds", value = 2915620761},
    .{key = "set_inverse_binds", value = 381264803},
    .{key = "get_joints", value = 969006518},
    .{key = "set_joints", value = 3614634198},
    .{key = "get_non_joints", value = 969006518},
    .{key = "set_non_joints", value = 3614634198},
    .{key = "get_roots", value = 969006518},
    .{key = "set_roots", value = 3614634198},
    .{key = "get_skeleton", value = 2455072627},
    .{key = "set_skeleton", value = 1286410249},
    .{key = "get_joint_i_to_bone_i", value = 2382534195},
    .{key = "set_joint_i_to_bone_i", value = 4155329257},
    .{key = "get_joint_i_to_name", value = 2382534195},
    .{key = "set_joint_i_to_name", value = 4155329257},
    .{key = "get_godot_skin", value = 1032037385},
    .{key = "set_godot_skin", value = 3971435618},
    .{key = "get_diffuse_img", value = 564927088},
    .{key = "set_diffuse_img", value = 532598488},
    .{key = "get_diffuse_factor", value = 3200896285},
    .{key = "set_diffuse_factor", value = 2920490490},
    .{key = "get_gloss_factor", value = 191475506},
    .{key = "set_gloss_factor", value = 373806689},
    .{key = "get_specular_factor", value = 3200896285},
    .{key = "set_specular_factor", value = 2920490490},
    .{key = "get_spec_gloss_img", value = 564927088},
    .{key = "set_spec_gloss_img", value = 532598488},
    .{key = "add_used_extension", value = 2678287736},
    .{key = "append_data_to_buffers", value = 1460416665},
    .{key = "get_json", value = 2382534195},
    .{key = "set_json", value = 4155329257},
    .{key = "get_major_version", value = 2455072627},
    .{key = "set_major_version", value = 1286410249},
    .{key = "get_minor_version", value = 2455072627},
    .{key = "set_minor_version", value = 1286410249},
    .{key = "get_copyright", value = 201670096},
    .{key = "set_copyright", value = 83702148},
    .{key = "get_glb_data", value = 2115431945},
    .{key = "set_glb_data", value = 2971499966},
    .{key = "get_use_named_skin_binds", value = 2240911060},
    .{key = "set_use_named_skin_binds", value = 2586408642},
    .{key = "get_nodes", value = 2915620761},
    .{key = "set_nodes", value = 381264803},
    .{key = "get_buffers", value = 2915620761},
    .{key = "set_buffers", value = 381264803},
    .{key = "get_buffer_views", value = 2915620761},
    .{key = "set_buffer_views", value = 381264803},
    .{key = "get_accessors", value = 2915620761},
    .{key = "set_accessors", value = 381264803},
    .{key = "get_meshes", value = 2915620761},
    .{key = "set_meshes", value = 381264803},
    .{key = "get_animation_players_count", value = 3744713108},
    .{key = "get_animation_player", value = 925043400},
    .{key = "get_materials", value = 2915620761},
    .{key = "set_materials", value = 381264803},
    .{key = "get_scene_name", value = 2841200299},
    .{key = "set_scene_name", value = 83702148},
    .{key = "get_base_path", value = 2841200299},
    .{key = "set_base_path", value = 83702148},
    .{key = "get_filename", value = 201670096},
    .{key = "set_filename", value = 83702148},
    .{key = "get_root_nodes", value = 969006518},
    .{key = "set_root_nodes", value = 3614634198},
    .{key = "get_textures", value = 2915620761},
    .{key = "set_textures", value = 381264803},
    .{key = "get_texture_samplers", value = 2915620761},
    .{key = "set_texture_samplers", value = 381264803},
    .{key = "get_images", value = 2915620761},
    .{key = "set_images", value = 381264803},
    .{key = "get_skins", value = 2915620761},
    .{key = "set_skins", value = 381264803},
    .{key = "get_cameras", value = 2915620761},
    .{key = "set_cameras", value = 381264803},
    .{key = "get_lights", value = 2915620761},
    .{key = "set_lights", value = 381264803},
    .{key = "get_unique_names", value = 2915620761},
    .{key = "set_unique_names", value = 381264803},
    .{key = "get_unique_animation_names", value = 2915620761},
    .{key = "set_unique_animation_names", value = 381264803},
    .{key = "get_skeletons", value = 2915620761},
    .{key = "set_skeletons", value = 381264803},
    .{key = "get_create_animations", value = 2240911060},
    .{key = "set_create_animations", value = 2586408642},
    .{key = "get_import_as_skeleton_bones", value = 2240911060},
    .{key = "set_import_as_skeleton_bones", value = 2586408642},
    .{key = "get_animations", value = 2915620761},
    .{key = "set_animations", value = 381264803},
    .{key = "get_scene_node", value = 4253421667},
    .{key = "get_node_index", value = 1205807060},
    .{key = "get_additional_data", value = 2138907829},
    .{key = "set_additional_data", value = 3776071444},
    .{key = "get_handle_binary_image", value = 2455072627},
    .{key = "set_handle_binary_image", value = 1286410249},
    .{key = "get_src_image", value = 3905245786},
    .{key = "set_src_image", value = 1286410249},
    .{key = "get_sampler", value = 3905245786},
    .{key = "set_sampler", value = 1286410249},
    .{key = "get_mag_filter", value = 3905245786},
    .{key = "set_mag_filter", value = 1286410249},
    .{key = "get_min_filter", value = 3905245786},
    .{key = "set_min_filter", value = 1286410249},
    .{key = "get_wrap_s", value = 3905245786},
    .{key = "set_wrap_s", value = 1286410249},
    .{key = "get_wrap_t", value = 3905245786},
    .{key = "set_wrap_t", value = 1286410249},
    .{key = "set_emitting", value = 2586408642},
    .{key = "set_amount", value = 1286410249},
    .{key = "set_lifetime", value = 373806689},
    .{key = "set_one_shot", value = 2586408642},
    .{key = "set_pre_process_time", value = 373806689},
    .{key = "set_explosiveness_ratio", value = 373806689},
    .{key = "set_randomness_ratio", value = 373806689},
    .{key = "set_visibility_rect", value = 2046264180},
    .{key = "set_use_local_coordinates", value = 2586408642},
    .{key = "set_fixed_fps", value = 1286410249},
    .{key = "set_fractional_delta", value = 2586408642},
    .{key = "set_interpolate", value = 2586408642},
    .{key = "set_process_material", value = 2757459619},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "set_collision_base_size", value = 373806689},
    .{key = "set_interp_to_end", value = 373806689},
    .{key = "is_emitting", value = 36873697},
    .{key = "get_amount", value = 3905245786},
    .{key = "get_lifetime", value = 1740695150},
    .{key = "get_one_shot", value = 36873697},
    .{key = "get_pre_process_time", value = 1740695150},
    .{key = "get_explosiveness_ratio", value = 1740695150},
    .{key = "get_randomness_ratio", value = 1740695150},
    .{key = "get_visibility_rect", value = 1639390495},
    .{key = "get_use_local_coordinates", value = 36873697},
    .{key = "get_fixed_fps", value = 3905245786},
    .{key = "get_fractional_delta", value = 36873697},
    .{key = "get_interpolate", value = 36873697},
    .{key = "get_process_material", value = 5934680},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "get_collision_base_size", value = 1740695150},
    .{key = "get_interp_to_end", value = 1740695150},
    .{key = "set_draw_order", value = 1939677959},
    .{key = "get_draw_order", value = 941479095},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "capture_rect", value = 1639390495},
    .{key = "restart", value = 3218959716},
    .{key = "set_sub_emitter", value = 1348162250},
    .{key = "get_sub_emitter", value = 4075236667},
    .{key = "emit_particle", value = 2179202058},
    .{key = "set_trail_enabled", value = 2586408642},
    .{key = "set_trail_lifetime", value = 373806689},
    .{key = "is_trail_enabled", value = 36873697},
    .{key = "get_trail_lifetime", value = 1740695150},
    .{key = "set_trail_sections", value = 1286410249},
    .{key = "get_trail_sections", value = 3905245786},
    .{key = "set_trail_section_subdivisions", value = 1286410249},
    .{key = "get_trail_section_subdivisions", value = 3905245786},
    .{key = "convert_from_particles", value = 1078189570},
    .{key = "set_amount_ratio", value = 373806689},
    .{key = "get_amount_ratio", value = 1740695150},
    .{key = "set_emitting", value = 2586408642},
    .{key = "set_amount", value = 1286410249},
    .{key = "set_lifetime", value = 373806689},
    .{key = "set_one_shot", value = 2586408642},
    .{key = "set_pre_process_time", value = 373806689},
    .{key = "set_explosiveness_ratio", value = 373806689},
    .{key = "set_randomness_ratio", value = 373806689},
    .{key = "set_visibility_aabb", value = 259215842},
    .{key = "set_use_local_coordinates", value = 2586408642},
    .{key = "set_fixed_fps", value = 1286410249},
    .{key = "set_fractional_delta", value = 2586408642},
    .{key = "set_interpolate", value = 2586408642},
    .{key = "set_process_material", value = 2757459619},
    .{key = "set_speed_scale", value = 373806689},
    .{key = "set_collision_base_size", value = 373806689},
    .{key = "set_interp_to_end", value = 373806689},
    .{key = "is_emitting", value = 36873697},
    .{key = "get_amount", value = 3905245786},
    .{key = "get_lifetime", value = 1740695150},
    .{key = "get_one_shot", value = 36873697},
    .{key = "get_pre_process_time", value = 1740695150},
    .{key = "get_explosiveness_ratio", value = 1740695150},
    .{key = "get_randomness_ratio", value = 1740695150},
    .{key = "get_visibility_aabb", value = 1068685055},
    .{key = "get_use_local_coordinates", value = 36873697},
    .{key = "get_fixed_fps", value = 3905245786},
    .{key = "get_fractional_delta", value = 36873697},
    .{key = "get_interpolate", value = 36873697},
    .{key = "get_process_material", value = 5934680},
    .{key = "get_speed_scale", value = 1740695150},
    .{key = "get_collision_base_size", value = 1740695150},
    .{key = "get_interp_to_end", value = 1740695150},
    .{key = "set_draw_order", value = 1208074815},
    .{key = "get_draw_order", value = 3770381780},
    .{key = "set_draw_passes", value = 1286410249},
    .{key = "set_draw_pass_mesh", value = 969122797},
    .{key = "get_draw_passes", value = 3905245786},
    .{key = "get_draw_pass_mesh", value = 1576363275},
    .{key = "set_skin", value = 3971435618},
    .{key = "get_skin", value = 2074563878},
    .{key = "restart", value = 3218959716},
    .{key = "capture_aabb", value = 1068685055},
    .{key = "set_sub_emitter", value = 1348162250},
    .{key = "get_sub_emitter", value = 4075236667},
    .{key = "emit_particle", value = 992173727},
    .{key = "set_trail_enabled", value = 2586408642},
    .{key = "set_trail_lifetime", value = 373806689},
    .{key = "is_trail_enabled", value = 36873697},
    .{key = "get_trail_lifetime", value = 1740695150},
    .{key = "set_transform_align", value = 3892425954},
    .{key = "get_transform_align", value = 2100992166},
    .{key = "convert_from_particles", value = 1078189570},
    .{key = "set_amount_ratio", value = 373806689},
    .{key = "get_amount_ratio", value = 1740695150},
    .{key = "set_cull_mask", value = 1286410249},
    .{key = "get_cull_mask", value = 3905245786},
    .{key = "set_strength", value = 373806689},
    .{key = "get_strength", value = 1740695150},
    .{key = "set_attenuation", value = 373806689},
    .{key = "get_attenuation", value = 1740695150},
    .{key = "set_directionality", value = 373806689},
    .{key = "get_directionality", value = 1740695150},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_texture", value = 1188404210},
    .{key = "get_texture", value = 373985333},
    .{key = "set_cull_mask", value = 1286410249},
    .{key = "get_cull_mask", value = 3905245786},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_resolution", value = 1009996517},
    .{key = "get_resolution", value = 1156065644},
    .{key = "set_update_mode", value = 673680859},
    .{key = "get_update_mode", value = 1998141380},
    .{key = "set_follow_camera_enabled", value = 2586408642},
    .{key = "is_follow_camera_enabled", value = 36873697},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_resolution", value = 1155629297},
    .{key = "get_resolution", value = 2919555867},
    .{key = "set_texture", value = 1188404210},
    .{key = "get_texture", value = 373985333},
    .{key = "set_thickness", value = 373806689},
    .{key = "get_thickness", value = 1740695150},
    .{key = "set_bake_mask", value = 1286410249},
    .{key = "get_bake_mask", value = 3905245786},
    .{key = "set_bake_mask_value", value = 300928843},
    .{key = "get_bake_mask_value", value = 1116898809},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_param_x", value = 2018184242},
    .{key = "get_param_x", value = 2599835054},
    .{key = "set_param_y", value = 2018184242},
    .{key = "get_param_y", value = 2599835054},
    .{key = "set_param_z", value = 2018184242},
    .{key = "get_param_z", value = 2599835054},
    .{key = "set_flag_x", value = 2451594564},
    .{key = "get_flag_x", value = 2122427807},
    .{key = "set_flag_y", value = 2451594564},
    .{key = "get_flag_y", value = 2122427807},
    .{key = "set_flag_z", value = 2451594564},
    .{key = "get_flag_z", value = 2122427807},
    .{key = "is_point_in_circle", value = 2929491703},
    .{key = "segment_intersects_circle", value = 1356928167},
    .{key = "segment_intersects_segment", value = 2058025344},
    .{key = "line_intersects_line", value = 2058025344},
    .{key = "get_closest_points_between_segments", value = 3344690961},
    .{key = "get_closest_point_to_segment", value = 4172901909},
    .{key = "get_closest_point_to_segment_uncapped", value = 4172901909},
    .{key = "point_is_inside_triangle", value = 1025948137},
    .{key = "is_polygon_clockwise", value = 1361156557},
    .{key = "is_point_in_polygon", value = 738277916},
    .{key = "triangulate_polygon", value = 1389921771},
    .{key = "triangulate_delaunay", value = 1389921771},
    .{key = "convex_hull", value = 2004331998},
    .{key = "decompose_polygon_in_convex", value = 3982393695},
    .{key = "merge_polygons", value = 3637387053},
    .{key = "clip_polygons", value = 3637387053},
    .{key = "intersect_polygons", value = 3637387053},
    .{key = "exclude_polygons", value = 3637387053},
    .{key = "clip_polyline_with_polygon", value = 3637387053},
    .{key = "intersect_polyline_with_polygon", value = 3637387053},
    .{key = "offset_polygon", value = 1275354010},
    .{key = "offset_polyline", value = 2328231778},
    .{key = "make_atlas", value = 1337682371},
    .{key = "compute_convex_mesh_points", value = 1936902142},
    .{key = "build_box_planes", value = 3622277145},
    .{key = "build_cylinder_planes", value = 449920067},
    .{key = "build_capsule_planes", value = 2113592876},
    .{key = "get_closest_points_between_segments", value = 1056373962},
    .{key = "get_closest_point_to_segment", value = 2168193209},
    .{key = "get_closest_point_to_segment_uncapped", value = 2168193209},
    .{key = "get_triangle_barycentric_coords", value = 1362048029},
    .{key = "ray_intersects_triangle", value = 1718655448},
    .{key = "segment_intersects_triangle", value = 1718655448},
    .{key = "segment_intersects_sphere", value = 4080141172},
    .{key = "segment_intersects_cylinder", value = 2361316491},
    .{key = "segment_intersects_convex", value = 537425332},
    .{key = "clip_polygon", value = 2603188319},
    .{key = "tetrahedralize_delaunay", value = 1230191221},
    .{key = "set_material_override", value = 2757459619},
    .{key = "get_material_override", value = 5934680},
    .{key = "set_material_overlay", value = 2757459619},
    .{key = "get_material_overlay", value = 5934680},
    .{key = "set_cast_shadows_setting", value = 856677339},
    .{key = "get_cast_shadows_setting", value = 3383019359},
    .{key = "set_lod_bias", value = 373806689},
    .{key = "get_lod_bias", value = 1740695150},
    .{key = "set_transparency", value = 373806689},
    .{key = "get_transparency", value = 1740695150},
    .{key = "set_visibility_range_end_margin", value = 373806689},
    .{key = "get_visibility_range_end_margin", value = 1740695150},
    .{key = "set_visibility_range_end", value = 373806689},
    .{key = "get_visibility_range_end", value = 1740695150},
    .{key = "set_visibility_range_begin_margin", value = 373806689},
    .{key = "get_visibility_range_begin_margin", value = 1740695150},
    .{key = "set_visibility_range_begin", value = 373806689},
    .{key = "get_visibility_range_begin", value = 1740695150},
    .{key = "set_visibility_range_fade_mode", value = 1440117808},
    .{key = "get_visibility_range_fade_mode", value = 2067221882},
    .{key = "set_instance_shader_parameter", value = 3776071444},
    .{key = "get_instance_shader_parameter", value = 2760726917},
    .{key = "set_extra_cull_margin", value = 373806689},
    .{key = "get_extra_cull_margin", value = 1740695150},
    .{key = "set_lightmap_scale", value = 2462696582},
    .{key = "get_lightmap_scale", value = 798767852},
    .{key = "set_gi_mode", value = 2548557163},
    .{key = "get_gi_mode", value = 2188566509},
    .{key = "set_ignore_occlusion_culling", value = 2586408642},
    .{key = "is_ignoring_occlusion_culling", value = 2240911060},
    .{key = "set_custom_aabb", value = 259215842},
    .{key = "get_custom_aabb", value = 1068685055},
    .{key = "add_point", value = 3629403827},
    .{key = "remove_point", value = 1286410249},
    .{key = "set_offset", value = 1602489585},
    .{key = "get_offset", value = 4025615559},
    .{key = "reverse", value = 3218959716},
    .{key = "set_color", value = 2878471219},
    .{key = "get_color", value = 2624840992},
    .{key = "sample", value = 1250405064},
    .{key = "get_point_count", value = 3905245786},
    .{key = "set_offsets", value = 2899603908},
    .{key = "get_offsets", value = 675695659},
    .{key = "set_colors", value = 3546319833},
    .{key = "get_colors", value = 1392750486},
    .{key = "set_interpolation_mode", value = 1971444490},
    .{key = "get_interpolation_mode", value = 3674172981},
    .{key = "set_interpolation_color_space", value = 3685995981},
    .{key = "get_interpolation_color_space", value = 1538296000},
    .{key = "set_gradient", value = 2756054477},
    .{key = "get_gradient", value = 132272999},
    .{key = "set_width", value = 1286410249},
    .{key = "set_use_hdr", value = 2586408642},
    .{key = "is_using_hdr", value = 36873697},
    .{key = "set_gradient", value = 2756054477},
    .{key = "get_gradient", value = 132272999},
    .{key = "set_width", value = 1286410249},
    .{key = "set_height", value = 1286410249},
    .{key = "set_use_hdr", value = 2586408642},
    .{key = "is_using_hdr", value = 36873697},
    .{key = "set_fill", value = 3623927636},
    .{key = "get_fill", value = 1876227217},
    .{key = "set_fill_from", value = 743155724},
    .{key = "get_fill_from", value = 3341600327},
    .{key = "set_fill_to", value = 743155724},
    .{key = "get_fill_to", value = 3341600327},
    .{key = "set_repeat", value = 1357597002},
    .{key = "get_repeat", value = 3351758665},
    .{key = "connect_node", value = 195065850},
    .{key = "is_node_connected", value = 4216241294},
    .{key = "disconnect_node", value = 1933654315},
    .{key = "set_connection_activity", value = 1141899943},
    .{key = "get_connection_list", value = 3995934104},
    .{key = "get_closest_connection_at_point", value = 453879819},
    .{key = "get_connections_intersecting_with_rect", value = 2709748719},
    .{key = "clear_connections", value = 3218959716},
    .{key = "force_connection_drag_end", value = 3218959716},
    .{key = "get_scroll_offset", value = 3341600327},
    .{key = "set_scroll_offset", value = 743155724},
    .{key = "add_valid_right_disconnect_type", value = 1286410249},
    .{key = "remove_valid_right_disconnect_type", value = 1286410249},
    .{key = "add_valid_left_disconnect_type", value = 1286410249},
    .{key = "remove_valid_left_disconnect_type", value = 1286410249},
    .{key = "add_valid_connection_type", value = 3937882851},
    .{key = "remove_valid_connection_type", value = 3937882851},
    .{key = "is_valid_connection_type", value = 2522259332},
    .{key = "get_connection_line", value = 3932192302},
    .{key = "set_panning_scheme", value = 18893313},
    .{key = "get_panning_scheme", value = 549924446},
    .{key = "set_zoom", value = 373806689},
    .{key = "get_zoom", value = 1740695150},
    .{key = "set_zoom_min", value = 373806689},
    .{key = "get_zoom_min", value = 1740695150},
    .{key = "set_zoom_max", value = 373806689},
    .{key = "get_zoom_max", value = 1740695150},
    .{key = "set_zoom_step", value = 373806689},
    .{key = "get_zoom_step", value = 1740695150},
    .{key = "set_show_grid", value = 2586408642},
    .{key = "is_showing_grid", value = 36873697},
    .{key = "set_grid_pattern", value = 1074098205},
    .{key = "get_grid_pattern", value = 1286127528},
    .{key = "set_snapping_enabled", value = 2586408642},
    .{key = "is_snapping_enabled", value = 36873697},
    .{key = "set_snapping_distance", value = 1286410249},
    .{key = "get_snapping_distance", value = 3905245786},
    .{key = "set_connection_lines_curvature", value = 373806689},
    .{key = "get_connection_lines_curvature", value = 1740695150},
    .{key = "set_connection_lines_thickness", value = 373806689},
    .{key = "get_connection_lines_thickness", value = 1740695150},
    .{key = "set_connection_lines_antialiased", value = 2586408642},
    .{key = "is_connection_lines_antialiased", value = 36873697},
    .{key = "set_minimap_size", value = 743155724},
    .{key = "get_minimap_size", value = 3341600327},
    .{key = "set_minimap_opacity", value = 373806689},
    .{key = "get_minimap_opacity", value = 1740695150},
    .{key = "set_minimap_enabled", value = 2586408642},
    .{key = "is_minimap_enabled", value = 36873697},
    .{key = "set_show_menu", value = 2586408642},
    .{key = "is_showing_menu", value = 36873697},
    .{key = "set_show_zoom_label", value = 2586408642},
    .{key = "is_showing_zoom_label", value = 36873697},
    .{key = "set_show_grid_buttons", value = 2586408642},
    .{key = "is_showing_grid_buttons", value = 36873697},
    .{key = "set_show_zoom_buttons", value = 2586408642},
    .{key = "is_showing_zoom_buttons", value = 36873697},
    .{key = "set_show_minimap_button", value = 2586408642},
    .{key = "is_showing_minimap_button", value = 36873697},
    .{key = "set_show_arrange_button", value = 2586408642},
    .{key = "is_showing_arrange_button", value = 36873697},
    .{key = "set_right_disconnects", value = 2586408642},
    .{key = "is_right_disconnects_enabled", value = 36873697},
    .{key = "get_menu_hbox", value = 3590609951},
    .{key = "arrange_nodes", value = 3218959716},
    .{key = "set_selected", value = 1078189570},
    .{key = "set_resizable", value = 2586408642},
    .{key = "is_resizable", value = 36873697},
    .{key = "set_draggable", value = 2586408642},
    .{key = "is_draggable", value = 2240911060},
    .{key = "set_selectable", value = 2586408642},
    .{key = "is_selectable", value = 2240911060},
    .{key = "set_selected", value = 2586408642},
    .{key = "is_selected", value = 2240911060},
    .{key = "set_position_offset", value = 743155724},
    .{key = "get_position_offset", value = 3341600327},
    .{key = "set_title", value = 83702148},
    .{key = "get_title", value = 201670096},
    .{key = "get_titlebar_hbox", value = 3590609951},
    .{key = "set_slot", value = 2873310869},
    .{key = "clear_slot", value = 1286410249},
    .{key = "clear_all_slots", value = 3218959716},
    .{key = "is_slot_enabled_left", value = 1116898809},
    .{key = "set_slot_enabled_left", value = 300928843},
    .{key = "set_slot_type_left", value = 3937882851},
    .{key = "get_slot_type_left", value = 923996154},
    .{key = "set_slot_color_left", value = 2878471219},
    .{key = "get_slot_color_left", value = 3457211756},
    .{key = "set_slot_custom_icon_left", value = 666127730},
    .{key = "get_slot_custom_icon_left", value = 3536238170},
    .{key = "is_slot_enabled_right", value = 1116898809},
    .{key = "set_slot_enabled_right", value = 300928843},
    .{key = "set_slot_type_right", value = 3937882851},
    .{key = "get_slot_type_right", value = 923996154},
    .{key = "set_slot_color_right", value = 2878471219},
    .{key = "get_slot_color_right", value = 3457211756},
    .{key = "set_slot_custom_icon_right", value = 666127730},
    .{key = "get_slot_custom_icon_right", value = 3536238170},
    .{key = "is_slot_draw_stylebox", value = 1116898809},
    .{key = "set_slot_draw_stylebox", value = 300928843},
    .{key = "get_input_port_count", value = 2455072627},
    .{key = "get_input_port_position", value = 3114997196},
    .{key = "get_input_port_type", value = 3744713108},
    .{key = "get_input_port_color", value = 2624840992},
    .{key = "get_input_port_slot", value = 3744713108},
    .{key = "get_output_port_count", value = 2455072627},
    .{key = "get_output_port_position", value = 3114997196},
    .{key = "get_output_port_type", value = 3744713108},
    .{key = "get_output_port_color", value = 2624840992},
    .{key = "get_output_port_slot", value = 3744713108},
    .{key = "set_columns", value = 1286410249},
    .{key = "get_columns", value = 3905245786},
    .{key = "set_collision_layer", value = 1286410249},
    .{key = "get_collision_layer", value = 3905245786},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_collision_layer_value", value = 300928843},
    .{key = "get_collision_layer_value", value = 1116898809},
    .{key = "set_collision_priority", value = 373806689},
    .{key = "get_collision_priority", value = 1740695150},
    .{key = "set_physics_material", value = 1784508650},
    .{key = "get_physics_material", value = 2521850424},
    .{key = "set_bake_navigation", value = 2586408642},
    .{key = "is_baking_navigation", value = 2240911060},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_mesh_library", value = 1488083439},
    .{key = "get_mesh_library", value = 3350993772},
    .{key = "set_cell_size", value = 3460891852},
    .{key = "get_cell_size", value = 3360562783},
    .{key = "set_cell_scale", value = 373806689},
    .{key = "get_cell_scale", value = 1740695150},
    .{key = "set_octant_size", value = 1286410249},
    .{key = "get_octant_size", value = 3905245786},
    .{key = "set_cell_item", value = 3449088946},
    .{key = "get_cell_item", value = 3724960147},
    .{key = "get_cell_item_orientation", value = 3724960147},
    .{key = "get_cell_item_basis", value = 3493604918},
    .{key = "get_basis_with_orthogonal_index", value = 2816196998},
    .{key = "get_orthogonal_index_from_basis", value = 4210359952},
    .{key = "local_to_map", value = 1257687843},
    .{key = "map_to_local", value = 1088329196},
    .{key = "resource_changed", value = 968641751},
    .{key = "set_center_x", value = 2586408642},
    .{key = "get_center_x", value = 36873697},
    .{key = "set_center_y", value = 2586408642},
    .{key = "get_center_y", value = 36873697},
    .{key = "set_center_z", value = 2586408642},
    .{key = "get_center_z", value = 36873697},
    .{key = "clear", value = 3218959716},
    .{key = "get_used_cells", value = 3995934104},
    .{key = "get_used_cells_by_item", value = 663333327},
    .{key = "get_meshes", value = 3995934104},
    .{key = "get_bake_meshes", value = 2915620761},
    .{key = "get_bake_mesh_instance", value = 937000113},
    .{key = "clear_baked_meshes", value = 3218959716},
    .{key = "make_baked_meshes", value = 3609286057},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_initial_offset", value = 373806689},
    .{key = "get_initial_offset", value = 1740695150},
    .{key = "start", value = 3537364598},
    .{key = "update", value = 680677267},
    .{key = "finish", value = 2115431945},
    .{key = "connect_to_host", value = 504540374},
    .{key = "set_connection", value = 3281897016},
    .{key = "get_connection", value = 2741655269},
    .{key = "request_raw", value = 540161961},
    .{key = "request", value = 3778990155},
    .{key = "close", value = 3218959716},
    .{key = "has_response", value = 36873697},
    .{key = "is_response_chunked", value = 36873697},
    .{key = "get_response_code", value = 3905245786},
    .{key = "get_response_headers", value = 2981934095},
    .{key = "get_response_headers_as_dictionary", value = 2382534195},
    .{key = "get_response_body_length", value = 3905245786},
    .{key = "read_response_body_chunk", value = 2115431945},
    .{key = "set_read_chunk_size", value = 1286410249},
    .{key = "get_read_chunk_size", value = 3905245786},
    .{key = "set_blocking_mode", value = 2586408642},
    .{key = "is_blocking_mode_enabled", value = 36873697},
    .{key = "get_status", value = 1426656811},
    .{key = "poll", value = 166280745},
    .{key = "set_http_proxy", value = 2956805083},
    .{key = "set_https_proxy", value = 2956805083},
    .{key = "query_string_from_dict", value = 2538086567},
    .{key = "request", value = 3215244323},
    .{key = "request_raw", value = 2714829993},
    .{key = "cancel_request", value = 3218959716},
    .{key = "set_tls_options", value = 2210231844},
    .{key = "get_http_client_status", value = 1426656811},
    .{key = "set_use_threads", value = 2586408642},
    .{key = "is_using_threads", value = 36873697},
    .{key = "set_accept_gzip", value = 2586408642},
    .{key = "is_accepting_gzip", value = 36873697},
    .{key = "set_body_size_limit", value = 1286410249},
    .{key = "get_body_size_limit", value = 3905245786},
    .{key = "set_max_redirects", value = 1286410249},
    .{key = "get_max_redirects", value = 3905245786},
    .{key = "set_download_file", value = 83702148},
    .{key = "get_download_file", value = 201670096},
    .{key = "get_downloaded_bytes", value = 3905245786},
    .{key = "get_body_size", value = 3905245786},
    .{key = "set_timeout", value = 373806689},
    .{key = "get_timeout", value = 191475506},
    .{key = "set_download_chunk_size", value = 1286410249},
    .{key = "get_download_chunk_size", value = 3905245786},
    .{key = "set_http_proxy", value = 2956805083},
    .{key = "set_https_proxy", value = 2956805083},
    .{key = "start", value = 3940338335},
    .{key = "update", value = 680677267},
    .{key = "finish", value = 2115431945},
    .{key = "set_map_width", value = 1286410249},
    .{key = "get_map_width", value = 3905245786},
    .{key = "set_map_depth", value = 1286410249},
    .{key = "get_map_depth", value = 3905245786},
    .{key = "set_map_data", value = 2899603908},
    .{key = "get_map_data", value = 675695659},
    .{key = "get_min_height", value = 1740695150},
    .{key = "get_max_height", value = 1740695150},
    .{key = "set_param", value = 3082977519},
    .{key = "get_param", value = 4066002676},
    .{key = "set_flag", value = 1083494620},
    .{key = "get_flag", value = 2841369610},
    .{key = "resolve_hostname", value = 4283295457},
    .{key = "resolve_hostname_addresses", value = 773767525},
    .{key = "resolve_hostname_queue_item", value = 1749894742},
    .{key = "get_resolve_item_status", value = 3812250196},
    .{key = "get_resolve_item_address", value = 844755477},
    .{key = "get_resolve_item_addresses", value = 663333327},
    .{key = "erase_resolve_item", value = 1286410249},
    .{key = "get_local_addresses", value = 1139954409},
    .{key = "get_local_interfaces", value = 3995934104},
    .{key = "clear_cache", value = 3005725572},
    .{key = "get_width", value = 3905245786},
    .{key = "get_height", value = 3905245786},
    .{key = "get_size", value = 3690982128},
    .{key = "has_mipmaps", value = 36873697},
    .{key = "get_format", value = 3847873762},
    .{key = "get_data", value = 2362200018},
    .{key = "convert", value = 2120693146},
    .{key = "get_mipmap_count", value = 3905245786},
    .{key = "get_mipmap_offset", value = 923996154},
    .{key = "resize_to_po2", value = 4189212329},
    .{key = "resize", value = 994498151},
    .{key = "shrink_x2", value = 3218959716},
    .{key = "crop", value = 3937882851},
    .{key = "flip_x", value = 3218959716},
    .{key = "flip_y", value = 3218959716},
    .{key = "generate_mipmaps", value = 1633102583},
    .{key = "clear_mipmaps", value = 3218959716},
    .{key = "create", value = 986942177},
    .{key = "create_from_data", value = 299398494},
    .{key = "set_data", value = 2740482212},
    .{key = "is_empty", value = 36873697},
    .{key = "load", value = 166001499},
    .{key = "load_from_file", value = 736337515},
    .{key = "save_png", value = 2113323047},
    .{key = "save_png_to_buffer", value = 2362200018},
    .{key = "save_jpg", value = 2800019068},
    .{key = "save_jpg_to_buffer", value = 592235273},
    .{key = "save_exr", value = 3108122999},
    .{key = "save_exr_to_buffer", value = 3178917920},
    .{key = "save_webp", value = 2781156876},
    .{key = "save_webp_to_buffer", value = 1214628238},
    .{key = "detect_alpha", value = 2030116505},
    .{key = "is_invisible", value = 36873697},
    .{key = "detect_used_channels", value = 2703139984},
    .{key = "compress", value = 2975424957},
    .{key = "compress_from_channels", value = 4212890953},
    .{key = "decompress", value = 166280745},
    .{key = "is_compressed", value = 36873697},
    .{key = "rotate_90", value = 1901204267},
    .{key = "rotate_180", value = 3218959716},
    .{key = "fix_alpha_edges", value = 3218959716},
    .{key = "premultiply_alpha", value = 3218959716},
    .{key = "srgb_to_linear", value = 3218959716},
    .{key = "normal_map_to_xy", value = 3218959716},
    .{key = "rgbe_to_srgb", value = 564927088},
    .{key = "bump_map_to_normal_map", value = 3423495036},
    .{key = "compute_image_metrics", value = 3080961247},
    .{key = "blit_rect", value = 2903928755},
    .{key = "blit_rect_mask", value = 3383581145},
    .{key = "blend_rect", value = 2903928755},
    .{key = "blend_rect_mask", value = 3383581145},
    .{key = "fill", value = 2920490490},
    .{key = "fill_rect", value = 514693913},
    .{key = "get_used_rect", value = 410525958},
    .{key = "get_region", value = 2601441065},
    .{key = "copy_from", value = 532598488},
    .{key = "get_pixelv", value = 1532707496},
    .{key = "get_pixel", value = 2165839948},
    .{key = "set_pixelv", value = 287851464},
    .{key = "set_pixel", value = 3733378741},
    .{key = "adjust_bcs", value = 2385087082},
    .{key = "load_png_from_buffer", value = 680677267},
    .{key = "load_jpg_from_buffer", value = 680677267},
    .{key = "load_webp_from_buffer", value = 680677267},
    .{key = "load_tga_from_buffer", value = 680677267},
    .{key = "load_bmp_from_buffer", value = 680677267},
    .{key = "load_ktx_from_buffer", value = 680677267},
    .{key = "load_svg_from_buffer", value = 311853421},
    .{key = "load_svg_from_string", value = 3254053600},
    .{key = "add_format_loader", value = 3218959716},
    .{key = "remove_format_loader", value = 3218959716},
    .{key = "create_from_image", value = 2775144163},
    .{key = "get_format", value = 3847873762},
    .{key = "set_image", value = 532598488},
    .{key = "update", value = 532598488},
    .{key = "set_size_override", value = 1130785943},
    .{key = "create", value = 1130379827},
    .{key = "update", value = 381264803},
    .{key = "create_from_images", value = 2785773503},
    .{key = "update_layer", value = 3331733361},
    .{key = "surface_begin", value = 2794442543},
    .{key = "surface_set_color", value = 2920490490},
    .{key = "surface_set_normal", value = 3460891852},
    .{key = "surface_set_tangent", value = 3505987427},
    .{key = "surface_set_uv", value = 743155724},
    .{key = "surface_set_uv2", value = 743155724},
    .{key = "surface_add_vertex", value = 3460891852},
    .{key = "surface_add_vertex_2d", value = 743155724},
    .{key = "surface_end", value = 3218959716},
    .{key = "clear_surfaces", value = 3218959716},
    .{key = "add_blend_shape", value = 83702148},
    .{key = "get_blend_shape_count", value = 3905245786},
    .{key = "get_blend_shape_name", value = 844755477},
    .{key = "set_blend_shape_mode", value = 227983991},
    .{key = "get_blend_shape_mode", value = 836485024},
    .{key = "add_surface", value = 1740448849},
    .{key = "get_surface_count", value = 3905245786},
    .{key = "get_surface_primitive_type", value = 3552571330},
    .{key = "get_surface_name", value = 844755477},
    .{key = "get_surface_arrays", value = 663333327},
    .{key = "get_surface_blend_shape_arrays", value = 2345056839},
    .{key = "get_surface_lod_count", value = 923996154},
    .{key = "get_surface_lod_size", value = 3085491603},
    .{key = "get_surface_lod_indices", value = 1265128013},
    .{key = "get_surface_material", value = 2897466400},
    .{key = "get_surface_format", value = 923996154},
    .{key = "set_surface_name", value = 501894301},
    .{key = "set_surface_material", value = 3671737478},
    .{key = "generate_lods", value = 2491878677},
    .{key = "get_mesh", value = 1457573577},
    .{key = "clear", value = 3218959716},
    .{key = "set_lightmap_size_hint", value = 1130785943},
    .{key = "get_lightmap_size_hint", value = 3690982128},
    .{key = "set_mesh", value = 2255166972},
    .{key = "get_mesh", value = 3161779525},
    .{key = "set_skin", value = 3971435618},
    .{key = "get_skin", value = 2074563878},
    .{key = "set_skeleton_path", value = 1348162250},
    .{key = "get_skeleton_path", value = 4075236667},
    .{key = "set_layer_mask", value = 1286410249},
    .{key = "get_layer_mask", value = 3905245786},
    .{key = "set_cast_shadows_setting", value = 856677339},
    .{key = "get_cast_shadows_setting", value = 3383019359},
    .{key = "set_visibility_range_end_margin", value = 373806689},
    .{key = "get_visibility_range_end_margin", value = 1740695150},
    .{key = "set_visibility_range_end", value = 373806689},
    .{key = "get_visibility_range_end", value = 1740695150},
    .{key = "set_visibility_range_begin_margin", value = 373806689},
    .{key = "get_visibility_range_begin_margin", value = 1740695150},
    .{key = "set_visibility_range_begin", value = 373806689},
    .{key = "get_visibility_range_begin", value = 1740695150},
    .{key = "set_visibility_range_fade_mode", value = 1440117808},
    .{key = "get_visibility_range_fade_mode", value = 2067221882},
    .{key = "is_anything_pressed", value = 36873697},
    .{key = "is_key_pressed", value = 1938909964},
    .{key = "is_physical_key_pressed", value = 1938909964},
    .{key = "is_key_label_pressed", value = 1938909964},
    .{key = "is_mouse_button_pressed", value = 1821097125},
    .{key = "is_joy_button_pressed", value = 787208542},
    .{key = "is_action_pressed", value = 1558498928},
    .{key = "is_action_just_pressed", value = 1558498928},
    .{key = "is_action_just_released", value = 1558498928},
    .{key = "get_action_strength", value = 801543509},
    .{key = "get_action_raw_strength", value = 801543509},
    .{key = "get_axis", value = 1958752504},
    .{key = "get_vector", value = 2479607902},
    .{key = "add_joy_mapping", value = 1168363258},
    .{key = "remove_joy_mapping", value = 83702148},
    .{key = "is_joy_known", value = 3067735520},
    .{key = "get_joy_axis", value = 4063175957},
    .{key = "get_joy_name", value = 990163283},
    .{key = "get_joy_guid", value = 844755477},
    .{key = "get_joy_info", value = 3485342025},
    .{key = "should_ignore_device", value = 2522259332},
    .{key = "get_connected_joypads", value = 2915620761},
    .{key = "get_joy_vibration_strength", value = 3114997196},
    .{key = "get_joy_vibration_duration", value = 4025615559},
    .{key = "start_joy_vibration", value = 2576575033},
    .{key = "stop_joy_vibration", value = 1286410249},
    .{key = "vibrate_handheld", value = 955504365},
    .{key = "get_gravity", value = 3360562783},
    .{key = "get_accelerometer", value = 3360562783},
    .{key = "get_magnetometer", value = 3360562783},
    .{key = "get_gyroscope", value = 3360562783},
    .{key = "set_gravity", value = 3460891852},
    .{key = "set_accelerometer", value = 3460891852},
    .{key = "set_magnetometer", value = 3460891852},
    .{key = "set_gyroscope", value = 3460891852},
    .{key = "get_last_mouse_velocity", value = 1497962370},
    .{key = "get_last_mouse_screen_velocity", value = 1497962370},
    .{key = "get_mouse_button_mask", value = 2512161324},
    .{key = "set_mouse_mode", value = 2228490894},
    .{key = "get_mouse_mode", value = 965286182},
    .{key = "warp_mouse", value = 743155724},
    .{key = "action_press", value = 1713091165},
    .{key = "action_release", value = 3304788590},
    .{key = "set_default_cursor_shape", value = 2124816902},
    .{key = "get_current_cursor_shape", value = 3455658929},
    .{key = "set_custom_mouse_cursor", value = 703945977},
    .{key = "parse_input_event", value = 3754044979},
    .{key = "set_use_accumulated_input", value = 2586408642},
    .{key = "is_using_accumulated_input", value = 2240911060},
    .{key = "flush_buffered_events", value = 3218959716},
    .{key = "set_emulate_mouse_from_touch", value = 2586408642},
    .{key = "is_emulating_mouse_from_touch", value = 36873697},
    .{key = "set_emulate_touch_from_mouse", value = 2586408642},
    .{key = "is_emulating_touch_from_mouse", value = 36873697},
    .{key = "set_device", value = 1286410249},
    .{key = "get_device", value = 3905245786},
    .{key = "is_action", value = 1558498928},
    .{key = "is_action_pressed", value = 1631499404},
    .{key = "is_action_released", value = 1558498928},
    .{key = "get_action_strength", value = 801543509},
    .{key = "is_canceled", value = 36873697},
    .{key = "is_pressed", value = 36873697},
    .{key = "is_released", value = 36873697},
    .{key = "is_echo", value = 36873697},
    .{key = "as_text", value = 201670096},
    .{key = "is_match", value = 1754951977},
    .{key = "is_action_type", value = 36873697},
    .{key = "accumulate", value = 1062211774},
    .{key = "xformed_by", value = 1282766827},
    .{key = "set_action", value = 3304788590},
    .{key = "get_action", value = 2002593661},
    .{key = "set_pressed", value = 2586408642},
    .{key = "set_strength", value = 373806689},
    .{key = "get_strength", value = 1740695150},
    .{key = "set_window_id", value = 1286410249},
    .{key = "get_window_id", value = 3905245786},
    .{key = "set_position", value = 743155724},
    .{key = "get_position", value = 3341600327},
    .{key = "set_button_index", value = 1466368136},
    .{key = "get_button_index", value = 595588182},
    .{key = "set_pressure", value = 373806689},
    .{key = "get_pressure", value = 1740695150},
    .{key = "set_pressed", value = 2586408642},
    .{key = "set_axis", value = 1332685170},
    .{key = "get_axis", value = 4019121683},
    .{key = "set_axis_value", value = 373806689},
    .{key = "get_axis_value", value = 1740695150},
    .{key = "set_pressed", value = 2586408642},
    .{key = "set_keycode", value = 888074362},
    .{key = "get_keycode", value = 1585896689},
    .{key = "set_physical_keycode", value = 888074362},
    .{key = "get_physical_keycode", value = 1585896689},
    .{key = "set_key_label", value = 888074362},
    .{key = "get_key_label", value = 1585896689},
    .{key = "set_unicode", value = 1286410249},
    .{key = "get_unicode", value = 3905245786},
    .{key = "set_location", value = 634453155},
    .{key = "get_location", value = 211810873},
    .{key = "set_echo", value = 2586408642},
    .{key = "get_keycode_with_modifiers", value = 1585896689},
    .{key = "get_physical_keycode_with_modifiers", value = 1585896689},
    .{key = "get_key_label_with_modifiers", value = 1585896689},
    .{key = "as_text_keycode", value = 201670096},
    .{key = "as_text_physical_keycode", value = 201670096},
    .{key = "as_text_key_label", value = 201670096},
    .{key = "as_text_location", value = 201670096},
    .{key = "set_channel", value = 1286410249},
    .{key = "get_channel", value = 3905245786},
    .{key = "set_message", value = 1064271510},
    .{key = "get_message", value = 1936512097},
    .{key = "set_pitch", value = 1286410249},
    .{key = "get_pitch", value = 3905245786},
    .{key = "set_velocity", value = 1286410249},
    .{key = "get_velocity", value = 3905245786},
    .{key = "set_instrument", value = 1286410249},
    .{key = "get_instrument", value = 3905245786},
    .{key = "set_pressure", value = 1286410249},
    .{key = "get_pressure", value = 3905245786},
    .{key = "set_controller_number", value = 1286410249},
    .{key = "get_controller_number", value = 3905245786},
    .{key = "set_controller_value", value = 1286410249},
    .{key = "get_controller_value", value = 3905245786},
    .{key = "set_factor", value = 373806689},
    .{key = "get_factor", value = 1740695150},
    .{key = "set_button_mask", value = 3950145251},
    .{key = "get_button_mask", value = 2512161324},
    .{key = "set_position", value = 743155724},
    .{key = "get_position", value = 3341600327},
    .{key = "set_global_position", value = 743155724},
    .{key = "get_global_position", value = 3341600327},
    .{key = "set_factor", value = 373806689},
    .{key = "get_factor", value = 1740695150},
    .{key = "set_button_index", value = 3624991109},
    .{key = "get_button_index", value = 1132662608},
    .{key = "set_pressed", value = 2586408642},
    .{key = "set_canceled", value = 2586408642},
    .{key = "set_double_click", value = 2586408642},
    .{key = "is_double_click", value = 36873697},
    .{key = "set_tilt", value = 743155724},
    .{key = "get_tilt", value = 3341600327},
    .{key = "set_pressure", value = 373806689},
    .{key = "get_pressure", value = 1740695150},
    .{key = "set_pen_inverted", value = 2586408642},
    .{key = "get_pen_inverted", value = 36873697},
    .{key = "set_relative", value = 743155724},
    .{key = "get_relative", value = 3341600327},
    .{key = "set_screen_relative", value = 743155724},
    .{key = "get_screen_relative", value = 3341600327},
    .{key = "set_velocity", value = 743155724},
    .{key = "get_velocity", value = 3341600327},
    .{key = "set_screen_velocity", value = 743155724},
    .{key = "get_screen_velocity", value = 3341600327},
    .{key = "set_delta", value = 743155724},
    .{key = "get_delta", value = 3341600327},
    .{key = "set_index", value = 1286410249},
    .{key = "get_index", value = 3905245786},
    .{key = "set_tilt", value = 743155724},
    .{key = "get_tilt", value = 3341600327},
    .{key = "set_pressure", value = 373806689},
    .{key = "get_pressure", value = 1740695150},
    .{key = "set_pen_inverted", value = 2586408642},
    .{key = "get_pen_inverted", value = 36873697},
    .{key = "set_position", value = 743155724},
    .{key = "get_position", value = 3341600327},
    .{key = "set_relative", value = 743155724},
    .{key = "get_relative", value = 3341600327},
    .{key = "set_screen_relative", value = 743155724},
    .{key = "get_screen_relative", value = 3341600327},
    .{key = "set_velocity", value = 743155724},
    .{key = "get_velocity", value = 3341600327},
    .{key = "set_screen_velocity", value = 743155724},
    .{key = "get_screen_velocity", value = 3341600327},
    .{key = "set_index", value = 1286410249},
    .{key = "get_index", value = 3905245786},
    .{key = "set_position", value = 743155724},
    .{key = "get_position", value = 3341600327},
    .{key = "set_pressed", value = 2586408642},
    .{key = "set_canceled", value = 2586408642},
    .{key = "set_double_tap", value = 2586408642},
    .{key = "is_double_tap", value = 36873697},
    .{key = "set_shortcut", value = 857163497},
    .{key = "get_shortcut", value = 3766804753},
    .{key = "set_command_or_control_autoremap", value = 2586408642},
    .{key = "is_command_or_control_autoremap", value = 36873697},
    .{key = "is_command_or_control_pressed", value = 36873697},
    .{key = "set_alt_pressed", value = 2586408642},
    .{key = "is_alt_pressed", value = 36873697},
    .{key = "set_shift_pressed", value = 2586408642},
    .{key = "is_shift_pressed", value = 36873697},
    .{key = "set_ctrl_pressed", value = 2586408642},
    .{key = "is_ctrl_pressed", value = 36873697},
    .{key = "set_meta_pressed", value = 2586408642},
    .{key = "is_meta_pressed", value = 36873697},
    .{key = "get_modifiers_mask", value = 1258259499},
    .{key = "has_action", value = 2619796661},
    .{key = "get_actions", value = 2915620761},
    .{key = "add_action", value = 4100757082},
    .{key = "erase_action", value = 3304788590},
    .{key = "action_set_deadzone", value = 4135858297},
    .{key = "action_get_deadzone", value = 1391627649},
    .{key = "action_add_event", value = 518302593},
    .{key = "action_has_event", value = 1185871985},
    .{key = "action_erase_event", value = 518302593},
    .{key = "action_erase_events", value = 3304788590},
    .{key = "action_get_events", value = 689397652},
    .{key = "event_is_action", value = 3193353650},
    .{key = "load_from_project_settings", value = 3218959716},
    .{key = "get_stored_values", value = 2230153369},
    .{key = "create_instance", value = 3794612210},
    .{key = "get_instance_path", value = 201670096},
    .{key = "add_item", value = 359861678},
    .{key = "add_icon_item", value = 4256579627},
    .{key = "set_item_text", value = 501894301},
    .{key = "get_item_text", value = 844755477},
    .{key = "set_item_icon", value = 666127730},
    .{key = "get_item_icon", value = 3536238170},
    .{key = "set_item_text_direction", value = 1707680378},
    .{key = "get_item_text_direction", value = 4235602388},
    .{key = "set_item_language", value = 501894301},
    .{key = "get_item_language", value = 844755477},
    .{key = "set_item_icon_transposed", value = 300928843},
    .{key = "is_item_icon_transposed", value = 1116898809},
    .{key = "set_item_icon_region", value = 1356297692},
    .{key = "get_item_icon_region", value = 3327874267},
    .{key = "set_item_icon_modulate", value = 2878471219},
    .{key = "get_item_icon_modulate", value = 3457211756},
    .{key = "set_item_selectable", value = 300928843},
    .{key = "is_item_selectable", value = 1116898809},
    .{key = "set_item_disabled", value = 300928843},
    .{key = "is_item_disabled", value = 1116898809},
    .{key = "set_item_metadata", value = 2152698145},
    .{key = "get_item_metadata", value = 4227898402},
    .{key = "set_item_custom_bg_color", value = 2878471219},
    .{key = "get_item_custom_bg_color", value = 3457211756},
    .{key = "set_item_custom_fg_color", value = 2878471219},
    .{key = "get_item_custom_fg_color", value = 3457211756},
    .{key = "get_item_rect", value = 159227807},
    .{key = "set_item_tooltip_enabled", value = 300928843},
    .{key = "is_item_tooltip_enabled", value = 1116898809},
    .{key = "set_item_tooltip", value = 501894301},
    .{key = "get_item_tooltip", value = 844755477},
    .{key = "select", value = 972357352},
    .{key = "deselect", value = 1286410249},
    .{key = "deselect_all", value = 3218959716},
    .{key = "is_selected", value = 1116898809},
    .{key = "get_selected_items", value = 969006518},
    .{key = "move_item", value = 3937882851},
    .{key = "set_item_count", value = 1286410249},
    .{key = "get_item_count", value = 3905245786},
    .{key = "remove_item", value = 1286410249},
    .{key = "clear", value = 3218959716},
    .{key = "sort_items_by_text", value = 3218959716},
    .{key = "set_fixed_column_width", value = 1286410249},
    .{key = "get_fixed_column_width", value = 3905245786},
    .{key = "set_same_column_width", value = 2586408642},
    .{key = "is_same_column_width", value = 36873697},
    .{key = "set_max_text_lines", value = 1286410249},
    .{key = "get_max_text_lines", value = 3905245786},
    .{key = "set_max_columns", value = 1286410249},
    .{key = "get_max_columns", value = 3905245786},
    .{key = "set_select_mode", value = 928267388},
    .{key = "get_select_mode", value = 1191945842},
    .{key = "set_icon_mode", value = 2025053633},
    .{key = "get_icon_mode", value = 3353929232},
    .{key = "set_fixed_icon_size", value = 1130785943},
    .{key = "get_fixed_icon_size", value = 3690982128},
    .{key = "set_icon_scale", value = 373806689},
    .{key = "get_icon_scale", value = 1740695150},
    .{key = "set_allow_rmb_select", value = 2586408642},
    .{key = "get_allow_rmb_select", value = 36873697},
    .{key = "set_allow_reselect", value = 2586408642},
    .{key = "get_allow_reselect", value = 36873697},
    .{key = "set_allow_search", value = 2586408642},
    .{key = "get_allow_search", value = 36873697},
    .{key = "set_auto_height", value = 2586408642},
    .{key = "has_auto_height", value = 36873697},
    .{key = "is_anything_selected", value = 2240911060},
    .{key = "get_item_at_position", value = 2300324924},
    .{key = "ensure_current_is_visible", value = 3218959716},
    .{key = "get_v_scroll_bar", value = 2630340773},
    .{key = "set_text_overrun_behavior", value = 1008890932},
    .{key = "get_text_overrun_behavior", value = 3779142101},
    .{key = "force_update_list_size", value = 3218959716},
    .{key = "stringify", value = 462733549},
    .{key = "parse_string", value = 309047738},
    .{key = "parse", value = 885841341},
    .{key = "get_data", value = 1214101251},
    .{key = "set_data", value = 1114965689},
    .{key = "get_parsed_text", value = 201670096},
    .{key = "get_error_line", value = 3905245786},
    .{key = "get_error_message", value = 201670096},
    .{key = "set_scope", value = 2572618360},
    .{key = "process_action", value = 2963479484},
    .{key = "process_string", value = 1703090593},
    .{key = "make_request", value = 3423508980},
    .{key = "make_response", value = 5053918},
    .{key = "make_notification", value = 2949127017},
    .{key = "make_response_error", value = 928596297},
    .{key = "wrap", value = 1124367868},
    .{key = "eval", value = 218087648},
    .{key = "get_interface", value = 1355533281},
    .{key = "create_callback", value = 422818440},
    .{key = "create_object", value = 3093893586},
    .{key = "download_buffer", value = 3352272093},
    .{key = "pwa_needs_update", value = 36873697},
    .{key = "pwa_update", value = 166280745},
    .{key = "force_fs_sync", value = 3218959716},
    .{key = "set_node_a", value = 1348162250},
    .{key = "get_node_a", value = 4075236667},
    .{key = "set_node_b", value = 1348162250},
    .{key = "get_node_b", value = 4075236667},
    .{key = "set_bias", value = 373806689},
    .{key = "get_bias", value = 1740695150},
    .{key = "set_exclude_nodes_from_collision", value = 2586408642},
    .{key = "get_exclude_nodes_from_collision", value = 36873697},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_node_a", value = 1348162250},
    .{key = "get_node_a", value = 4075236667},
    .{key = "set_node_b", value = 1348162250},
    .{key = "get_node_b", value = 4075236667},
    .{key = "set_solver_priority", value = 1286410249},
    .{key = "get_solver_priority", value = 3905245786},
    .{key = "set_exclude_nodes_from_collision", value = 2586408642},
    .{key = "get_exclude_nodes_from_collision", value = 36873697},
    .{key = "get_rid", value = 2944877500},
    .{key = "get_position", value = 3341600327},
    .{key = "get_normal", value = 3341600327},
    .{key = "get_travel", value = 3341600327},
    .{key = "get_remainder", value = 3341600327},
    .{key = "get_angle", value = 2841063350},
    .{key = "get_depth", value = 1740695150},
    .{key = "get_local_shape", value = 1981248198},
    .{key = "get_collider", value = 1981248198},
    .{key = "get_collider_id", value = 3905245786},
    .{key = "get_collider_rid", value = 2944877500},
    .{key = "get_collider_shape", value = 1981248198},
    .{key = "get_collider_shape_index", value = 3905245786},
    .{key = "get_collider_velocity", value = 3341600327},
    .{key = "get_travel", value = 3360562783},
    .{key = "get_remainder", value = 3360562783},
    .{key = "get_depth", value = 1740695150},
    .{key = "get_collision_count", value = 3905245786},
    .{key = "get_position", value = 1914908202},
    .{key = "get_normal", value = 1914908202},
    .{key = "get_angle", value = 1242741860},
    .{key = "get_local_shape", value = 2639523548},
    .{key = "get_collider", value = 2639523548},
    .{key = "get_collider_id", value = 1591665591},
    .{key = "get_collider_rid", value = 1231817359},
    .{key = "get_collider_shape", value = 2639523548},
    .{key = "get_collider_shape_index", value = 1591665591},
    .{key = "get_collider_velocity", value = 1914908202},
    .{key = "set_horizontal_alignment", value = 2312603777},
    .{key = "get_horizontal_alignment", value = 341400642},
    .{key = "set_vertical_alignment", value = 1796458609},
    .{key = "get_vertical_alignment", value = 3274884059},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "set_label_settings", value = 1030653839},
    .{key = "get_label_settings", value = 826676056},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_autowrap_mode", value = 3289138044},
    .{key = "get_autowrap_mode", value = 1549071663},
    .{key = "set_justification_flags", value = 2877345813},
    .{key = "get_justification_flags", value = 1583363614},
    .{key = "set_clip_text", value = 2586408642},
    .{key = "is_clipping_text", value = 36873697},
    .{key = "set_tab_stops", value = 2899603908},
    .{key = "get_tab_stops", value = 675695659},
    .{key = "set_text_overrun_behavior", value = 1008890932},
    .{key = "get_text_overrun_behavior", value = 3779142101},
    .{key = "set_ellipsis_char", value = 83702148},
    .{key = "get_ellipsis_char", value = 201670096},
    .{key = "set_uppercase", value = 2586408642},
    .{key = "is_uppercase", value = 36873697},
    .{key = "get_line_height", value = 181039630},
    .{key = "get_line_count", value = 3905245786},
    .{key = "get_visible_line_count", value = 3905245786},
    .{key = "get_total_character_count", value = 3905245786},
    .{key = "set_visible_characters", value = 1286410249},
    .{key = "get_visible_characters", value = 3905245786},
    .{key = "get_visible_characters_behavior", value = 258789322},
    .{key = "set_visible_characters_behavior", value = 3383839701},
    .{key = "set_visible_ratio", value = 373806689},
    .{key = "get_visible_ratio", value = 1740695150},
    .{key = "set_lines_skipped", value = 1286410249},
    .{key = "get_lines_skipped", value = 3905245786},
    .{key = "set_max_lines_visible", value = 1286410249},
    .{key = "get_max_lines_visible", value = 3905245786},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "get_character_bounds", value = 3327874267},
    .{key = "set_horizontal_alignment", value = 2312603777},
    .{key = "get_horizontal_alignment", value = 341400642},
    .{key = "set_vertical_alignment", value = 1796458609},
    .{key = "get_vertical_alignment", value = 3274884059},
    .{key = "set_modulate", value = 2920490490},
    .{key = "get_modulate", value = 3444240500},
    .{key = "set_outline_modulate", value = 2920490490},
    .{key = "get_outline_modulate", value = 3444240500},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "set_text_direction", value = 1418190634},
    .{key = "get_text_direction", value = 2516697328},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "set_uppercase", value = 2586408642},
    .{key = "is_uppercase", value = 36873697},
    .{key = "set_render_priority", value = 1286410249},
    .{key = "get_render_priority", value = 3905245786},
    .{key = "set_outline_render_priority", value = 1286410249},
    .{key = "get_outline_render_priority", value = 3905245786},
    .{key = "set_font", value = 1262170328},
    .{key = "get_font", value = 3229501585},
    .{key = "set_font_size", value = 1286410249},
    .{key = "get_font_size", value = 3905245786},
    .{key = "set_outline_size", value = 1286410249},
    .{key = "get_outline_size", value = 3905245786},
    .{key = "set_line_spacing", value = 373806689},
    .{key = "get_line_spacing", value = 1740695150},
    .{key = "set_autowrap_mode", value = 3289138044},
    .{key = "get_autowrap_mode", value = 1549071663},
    .{key = "set_justification_flags", value = 2877345813},
    .{key = "get_justification_flags", value = 1583363614},
    .{key = "set_width", value = 373806689},
    .{key = "get_width", value = 1740695150},
    .{key = "set_pixel_size", value = 373806689},
    .{key = "get_pixel_size", value = 1740695150},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_draw_flag", value = 1285833066},
    .{key = "get_draw_flag", value = 259226453},
    .{key = "set_billboard_mode", value = 4202036497},
    .{key = "get_billboard_mode", value = 1283840139},
    .{key = "set_alpha_cut_mode", value = 2549142916},
    .{key = "get_alpha_cut_mode", value = 219468601},
    .{key = "set_alpha_scissor_threshold", value = 373806689},
    .{key = "get_alpha_scissor_threshold", value = 1740695150},
    .{key = "set_alpha_hash_scale", value = 373806689},
    .{key = "get_alpha_hash_scale", value = 1740695150},
    .{key = "set_alpha_antialiasing", value = 3212649852},
    .{key = "get_alpha_antialiasing", value = 2889939400},
    .{key = "set_alpha_antialiasing_edge", value = 373806689},
    .{key = "get_alpha_antialiasing_edge", value = 1740695150},
    .{key = "set_texture_filter", value = 22904437},
    .{key = "get_texture_filter", value = 3289213076},
    .{key = "generate_triangle_mesh", value = 3476533166},
    .{key = "set_line_spacing", value = 373806689},
    .{key = "get_line_spacing", value = 1740695150},
    .{key = "set_font", value = 1262170328},
    .{key = "get_font", value = 3229501585},
    .{key = "set_font_size", value = 1286410249},
    .{key = "get_font_size", value = 3905245786},
    .{key = "set_font_color", value = 2920490490},
    .{key = "get_font_color", value = 3444240500},
    .{key = "set_outline_size", value = 1286410249},
    .{key = "get_outline_size", value = 3905245786},
    .{key = "set_outline_color", value = 2920490490},
    .{key = "get_outline_color", value = 3444240500},
    .{key = "set_shadow_size", value = 1286410249},
    .{key = "get_shadow_size", value = 3905245786},
    .{key = "set_shadow_color", value = 2920490490},
    .{key = "get_shadow_color", value = 3444240500},
    .{key = "set_shadow_offset", value = 743155724},
    .{key = "get_shadow_offset", value = 3341600327},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_editor_only", value = 2586408642},
    .{key = "is_editor_only", value = 36873697},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_energy", value = 373806689},
    .{key = "get_energy", value = 1740695150},
    .{key = "set_z_range_min", value = 1286410249},
    .{key = "get_z_range_min", value = 3905245786},
    .{key = "set_z_range_max", value = 1286410249},
    .{key = "get_z_range_max", value = 3905245786},
    .{key = "set_layer_range_min", value = 1286410249},
    .{key = "get_layer_range_min", value = 3905245786},
    .{key = "set_layer_range_max", value = 1286410249},
    .{key = "get_layer_range_max", value = 3905245786},
    .{key = "set_item_cull_mask", value = 1286410249},
    .{key = "get_item_cull_mask", value = 3905245786},
    .{key = "set_item_shadow_cull_mask", value = 1286410249},
    .{key = "get_item_shadow_cull_mask", value = 3905245786},
    .{key = "set_shadow_enabled", value = 2586408642},
    .{key = "is_shadow_enabled", value = 36873697},
    .{key = "set_shadow_smooth", value = 373806689},
    .{key = "get_shadow_smooth", value = 1740695150},
    .{key = "set_shadow_filter", value = 3209356555},
    .{key = "get_shadow_filter", value = 1973619177},
    .{key = "set_shadow_color", value = 2920490490},
    .{key = "get_shadow_color", value = 3444240500},
    .{key = "set_blend_mode", value = 2916638796},
    .{key = "get_blend_mode", value = 936255250},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_editor_only", value = 2586408642},
    .{key = "is_editor_only", value = 36873697},
    .{key = "set_param", value = 1722734213},
    .{key = "get_param", value = 1844084987},
    .{key = "set_shadow", value = 2586408642},
    .{key = "has_shadow", value = 36873697},
    .{key = "set_negative", value = 2586408642},
    .{key = "is_negative", value = 36873697},
    .{key = "set_cull_mask", value = 1286410249},
    .{key = "get_cull_mask", value = 3905245786},
    .{key = "set_enable_distance_fade", value = 2586408642},
    .{key = "is_distance_fade_enabled", value = 36873697},
    .{key = "set_distance_fade_begin", value = 373806689},
    .{key = "get_distance_fade_begin", value = 1740695150},
    .{key = "set_distance_fade_shadow", value = 373806689},
    .{key = "get_distance_fade_shadow", value = 1740695150},
    .{key = "set_distance_fade_length", value = 373806689},
    .{key = "get_distance_fade_length", value = 1740695150},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_shadow_reverse_cull_face", value = 2586408642},
    .{key = "get_shadow_reverse_cull_face", value = 36873697},
    .{key = "set_bake_mode", value = 37739303},
    .{key = "get_bake_mode", value = 371737608},
    .{key = "set_projector", value = 4051416890},
    .{key = "get_projector", value = 3635182373},
    .{key = "set_temperature", value = 373806689},
    .{key = "get_temperature", value = 1740695150},
    .{key = "get_correlated_color", value = 3444240500},
    .{key = "set_occluder_polygon", value = 3258315893},
    .{key = "get_occluder_polygon", value = 3962317075},
    .{key = "set_occluder_light_mask", value = 1286410249},
    .{key = "get_occluder_light_mask", value = 3905245786},
    .{key = "set_as_sdf_collision", value = 2586408642},
    .{key = "is_set_as_sdf_collision", value = 36873697},
    .{key = "set_light_data", value = 1790597277},
    .{key = "get_light_data", value = 290354153},
    .{key = "set_bake_quality", value = 1192215803},
    .{key = "get_bake_quality", value = 688832735},
    .{key = "set_bounces", value = 1286410249},
    .{key = "get_bounces", value = 3905245786},
    .{key = "set_bounce_indirect_energy", value = 373806689},
    .{key = "get_bounce_indirect_energy", value = 1740695150},
    .{key = "set_generate_probes", value = 549981046},
    .{key = "get_generate_probes", value = 3930596226},
    .{key = "set_bias", value = 373806689},
    .{key = "get_bias", value = 1740695150},
    .{key = "set_environment_mode", value = 2282650285},
    .{key = "get_environment_mode", value = 4128646479},
    .{key = "set_environment_custom_sky", value = 3336722921},
    .{key = "get_environment_custom_sky", value = 1177136966},
    .{key = "set_environment_custom_color", value = 2920490490},
    .{key = "get_environment_custom_color", value = 3444240500},
    .{key = "set_environment_custom_energy", value = 373806689},
    .{key = "get_environment_custom_energy", value = 1740695150},
    .{key = "set_texel_scale", value = 373806689},
    .{key = "get_texel_scale", value = 1740695150},
    .{key = "set_max_texture_size", value = 1286410249},
    .{key = "get_max_texture_size", value = 3905245786},
    .{key = "set_use_denoiser", value = 2586408642},
    .{key = "is_using_denoiser", value = 36873697},
    .{key = "set_denoiser_strength", value = 373806689},
    .{key = "get_denoiser_strength", value = 1740695150},
    .{key = "set_interior", value = 2586408642},
    .{key = "is_interior", value = 36873697},
    .{key = "set_directional", value = 2586408642},
    .{key = "is_directional", value = 36873697},
    .{key = "set_use_texture_for_bounces", value = 2586408642},
    .{key = "is_using_texture_for_bounces", value = 36873697},
    .{key = "set_camera_attributes", value = 2817810567},
    .{key = "get_camera_attributes", value = 3921283215},
    .{key = "set_lightmap_textures", value = 381264803},
    .{key = "get_lightmap_textures", value = 3995934104},
    .{key = "set_uses_spherical_harmonics", value = 2586408642},
    .{key = "is_using_spherical_harmonics", value = 36873697},
    .{key = "add_user", value = 4272570515},
    .{key = "get_user_count", value = 3905245786},
    .{key = "get_user_path", value = 408788394},
    .{key = "clear_users", value = 3218959716},
    .{key = "set_light_texture", value = 1278366092},
    .{key = "get_light_texture", value = 3984243839},
    .{key = "set_points", value = 1509147220},
    .{key = "get_points", value = 2961356807},
    .{key = "set_point_position", value = 163021252},
    .{key = "get_point_position", value = 2299179447},
    .{key = "get_point_count", value = 3905245786},
    .{key = "add_point", value = 2654014372},
    .{key = "remove_point", value = 1286410249},
    .{key = "clear_points", value = 3218959716},
    .{key = "set_closed", value = 2586408642},
    .{key = "is_closed", value = 36873697},
    .{key = "set_width", value = 373806689},
    .{key = "get_width", value = 1740695150},
    .{key = "set_curve", value = 270443179},
    .{key = "get_curve", value = 2460114913},
    .{key = "set_default_color", value = 2920490490},
    .{key = "get_default_color", value = 3444240500},
    .{key = "set_gradient", value = 2756054477},
    .{key = "get_gradient", value = 132272999},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_texture_mode", value = 1952559516},
    .{key = "get_texture_mode", value = 2341040722},
    .{key = "set_joint_mode", value = 604292979},
    .{key = "get_joint_mode", value = 2546544037},
    .{key = "set_begin_cap_mode", value = 1669024546},
    .{key = "get_begin_cap_mode", value = 1107511441},
    .{key = "set_end_cap_mode", value = 1669024546},
    .{key = "get_end_cap_mode", value = 1107511441},
    .{key = "set_sharp_limit", value = 373806689},
    .{key = "get_sharp_limit", value = 1740695150},
    .{key = "set_round_precision", value = 1286410249},
    .{key = "get_round_precision", value = 3905245786},
    .{key = "set_antialiased", value = 2586408642},
    .{key = "get_antialiased", value = 36873697},
    .{key = "set_horizontal_alignment", value = 2312603777},
    .{key = "get_horizontal_alignment", value = 341400642},
    .{key = "clear", value = 3218959716},
    .{key = "select", value = 1328111411},
    .{key = "select_all", value = 3218959716},
    .{key = "deselect", value = 3218959716},
    .{key = "has_selection", value = 36873697},
    .{key = "get_selected_text", value = 2841200299},
    .{key = "get_selection_from_column", value = 3905245786},
    .{key = "get_selection_to_column", value = 3905245786},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "get_draw_control_chars", value = 36873697},
    .{key = "set_draw_control_chars", value = 2586408642},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "set_placeholder", value = 83702148},
    .{key = "get_placeholder", value = 201670096},
    .{key = "set_caret_column", value = 1286410249},
    .{key = "get_caret_column", value = 3905245786},
    .{key = "get_scroll_offset", value = 1740695150},
    .{key = "set_expand_to_text_length_enabled", value = 2586408642},
    .{key = "is_expand_to_text_length_enabled", value = 36873697},
    .{key = "set_caret_blink_enabled", value = 2586408642},
    .{key = "is_caret_blink_enabled", value = 36873697},
    .{key = "set_caret_mid_grapheme_enabled", value = 2586408642},
    .{key = "is_caret_mid_grapheme_enabled", value = 36873697},
    .{key = "set_caret_force_displayed", value = 2586408642},
    .{key = "is_caret_force_displayed", value = 36873697},
    .{key = "set_caret_blink_interval", value = 373806689},
    .{key = "get_caret_blink_interval", value = 1740695150},
    .{key = "set_max_length", value = 1286410249},
    .{key = "get_max_length", value = 3905245786},
    .{key = "insert_text_at_caret", value = 83702148},
    .{key = "delete_char_at_caret", value = 3218959716},
    .{key = "delete_text", value = 3937882851},
    .{key = "set_editable", value = 2586408642},
    .{key = "is_editable", value = 36873697},
    .{key = "set_secret", value = 2586408642},
    .{key = "is_secret", value = 36873697},
    .{key = "set_secret_character", value = 83702148},
    .{key = "get_secret_character", value = 201670096},
    .{key = "menu_option", value = 1286410249},
    .{key = "get_menu", value = 229722558},
    .{key = "is_menu_visible", value = 36873697},
    .{key = "set_context_menu_enabled", value = 2586408642},
    .{key = "is_context_menu_enabled", value = 2240911060},
    .{key = "set_virtual_keyboard_enabled", value = 2586408642},
    .{key = "is_virtual_keyboard_enabled", value = 36873697},
    .{key = "set_virtual_keyboard_type", value = 2696893573},
    .{key = "get_virtual_keyboard_type", value = 1928699316},
    .{key = "set_clear_button_enabled", value = 2586408642},
    .{key = "is_clear_button_enabled", value = 36873697},
    .{key = "set_shortcut_keys_enabled", value = 2586408642},
    .{key = "is_shortcut_keys_enabled", value = 36873697},
    .{key = "set_middle_mouse_paste_enabled", value = 2586408642},
    .{key = "is_middle_mouse_paste_enabled", value = 36873697},
    .{key = "set_selecting_enabled", value = 2586408642},
    .{key = "is_selecting_enabled", value = 36873697},
    .{key = "set_deselect_on_focus_loss_enabled", value = 2586408642},
    .{key = "is_deselect_on_focus_loss_enabled", value = 36873697},
    .{key = "set_drag_and_drop_selection_enabled", value = 2586408642},
    .{key = "is_drag_and_drop_selection_enabled", value = 36873697},
    .{key = "set_right_icon", value = 4051416890},
    .{key = "get_right_icon", value = 255860311},
    .{key = "set_flat", value = 2586408642},
    .{key = "is_flat", value = 36873697},
    .{key = "set_select_all_on_focus", value = 2586408642},
    .{key = "is_select_all_on_focus", value = 36873697},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_uri", value = 83702148},
    .{key = "get_uri", value = 201670096},
    .{key = "set_underline_mode", value = 4032947085},
    .{key = "get_underline_mode", value = 568343738},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "set_gizmo_extents", value = 373806689},
    .{key = "get_gizmo_extents", value = 1740695150},
    .{key = "set_gizmo_extents", value = 373806689},
    .{key = "get_gizmo_extents", value = 1740695150},
    .{key = "variant_to_base64", value = 3876248563},
    .{key = "base64_to_variant", value = 218087648},
    .{key = "raw_to_base64", value = 3999417757},
    .{key = "base64_to_raw", value = 659035735},
    .{key = "utf8_to_base64", value = 1703090593},
    .{key = "base64_to_utf8", value = 1703090593},
    .{key = "set_next_pass", value = 2757459619},
    .{key = "get_next_pass", value = 5934680},
    .{key = "set_render_priority", value = 1286410249},
    .{key = "get_render_priority", value = 3905245786},
    .{key = "inspect_native_shader_code", value = 3218959716},
    .{key = "create_placeholder", value = 121922552},
    .{key = "set_switch_on_hover", value = 2586408642},
    .{key = "is_switch_on_hover", value = 2240911060},
    .{key = "set_disable_shortcuts", value = 2586408642},
    .{key = "set_prefer_global_menu", value = 2586408642},
    .{key = "is_prefer_global_menu", value = 36873697},
    .{key = "is_native_menu", value = 36873697},
    .{key = "get_menu_count", value = 3905245786},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_flat", value = 2586408642},
    .{key = "is_flat", value = 36873697},
    .{key = "set_start_index", value = 1286410249},
    .{key = "get_start_index", value = 3905245786},
    .{key = "set_menu_title", value = 501894301},
    .{key = "get_menu_title", value = 844755477},
    .{key = "set_menu_tooltip", value = 501894301},
    .{key = "get_menu_tooltip", value = 844755477},
    .{key = "set_menu_disabled", value = 300928843},
    .{key = "is_menu_disabled", value = 1116898809},
    .{key = "set_menu_hidden", value = 300928843},
    .{key = "is_menu_hidden", value = 1116898809},
    .{key = "get_menu_popup", value = 2100501353},
    .{key = "get_popup", value = 229722558},
    .{key = "show_popup", value = 3218959716},
    .{key = "set_switch_on_hover", value = 2586408642},
    .{key = "is_switch_on_hover", value = 2240911060},
    .{key = "set_disable_shortcuts", value = 2586408642},
    .{key = "set_item_count", value = 1286410249},
    .{key = "get_item_count", value = 3905245786},
    .{key = "set_lightmap_size_hint", value = 1130785943},
    .{key = "get_lightmap_size_hint", value = 3690982128},
    .{key = "get_aabb", value = 1068685055},
    .{key = "get_faces", value = 497664490},
    .{key = "get_surface_count", value = 3905245786},
    .{key = "surface_get_arrays", value = 663333327},
    .{key = "surface_get_blend_shape_arrays", value = 663333327},
    .{key = "surface_set_material", value = 3671737478},
    .{key = "surface_get_material", value = 2897466400},
    .{key = "create_placeholder", value = 121922552},
    .{key = "create_trimesh_shape", value = 4160111210},
    .{key = "create_convex_shape", value = 2529984628},
    .{key = "create_outline", value = 1208642001},
    .{key = "generate_triangle_mesh", value = 3476533166},
    .{key = "set_max_concavity", value = 373806689},
    .{key = "get_max_concavity", value = 1740695150},
    .{key = "set_symmetry_planes_clipping_bias", value = 373806689},
    .{key = "get_symmetry_planes_clipping_bias", value = 1740695150},
    .{key = "set_revolution_axes_clipping_bias", value = 373806689},
    .{key = "get_revolution_axes_clipping_bias", value = 1740695150},
    .{key = "set_min_volume_per_convex_hull", value = 373806689},
    .{key = "get_min_volume_per_convex_hull", value = 1740695150},
    .{key = "set_resolution", value = 1286410249},
    .{key = "get_resolution", value = 3905245786},
    .{key = "set_max_num_vertices_per_convex_hull", value = 1286410249},
    .{key = "get_max_num_vertices_per_convex_hull", value = 3905245786},
    .{key = "set_plane_downsampling", value = 1286410249},
    .{key = "get_plane_downsampling", value = 3905245786},
    .{key = "set_convex_hull_downsampling", value = 1286410249},
    .{key = "get_convex_hull_downsampling", value = 3905245786},
    .{key = "set_normalize_mesh", value = 2586408642},
    .{key = "get_normalize_mesh", value = 36873697},
    .{key = "set_mode", value = 1668072869},
    .{key = "get_mode", value = 23479454},
    .{key = "set_convex_hull_approximation", value = 2586408642},
    .{key = "get_convex_hull_approximation", value = 36873697},
    .{key = "set_max_convex_hulls", value = 1286410249},
    .{key = "get_max_convex_hulls", value = 3905245786},
    .{key = "set_project_hull_vertices", value = 2586408642},
    .{key = "get_project_hull_vertices", value = 36873697},
    .{key = "clear", value = 3218959716},
    .{key = "create_from_surface", value = 2727020678},
    .{key = "commit_to_surface", value = 2021686445},
    .{key = "get_format", value = 3905245786},
    .{key = "get_vertex_count", value = 3905245786},
    .{key = "get_edge_count", value = 3905245786},
    .{key = "get_face_count", value = 3905245786},
    .{key = "set_vertex", value = 1530502735},
    .{key = "get_vertex", value = 711720468},
    .{key = "set_vertex_normal", value = 1530502735},
    .{key = "get_vertex_normal", value = 711720468},
    .{key = "set_vertex_tangent", value = 1104099133},
    .{key = "get_vertex_tangent", value = 1372055458},
    .{key = "set_vertex_uv", value = 163021252},
    .{key = "get_vertex_uv", value = 2299179447},
    .{key = "set_vertex_uv2", value = 163021252},
    .{key = "get_vertex_uv2", value = 2299179447},
    .{key = "set_vertex_color", value = 2878471219},
    .{key = "get_vertex_color", value = 3457211756},
    .{key = "set_vertex_bones", value = 3500328261},
    .{key = "get_vertex_bones", value = 1706082319},
    .{key = "set_vertex_weights", value = 1345852415},
    .{key = "get_vertex_weights", value = 1542882410},
    .{key = "set_vertex_meta", value = 2152698145},
    .{key = "get_vertex_meta", value = 4227898402},
    .{key = "get_vertex_edges", value = 1706082319},
    .{key = "get_vertex_faces", value = 1706082319},
    .{key = "get_edge_vertex", value = 3175239445},
    .{key = "get_edge_faces", value = 1706082319},
    .{key = "set_edge_meta", value = 2152698145},
    .{key = "get_edge_meta", value = 4227898402},
    .{key = "get_face_vertex", value = 3175239445},
    .{key = "get_face_edge", value = 3175239445},
    .{key = "set_face_meta", value = 2152698145},
    .{key = "get_face_meta", value = 4227898402},
    .{key = "get_face_normal", value = 711720468},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 1808005922},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 1808005922},
    .{key = "set_skeleton_path", value = 1348162250},
    .{key = "get_skeleton_path", value = 277076166},
    .{key = "set_skin", value = 3971435618},
    .{key = "get_skin", value = 2074563878},
    .{key = "get_surface_override_material_count", value = 3905245786},
    .{key = "set_surface_override_material", value = 3671737478},
    .{key = "get_surface_override_material", value = 2897466400},
    .{key = "get_active_material", value = 2897466400},
    .{key = "create_trimesh_collision", value = 3218959716},
    .{key = "create_convex_collision", value = 2751962654},
    .{key = "create_multiple_convex_collisions", value = 628789669},
    .{key = "get_blend_shape_count", value = 3905245786},
    .{key = "find_blend_shape_by_name", value = 4150868206},
    .{key = "get_blend_shape_value", value = 2339986948},
    .{key = "set_blend_shape_value", value = 1602489585},
    .{key = "create_debug_tangents", value = 3218959716},
    .{key = "create_item", value = 1286410249},
    .{key = "set_item_name", value = 501894301},
    .{key = "set_item_mesh", value = 969122797},
    .{key = "set_item_mesh_transform", value = 3616898986},
    .{key = "set_item_navigation_mesh", value = 3483353960},
    .{key = "set_item_navigation_mesh_transform", value = 3616898986},
    .{key = "set_item_navigation_layers", value = 3937882851},
    .{key = "set_item_shapes", value = 537221740},
    .{key = "set_item_preview", value = 666127730},
    .{key = "get_item_name", value = 844755477},
    .{key = "get_item_mesh", value = 1576363275},
    .{key = "get_item_mesh_transform", value = 1965739696},
    .{key = "get_item_navigation_mesh", value = 2729647406},
    .{key = "get_item_navigation_mesh_transform", value = 1965739696},
    .{key = "get_item_navigation_layers", value = 923996154},
    .{key = "get_item_shapes", value = 663333327},
    .{key = "get_item_preview", value = 3536238170},
    .{key = "remove_item", value = 1286410249},
    .{key = "find_item_by_name", value = 1321353865},
    .{key = "clear", value = 3218959716},
    .{key = "get_item_list", value = 1930428628},
    .{key = "get_last_unused_item_id", value = 3905245786},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 1808005922},
    .{key = "set_image_size", value = 743155724},
    .{key = "get_image_size", value = 3341600327},
    .{key = "set_base_texture", value = 4051416890},
    .{key = "get_base_texture", value = 3635182373},
    .{key = "set_delay", value = 266477812},
    .{key = "set_trans", value = 3740975367},
    .{key = "set_ease", value = 315540545},
    .{key = "set_original_class", value = 83702148},
    .{key = "get_original_class", value = 201670096},
    .{key = "set_original_scene", value = 83702148},
    .{key = "get_original_scene", value = 201670096},
    .{key = "set_recording_properties", value = 2586408642},
    .{key = "is_recording_properties", value = 36873697},
    .{key = "set_original_class", value = 83702148},
    .{key = "get_original_class", value = 201670096},
    .{key = "set_recording_properties", value = 2586408642},
    .{key = "is_recording_properties", value = 36873697},
    .{key = "set_eye_height", value = 373806689},
    .{key = "get_eye_height", value = 1740695150},
    .{key = "set_iod", value = 373806689},
    .{key = "get_iod", value = 1740695150},
    .{key = "set_display_width", value = 373806689},
    .{key = "get_display_width", value = 1740695150},
    .{key = "set_display_to_lens", value = 373806689},
    .{key = "get_display_to_lens", value = 1740695150},
    .{key = "set_oversample", value = 373806689},
    .{key = "get_oversample", value = 1740695150},
    .{key = "set_k1", value = 373806689},
    .{key = "get_k1", value = 1740695150},
    .{key = "set_k2", value = 373806689},
    .{key = "get_k2", value = 1740695150},
    .{key = "add_writer", value = 4023702871},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 1808005922},
    .{key = "set_use_colors", value = 2586408642},
    .{key = "is_using_colors", value = 36873697},
    .{key = "set_use_custom_data", value = 2586408642},
    .{key = "is_using_custom_data", value = 36873697},
    .{key = "set_transform_format", value = 2404750322},
    .{key = "get_transform_format", value = 2444156481},
    .{key = "set_instance_count", value = 1286410249},
    .{key = "get_instance_count", value = 3905245786},
    .{key = "set_visible_instance_count", value = 1286410249},
    .{key = "get_visible_instance_count", value = 3905245786},
    .{key = "set_instance_transform", value = 3616898986},
    .{key = "set_instance_transform_2d", value = 30160968},
    .{key = "get_instance_transform", value = 1965739696},
    .{key = "get_instance_transform_2d", value = 3836996910},
    .{key = "set_instance_color", value = 2878471219},
    .{key = "get_instance_color", value = 3457211756},
    .{key = "set_instance_custom_data", value = 2878471219},
    .{key = "get_instance_custom_data", value = 3457211756},
    .{key = "set_custom_aabb", value = 259215842},
    .{key = "get_custom_aabb", value = 1068685055},
    .{key = "get_aabb", value = 1068685055},
    .{key = "get_buffer", value = 675695659},
    .{key = "set_buffer", value = 2899603908},
    .{key = "set_multimesh", value = 2246127404},
    .{key = "get_multimesh", value = 1385450523},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_multimesh", value = 2246127404},
    .{key = "get_multimesh", value = 1385450523},
    .{key = "has_multiplayer_peer", value = 2240911060},
    .{key = "get_multiplayer_peer", value = 3223692825},
    .{key = "set_multiplayer_peer", value = 3694835298},
    .{key = "get_unique_id", value = 2455072627},
    .{key = "is_server", value = 2240911060},
    .{key = "get_remote_sender_id", value = 2455072627},
    .{key = "poll", value = 166280745},
    .{key = "rpc", value = 2077486355},
    .{key = "object_configuration_add", value = 1171879464},
    .{key = "object_configuration_remove", value = 1171879464},
    .{key = "get_peers", value = 969006518},
    .{key = "set_default_interface", value = 3304788590},
    .{key = "get_default_interface", value = 2737447660},
    .{key = "create_default_interface", value = 3294156723},
    .{key = "set_transfer_channel", value = 1286410249},
    .{key = "get_transfer_channel", value = 3905245786},
    .{key = "set_transfer_mode", value = 950411049},
    .{key = "get_transfer_mode", value = 3369852622},
    .{key = "set_target_peer", value = 1286410249},
    .{key = "get_packet_peer", value = 3905245786},
    .{key = "get_packet_channel", value = 3905245786},
    .{key = "get_packet_mode", value = 3369852622},
    .{key = "poll", value = 3218959716},
    .{key = "close", value = 3218959716},
    .{key = "disconnect_peer", value = 4023243586},
    .{key = "get_connection_status", value = 2147374275},
    .{key = "get_unique_id", value = 3905245786},
    .{key = "generate_unique_id", value = 3905245786},
    .{key = "set_refuse_new_connections", value = 2586408642},
    .{key = "is_refusing_new_connections", value = 36873697},
    .{key = "is_server_relay_supported", value = 36873697},
    .{key = "add_spawnable_scene", value = 83702148},
    .{key = "get_spawnable_scene_count", value = 3905245786},
    .{key = "get_spawnable_scene", value = 844755477},
    .{key = "clear_spawnable_scenes", value = 3218959716},
    .{key = "spawn", value = 1991184589},
    .{key = "get_spawn_path", value = 4075236667},
    .{key = "set_spawn_path", value = 1348162250},
    .{key = "get_spawn_limit", value = 3905245786},
    .{key = "set_spawn_limit", value = 1286410249},
    .{key = "get_spawn_function", value = 1307783378},
    .{key = "set_spawn_function", value = 1611583062},
    .{key = "set_root_path", value = 1348162250},
    .{key = "get_root_path", value = 4075236667},
    .{key = "set_replication_interval", value = 373806689},
    .{key = "get_replication_interval", value = 1740695150},
    .{key = "set_delta_interval", value = 373806689},
    .{key = "get_delta_interval", value = 1740695150},
    .{key = "set_replication_config", value = 3889206742},
    .{key = "get_replication_config", value = 3200254614},
    .{key = "set_visibility_update_mode", value = 3494860300},
    .{key = "get_visibility_update_mode", value = 3352241418},
    .{key = "update_visibility", value = 1995695955},
    .{key = "set_visibility_public", value = 2586408642},
    .{key = "is_visibility_public", value = 36873697},
    .{key = "add_visibility_filter", value = 1611583062},
    .{key = "remove_visibility_filter", value = 1611583062},
    .{key = "set_visibility_for", value = 300928843},
    .{key = "get_visibility_for", value = 1116898809},
    .{key = "lock", value = 3218959716},
    .{key = "try_lock", value = 2240911060},
    .{key = "unlock", value = 3218959716},
    .{key = "has_feature", value = 1708975490},
    .{key = "has_system_menu", value = 718213027},
    .{key = "get_system_menu", value = 469707506},
    .{key = "get_system_menu_name", value = 1281499290},
    .{key = "create_menu", value = 529393457},
    .{key = "has_menu", value = 4155700596},
    .{key = "free_menu", value = 2722037293},
    .{key = "get_size", value = 2440833711},
    .{key = "popup", value = 2450610377},
    .{key = "set_interface_direction", value = 1265174801},
    .{key = "set_popup_open_callback", value = 3379118538},
    .{key = "get_popup_open_callback", value = 3170603026},
    .{key = "set_popup_close_callback", value = 3379118538},
    .{key = "get_popup_close_callback", value = 3170603026},
    .{key = "set_minimum_width", value = 1794382983},
    .{key = "get_minimum_width", value = 866169185},
    .{key = "add_submenu_item", value = 1002030223},
    .{key = "add_item", value = 2553375659},
    .{key = "add_check_item", value = 2553375659},
    .{key = "add_icon_item", value = 2987595282},
    .{key = "add_icon_check_item", value = 2987595282},
    .{key = "add_radio_check_item", value = 2553375659},
    .{key = "add_icon_radio_check_item", value = 2987595282},
    .{key = "add_multistate_item", value = 1558592568},
    .{key = "add_separator", value = 448810126},
    .{key = "find_item_index_with_text", value = 1362438794},
    .{key = "find_item_index_with_tag", value = 1260085030},
    .{key = "is_item_checked", value = 3120086654},
    .{key = "is_item_checkable", value = 3120086654},
    .{key = "is_item_radio_checkable", value = 3120086654},
    .{key = "get_item_callback", value = 1639989698},
    .{key = "get_item_key_callback", value = 1639989698},
    .{key = "get_item_tag", value = 4069510997},
    .{key = "get_item_text", value = 1464764419},
    .{key = "get_item_submenu", value = 1066463050},
    .{key = "get_item_accelerator", value = 316800700},
    .{key = "is_item_disabled", value = 3120086654},
    .{key = "is_item_hidden", value = 3120086654},
    .{key = "get_item_tooltip", value = 1464764419},
    .{key = "get_item_state", value = 1120910005},
    .{key = "get_item_max_states", value = 1120910005},
    .{key = "get_item_icon", value = 3391850701},
    .{key = "get_item_indentation_level", value = 1120910005},
    .{key = "set_item_checked", value = 2658558584},
    .{key = "set_item_checkable", value = 2658558584},
    .{key = "set_item_radio_checkable", value = 2658558584},
    .{key = "set_item_callback", value = 2779810226},
    .{key = "set_item_hover_callbacks", value = 2779810226},
    .{key = "set_item_key_callback", value = 2779810226},
    .{key = "set_item_tag", value = 2706844827},
    .{key = "set_item_text", value = 4153150897},
    .{key = "set_item_submenu", value = 2310537182},
    .{key = "set_item_accelerator", value = 786300043},
    .{key = "set_item_disabled", value = 2658558584},
    .{key = "set_item_hidden", value = 2658558584},
    .{key = "set_item_tooltip", value = 4153150897},
    .{key = "set_item_state", value = 4288446313},
    .{key = "set_item_max_states", value = 4288446313},
    .{key = "set_item_icon", value = 1388763257},
    .{key = "set_item_indentation_level", value = 4288446313},
    .{key = "get_item_count", value = 2198884583},
    .{key = "is_system_menu", value = 4155700596},
    .{key = "remove_item", value = 3411492887},
    .{key = "clear", value = 2722037293},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_avoidance_enabled", value = 2586408642},
    .{key = "get_avoidance_enabled", value = 36873697},
    .{key = "set_path_desired_distance", value = 373806689},
    .{key = "get_path_desired_distance", value = 1740695150},
    .{key = "set_target_desired_distance", value = 373806689},
    .{key = "get_target_desired_distance", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_neighbor_distance", value = 373806689},
    .{key = "get_neighbor_distance", value = 1740695150},
    .{key = "set_max_neighbors", value = 1286410249},
    .{key = "get_max_neighbors", value = 3905245786},
    .{key = "set_time_horizon_agents", value = 373806689},
    .{key = "get_time_horizon_agents", value = 1740695150},
    .{key = "set_time_horizon_obstacles", value = 373806689},
    .{key = "get_time_horizon_obstacles", value = 1740695150},
    .{key = "set_max_speed", value = 373806689},
    .{key = "get_max_speed", value = 1740695150},
    .{key = "set_path_max_distance", value = 373806689},
    .{key = "get_path_max_distance", value = 191475506},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_navigation_layer_value", value = 300928843},
    .{key = "get_navigation_layer_value", value = 1116898809},
    .{key = "set_pathfinding_algorithm", value = 2783519915},
    .{key = "get_pathfinding_algorithm", value = 3000421146},
    .{key = "set_path_postprocessing", value = 2864409082},
    .{key = "get_path_postprocessing", value = 3798118993},
    .{key = "set_path_metadata_flags", value = 24274129},
    .{key = "get_path_metadata_flags", value = 488152976},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_target_position", value = 743155724},
    .{key = "get_target_position", value = 3341600327},
    .{key = "get_next_path_position", value = 1497962370},
    .{key = "set_velocity_forced", value = 743155724},
    .{key = "set_velocity", value = 743155724},
    .{key = "get_velocity", value = 1497962370},
    .{key = "distance_to_target", value = 1740695150},
    .{key = "get_current_navigation_result", value = 166799483},
    .{key = "get_current_navigation_path", value = 2961356807},
    .{key = "get_current_navigation_path_index", value = 3905245786},
    .{key = "is_target_reached", value = 36873697},
    .{key = "is_target_reachable", value = 2240911060},
    .{key = "is_navigation_finished", value = 2240911060},
    .{key = "get_final_position", value = 1497962370},
    .{key = "set_avoidance_layers", value = 1286410249},
    .{key = "get_avoidance_layers", value = 3905245786},
    .{key = "set_avoidance_mask", value = 1286410249},
    .{key = "get_avoidance_mask", value = 3905245786},
    .{key = "set_avoidance_layer_value", value = 300928843},
    .{key = "get_avoidance_layer_value", value = 1116898809},
    .{key = "set_avoidance_mask_value", value = 300928843},
    .{key = "get_avoidance_mask_value", value = 1116898809},
    .{key = "set_avoidance_priority", value = 373806689},
    .{key = "get_avoidance_priority", value = 1740695150},
    .{key = "set_debug_enabled", value = 2586408642},
    .{key = "get_debug_enabled", value = 36873697},
    .{key = "set_debug_use_custom", value = 2586408642},
    .{key = "get_debug_use_custom", value = 36873697},
    .{key = "set_debug_path_custom_color", value = 2920490490},
    .{key = "get_debug_path_custom_color", value = 3444240500},
    .{key = "set_debug_path_custom_point_size", value = 373806689},
    .{key = "get_debug_path_custom_point_size", value = 1740695150},
    .{key = "set_debug_path_custom_line_width", value = 373806689},
    .{key = "get_debug_path_custom_line_width", value = 1740695150},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_avoidance_enabled", value = 2586408642},
    .{key = "get_avoidance_enabled", value = 36873697},
    .{key = "set_path_desired_distance", value = 373806689},
    .{key = "get_path_desired_distance", value = 1740695150},
    .{key = "set_target_desired_distance", value = 373806689},
    .{key = "get_target_desired_distance", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_path_height_offset", value = 373806689},
    .{key = "get_path_height_offset", value = 1740695150},
    .{key = "set_use_3d_avoidance", value = 2586408642},
    .{key = "get_use_3d_avoidance", value = 36873697},
    .{key = "set_keep_y_velocity", value = 2586408642},
    .{key = "get_keep_y_velocity", value = 36873697},
    .{key = "set_neighbor_distance", value = 373806689},
    .{key = "get_neighbor_distance", value = 1740695150},
    .{key = "set_max_neighbors", value = 1286410249},
    .{key = "get_max_neighbors", value = 3905245786},
    .{key = "set_time_horizon_agents", value = 373806689},
    .{key = "get_time_horizon_agents", value = 1740695150},
    .{key = "set_time_horizon_obstacles", value = 373806689},
    .{key = "get_time_horizon_obstacles", value = 1740695150},
    .{key = "set_max_speed", value = 373806689},
    .{key = "get_max_speed", value = 1740695150},
    .{key = "set_path_max_distance", value = 373806689},
    .{key = "get_path_max_distance", value = 191475506},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_navigation_layer_value", value = 300928843},
    .{key = "get_navigation_layer_value", value = 1116898809},
    .{key = "set_pathfinding_algorithm", value = 394560454},
    .{key = "get_pathfinding_algorithm", value = 3398491350},
    .{key = "set_path_postprocessing", value = 2267362344},
    .{key = "get_path_postprocessing", value = 3883858360},
    .{key = "set_path_metadata_flags", value = 2713846708},
    .{key = "get_path_metadata_flags", value = 1582332802},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_target_position", value = 3460891852},
    .{key = "get_target_position", value = 3360562783},
    .{key = "get_next_path_position", value = 3783033775},
    .{key = "set_velocity_forced", value = 3460891852},
    .{key = "set_velocity", value = 3460891852},
    .{key = "get_velocity", value = 3783033775},
    .{key = "distance_to_target", value = 1740695150},
    .{key = "get_current_navigation_result", value = 728825684},
    .{key = "get_current_navigation_path", value = 497664490},
    .{key = "get_current_navigation_path_index", value = 3905245786},
    .{key = "is_target_reached", value = 36873697},
    .{key = "is_target_reachable", value = 2240911060},
    .{key = "is_navigation_finished", value = 2240911060},
    .{key = "get_final_position", value = 3783033775},
    .{key = "set_avoidance_layers", value = 1286410249},
    .{key = "get_avoidance_layers", value = 3905245786},
    .{key = "set_avoidance_mask", value = 1286410249},
    .{key = "get_avoidance_mask", value = 3905245786},
    .{key = "set_avoidance_layer_value", value = 300928843},
    .{key = "get_avoidance_layer_value", value = 1116898809},
    .{key = "set_avoidance_mask_value", value = 300928843},
    .{key = "get_avoidance_mask_value", value = 1116898809},
    .{key = "set_avoidance_priority", value = 373806689},
    .{key = "get_avoidance_priority", value = 1740695150},
    .{key = "set_debug_enabled", value = 2586408642},
    .{key = "get_debug_enabled", value = 36873697},
    .{key = "set_debug_use_custom", value = 2586408642},
    .{key = "get_debug_use_custom", value = 36873697},
    .{key = "set_debug_path_custom_color", value = 2920490490},
    .{key = "get_debug_path_custom_color", value = 3444240500},
    .{key = "set_debug_path_custom_point_size", value = 373806689},
    .{key = "get_debug_path_custom_point_size", value = 1740695150},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_bidirectional", value = 2586408642},
    .{key = "is_bidirectional", value = 36873697},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_navigation_layer_value", value = 300928843},
    .{key = "get_navigation_layer_value", value = 1116898809},
    .{key = "set_start_position", value = 743155724},
    .{key = "get_start_position", value = 3341600327},
    .{key = "set_end_position", value = 743155724},
    .{key = "get_end_position", value = 3341600327},
    .{key = "set_global_start_position", value = 743155724},
    .{key = "get_global_start_position", value = 3341600327},
    .{key = "set_global_end_position", value = 743155724},
    .{key = "get_global_end_position", value = 3341600327},
    .{key = "set_enter_cost", value = 373806689},
    .{key = "get_enter_cost", value = 1740695150},
    .{key = "set_travel_cost", value = 373806689},
    .{key = "get_travel_cost", value = 1740695150},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_bidirectional", value = 2586408642},
    .{key = "is_bidirectional", value = 36873697},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_navigation_layer_value", value = 300928843},
    .{key = "get_navigation_layer_value", value = 1116898809},
    .{key = "set_start_position", value = 3460891852},
    .{key = "get_start_position", value = 3360562783},
    .{key = "set_end_position", value = 3460891852},
    .{key = "get_end_position", value = 3360562783},
    .{key = "set_global_start_position", value = 3460891852},
    .{key = "get_global_start_position", value = 3360562783},
    .{key = "set_global_end_position", value = 3460891852},
    .{key = "get_global_end_position", value = 3360562783},
    .{key = "set_enter_cost", value = 373806689},
    .{key = "get_enter_cost", value = 1740695150},
    .{key = "set_travel_cost", value = 373806689},
    .{key = "get_travel_cost", value = 1740695150},
    .{key = "set_sample_partition_type", value = 2472437533},
    .{key = "get_sample_partition_type", value = 833513918},
    .{key = "set_parsed_geometry_type", value = 3064713163},
    .{key = "get_parsed_geometry_type", value = 3928011953},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_source_geometry_mode", value = 2700825194},
    .{key = "get_source_geometry_mode", value = 2770484141},
    .{key = "set_source_group_name", value = 3304788590},
    .{key = "get_source_group_name", value = 2002593661},
    .{key = "set_cell_size", value = 373806689},
    .{key = "get_cell_size", value = 1740695150},
    .{key = "set_cell_height", value = 373806689},
    .{key = "get_cell_height", value = 1740695150},
    .{key = "set_border_size", value = 373806689},
    .{key = "get_border_size", value = 1740695150},
    .{key = "set_agent_height", value = 373806689},
    .{key = "get_agent_height", value = 1740695150},
    .{key = "set_agent_radius", value = 373806689},
    .{key = "get_agent_radius", value = 191475506},
    .{key = "set_agent_max_climb", value = 373806689},
    .{key = "get_agent_max_climb", value = 1740695150},
    .{key = "set_agent_max_slope", value = 373806689},
    .{key = "get_agent_max_slope", value = 1740695150},
    .{key = "set_region_min_size", value = 373806689},
    .{key = "get_region_min_size", value = 1740695150},
    .{key = "set_region_merge_size", value = 373806689},
    .{key = "get_region_merge_size", value = 1740695150},
    .{key = "set_edge_max_length", value = 373806689},
    .{key = "get_edge_max_length", value = 1740695150},
    .{key = "set_edge_max_error", value = 373806689},
    .{key = "get_edge_max_error", value = 1740695150},
    .{key = "set_vertices_per_polygon", value = 373806689},
    .{key = "get_vertices_per_polygon", value = 1740695150},
    .{key = "set_detail_sample_distance", value = 373806689},
    .{key = "get_detail_sample_distance", value = 1740695150},
    .{key = "set_detail_sample_max_error", value = 373806689},
    .{key = "get_detail_sample_max_error", value = 1740695150},
    .{key = "set_filter_low_hanging_obstacles", value = 2586408642},
    .{key = "get_filter_low_hanging_obstacles", value = 36873697},
    .{key = "set_filter_ledge_spans", value = 2586408642},
    .{key = "get_filter_ledge_spans", value = 36873697},
    .{key = "set_filter_walkable_low_height_spans", value = 2586408642},
    .{key = "get_filter_walkable_low_height_spans", value = 36873697},
    .{key = "set_filter_baking_aabb", value = 259215842},
    .{key = "get_filter_baking_aabb", value = 1068685055},
    .{key = "set_filter_baking_aabb_offset", value = 3460891852},
    .{key = "get_filter_baking_aabb_offset", value = 3360562783},
    .{key = "set_vertices", value = 334873810},
    .{key = "get_vertices", value = 497664490},
    .{key = "add_polygon", value = 3614634198},
    .{key = "get_polygon_count", value = 3905245786},
    .{key = "get_polygon", value = 3668444399},
    .{key = "clear_polygons", value = 3218959716},
    .{key = "create_from_mesh", value = 194775623},
    .{key = "clear", value = 3218959716},
    .{key = "bake", value = 1401173477},
    .{key = "clear", value = 2923361153},
    .{key = "parse_source_geometry_data", value = 685862123},
    .{key = "bake_from_source_geometry_data", value = 2469318639},
    .{key = "clear", value = 3218959716},
    .{key = "has_data", value = 2240911060},
    .{key = "set_traversable_outlines", value = 381264803},
    .{key = "get_traversable_outlines", value = 3995934104},
    .{key = "set_obstruction_outlines", value = 381264803},
    .{key = "get_obstruction_outlines", value = 3995934104},
    .{key = "add_traversable_outline", value = 1509147220},
    .{key = "add_obstruction_outline", value = 1509147220},
    .{key = "merge", value = 742424872},
    .{key = "add_projected_obstruction", value = 3882407395},
    .{key = "clear_projected_obstructions", value = 3218959716},
    .{key = "set_projected_obstructions", value = 381264803},
    .{key = "get_projected_obstructions", value = 3995934104},
    .{key = "set_vertices", value = 2899603908},
    .{key = "get_vertices", value = 675695659},
    .{key = "set_indices", value = 3614634198},
    .{key = "get_indices", value = 1930428628},
    .{key = "clear", value = 3218959716},
    .{key = "has_data", value = 2240911060},
    .{key = "add_mesh", value = 975462459},
    .{key = "add_mesh_array", value = 4235710913},
    .{key = "add_faces", value = 1440358797},
    .{key = "merge", value = 655828145},
    .{key = "add_projected_obstruction", value = 3351846707},
    .{key = "clear_projected_obstructions", value = 3218959716},
    .{key = "set_projected_obstructions", value = 381264803},
    .{key = "get_projected_obstructions", value = 3995934104},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_avoidance_enabled", value = 2586408642},
    .{key = "get_avoidance_enabled", value = 36873697},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_velocity", value = 743155724},
    .{key = "get_velocity", value = 3341600327},
    .{key = "set_vertices", value = 1509147220},
    .{key = "get_vertices", value = 2961356807},
    .{key = "set_avoidance_layers", value = 1286410249},
    .{key = "get_avoidance_layers", value = 3905245786},
    .{key = "set_avoidance_layer_value", value = 300928843},
    .{key = "get_avoidance_layer_value", value = 1116898809},
    .{key = "set_affect_navigation_mesh", value = 2586408642},
    .{key = "get_affect_navigation_mesh", value = 36873697},
    .{key = "set_carve_navigation_mesh", value = 2586408642},
    .{key = "get_carve_navigation_mesh", value = 36873697},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_avoidance_enabled", value = 2586408642},
    .{key = "get_avoidance_enabled", value = 36873697},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_velocity", value = 3460891852},
    .{key = "get_velocity", value = 3360562783},
    .{key = "set_vertices", value = 334873810},
    .{key = "get_vertices", value = 497664490},
    .{key = "set_avoidance_layers", value = 1286410249},
    .{key = "get_avoidance_layers", value = 3905245786},
    .{key = "set_avoidance_layer_value", value = 300928843},
    .{key = "get_avoidance_layer_value", value = 1116898809},
    .{key = "set_use_3d_avoidance", value = 2586408642},
    .{key = "get_use_3d_avoidance", value = 36873697},
    .{key = "set_affect_navigation_mesh", value = 2586408642},
    .{key = "get_affect_navigation_mesh", value = 36873697},
    .{key = "set_carve_navigation_mesh", value = 2586408642},
    .{key = "get_carve_navigation_mesh", value = 36873697},
    .{key = "set_pathfinding_algorithm", value = 2783519915},
    .{key = "get_pathfinding_algorithm", value = 3000421146},
    .{key = "set_path_postprocessing", value = 2864409082},
    .{key = "get_path_postprocessing", value = 3798118993},
    .{key = "set_map", value = 2722037293},
    .{key = "get_map", value = 2944877500},
    .{key = "set_start_position", value = 743155724},
    .{key = "get_start_position", value = 3341600327},
    .{key = "set_target_position", value = 743155724},
    .{key = "get_target_position", value = 3341600327},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_metadata_flags", value = 24274129},
    .{key = "get_metadata_flags", value = 488152976},
    .{key = "set_pathfinding_algorithm", value = 394560454},
    .{key = "get_pathfinding_algorithm", value = 3398491350},
    .{key = "set_path_postprocessing", value = 2267362344},
    .{key = "get_path_postprocessing", value = 3883858360},
    .{key = "set_map", value = 2722037293},
    .{key = "get_map", value = 2944877500},
    .{key = "set_start_position", value = 3460891852},
    .{key = "get_start_position", value = 3360562783},
    .{key = "set_target_position", value = 3460891852},
    .{key = "get_target_position", value = 3360562783},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_metadata_flags", value = 2713846708},
    .{key = "get_metadata_flags", value = 1582332802},
    .{key = "set_path", value = 1509147220},
    .{key = "get_path", value = 2961356807},
    .{key = "set_path_types", value = 3614634198},
    .{key = "get_path_types", value = 1930428628},
    .{key = "set_path_rids", value = 381264803},
    .{key = "get_path_rids", value = 3995934104},
    .{key = "set_path_owner_ids", value = 3709968205},
    .{key = "get_path_owner_ids", value = 235988956},
    .{key = "reset", value = 3218959716},
    .{key = "set_path", value = 334873810},
    .{key = "get_path", value = 497664490},
    .{key = "set_path_types", value = 3614634198},
    .{key = "get_path_types", value = 1930428628},
    .{key = "set_path_rids", value = 381264803},
    .{key = "get_path_rids", value = 3995934104},
    .{key = "set_path_owner_ids", value = 3709968205},
    .{key = "get_path_owner_ids", value = 235988956},
    .{key = "reset", value = 3218959716},
    .{key = "set_vertices", value = 1509147220},
    .{key = "get_vertices", value = 2961356807},
    .{key = "add_polygon", value = 3614634198},
    .{key = "get_polygon_count", value = 3905245786},
    .{key = "get_polygon", value = 3668444399},
    .{key = "clear_polygons", value = 3218959716},
    .{key = "get_navigation_mesh", value = 330232164},
    .{key = "add_outline", value = 1509147220},
    .{key = "add_outline_at_index", value = 1569738947},
    .{key = "get_outline_count", value = 3905245786},
    .{key = "set_outline", value = 1201971903},
    .{key = "get_outline", value = 3946907486},
    .{key = "remove_outline", value = 1286410249},
    .{key = "clear_outlines", value = 3218959716},
    .{key = "make_polygons_from_outlines", value = 3218959716},
    .{key = "set_cell_size", value = 373806689},
    .{key = "get_cell_size", value = 1740695150},
    .{key = "set_border_size", value = 373806689},
    .{key = "get_border_size", value = 1740695150},
    .{key = "set_parsed_geometry_type", value = 2507971764},
    .{key = "get_parsed_geometry_type", value = 1073219508},
    .{key = "set_parsed_collision_mask", value = 1286410249},
    .{key = "get_parsed_collision_mask", value = 3905245786},
    .{key = "set_parsed_collision_mask_value", value = 300928843},
    .{key = "get_parsed_collision_mask_value", value = 1116898809},
    .{key = "set_source_geometry_mode", value = 4002316705},
    .{key = "get_source_geometry_mode", value = 459686762},
    .{key = "set_source_geometry_group_name", value = 3304788590},
    .{key = "get_source_geometry_group_name", value = 2002593661},
    .{key = "set_agent_radius", value = 373806689},
    .{key = "get_agent_radius", value = 1740695150},
    .{key = "set_baking_rect", value = 2046264180},
    .{key = "get_baking_rect", value = 1639390495},
    .{key = "set_baking_rect_offset", value = 743155724},
    .{key = "get_baking_rect_offset", value = 3341600327},
    .{key = "clear", value = 3218959716},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_navigation_polygon", value = 1515040758},
    .{key = "get_navigation_polygon", value = 1046532237},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_use_edge_connections", value = 2586408642},
    .{key = "get_use_edge_connections", value = 36873697},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_navigation_layer_value", value = 300928843},
    .{key = "get_navigation_layer_value", value = 1116898809},
    .{key = "set_constrain_avoidance", value = 2586408642},
    .{key = "get_constrain_avoidance", value = 36873697},
    .{key = "set_avoidance_layers", value = 1286410249},
    .{key = "get_avoidance_layers", value = 3905245786},
    .{key = "set_avoidance_layer_value", value = 300928843},
    .{key = "get_avoidance_layer_value", value = 1116898809},
    .{key = "get_region_rid", value = 2944877500},
    .{key = "set_enter_cost", value = 373806689},
    .{key = "get_enter_cost", value = 1740695150},
    .{key = "set_travel_cost", value = 373806689},
    .{key = "get_travel_cost", value = 1740695150},
    .{key = "bake_navigation_polygon", value = 3216645846},
    .{key = "is_baking", value = 36873697},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_navigation_mesh", value = 2923361153},
    .{key = "get_navigation_mesh", value = 1468720886},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_navigation_map", value = 2722037293},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "set_use_edge_connections", value = 2586408642},
    .{key = "get_use_edge_connections", value = 36873697},
    .{key = "set_navigation_layers", value = 1286410249},
    .{key = "get_navigation_layers", value = 3905245786},
    .{key = "set_navigation_layer_value", value = 300928843},
    .{key = "get_navigation_layer_value", value = 1116898809},
    .{key = "get_region_rid", value = 2944877500},
    .{key = "set_enter_cost", value = 373806689},
    .{key = "get_enter_cost", value = 1740695150},
    .{key = "set_travel_cost", value = 373806689},
    .{key = "get_travel_cost", value = 1740695150},
    .{key = "bake_navigation_mesh", value = 3216645846},
    .{key = "is_baking", value = 36873697},
    .{key = "get_maps", value = 3995934104},
    .{key = "map_create", value = 529393457},
    .{key = "map_set_active", value = 1265174801},
    .{key = "map_is_active", value = 4155700596},
    .{key = "map_set_cell_size", value = 1794382983},
    .{key = "map_get_cell_size", value = 866169185},
    .{key = "map_set_use_edge_connections", value = 1265174801},
    .{key = "map_get_use_edge_connections", value = 4155700596},
    .{key = "map_set_edge_connection_margin", value = 1794382983},
    .{key = "map_get_edge_connection_margin", value = 866169185},
    .{key = "map_set_link_connection_radius", value = 1794382983},
    .{key = "map_get_link_connection_radius", value = 866169185},
    .{key = "map_get_path", value = 3146466012},
    .{key = "map_get_closest_point", value = 1358334418},
    .{key = "map_get_closest_point_owner", value = 1353467510},
    .{key = "map_get_links", value = 2684255073},
    .{key = "map_get_regions", value = 2684255073},
    .{key = "map_get_agents", value = 2684255073},
    .{key = "map_get_obstacles", value = 2684255073},
    .{key = "map_force_update", value = 2722037293},
    .{key = "map_get_iteration_id", value = 2198884583},
    .{key = "map_get_random_point", value = 3271000763},
    .{key = "query_path", value = 3394638789},
    .{key = "region_create", value = 529393457},
    .{key = "region_set_enabled", value = 1265174801},
    .{key = "region_get_enabled", value = 4155700596},
    .{key = "region_set_use_edge_connections", value = 1265174801},
    .{key = "region_get_use_edge_connections", value = 4155700596},
    .{key = "region_set_enter_cost", value = 1794382983},
    .{key = "region_get_enter_cost", value = 866169185},
    .{key = "region_set_travel_cost", value = 1794382983},
    .{key = "region_get_travel_cost", value = 866169185},
    .{key = "region_set_owner_id", value = 3411492887},
    .{key = "region_get_owner_id", value = 2198884583},
    .{key = "region_owns_point", value = 219849798},
    .{key = "region_set_map", value = 395945892},
    .{key = "region_get_map", value = 3814569979},
    .{key = "region_set_navigation_layers", value = 3411492887},
    .{key = "region_get_navigation_layers", value = 2198884583},
    .{key = "region_set_transform", value = 1246044741},
    .{key = "region_get_transform", value = 213527486},
    .{key = "region_set_navigation_polygon", value = 3633623451},
    .{key = "region_get_connections_count", value = 2198884583},
    .{key = "region_get_connection_pathway_start", value = 2546185844},
    .{key = "region_get_connection_pathway_end", value = 2546185844},
    .{key = "region_get_random_point", value = 3271000763},
    .{key = "link_create", value = 529393457},
    .{key = "link_set_map", value = 395945892},
    .{key = "link_get_map", value = 3814569979},
    .{key = "link_set_enabled", value = 1265174801},
    .{key = "link_get_enabled", value = 4155700596},
    .{key = "link_set_bidirectional", value = 1265174801},
    .{key = "link_is_bidirectional", value = 4155700596},
    .{key = "link_set_navigation_layers", value = 3411492887},
    .{key = "link_get_navigation_layers", value = 2198884583},
    .{key = "link_set_start_position", value = 3201125042},
    .{key = "link_get_start_position", value = 2440833711},
    .{key = "link_set_end_position", value = 3201125042},
    .{key = "link_get_end_position", value = 2440833711},
    .{key = "link_set_enter_cost", value = 1794382983},
    .{key = "link_get_enter_cost", value = 866169185},
    .{key = "link_set_travel_cost", value = 1794382983},
    .{key = "link_get_travel_cost", value = 866169185},
    .{key = "link_set_owner_id", value = 3411492887},
    .{key = "link_get_owner_id", value = 2198884583},
    .{key = "agent_create", value = 529393457},
    .{key = "agent_set_avoidance_enabled", value = 1265174801},
    .{key = "agent_get_avoidance_enabled", value = 4155700596},
    .{key = "agent_set_map", value = 395945892},
    .{key = "agent_get_map", value = 3814569979},
    .{key = "agent_set_paused", value = 1265174801},
    .{key = "agent_get_paused", value = 4155700596},
    .{key = "agent_set_neighbor_distance", value = 1794382983},
    .{key = "agent_get_neighbor_distance", value = 866169185},
    .{key = "agent_set_max_neighbors", value = 3411492887},
    .{key = "agent_get_max_neighbors", value = 2198884583},
    .{key = "agent_set_time_horizon_agents", value = 1794382983},
    .{key = "agent_get_time_horizon_agents", value = 866169185},
    .{key = "agent_set_time_horizon_obstacles", value = 1794382983},
    .{key = "agent_get_time_horizon_obstacles", value = 866169185},
    .{key = "agent_set_radius", value = 1794382983},
    .{key = "agent_get_radius", value = 866169185},
    .{key = "agent_set_max_speed", value = 1794382983},
    .{key = "agent_get_max_speed", value = 866169185},
    .{key = "agent_set_velocity_forced", value = 3201125042},
    .{key = "agent_set_velocity", value = 3201125042},
    .{key = "agent_get_velocity", value = 2440833711},
    .{key = "agent_set_position", value = 3201125042},
    .{key = "agent_get_position", value = 2440833711},
    .{key = "agent_is_map_changed", value = 4155700596},
    .{key = "agent_set_avoidance_callback", value = 3379118538},
    .{key = "agent_has_avoidance_callback", value = 4155700596},
    .{key = "agent_set_avoidance_layers", value = 3411492887},
    .{key = "agent_get_avoidance_layers", value = 2198884583},
    .{key = "agent_set_avoidance_mask", value = 3411492887},
    .{key = "agent_get_avoidance_mask", value = 2198884583},
    .{key = "agent_set_avoidance_priority", value = 1794382983},
    .{key = "agent_get_avoidance_priority", value = 866169185},
    .{key = "obstacle_create", value = 529393457},
    .{key = "obstacle_set_avoidance_enabled", value = 1265174801},
    .{key = "obstacle_get_avoidance_enabled", value = 4155700596},
    .{key = "obstacle_set_map", value = 395945892},
    .{key = "obstacle_get_map", value = 3814569979},
    .{key = "obstacle_set_paused", value = 1265174801},
    .{key = "obstacle_get_paused", value = 4155700596},
    .{key = "obstacle_set_radius", value = 1794382983},
    .{key = "obstacle_get_radius", value = 866169185},
    .{key = "obstacle_set_velocity", value = 3201125042},
    .{key = "obstacle_get_velocity", value = 2440833711},
    .{key = "obstacle_set_position", value = 3201125042},
    .{key = "obstacle_get_position", value = 2440833711},
    .{key = "obstacle_set_vertices", value = 29476483},
    .{key = "obstacle_get_vertices", value = 2222557395},
    .{key = "obstacle_set_avoidance_layers", value = 3411492887},
    .{key = "obstacle_get_avoidance_layers", value = 2198884583},
    .{key = "parse_source_geometry_data", value = 1176164995},
    .{key = "bake_from_source_geometry_data", value = 2909414286},
    .{key = "bake_from_source_geometry_data_async", value = 2909414286},
    .{key = "is_baking_navigation_polygon", value = 3729405808},
    .{key = "free_rid", value = 2722037293},
    .{key = "set_debug_enabled", value = 2586408642},
    .{key = "get_debug_enabled", value = 36873697},
    .{key = "get_maps", value = 3995934104},
    .{key = "map_create", value = 529393457},
    .{key = "map_set_active", value = 1265174801},
    .{key = "map_is_active", value = 4155700596},
    .{key = "map_set_up", value = 3227306858},
    .{key = "map_get_up", value = 531438156},
    .{key = "map_set_cell_size", value = 1794382983},
    .{key = "map_get_cell_size", value = 866169185},
    .{key = "map_set_cell_height", value = 1794382983},
    .{key = "map_get_cell_height", value = 866169185},
    .{key = "map_set_merge_rasterizer_cell_scale", value = 1794382983},
    .{key = "map_get_merge_rasterizer_cell_scale", value = 866169185},
    .{key = "map_set_use_edge_connections", value = 1265174801},
    .{key = "map_get_use_edge_connections", value = 4155700596},
    .{key = "map_set_edge_connection_margin", value = 1794382983},
    .{key = "map_get_edge_connection_margin", value = 866169185},
    .{key = "map_set_link_connection_radius", value = 1794382983},
    .{key = "map_get_link_connection_radius", value = 866169185},
    .{key = "map_get_path", value = 1187418690},
    .{key = "map_get_closest_point_to_segment", value = 3830095642},
    .{key = "map_get_closest_point", value = 2056183332},
    .{key = "map_get_closest_point_normal", value = 2056183332},
    .{key = "map_get_closest_point_owner", value = 553364610},
    .{key = "map_get_links", value = 2684255073},
    .{key = "map_get_regions", value = 2684255073},
    .{key = "map_get_agents", value = 2684255073},
    .{key = "map_get_obstacles", value = 2684255073},
    .{key = "map_force_update", value = 2722037293},
    .{key = "map_get_iteration_id", value = 2198884583},
    .{key = "map_get_random_point", value = 722801526},
    .{key = "query_path", value = 3415008901},
    .{key = "region_create", value = 529393457},
    .{key = "region_set_enabled", value = 1265174801},
    .{key = "region_get_enabled", value = 4155700596},
    .{key = "region_set_use_edge_connections", value = 1265174801},
    .{key = "region_get_use_edge_connections", value = 4155700596},
    .{key = "region_set_enter_cost", value = 1794382983},
    .{key = "region_get_enter_cost", value = 866169185},
    .{key = "region_set_travel_cost", value = 1794382983},
    .{key = "region_get_travel_cost", value = 866169185},
    .{key = "region_set_owner_id", value = 3411492887},
    .{key = "region_get_owner_id", value = 2198884583},
    .{key = "region_owns_point", value = 2360011153},
    .{key = "region_set_map", value = 395945892},
    .{key = "region_get_map", value = 3814569979},
    .{key = "region_set_navigation_layers", value = 3411492887},
    .{key = "region_get_navigation_layers", value = 2198884583},
    .{key = "region_set_transform", value = 3935195649},
    .{key = "region_get_transform", value = 1128465797},
    .{key = "region_set_navigation_mesh", value = 2764952978},
    .{key = "region_bake_navigation_mesh", value = 1401173477},
    .{key = "region_get_connections_count", value = 2198884583},
    .{key = "region_get_connection_pathway_start", value = 3440143363},
    .{key = "region_get_connection_pathway_end", value = 3440143363},
    .{key = "region_get_random_point", value = 722801526},
    .{key = "link_create", value = 529393457},
    .{key = "link_set_map", value = 395945892},
    .{key = "link_get_map", value = 3814569979},
    .{key = "link_set_enabled", value = 1265174801},
    .{key = "link_get_enabled", value = 4155700596},
    .{key = "link_set_bidirectional", value = 1265174801},
    .{key = "link_is_bidirectional", value = 4155700596},
    .{key = "link_set_navigation_layers", value = 3411492887},
    .{key = "link_get_navigation_layers", value = 2198884583},
    .{key = "link_set_start_position", value = 3227306858},
    .{key = "link_get_start_position", value = 531438156},
    .{key = "link_set_end_position", value = 3227306858},
    .{key = "link_get_end_position", value = 531438156},
    .{key = "link_set_enter_cost", value = 1794382983},
    .{key = "link_get_enter_cost", value = 866169185},
    .{key = "link_set_travel_cost", value = 1794382983},
    .{key = "link_get_travel_cost", value = 866169185},
    .{key = "link_set_owner_id", value = 3411492887},
    .{key = "link_get_owner_id", value = 2198884583},
    .{key = "agent_create", value = 529393457},
    .{key = "agent_set_avoidance_enabled", value = 1265174801},
    .{key = "agent_get_avoidance_enabled", value = 4155700596},
    .{key = "agent_set_use_3d_avoidance", value = 1265174801},
    .{key = "agent_get_use_3d_avoidance", value = 4155700596},
    .{key = "agent_set_map", value = 395945892},
    .{key = "agent_get_map", value = 3814569979},
    .{key = "agent_set_paused", value = 1265174801},
    .{key = "agent_get_paused", value = 4155700596},
    .{key = "agent_set_neighbor_distance", value = 1794382983},
    .{key = "agent_get_neighbor_distance", value = 866169185},
    .{key = "agent_set_max_neighbors", value = 3411492887},
    .{key = "agent_get_max_neighbors", value = 2198884583},
    .{key = "agent_set_time_horizon_agents", value = 1794382983},
    .{key = "agent_get_time_horizon_agents", value = 866169185},
    .{key = "agent_set_time_horizon_obstacles", value = 1794382983},
    .{key = "agent_get_time_horizon_obstacles", value = 866169185},
    .{key = "agent_set_radius", value = 1794382983},
    .{key = "agent_get_radius", value = 866169185},
    .{key = "agent_set_height", value = 1794382983},
    .{key = "agent_get_height", value = 866169185},
    .{key = "agent_set_max_speed", value = 1794382983},
    .{key = "agent_get_max_speed", value = 866169185},
    .{key = "agent_set_velocity_forced", value = 3227306858},
    .{key = "agent_set_velocity", value = 3227306858},
    .{key = "agent_get_velocity", value = 531438156},
    .{key = "agent_set_position", value = 3227306858},
    .{key = "agent_get_position", value = 531438156},
    .{key = "agent_is_map_changed", value = 4155700596},
    .{key = "agent_set_avoidance_callback", value = 3379118538},
    .{key = "agent_has_avoidance_callback", value = 4155700596},
    .{key = "agent_set_avoidance_layers", value = 3411492887},
    .{key = "agent_get_avoidance_layers", value = 2198884583},
    .{key = "agent_set_avoidance_mask", value = 3411492887},
    .{key = "agent_get_avoidance_mask", value = 2198884583},
    .{key = "agent_set_avoidance_priority", value = 1794382983},
    .{key = "agent_get_avoidance_priority", value = 866169185},
    .{key = "obstacle_create", value = 529393457},
    .{key = "obstacle_set_avoidance_enabled", value = 1265174801},
    .{key = "obstacle_get_avoidance_enabled", value = 4155700596},
    .{key = "obstacle_set_use_3d_avoidance", value = 1265174801},
    .{key = "obstacle_get_use_3d_avoidance", value = 4155700596},
    .{key = "obstacle_set_map", value = 395945892},
    .{key = "obstacle_get_map", value = 3814569979},
    .{key = "obstacle_set_paused", value = 1265174801},
    .{key = "obstacle_get_paused", value = 4155700596},
    .{key = "obstacle_set_radius", value = 1794382983},
    .{key = "obstacle_get_radius", value = 866169185},
    .{key = "obstacle_set_height", value = 1794382983},
    .{key = "obstacle_get_height", value = 866169185},
    .{key = "obstacle_set_velocity", value = 3227306858},
    .{key = "obstacle_get_velocity", value = 531438156},
    .{key = "obstacle_set_position", value = 3227306858},
    .{key = "obstacle_get_position", value = 531438156},
    .{key = "obstacle_set_vertices", value = 4030257846},
    .{key = "obstacle_get_vertices", value = 808965560},
    .{key = "obstacle_set_avoidance_layers", value = 3411492887},
    .{key = "obstacle_get_avoidance_layers", value = 2198884583},
    .{key = "parse_source_geometry_data", value = 685862123},
    .{key = "bake_from_source_geometry_data", value = 2469318639},
    .{key = "bake_from_source_geometry_data_async", value = 2469318639},
    .{key = "is_baking_navigation_mesh", value = 3142026141},
    .{key = "free_rid", value = 2722037293},
    .{key = "set_active", value = 2586408642},
    .{key = "set_debug_enabled", value = 2586408642},
    .{key = "get_debug_enabled", value = 36873697},
    .{key = "get_process_info", value = 1938440894},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_patch_margin", value = 437707142},
    .{key = "get_patch_margin", value = 1983885014},
    .{key = "set_region_rect", value = 2046264180},
    .{key = "get_region_rect", value = 1639390495},
    .{key = "set_draw_center", value = 2586408642},
    .{key = "is_draw_center_enabled", value = 36873697},
    .{key = "set_h_axis_stretch_mode", value = 3219608417},
    .{key = "get_h_axis_stretch_mode", value = 3317113799},
    .{key = "set_v_axis_stretch_mode", value = 3219608417},
    .{key = "get_v_axis_stretch_mode", value = 3317113799},
    .{key = "print_orphan_nodes", value = 3218959716},
    .{key = "add_sibling", value = 2570952461},
    .{key = "set_name", value = 83702148},
    .{key = "get_name", value = 2002593661},
    .{key = "add_child", value = 3863233950},
    .{key = "remove_child", value = 1078189570},
    .{key = "reparent", value = 3685795103},
    .{key = "get_child_count", value = 894402480},
    .{key = "get_children", value = 873284517},
    .{key = "get_child", value = 541253412},
    .{key = "has_node", value = 861721659},
    .{key = "get_node", value = 2734337346},
    .{key = "get_node_or_null", value = 2734337346},
    .{key = "get_parent", value = 3160264692},
    .{key = "find_child", value = 2008217037},
    .{key = "find_children", value = 2560337219},
    .{key = "find_parent", value = 1140089439},
    .{key = "has_node_and_resource", value = 861721659},
    .{key = "get_node_and_resource", value = 502563882},
    .{key = "is_inside_tree", value = 36873697},
    .{key = "is_ancestor_of", value = 3093956946},
    .{key = "is_greater_than", value = 3093956946},
    .{key = "get_path", value = 4075236667},
    .{key = "get_path_to", value = 498846349},
    .{key = "add_to_group", value = 3683006648},
    .{key = "remove_from_group", value = 3304788590},
    .{key = "is_in_group", value = 2619796661},
    .{key = "move_child", value = 3315886247},
    .{key = "get_groups", value = 3995934104},
    .{key = "set_owner", value = 1078189570},
    .{key = "get_owner", value = 3160264692},
    .{key = "get_index", value = 894402480},
    .{key = "print_tree", value = 3218959716},
    .{key = "print_tree_pretty", value = 3218959716},
    .{key = "get_tree_string", value = 2841200299},
    .{key = "get_tree_string_pretty", value = 2841200299},
    .{key = "set_scene_file_path", value = 83702148},
    .{key = "get_scene_file_path", value = 201670096},
    .{key = "propagate_notification", value = 1286410249},
    .{key = "propagate_call", value = 1871007965},
    .{key = "set_physics_process", value = 2586408642},
    .{key = "get_physics_process_delta_time", value = 1740695150},
    .{key = "is_physics_processing", value = 36873697},
    .{key = "get_process_delta_time", value = 1740695150},
    .{key = "set_process", value = 2586408642},
    .{key = "set_process_priority", value = 1286410249},
    .{key = "get_process_priority", value = 3905245786},
    .{key = "set_physics_process_priority", value = 1286410249},
    .{key = "get_physics_process_priority", value = 3905245786},
    .{key = "is_processing", value = 36873697},
    .{key = "set_process_input", value = 2586408642},
    .{key = "is_processing_input", value = 36873697},
    .{key = "set_process_shortcut_input", value = 2586408642},
    .{key = "is_processing_shortcut_input", value = 36873697},
    .{key = "set_process_unhandled_input", value = 2586408642},
    .{key = "is_processing_unhandled_input", value = 36873697},
    .{key = "set_process_unhandled_key_input", value = 2586408642},
    .{key = "is_processing_unhandled_key_input", value = 36873697},
    .{key = "set_process_mode", value = 1841290486},
    .{key = "get_process_mode", value = 739966102},
    .{key = "can_process", value = 36873697},
    .{key = "set_process_thread_group", value = 2275442745},
    .{key = "get_process_thread_group", value = 1866404740},
    .{key = "set_process_thread_messages", value = 1357280998},
    .{key = "get_process_thread_messages", value = 4228993612},
    .{key = "set_process_thread_group_order", value = 1286410249},
    .{key = "get_process_thread_group_order", value = 3905245786},
    .{key = "set_display_folded", value = 2586408642},
    .{key = "is_displayed_folded", value = 36873697},
    .{key = "set_process_internal", value = 2586408642},
    .{key = "is_processing_internal", value = 36873697},
    .{key = "set_physics_process_internal", value = 2586408642},
    .{key = "is_physics_processing_internal", value = 36873697},
    .{key = "set_auto_translate_mode", value = 776149714},
    .{key = "get_auto_translate_mode", value = 2498906432},
    .{key = "get_window", value = 1757182445},
    .{key = "get_last_exclusive_window", value = 1757182445},
    .{key = "get_tree", value = 2958820483},
    .{key = "create_tween", value = 3426978995},
    .{key = "duplicate", value = 3511555459},
    .{key = "replace_by", value = 2570952461},
    .{key = "set_scene_instance_load_placeholder", value = 2586408642},
    .{key = "get_scene_instance_load_placeholder", value = 36873697},
    .{key = "set_editable_instance", value = 2731852923},
    .{key = "is_editable_instance", value = 3093956946},
    .{key = "get_viewport", value = 3596683776},
    .{key = "queue_free", value = 3218959716},
    .{key = "request_ready", value = 3218959716},
    .{key = "is_node_ready", value = 36873697},
    .{key = "set_multiplayer_authority", value = 972357352},
    .{key = "get_multiplayer_authority", value = 3905245786},
    .{key = "is_multiplayer_authority", value = 36873697},
    .{key = "get_multiplayer", value = 406750475},
    .{key = "rpc_config", value = 3776071444},
    .{key = "set_editor_description", value = 83702148},
    .{key = "get_editor_description", value = 201670096},
    .{key = "set_unique_name_in_owner", value = 2586408642},
    .{key = "is_unique_name_in_owner", value = 36873697},
    .{key = "atr", value = 3344478075},
    .{key = "atr_n", value = 259354841},
    .{key = "rpc", value = 4047867050},
    .{key = "rpc_id", value = 361499283},
    .{key = "update_configuration_warnings", value = 3218959716},
    .{key = "call_deferred_thread_group", value = 3400424181},
    .{key = "set_deferred_thread_group", value = 3776071444},
    .{key = "notify_deferred_thread_group", value = 1286410249},
    .{key = "call_thread_safe", value = 3400424181},
    .{key = "set_thread_safe", value = 3776071444},
    .{key = "notify_thread_safe", value = 1286410249},
    .{key = "set_position", value = 743155724},
    .{key = "set_rotation", value = 373806689},
    .{key = "set_rotation_degrees", value = 373806689},
    .{key = "set_skew", value = 373806689},
    .{key = "set_scale", value = 743155724},
    .{key = "get_position", value = 3341600327},
    .{key = "get_rotation", value = 1740695150},
    .{key = "get_rotation_degrees", value = 1740695150},
    .{key = "get_skew", value = 1740695150},
    .{key = "get_scale", value = 3341600327},
    .{key = "rotate", value = 373806689},
    .{key = "move_local_x", value = 2087892650},
    .{key = "move_local_y", value = 2087892650},
    .{key = "translate", value = 743155724},
    .{key = "global_translate", value = 743155724},
    .{key = "apply_scale", value = 743155724},
    .{key = "set_global_position", value = 743155724},
    .{key = "get_global_position", value = 3341600327},
    .{key = "set_global_rotation", value = 373806689},
    .{key = "set_global_rotation_degrees", value = 373806689},
    .{key = "get_global_rotation", value = 1740695150},
    .{key = "get_global_rotation_degrees", value = 1740695150},
    .{key = "set_global_skew", value = 373806689},
    .{key = "get_global_skew", value = 1740695150},
    .{key = "set_global_scale", value = 743155724},
    .{key = "get_global_scale", value = 3341600327},
    .{key = "set_transform", value = 2761652528},
    .{key = "set_global_transform", value = 2761652528},
    .{key = "look_at", value = 743155724},
    .{key = "get_angle_to", value = 2276447920},
    .{key = "to_local", value = 2656412154},
    .{key = "to_global", value = 2656412154},
    .{key = "get_relative_transform_to_parent", value = 904556875},
    .{key = "set_transform", value = 2952846383},
    .{key = "get_transform", value = 3229777777},
    .{key = "set_position", value = 3460891852},
    .{key = "get_position", value = 3360562783},
    .{key = "set_rotation", value = 3460891852},
    .{key = "get_rotation", value = 3360562783},
    .{key = "set_rotation_degrees", value = 3460891852},
    .{key = "get_rotation_degrees", value = 3360562783},
    .{key = "set_rotation_order", value = 1820889989},
    .{key = "get_rotation_order", value = 916939469},
    .{key = "set_rotation_edit_mode", value = 141483330},
    .{key = "get_rotation_edit_mode", value = 1572188370},
    .{key = "set_scale", value = 3460891852},
    .{key = "get_scale", value = 3360562783},
    .{key = "set_quaternion", value = 1727505552},
    .{key = "get_quaternion", value = 1222331677},
    .{key = "set_basis", value = 1055510324},
    .{key = "get_basis", value = 2716978435},
    .{key = "set_global_transform", value = 2952846383},
    .{key = "get_global_transform", value = 3229777777},
    .{key = "set_global_position", value = 3460891852},
    .{key = "get_global_position", value = 3360562783},
    .{key = "set_global_basis", value = 1055510324},
    .{key = "get_global_basis", value = 2716978435},
    .{key = "set_global_rotation", value = 3460891852},
    .{key = "get_global_rotation", value = 3360562783},
    .{key = "set_global_rotation_degrees", value = 3460891852},
    .{key = "get_global_rotation_degrees", value = 3360562783},
    .{key = "get_parent_node_3d", value = 151077316},
    .{key = "set_ignore_transform_notification", value = 2586408642},
    .{key = "set_as_top_level", value = 2586408642},
    .{key = "is_set_as_top_level", value = 36873697},
    .{key = "set_disable_scale", value = 2586408642},
    .{key = "is_scale_disabled", value = 36873697},
    .{key = "get_world_3d", value = 317588385},
    .{key = "force_update_transform", value = 3218959716},
    .{key = "set_visibility_parent", value = 1348162250},
    .{key = "get_visibility_parent", value = 4075236667},
    .{key = "update_gizmos", value = 3218959716},
    .{key = "add_gizmo", value = 1544533845},
    .{key = "get_gizmos", value = 3995934104},
    .{key = "clear_gizmos", value = 3218959716},
    .{key = "set_subgizmo_selection", value = 3317607635},
    .{key = "clear_subgizmo_selection", value = 3218959716},
    .{key = "set_visible", value = 2586408642},
    .{key = "is_visible", value = 36873697},
    .{key = "is_visible_in_tree", value = 36873697},
    .{key = "show", value = 3218959716},
    .{key = "hide", value = 3218959716},
    .{key = "set_notify_local_transform", value = 2586408642},
    .{key = "is_local_transform_notification_enabled", value = 36873697},
    .{key = "set_notify_transform", value = 2586408642},
    .{key = "is_transform_notification_enabled", value = 36873697},
    .{key = "rotate", value = 3436291937},
    .{key = "global_rotate", value = 3436291937},
    .{key = "global_scale", value = 3460891852},
    .{key = "global_translate", value = 3460891852},
    .{key = "rotate_object_local", value = 3436291937},
    .{key = "scale_object_local", value = 3460891852},
    .{key = "translate_object_local", value = 3460891852},
    .{key = "rotate_x", value = 373806689},
    .{key = "rotate_y", value = 373806689},
    .{key = "rotate_z", value = 373806689},
    .{key = "translate", value = 3460891852},
    .{key = "orthonormalize", value = 3218959716},
    .{key = "set_identity", value = 3218959716},
    .{key = "look_at", value = 2882425029},
    .{key = "look_at_from_position", value = 2086826090},
    .{key = "to_local", value = 192990374},
    .{key = "to_global", value = 192990374},
    .{key = "get_noise_1d", value = 3919130443},
    .{key = "get_noise_2d", value = 2753205203},
    .{key = "get_noise_2dv", value = 2276447920},
    .{key = "get_noise_3d", value = 973811851},
    .{key = "get_noise_3dv", value = 1109078154},
    .{key = "get_image", value = 3180683109},
    .{key = "get_seamless_image", value = 2770743602},
    .{key = "get_image_3d", value = 3977814329},
    .{key = "get_seamless_image_3d", value = 451006340},
    .{key = "set_width", value = 1286410249},
    .{key = "set_height", value = 1286410249},
    .{key = "set_invert", value = 2586408642},
    .{key = "get_invert", value = 36873697},
    .{key = "set_in_3d_space", value = 2586408642},
    .{key = "is_in_3d_space", value = 36873697},
    .{key = "set_generate_mipmaps", value = 2586408642},
    .{key = "is_generating_mipmaps", value = 36873697},
    .{key = "set_seamless", value = 2586408642},
    .{key = "get_seamless", value = 2240911060},
    .{key = "set_seamless_blend_skirt", value = 373806689},
    .{key = "get_seamless_blend_skirt", value = 191475506},
    .{key = "set_as_normal_map", value = 2586408642},
    .{key = "is_normal_map", value = 2240911060},
    .{key = "set_bump_strength", value = 373806689},
    .{key = "get_bump_strength", value = 191475506},
    .{key = "set_normalize", value = 2586408642},
    .{key = "is_normalized", value = 36873697},
    .{key = "set_color_ramp", value = 2756054477},
    .{key = "get_color_ramp", value = 132272999},
    .{key = "set_noise", value = 4135492439},
    .{key = "get_noise", value = 185851837},
    .{key = "set_width", value = 1286410249},
    .{key = "set_height", value = 1286410249},
    .{key = "set_depth", value = 1286410249},
    .{key = "set_invert", value = 2586408642},
    .{key = "get_invert", value = 36873697},
    .{key = "set_seamless", value = 2586408642},
    .{key = "get_seamless", value = 2240911060},
    .{key = "set_seamless_blend_skirt", value = 373806689},
    .{key = "get_seamless_blend_skirt", value = 191475506},
    .{key = "set_normalize", value = 2586408642},
    .{key = "is_normalized", value = 36873697},
    .{key = "set_color_ramp", value = 2756054477},
    .{key = "get_color_ramp", value = 132272999},
    .{key = "set_noise", value = 4135492439},
    .{key = "get_noise", value = 185851837},
    .{key = "get_connected_midi_inputs", value = 2981934095},
    .{key = "open_midi_inputs", value = 3218959716},
    .{key = "close_midi_inputs", value = 3218959716},
    .{key = "alert", value = 1783970740},
    .{key = "crash", value = 83702148},
    .{key = "set_low_processor_usage_mode", value = 2586408642},
    .{key = "is_in_low_processor_usage_mode", value = 36873697},
    .{key = "set_low_processor_usage_mode_sleep_usec", value = 1286410249},
    .{key = "get_low_processor_usage_mode_sleep_usec", value = 3905245786},
    .{key = "set_delta_smoothing", value = 2586408642},
    .{key = "is_delta_smoothing_enabled", value = 36873697},
    .{key = "get_processor_count", value = 3905245786},
    .{key = "get_processor_name", value = 201670096},
    .{key = "get_system_fonts", value = 1139954409},
    .{key = "get_system_font_path", value = 626580860},
    .{key = "get_system_font_path_for_text", value = 197317981},
    .{key = "get_executable_path", value = 201670096},
    .{key = "read_string_from_stdin", value = 2841200299},
    .{key = "execute", value = 1488299882},
    .{key = "create_process", value = 2903767230},
    .{key = "create_instance", value = 1080601263},
    .{key = "kill", value = 844576869},
    .{key = "shell_open", value = 166001499},
    .{key = "shell_show_in_file_manager", value = 3565188097},
    .{key = "is_process_running", value = 1116898809},
    .{key = "get_process_id", value = 3905245786},
    .{key = "has_environment", value = 3927539163},
    .{key = "get_environment", value = 3135753539},
    .{key = "set_environment", value = 3605043004},
    .{key = "unset_environment", value = 3089850668},
    .{key = "get_name", value = 201670096},
    .{key = "get_distribution_name", value = 201670096},
    .{key = "get_version", value = 201670096},
    .{key = "get_cmdline_args", value = 2981934095},
    .{key = "get_cmdline_user_args", value = 2981934095},
    .{key = "get_video_adapter_driver_info", value = 1139954409},
    .{key = "set_restart_on_exit", value = 3331453935},
    .{key = "is_restart_on_exit_set", value = 36873697},
    .{key = "get_restart_on_exit_arguments", value = 1139954409},
    .{key = "delay_usec", value = 998575451},
    .{key = "delay_msec", value = 998575451},
    .{key = "get_locale", value = 201670096},
    .{key = "get_locale_language", value = 201670096},
    .{key = "get_model_name", value = 201670096},
    .{key = "is_userfs_persistent", value = 36873697},
    .{key = "is_stdout_verbose", value = 36873697},
    .{key = "is_debug_build", value = 36873697},
    .{key = "get_static_memory_usage", value = 3905245786},
    .{key = "get_static_memory_peak_usage", value = 3905245786},
    .{key = "get_memory_info", value = 3102165223},
    .{key = "move_to_trash", value = 2113323047},
    .{key = "get_user_data_dir", value = 201670096},
    .{key = "get_system_dir", value = 3073895123},
    .{key = "get_config_dir", value = 201670096},
    .{key = "get_data_dir", value = 201670096},
    .{key = "get_cache_dir", value = 201670096},
    .{key = "get_unique_id", value = 201670096},
    .{key = "get_keycode_string", value = 2261993717},
    .{key = "is_keycode_unicode", value = 1116898809},
    .{key = "find_keycode_from_string", value = 1084858572},
    .{key = "set_use_file_access_save_and_swap", value = 2586408642},
    .{key = "set_thread_name", value = 166001499},
    .{key = "get_thread_caller_id", value = 3905245786},
    .{key = "get_main_thread_id", value = 3905245786},
    .{key = "has_feature", value = 3927539163},
    .{key = "is_sandboxed", value = 36873697},
    .{key = "request_permission", value = 2323990056},
    .{key = "request_permissions", value = 2240911060},
    .{key = "get_granted_permissions", value = 1139954409},
    .{key = "revoke_granted_permissions", value = 3218959716},
    .{key = "get_class", value = 201670096},
    .{key = "is_class", value = 3927539163},
    .{key = "set", value = 3776071444},
    .{key = "get", value = 2760726917},
    .{key = "set_indexed", value = 3500910842},
    .{key = "get_indexed", value = 4006125091},
    .{key = "get_property_list", value = 3995934104},
    .{key = "get_method_list", value = 3995934104},
    .{key = "property_can_revert", value = 2619796661},
    .{key = "property_get_revert", value = 2760726917},
    .{key = "notification", value = 4023243586},
    .{key = "to_string", value = 2841200299},
    .{key = "get_instance_id", value = 3905245786},
    .{key = "set_script", value = 1114965689},
    .{key = "get_script", value = 1214101251},
    .{key = "set_meta", value = 3776071444},
    .{key = "remove_meta", value = 3304788590},
    .{key = "get_meta", value = 3990617847},
    .{key = "has_meta", value = 2619796661},
    .{key = "get_meta_list", value = 3995934104},
    .{key = "add_user_signal", value = 85656714},
    .{key = "has_user_signal", value = 2619796661},
    .{key = "emit_signal", value = 4047867050},
    .{key = "call", value = 3400424181},
    .{key = "call_deferred", value = 3400424181},
    .{key = "set_deferred", value = 3776071444},
    .{key = "callv", value = 1260104456},
    .{key = "has_method", value = 2619796661},
    .{key = "get_method_argument_count", value = 2458036349},
    .{key = "has_signal", value = 2619796661},
    .{key = "get_signal_list", value = 3995934104},
    .{key = "get_signal_connection_list", value = 3147814860},
    .{key = "get_incoming_connections", value = 3995934104},
    .{key = "connect", value = 1518946055},
    .{key = "disconnect", value = 1874754934},
    .{key = "is_connected", value = 768136979},
    .{key = "set_block_signals", value = 2586408642},
    .{key = "is_blocking_signals", value = 36873697},
    .{key = "notify_property_list_changed", value = 3218959716},
    .{key = "set_message_translation", value = 2586408642},
    .{key = "can_translate_messages", value = 36873697},
    .{key = "tr", value = 2475554935},
    .{key = "tr_n", value = 4021311862},
    .{key = "is_queued_for_deletion", value = 36873697},
    .{key = "cancel_free", value = 3218959716},
    .{key = "get_vertices", value = 497664490},
    .{key = "get_indices", value = 1930428628},
    .{key = "set_bake_mask", value = 1286410249},
    .{key = "get_bake_mask", value = 3905245786},
    .{key = "set_bake_mask_value", value = 300928843},
    .{key = "get_bake_mask_value", value = 1116898809},
    .{key = "set_bake_simplification_distance", value = 373806689},
    .{key = "get_bake_simplification_distance", value = 1740695150},
    .{key = "set_occluder", value = 1664878165},
    .{key = "get_occluder", value = 1696836198},
    .{key = "set_closed", value = 2586408642},
    .{key = "is_closed", value = 36873697},
    .{key = "set_cull_mode", value = 3500863002},
    .{key = "get_cull_mode", value = 33931036},
    .{key = "set_polygon", value = 1509147220},
    .{key = "get_polygon", value = 2961356807},
    .{key = "set_packet_data", value = 381264803},
    .{key = "get_packet_data", value = 3995934104},
    .{key = "set_packet_granule_positions", value = 3709968205},
    .{key = "get_packet_granule_positions", value = 235988956},
    .{key = "set_sampling_rate", value = 373806689},
    .{key = "get_sampling_rate", value = 1740695150},
    .{key = "get_length", value = 1740695150},
    .{key = "set_shadow_mode", value = 121862228},
    .{key = "get_shadow_mode", value = 4181586331},
    .{key = "get_instance", value = 2455072627},
    .{key = "get_system_id", value = 2455072627},
    .{key = "get_session", value = 2455072627},
    .{key = "transform_from_pose", value = 3255299855},
    .{key = "xr_result", value = 3886436197},
    .{key = "openxr_is_enabled", value = 2703660260},
    .{key = "get_instance_proc_addr", value = 1597066294},
    .{key = "get_error_string", value = 990163283},
    .{key = "get_swapchain_format_name", value = 990163283},
    .{key = "is_initialized", value = 2240911060},
    .{key = "is_running", value = 2240911060},
    .{key = "get_play_space", value = 2455072627},
    .{key = "get_next_frame_time", value = 2455072627},
    .{key = "can_render", value = 2240911060},
    .{key = "get_hand_tracker", value = 3744713108},
    .{key = "register_composition_layer_provider", value = 1997997368},
    .{key = "unregister_composition_layer_provider", value = 1997997368},
    .{key = "set_emulate_environment_blend_mode_alpha_blend", value = 2586408642},
    .{key = "is_environment_blend_mode_alpha_supported", value = 1579290861},
    .{key = "set_localized_name", value = 83702148},
    .{key = "get_localized_name", value = 201670096},
    .{key = "set_action_type", value = 1675238366},
    .{key = "get_action_type", value = 3536542431},
    .{key = "set_toplevel_paths", value = 4015028928},
    .{key = "get_toplevel_paths", value = 1139954409},
    .{key = "set_action_sets", value = 381264803},
    .{key = "get_action_sets", value = 3995934104},
    .{key = "get_action_set_count", value = 3905245786},
    .{key = "find_action_set", value = 1888809267},
    .{key = "get_action_set", value = 1789580336},
    .{key = "add_action_set", value = 2093310581},
    .{key = "remove_action_set", value = 2093310581},
    .{key = "set_interaction_profiles", value = 381264803},
    .{key = "get_interaction_profiles", value = 3995934104},
    .{key = "get_interaction_profile_count", value = 3905245786},
    .{key = "find_interaction_profile", value = 3095875538},
    .{key = "get_interaction_profile", value = 2546151210},
    .{key = "add_interaction_profile", value = 2697953512},
    .{key = "remove_interaction_profile", value = 2697953512},
    .{key = "create_default_action_sets", value = 3218959716},
    .{key = "set_localized_name", value = 83702148},
    .{key = "get_localized_name", value = 201670096},
    .{key = "set_priority", value = 1286410249},
    .{key = "get_priority", value = 3905245786},
    .{key = "get_action_count", value = 3905245786},
    .{key = "set_actions", value = 381264803},
    .{key = "get_actions", value = 3995934104},
    .{key = "add_action", value = 349361333},
    .{key = "remove_action", value = 349361333},
    .{key = "get_openxr_api", value = 1637791613},
    .{key = "register_extension_wrapper", value = 3218959716},
    .{key = "set_hand", value = 1849328560},
    .{key = "get_hand", value = 2850644561},
    .{key = "set_hand_skeleton", value = 1348162250},
    .{key = "get_hand_skeleton", value = 4075236667},
    .{key = "set_motion_range", value = 3326516003},
    .{key = "get_motion_range", value = 2191822314},
    .{key = "set_skeleton_rig", value = 1528072213},
    .{key = "get_skeleton_rig", value = 968409338},
    .{key = "set_bone_update", value = 3144625444},
    .{key = "get_bone_update", value = 1310695248},
    .{key = "set_action", value = 349361333},
    .{key = "get_action", value = 4072409085},
    .{key = "get_path_count", value = 3905245786},
    .{key = "set_paths", value = 4015028928},
    .{key = "get_paths", value = 1139954409},
    .{key = "has_path", value = 3927539163},
    .{key = "add_path", value = 83702148},
    .{key = "remove_path", value = 83702148},
    .{key = "set_interaction_profile_path", value = 83702148},
    .{key = "get_interaction_profile_path", value = 201670096},
    .{key = "get_binding_count", value = 3905245786},
    .{key = "get_binding", value = 3934429652},
    .{key = "set_bindings", value = 381264803},
    .{key = "get_bindings", value = 3995934104},
    .{key = "register_profile_rename", value = 3186203200},
    .{key = "register_top_level_path", value = 254767734},
    .{key = "register_interaction_profile", value = 254767734},
    .{key = "register_io_path", value = 3443511926},
    .{key = "get_display_refresh_rate", value = 1740695150},
    .{key = "set_display_refresh_rate", value = 373806689},
    .{key = "get_render_target_size_multiplier", value = 1740695150},
    .{key = "set_render_target_size_multiplier", value = 373806689},
    .{key = "is_foveation_supported", value = 36873697},
    .{key = "get_foveation_level", value = 3905245786},
    .{key = "set_foveation_level", value = 1286410249},
    .{key = "get_foveation_dynamic", value = 36873697},
    .{key = "set_foveation_dynamic", value = 2586408642},
    .{key = "is_action_set_active", value = 3927539163},
    .{key = "set_action_set_active", value = 2678287736},
    .{key = "get_action_sets", value = 3995934104},
    .{key = "get_available_display_refresh_rates", value = 3995934104},
    .{key = "set_motion_range", value = 855158159},
    .{key = "get_motion_range", value = 3955838114},
    .{key = "get_hand_tracking_source", value = 4092421202},
    .{key = "get_hand_joint_flags", value = 720567706},
    .{key = "get_hand_joint_rotation", value = 1974618321},
    .{key = "get_hand_joint_position", value = 3529194242},
    .{key = "get_hand_joint_radius", value = 901522724},
    .{key = "get_hand_joint_linear_velocity", value = 3529194242},
    .{key = "get_hand_joint_angular_velocity", value = 3529194242},
    .{key = "is_hand_tracking_supported", value = 2240911060},
    .{key = "is_eye_gaze_interaction_supported", value = 2240911060},
    .{key = "generate", value = 1466479800},
    .{key = "add_item", value = 2697778442},
    .{key = "add_icon_item", value = 3781678508},
    .{key = "set_item_text", value = 501894301},
    .{key = "set_item_icon", value = 666127730},
    .{key = "set_item_disabled", value = 300928843},
    .{key = "set_item_id", value = 3937882851},
    .{key = "set_item_metadata", value = 2152698145},
    .{key = "set_item_tooltip", value = 501894301},
    .{key = "get_item_text", value = 844755477},
    .{key = "get_item_icon", value = 3536238170},
    .{key = "get_item_id", value = 923996154},
    .{key = "get_item_index", value = 923996154},
    .{key = "get_item_metadata", value = 4227898402},
    .{key = "get_item_tooltip", value = 844755477},
    .{key = "is_item_disabled", value = 1116898809},
    .{key = "is_item_separator", value = 1116898809},
    .{key = "add_separator", value = 3005725572},
    .{key = "clear", value = 3218959716},
    .{key = "select", value = 1286410249},
    .{key = "get_selected", value = 3905245786},
    .{key = "get_selected_id", value = 3905245786},
    .{key = "get_selected_metadata", value = 1214101251},
    .{key = "remove_item", value = 1286410249},
    .{key = "get_popup", value = 229722558},
    .{key = "show_popup", value = 3218959716},
    .{key = "set_item_count", value = 1286410249},
    .{key = "get_item_count", value = 3905245786},
    .{key = "has_selectable_items", value = 36873697},
    .{key = "get_selectable_item", value = 894402480},
    .{key = "set_fit_to_longest_item", value = 2586408642},
    .{key = "is_fit_to_longest_item", value = 36873697},
    .{key = "set_allow_reselect", value = 2586408642},
    .{key = "get_allow_reselect", value = 36873697},
    .{key = "set_disable_shortcuts", value = 2586408642},
    .{key = "pck_start", value = 508410629},
    .{key = "add_file", value = 2215643711},
    .{key = "flush", value = 1633102583},
    .{key = "pack", value = 966674026},
    .{key = "size", value = 3905245786},
    .{key = "size", value = 3905245786},
    .{key = "pack", value = 2584678054},
    .{key = "instantiate", value = 2628778455},
    .{key = "can_instantiate", value = 36873697},
    .{key = "get_state", value = 3479783971},
    .{key = "get_var", value = 3442865206},
    .{key = "put_var", value = 2436251611},
    .{key = "get_packet", value = 2115431945},
    .{key = "put_packet", value = 680677267},
    .{key = "get_packet_error", value = 3185525595},
    .{key = "get_available_packet_count", value = 3905245786},
    .{key = "get_encode_buffer_max_size", value = 3905245786},
    .{key = "set_encode_buffer_max_size", value = 1286410249},
    .{key = "poll", value = 3218959716},
    .{key = "connect_to_peer", value = 2880188099},
    .{key = "get_status", value = 3248654679},
    .{key = "disconnect_from_peer", value = 3218959716},
    .{key = "set_stream_peer", value = 3281897016},
    .{key = "get_stream_peer", value = 2741655269},
    .{key = "set_input_buffer_max_size", value = 1286410249},
    .{key = "set_output_buffer_max_size", value = 1286410249},
    .{key = "get_input_buffer_max_size", value = 3905245786},
    .{key = "get_output_buffer_max_size", value = 3905245786},
    .{key = "bind", value = 4051239242},
    .{key = "close", value = 3218959716},
    .{key = "wait", value = 166280745},
    .{key = "is_bound", value = 36873697},
    .{key = "connect_to_host", value = 993915709},
    .{key = "is_socket_connected", value = 36873697},
    .{key = "get_packet_ip", value = 201670096},
    .{key = "get_packet_port", value = 3905245786},
    .{key = "get_local_port", value = 3905245786},
    .{key = "set_dest_address", value = 993915709},
    .{key = "set_broadcast_enabled", value = 2586408642},
    .{key = "join_multicast_group", value = 852856452},
    .{key = "leave_multicast_group", value = 852856452},
    .{key = "set_panorama", value = 4051416890},
    .{key = "get_panorama", value = 3635182373},
    .{key = "set_filtering_enabled", value = 2586408642},
    .{key = "is_filtering_enabled", value = 36873697},
    .{key = "set_energy_multiplier", value = 373806689},
    .{key = "get_energy_multiplier", value = 1740695150},
    .{key = "set_scroll_scale", value = 743155724},
    .{key = "get_scroll_scale", value = 3341600327},
    .{key = "set_repeat_size", value = 743155724},
    .{key = "get_repeat_size", value = 3341600327},
    .{key = "set_repeat_times", value = 1286410249},
    .{key = "get_repeat_times", value = 3905245786},
    .{key = "set_autoscroll", value = 743155724},
    .{key = "get_autoscroll", value = 3341600327},
    .{key = "set_scroll_offset", value = 743155724},
    .{key = "get_scroll_offset", value = 3341600327},
    .{key = "set_screen_offset", value = 743155724},
    .{key = "get_screen_offset", value = 3341600327},
    .{key = "set_limit_begin", value = 743155724},
    .{key = "get_limit_begin", value = 3341600327},
    .{key = "set_limit_end", value = 743155724},
    .{key = "get_limit_end", value = 3341600327},
    .{key = "set_follow_viewport", value = 2586408642},
    .{key = "get_follow_viewport", value = 2240911060},
    .{key = "set_ignore_camera_scroll", value = 2586408642},
    .{key = "is_ignore_camera_scroll", value = 2240911060},
    .{key = "set_scroll_offset", value = 743155724},
    .{key = "get_scroll_offset", value = 3341600327},
    .{key = "set_scroll_base_offset", value = 743155724},
    .{key = "get_scroll_base_offset", value = 3341600327},
    .{key = "set_scroll_base_scale", value = 743155724},
    .{key = "get_scroll_base_scale", value = 3341600327},
    .{key = "set_limit_begin", value = 743155724},
    .{key = "get_limit_begin", value = 3341600327},
    .{key = "set_limit_end", value = 743155724},
    .{key = "get_limit_end", value = 3341600327},
    .{key = "set_ignore_camera_zoom", value = 2586408642},
    .{key = "is_ignore_camera_zoom", value = 2240911060},
    .{key = "set_motion_scale", value = 743155724},
    .{key = "get_motion_scale", value = 3341600327},
    .{key = "set_motion_offset", value = 743155724},
    .{key = "get_motion_offset", value = 3341600327},
    .{key = "set_mirroring", value = 743155724},
    .{key = "get_mirroring", value = 3341600327},
    .{key = "set_direction", value = 3460891852},
    .{key = "get_direction", value = 3360562783},
    .{key = "set_inherit_velocity_ratio", value = 373806689},
    .{key = "get_inherit_velocity_ratio", value = 191475506},
    .{key = "set_spread", value = 373806689},
    .{key = "get_spread", value = 1740695150},
    .{key = "set_flatness", value = 373806689},
    .{key = "get_flatness", value = 1740695150},
    .{key = "set_param", value = 676779352},
    .{key = "get_param", value = 2623708480},
    .{key = "set_param_min", value = 2295964248},
    .{key = "get_param_min", value = 3903786503},
    .{key = "set_param_max", value = 2295964248},
    .{key = "get_param_max", value = 3903786503},
    .{key = "set_param_texture", value = 526976089},
    .{key = "get_param_texture", value = 3489372978},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_color_ramp", value = 4051416890},
    .{key = "get_color_ramp", value = 3635182373},
    .{key = "set_alpha_curve", value = 4051416890},
    .{key = "get_alpha_curve", value = 3635182373},
    .{key = "set_emission_curve", value = 4051416890},
    .{key = "get_emission_curve", value = 3635182373},
    .{key = "set_color_initial_ramp", value = 4051416890},
    .{key = "get_color_initial_ramp", value = 3635182373},
    .{key = "set_velocity_limit_curve", value = 4051416890},
    .{key = "get_velocity_limit_curve", value = 3635182373},
    .{key = "set_particle_flag", value = 1711815571},
    .{key = "get_particle_flag", value = 3895316907},
    .{key = "set_velocity_pivot", value = 3460891852},
    .{key = "get_velocity_pivot", value = 3783033775},
    .{key = "set_emission_shape", value = 461501442},
    .{key = "get_emission_shape", value = 3719733018},
    .{key = "set_emission_sphere_radius", value = 373806689},
    .{key = "get_emission_sphere_radius", value = 1740695150},
    .{key = "set_emission_box_extents", value = 3460891852},
    .{key = "get_emission_box_extents", value = 3360562783},
    .{key = "set_emission_point_texture", value = 4051416890},
    .{key = "get_emission_point_texture", value = 3635182373},
    .{key = "set_emission_normal_texture", value = 4051416890},
    .{key = "get_emission_normal_texture", value = 3635182373},
    .{key = "set_emission_color_texture", value = 4051416890},
    .{key = "get_emission_color_texture", value = 3635182373},
    .{key = "set_emission_point_count", value = 1286410249},
    .{key = "get_emission_point_count", value = 3905245786},
    .{key = "set_emission_ring_axis", value = 3460891852},
    .{key = "get_emission_ring_axis", value = 3360562783},
    .{key = "set_emission_ring_height", value = 373806689},
    .{key = "get_emission_ring_height", value = 1740695150},
    .{key = "set_emission_ring_radius", value = 373806689},
    .{key = "get_emission_ring_radius", value = 1740695150},
    .{key = "set_emission_ring_inner_radius", value = 373806689},
    .{key = "get_emission_ring_inner_radius", value = 1740695150},
    .{key = "set_emission_shape_offset", value = 3460891852},
    .{key = "get_emission_shape_offset", value = 3360562783},
    .{key = "set_emission_shape_scale", value = 3460891852},
    .{key = "get_emission_shape_scale", value = 3360562783},
    .{key = "get_turbulence_enabled", value = 36873697},
    .{key = "set_turbulence_enabled", value = 2586408642},
    .{key = "get_turbulence_noise_strength", value = 1740695150},
    .{key = "set_turbulence_noise_strength", value = 373806689},
    .{key = "get_turbulence_noise_scale", value = 1740695150},
    .{key = "set_turbulence_noise_scale", value = 373806689},
    .{key = "get_turbulence_noise_speed_random", value = 1740695150},
    .{key = "set_turbulence_noise_speed_random", value = 373806689},
    .{key = "get_turbulence_noise_speed", value = 3360562783},
    .{key = "set_turbulence_noise_speed", value = 3460891852},
    .{key = "get_gravity", value = 3360562783},
    .{key = "set_gravity", value = 3460891852},
    .{key = "set_lifetime_randomness", value = 373806689},
    .{key = "get_lifetime_randomness", value = 1740695150},
    .{key = "get_sub_emitter_mode", value = 2399052877},
    .{key = "set_sub_emitter_mode", value = 2161806672},
    .{key = "get_sub_emitter_frequency", value = 1740695150},
    .{key = "set_sub_emitter_frequency", value = 373806689},
    .{key = "get_sub_emitter_amount_at_end", value = 3905245786},
    .{key = "set_sub_emitter_amount_at_end", value = 1286410249},
    .{key = "get_sub_emitter_amount_at_collision", value = 3905245786},
    .{key = "set_sub_emitter_amount_at_collision", value = 1286410249},
    .{key = "get_sub_emitter_keep_velocity", value = 36873697},
    .{key = "set_sub_emitter_keep_velocity", value = 2586408642},
    .{key = "set_attractor_interaction_enabled", value = 2586408642},
    .{key = "is_attractor_interaction_enabled", value = 36873697},
    .{key = "set_collision_mode", value = 653804659},
    .{key = "get_collision_mode", value = 139371864},
    .{key = "set_collision_use_scale", value = 2586408642},
    .{key = "is_collision_using_scale", value = 36873697},
    .{key = "set_collision_friction", value = 373806689},
    .{key = "get_collision_friction", value = 1740695150},
    .{key = "set_collision_bounce", value = 373806689},
    .{key = "get_collision_bounce", value = 1740695150},
    .{key = "set_curve", value = 659985499},
    .{key = "get_curve", value = 660369445},
    .{key = "set_curve", value = 408955118},
    .{key = "get_curve", value = 4244715212},
    .{key = "set_progress", value = 373806689},
    .{key = "get_progress", value = 1740695150},
    .{key = "set_h_offset", value = 373806689},
    .{key = "get_h_offset", value = 1740695150},
    .{key = "set_v_offset", value = 373806689},
    .{key = "get_v_offset", value = 1740695150},
    .{key = "set_progress_ratio", value = 373806689},
    .{key = "get_progress_ratio", value = 1740695150},
    .{key = "set_rotates", value = 2586408642},
    .{key = "is_rotating", value = 36873697},
    .{key = "set_cubic_interpolation", value = 2586408642},
    .{key = "get_cubic_interpolation", value = 36873697},
    .{key = "set_loop", value = 2586408642},
    .{key = "has_loop", value = 36873697},
    .{key = "set_progress", value = 373806689},
    .{key = "get_progress", value = 1740695150},
    .{key = "set_h_offset", value = 373806689},
    .{key = "get_h_offset", value = 1740695150},
    .{key = "set_v_offset", value = 373806689},
    .{key = "get_v_offset", value = 1740695150},
    .{key = "set_progress_ratio", value = 373806689},
    .{key = "get_progress_ratio", value = 1740695150},
    .{key = "set_rotation_mode", value = 1640311967},
    .{key = "get_rotation_mode", value = 3814010545},
    .{key = "set_cubic_interpolation", value = 2586408642},
    .{key = "get_cubic_interpolation", value = 36873697},
    .{key = "set_use_model_front", value = 2586408642},
    .{key = "is_using_model_front", value = 36873697},
    .{key = "set_loop", value = 2586408642},
    .{key = "has_loop", value = 36873697},
    .{key = "set_tilt_enabled", value = 2586408642},
    .{key = "is_tilt_enabled", value = 36873697},
    .{key = "correct_posture", value = 2686588690},
    .{key = "get_monitor", value = 1943275655},
    .{key = "add_custom_monitor", value = 4099036814},
    .{key = "remove_custom_monitor", value = 3304788590},
    .{key = "has_custom_monitor", value = 2041966384},
    .{key = "get_custom_monitor", value = 2138907829},
    .{key = "get_monitor_modification_time", value = 2455072627},
    .{key = "get_custom_monitor_names", value = 2915620761},
    .{key = "get_joint", value = 3582132112},
    .{key = "get_auto_configure_joint", value = 36873697},
    .{key = "set_auto_configure_joint", value = 2586408642},
    .{key = "set_simulate_physics", value = 2586408642},
    .{key = "get_simulate_physics", value = 36873697},
    .{key = "is_simulating_physics", value = 36873697},
    .{key = "set_bone2d_nodepath", value = 1348162250},
    .{key = "get_bone2d_nodepath", value = 4075236667},
    .{key = "set_bone2d_index", value = 1286410249},
    .{key = "get_bone2d_index", value = 3905245786},
    .{key = "set_follow_bone_when_simulating", value = 2586408642},
    .{key = "get_follow_bone_when_simulating", value = 36873697},
    .{key = "apply_central_impulse", value = 3460891852},
    .{key = "apply_impulse", value = 2754756483},
    .{key = "set_joint_type", value = 2289552604},
    .{key = "get_joint_type", value = 931347320},
    .{key = "set_joint_offset", value = 2952846383},
    .{key = "get_joint_offset", value = 3229777777},
    .{key = "set_joint_rotation", value = 3460891852},
    .{key = "get_joint_rotation", value = 3360562783},
    .{key = "set_body_offset", value = 2952846383},
    .{key = "get_body_offset", value = 3229777777},
    .{key = "get_simulate_physics", value = 2240911060},
    .{key = "is_simulating_physics", value = 2240911060},
    .{key = "get_bone_id", value = 3905245786},
    .{key = "set_mass", value = 373806689},
    .{key = "get_mass", value = 1740695150},
    .{key = "set_friction", value = 373806689},
    .{key = "get_friction", value = 1740695150},
    .{key = "set_bounce", value = 373806689},
    .{key = "get_bounce", value = 1740695150},
    .{key = "set_gravity_scale", value = 373806689},
    .{key = "get_gravity_scale", value = 1740695150},
    .{key = "set_linear_damp_mode", value = 1244972221},
    .{key = "get_linear_damp_mode", value = 205884699},
    .{key = "set_angular_damp_mode", value = 1244972221},
    .{key = "get_angular_damp_mode", value = 205884699},
    .{key = "set_linear_damp", value = 373806689},
    .{key = "get_linear_damp", value = 1740695150},
    .{key = "set_angular_damp", value = 373806689},
    .{key = "get_angular_damp", value = 1740695150},
    .{key = "set_linear_velocity", value = 3460891852},
    .{key = "get_linear_velocity", value = 3360562783},
    .{key = "set_angular_velocity", value = 3460891852},
    .{key = "get_angular_velocity", value = 3360562783},
    .{key = "set_use_custom_integrator", value = 2586408642},
    .{key = "is_using_custom_integrator", value = 2240911060},
    .{key = "set_can_sleep", value = 2586408642},
    .{key = "is_able_to_sleep", value = 36873697},
    .{key = "set_rayleigh_coefficient", value = 373806689},
    .{key = "get_rayleigh_coefficient", value = 1740695150},
    .{key = "set_rayleigh_color", value = 2920490490},
    .{key = "get_rayleigh_color", value = 3444240500},
    .{key = "set_mie_coefficient", value = 373806689},
    .{key = "get_mie_coefficient", value = 1740695150},
    .{key = "set_mie_eccentricity", value = 373806689},
    .{key = "get_mie_eccentricity", value = 1740695150},
    .{key = "set_mie_color", value = 2920490490},
    .{key = "get_mie_color", value = 3444240500},
    .{key = "set_turbidity", value = 373806689},
    .{key = "get_turbidity", value = 1740695150},
    .{key = "set_sun_disk_scale", value = 373806689},
    .{key = "get_sun_disk_scale", value = 1740695150},
    .{key = "set_ground_color", value = 2920490490},
    .{key = "get_ground_color", value = 3444240500},
    .{key = "set_energy_multiplier", value = 373806689},
    .{key = "get_energy_multiplier", value = 1740695150},
    .{key = "set_use_debanding", value = 2586408642},
    .{key = "get_use_debanding", value = 36873697},
    .{key = "set_night_sky", value = 4051416890},
    .{key = "get_night_sky", value = 3635182373},
    .{key = "move_and_collide", value = 3681923724},
    .{key = "test_move", value = 3324464701},
    .{key = "get_gravity", value = 3341600327},
    .{key = "get_collision_exceptions", value = 2915620761},
    .{key = "add_collision_exception_with", value = 1078189570},
    .{key = "remove_collision_exception_with", value = 1078189570},
    .{key = "move_and_collide", value = 3208792678},
    .{key = "test_move", value = 2481691619},
    .{key = "get_gravity", value = 3360562783},
    .{key = "set_axis_lock", value = 1787895195},
    .{key = "get_axis_lock", value = 2264617709},
    .{key = "get_collision_exceptions", value = 2915620761},
    .{key = "add_collision_exception_with", value = 1078189570},
    .{key = "remove_collision_exception_with", value = 1078189570},
    .{key = "get_total_gravity", value = 3341600327},
    .{key = "get_total_linear_damp", value = 1740695150},
    .{key = "get_total_angular_damp", value = 1740695150},
    .{key = "get_center_of_mass", value = 3341600327},
    .{key = "get_center_of_mass_local", value = 3341600327},
    .{key = "get_inverse_mass", value = 1740695150},
    .{key = "get_inverse_inertia", value = 1740695150},
    .{key = "set_linear_velocity", value = 743155724},
    .{key = "get_linear_velocity", value = 3341600327},
    .{key = "set_angular_velocity", value = 373806689},
    .{key = "get_angular_velocity", value = 1740695150},
    .{key = "set_transform", value = 2761652528},
    .{key = "get_transform", value = 3814499831},
    .{key = "get_velocity_at_local_position", value = 2656412154},
    .{key = "apply_central_impulse", value = 743155724},
    .{key = "apply_torque_impulse", value = 373806689},
    .{key = "apply_impulse", value = 4288681949},
    .{key = "apply_central_force", value = 3862383994},
    .{key = "apply_force", value = 4288681949},
    .{key = "apply_torque", value = 373806689},
    .{key = "add_constant_central_force", value = 3862383994},
    .{key = "add_constant_force", value = 4288681949},
    .{key = "add_constant_torque", value = 373806689},
    .{key = "set_constant_force", value = 743155724},
    .{key = "get_constant_force", value = 3341600327},
    .{key = "set_constant_torque", value = 373806689},
    .{key = "get_constant_torque", value = 1740695150},
    .{key = "set_sleep_state", value = 2586408642},
    .{key = "is_sleeping", value = 36873697},
    .{key = "get_contact_count", value = 3905245786},
    .{key = "get_contact_local_position", value = 2299179447},
    .{key = "get_contact_local_normal", value = 2299179447},
    .{key = "get_contact_local_shape", value = 923996154},
    .{key = "get_contact_local_velocity_at_position", value = 2299179447},
    .{key = "get_contact_collider", value = 495598643},
    .{key = "get_contact_collider_position", value = 2299179447},
    .{key = "get_contact_collider_id", value = 923996154},
    .{key = "get_contact_collider_object", value = 3332903315},
    .{key = "get_contact_collider_shape", value = 923996154},
    .{key = "get_contact_collider_velocity_at_position", value = 2299179447},
    .{key = "get_contact_impulse", value = 2299179447},
    .{key = "get_step", value = 1740695150},
    .{key = "integrate_forces", value = 3218959716},
    .{key = "get_space_state", value = 2506717822},
    .{key = "get_total_gravity", value = 3360562783},
    .{key = "get_total_linear_damp", value = 1740695150},
    .{key = "get_total_angular_damp", value = 1740695150},
    .{key = "get_center_of_mass", value = 3360562783},
    .{key = "get_center_of_mass_local", value = 3360562783},
    .{key = "get_principal_inertia_axes", value = 2716978435},
    .{key = "get_inverse_mass", value = 1740695150},
    .{key = "get_inverse_inertia", value = 3360562783},
    .{key = "get_inverse_inertia_tensor", value = 2716978435},
    .{key = "set_linear_velocity", value = 3460891852},
    .{key = "get_linear_velocity", value = 3360562783},
    .{key = "set_angular_velocity", value = 3460891852},
    .{key = "get_angular_velocity", value = 3360562783},
    .{key = "set_transform", value = 2952846383},
    .{key = "get_transform", value = 3229777777},
    .{key = "get_velocity_at_local_position", value = 192990374},
    .{key = "apply_central_impulse", value = 2007698547},
    .{key = "apply_impulse", value = 2754756483},
    .{key = "apply_torque_impulse", value = 3460891852},
    .{key = "apply_central_force", value = 2007698547},
    .{key = "apply_force", value = 2754756483},
    .{key = "apply_torque", value = 3460891852},
    .{key = "add_constant_central_force", value = 2007698547},
    .{key = "add_constant_force", value = 2754756483},
    .{key = "add_constant_torque", value = 3460891852},
    .{key = "set_constant_force", value = 3460891852},
    .{key = "get_constant_force", value = 3360562783},
    .{key = "set_constant_torque", value = 3460891852},
    .{key = "get_constant_torque", value = 3360562783},
    .{key = "set_sleep_state", value = 2586408642},
    .{key = "is_sleeping", value = 36873697},
    .{key = "get_contact_count", value = 3905245786},
    .{key = "get_contact_local_position", value = 711720468},
    .{key = "get_contact_local_normal", value = 711720468},
    .{key = "get_contact_impulse", value = 711720468},
    .{key = "get_contact_local_shape", value = 923996154},
    .{key = "get_contact_local_velocity_at_position", value = 711720468},
    .{key = "get_contact_collider", value = 495598643},
    .{key = "get_contact_collider_position", value = 711720468},
    .{key = "get_contact_collider_id", value = 923996154},
    .{key = "get_contact_collider_object", value = 3332903315},
    .{key = "get_contact_collider_shape", value = 923996154},
    .{key = "get_contact_collider_velocity_at_position", value = 711720468},
    .{key = "get_step", value = 1740695150},
    .{key = "integrate_forces", value = 3218959716},
    .{key = "get_space_state", value = 2069328350},
    .{key = "intersect_point", value = 2118456068},
    .{key = "intersect_ray", value = 1590275562},
    .{key = "intersect_shape", value = 2488867228},
    .{key = "cast_motion", value = 711275086},
    .{key = "collide_shape", value = 2488867228},
    .{key = "get_rest_info", value = 2803666496},
    .{key = "is_body_excluded_from_query", value = 4155700596},
    .{key = "intersect_point", value = 975173756},
    .{key = "intersect_ray", value = 3957970750},
    .{key = "intersect_shape", value = 3762137681},
    .{key = "cast_motion", value = 1778757334},
    .{key = "collide_shape", value = 3762137681},
    .{key = "get_rest_info", value = 1376751592},
    .{key = "is_body_excluded_from_query", value = 4155700596},
    .{key = "set_friction", value = 373806689},
    .{key = "get_friction", value = 1740695150},
    .{key = "set_rough", value = 2586408642},
    .{key = "is_rough", value = 36873697},
    .{key = "set_bounce", value = 373806689},
    .{key = "get_bounce", value = 1740695150},
    .{key = "set_absorbent", value = 2586408642},
    .{key = "is_absorbent", value = 36873697},
    .{key = "set_position", value = 743155724},
    .{key = "get_position", value = 3341600327},
    .{key = "set_canvas_instance_id", value = 1286410249},
    .{key = "get_canvas_instance_id", value = 3905245786},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_exclude", value = 381264803},
    .{key = "get_exclude", value = 3995934104},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_position", value = 3460891852},
    .{key = "get_position", value = 3360562783},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_exclude", value = 381264803},
    .{key = "get_exclude", value = 3995934104},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "create", value = 3196569324},
    .{key = "set_from", value = 743155724},
    .{key = "get_from", value = 3341600327},
    .{key = "set_to", value = 743155724},
    .{key = "get_to", value = 3341600327},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_exclude", value = 381264803},
    .{key = "get_exclude", value = 3995934104},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_hit_from_inside", value = 2586408642},
    .{key = "is_hit_from_inside_enabled", value = 36873697},
    .{key = "create", value = 3110599579},
    .{key = "set_from", value = 3460891852},
    .{key = "get_from", value = 3360562783},
    .{key = "set_to", value = 3460891852},
    .{key = "get_to", value = 3360562783},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_exclude", value = 381264803},
    .{key = "get_exclude", value = 3995934104},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_hit_from_inside", value = 2586408642},
    .{key = "is_hit_from_inside_enabled", value = 36873697},
    .{key = "set_hit_back_faces", value = 2586408642},
    .{key = "is_hit_back_faces_enabled", value = 36873697},
    .{key = "world_boundary_shape_create", value = 529393457},
    .{key = "separation_ray_shape_create", value = 529393457},
    .{key = "segment_shape_create", value = 529393457},
    .{key = "circle_shape_create", value = 529393457},
    .{key = "rectangle_shape_create", value = 529393457},
    .{key = "capsule_shape_create", value = 529393457},
    .{key = "convex_polygon_shape_create", value = 529393457},
    .{key = "concave_polygon_shape_create", value = 529393457},
    .{key = "shape_set_data", value = 3175752987},
    .{key = "shape_get_type", value = 1240598777},
    .{key = "shape_get_data", value = 4171304767},
    .{key = "space_create", value = 529393457},
    .{key = "space_set_active", value = 1265174801},
    .{key = "space_is_active", value = 4155700596},
    .{key = "space_set_param", value = 949194586},
    .{key = "space_get_param", value = 874111783},
    .{key = "space_get_direct_state", value = 3160173886},
    .{key = "area_create", value = 529393457},
    .{key = "area_set_space", value = 395945892},
    .{key = "area_get_space", value = 3814569979},
    .{key = "area_add_shape", value = 339056240},
    .{key = "area_set_shape", value = 2310537182},
    .{key = "area_set_shape_transform", value = 736082694},
    .{key = "area_set_shape_disabled", value = 2658558584},
    .{key = "area_get_shape_count", value = 2198884583},
    .{key = "area_get_shape", value = 1066463050},
    .{key = "area_get_shape_transform", value = 1324854622},
    .{key = "area_remove_shape", value = 3411492887},
    .{key = "area_clear_shapes", value = 2722037293},
    .{key = "area_set_collision_layer", value = 3411492887},
    .{key = "area_get_collision_layer", value = 2198884583},
    .{key = "area_set_collision_mask", value = 3411492887},
    .{key = "area_get_collision_mask", value = 2198884583},
    .{key = "area_set_param", value = 1257146028},
    .{key = "area_set_transform", value = 1246044741},
    .{key = "area_get_param", value = 3047435120},
    .{key = "area_get_transform", value = 213527486},
    .{key = "area_attach_object_instance_id", value = 3411492887},
    .{key = "area_get_object_instance_id", value = 2198884583},
    .{key = "area_attach_canvas_instance_id", value = 3411492887},
    .{key = "area_get_canvas_instance_id", value = 2198884583},
    .{key = "area_set_monitor_callback", value = 3379118538},
    .{key = "area_set_area_monitor_callback", value = 3379118538},
    .{key = "area_set_monitorable", value = 1265174801},
    .{key = "body_create", value = 529393457},
    .{key = "body_set_space", value = 395945892},
    .{key = "body_get_space", value = 3814569979},
    .{key = "body_set_mode", value = 1658067650},
    .{key = "body_get_mode", value = 3261702585},
    .{key = "body_add_shape", value = 339056240},
    .{key = "body_set_shape", value = 2310537182},
    .{key = "body_set_shape_transform", value = 736082694},
    .{key = "body_get_shape_count", value = 2198884583},
    .{key = "body_get_shape", value = 1066463050},
    .{key = "body_get_shape_transform", value = 1324854622},
    .{key = "body_remove_shape", value = 3411492887},
    .{key = "body_clear_shapes", value = 2722037293},
    .{key = "body_set_shape_disabled", value = 2658558584},
    .{key = "body_set_shape_as_one_way_collision", value = 2556489974},
    .{key = "body_attach_object_instance_id", value = 3411492887},
    .{key = "body_get_object_instance_id", value = 2198884583},
    .{key = "body_attach_canvas_instance_id", value = 3411492887},
    .{key = "body_get_canvas_instance_id", value = 2198884583},
    .{key = "body_set_continuous_collision_detection_mode", value = 1882257015},
    .{key = "body_get_continuous_collision_detection_mode", value = 2661282217},
    .{key = "body_set_collision_layer", value = 3411492887},
    .{key = "body_get_collision_layer", value = 2198884583},
    .{key = "body_set_collision_mask", value = 3411492887},
    .{key = "body_get_collision_mask", value = 2198884583},
    .{key = "body_set_collision_priority", value = 1794382983},
    .{key = "body_get_collision_priority", value = 866169185},
    .{key = "body_set_param", value = 2715630609},
    .{key = "body_get_param", value = 3208033526},
    .{key = "body_reset_mass_properties", value = 2722037293},
    .{key = "body_set_state", value = 1706355209},
    .{key = "body_get_state", value = 4036367961},
    .{key = "body_apply_central_impulse", value = 3201125042},
    .{key = "body_apply_torque_impulse", value = 1794382983},
    .{key = "body_apply_impulse", value = 205485391},
    .{key = "body_apply_central_force", value = 3201125042},
    .{key = "body_apply_force", value = 205485391},
    .{key = "body_apply_torque", value = 1794382983},
    .{key = "body_add_constant_central_force", value = 3201125042},
    .{key = "body_add_constant_force", value = 205485391},
    .{key = "body_add_constant_torque", value = 1794382983},
    .{key = "body_set_constant_force", value = 3201125042},
    .{key = "body_get_constant_force", value = 2440833711},
    .{key = "body_set_constant_torque", value = 1794382983},
    .{key = "body_get_constant_torque", value = 866169185},
    .{key = "body_set_axis_velocity", value = 3201125042},
    .{key = "body_add_collision_exception", value = 395945892},
    .{key = "body_remove_collision_exception", value = 395945892},
    .{key = "body_set_max_contacts_reported", value = 3411492887},
    .{key = "body_get_max_contacts_reported", value = 2198884583},
    .{key = "body_set_omit_force_integration", value = 1265174801},
    .{key = "body_is_omitting_force_integration", value = 4155700596},
    .{key = "body_set_force_integration_callback", value = 3059434249},
    .{key = "body_test_motion", value = 1699844009},
    .{key = "body_get_direct_state", value = 1191931871},
    .{key = "joint_create", value = 529393457},
    .{key = "joint_clear", value = 2722037293},
    .{key = "joint_set_param", value = 3972556514},
    .{key = "joint_get_param", value = 4016448949},
    .{key = "joint_disable_collisions_between_bodies", value = 1265174801},
    .{key = "joint_is_disabled_collisions_between_bodies", value = 4155700596},
    .{key = "joint_make_pin", value = 1612646186},
    .{key = "joint_make_groove", value = 481430435},
    .{key = "joint_make_damped_spring", value = 1994657646},
    .{key = "pin_joint_set_flag", value = 3520002352},
    .{key = "pin_joint_get_flag", value = 2647867364},
    .{key = "pin_joint_set_param", value = 550574241},
    .{key = "pin_joint_get_param", value = 348281383},
    .{key = "damped_spring_joint_set_param", value = 220564071},
    .{key = "damped_spring_joint_get_param", value = 2075871277},
    .{key = "joint_get_type", value = 4262502231},
    .{key = "free_rid", value = 2722037293},
    .{key = "set_active", value = 2586408642},
    .{key = "get_process_info", value = 576496006},
    .{key = "body_test_motion_is_excluding_body", value = 4155700596},
    .{key = "body_test_motion_is_excluding_object", value = 1116898809},
    .{key = "register_server", value = 2137474292},
    .{key = "set_default_server", value = 2956805083},
    .{key = "world_boundary_shape_create", value = 529393457},
    .{key = "separation_ray_shape_create", value = 529393457},
    .{key = "sphere_shape_create", value = 529393457},
    .{key = "box_shape_create", value = 529393457},
    .{key = "capsule_shape_create", value = 529393457},
    .{key = "cylinder_shape_create", value = 529393457},
    .{key = "convex_polygon_shape_create", value = 529393457},
    .{key = "concave_polygon_shape_create", value = 529393457},
    .{key = "heightmap_shape_create", value = 529393457},
    .{key = "custom_shape_create", value = 529393457},
    .{key = "shape_set_data", value = 3175752987},
    .{key = "shape_get_type", value = 3418923367},
    .{key = "shape_get_data", value = 4171304767},
    .{key = "space_create", value = 529393457},
    .{key = "space_set_active", value = 1265174801},
    .{key = "space_is_active", value = 4155700596},
    .{key = "space_set_param", value = 2406017470},
    .{key = "space_get_param", value = 1523206731},
    .{key = "space_get_direct_state", value = 2048616813},
    .{key = "area_create", value = 529393457},
    .{key = "area_set_space", value = 395945892},
    .{key = "area_get_space", value = 3814569979},
    .{key = "area_add_shape", value = 3711419014},
    .{key = "area_set_shape", value = 2310537182},
    .{key = "area_set_shape_transform", value = 675327471},
    .{key = "area_set_shape_disabled", value = 2658558584},
    .{key = "area_get_shape_count", value = 2198884583},
    .{key = "area_get_shape", value = 1066463050},
    .{key = "area_get_shape_transform", value = 1050775521},
    .{key = "area_remove_shape", value = 3411492887},
    .{key = "area_clear_shapes", value = 2722037293},
    .{key = "area_set_collision_layer", value = 3411492887},
    .{key = "area_get_collision_layer", value = 2198884583},
    .{key = "area_set_collision_mask", value = 3411492887},
    .{key = "area_get_collision_mask", value = 2198884583},
    .{key = "area_set_param", value = 2980114638},
    .{key = "area_set_transform", value = 3935195649},
    .{key = "area_get_param", value = 890056067},
    .{key = "area_get_transform", value = 1128465797},
    .{key = "area_attach_object_instance_id", value = 3411492887},
    .{key = "area_get_object_instance_id", value = 2198884583},
    .{key = "area_set_monitor_callback", value = 3379118538},
    .{key = "area_set_area_monitor_callback", value = 3379118538},
    .{key = "area_set_monitorable", value = 1265174801},
    .{key = "area_set_ray_pickable", value = 1265174801},
    .{key = "body_create", value = 529393457},
    .{key = "body_set_space", value = 395945892},
    .{key = "body_get_space", value = 3814569979},
    .{key = "body_set_mode", value = 606803466},
    .{key = "body_get_mode", value = 2488819728},
    .{key = "body_set_collision_layer", value = 3411492887},
    .{key = "body_get_collision_layer", value = 2198884583},
    .{key = "body_set_collision_mask", value = 3411492887},
    .{key = "body_get_collision_mask", value = 2198884583},
    .{key = "body_set_collision_priority", value = 1794382983},
    .{key = "body_get_collision_priority", value = 866169185},
    .{key = "body_add_shape", value = 3711419014},
    .{key = "body_set_shape", value = 2310537182},
    .{key = "body_set_shape_transform", value = 675327471},
    .{key = "body_set_shape_disabled", value = 2658558584},
    .{key = "body_get_shape_count", value = 2198884583},
    .{key = "body_get_shape", value = 1066463050},
    .{key = "body_get_shape_transform", value = 1050775521},
    .{key = "body_remove_shape", value = 3411492887},
    .{key = "body_clear_shapes", value = 2722037293},
    .{key = "body_attach_object_instance_id", value = 3411492887},
    .{key = "body_get_object_instance_id", value = 2198884583},
    .{key = "body_set_enable_continuous_collision_detection", value = 1265174801},
    .{key = "body_is_continuous_collision_detection_enabled", value = 4155700596},
    .{key = "body_set_param", value = 910941953},
    .{key = "body_get_param", value = 3385027841},
    .{key = "body_reset_mass_properties", value = 2722037293},
    .{key = "body_set_state", value = 599977762},
    .{key = "body_get_state", value = 1850449534},
    .{key = "body_apply_central_impulse", value = 3227306858},
    .{key = "body_apply_impulse", value = 390416203},
    .{key = "body_apply_torque_impulse", value = 3227306858},
    .{key = "body_apply_central_force", value = 3227306858},
    .{key = "body_apply_force", value = 390416203},
    .{key = "body_apply_torque", value = 3227306858},
    .{key = "body_add_constant_central_force", value = 3227306858},
    .{key = "body_add_constant_force", value = 390416203},
    .{key = "body_add_constant_torque", value = 3227306858},
    .{key = "body_set_constant_force", value = 3227306858},
    .{key = "body_get_constant_force", value = 531438156},
    .{key = "body_set_constant_torque", value = 3227306858},
    .{key = "body_get_constant_torque", value = 531438156},
    .{key = "body_set_axis_velocity", value = 3227306858},
    .{key = "body_set_axis_lock", value = 2020836892},
    .{key = "body_is_axis_locked", value = 587853580},
    .{key = "body_add_collision_exception", value = 395945892},
    .{key = "body_remove_collision_exception", value = 395945892},
    .{key = "body_set_max_contacts_reported", value = 3411492887},
    .{key = "body_get_max_contacts_reported", value = 2198884583},
    .{key = "body_set_omit_force_integration", value = 1265174801},
    .{key = "body_is_omitting_force_integration", value = 4155700596},
    .{key = "body_set_force_integration_callback", value = 3059434249},
    .{key = "body_set_ray_pickable", value = 1265174801},
    .{key = "body_test_motion", value = 1944921792},
    .{key = "body_get_direct_state", value = 3029727957},
    .{key = "soft_body_create", value = 529393457},
    .{key = "soft_body_update_rendering_server", value = 2218179753},
    .{key = "soft_body_set_space", value = 395945892},
    .{key = "soft_body_get_space", value = 3814569979},
    .{key = "soft_body_set_mesh", value = 395945892},
    .{key = "soft_body_get_bounds", value = 974181306},
    .{key = "soft_body_set_collision_layer", value = 3411492887},
    .{key = "soft_body_get_collision_layer", value = 2198884583},
    .{key = "soft_body_set_collision_mask", value = 3411492887},
    .{key = "soft_body_get_collision_mask", value = 2198884583},
    .{key = "soft_body_add_collision_exception", value = 395945892},
    .{key = "soft_body_remove_collision_exception", value = 395945892},
    .{key = "soft_body_set_state", value = 599977762},
    .{key = "soft_body_get_state", value = 1850449534},
    .{key = "soft_body_set_transform", value = 3935195649},
    .{key = "soft_body_set_ray_pickable", value = 1265174801},
    .{key = "soft_body_set_simulation_precision", value = 3411492887},
    .{key = "soft_body_get_simulation_precision", value = 2198884583},
    .{key = "soft_body_set_total_mass", value = 1794382983},
    .{key = "soft_body_get_total_mass", value = 866169185},
    .{key = "soft_body_set_linear_stiffness", value = 1794382983},
    .{key = "soft_body_get_linear_stiffness", value = 866169185},
    .{key = "soft_body_set_pressure_coefficient", value = 1794382983},
    .{key = "soft_body_get_pressure_coefficient", value = 866169185},
    .{key = "soft_body_set_damping_coefficient", value = 1794382983},
    .{key = "soft_body_get_damping_coefficient", value = 866169185},
    .{key = "soft_body_set_drag_coefficient", value = 1794382983},
    .{key = "soft_body_get_drag_coefficient", value = 866169185},
    .{key = "soft_body_move_point", value = 831953689},
    .{key = "soft_body_get_point_global_position", value = 3440143363},
    .{key = "soft_body_remove_all_pinned_points", value = 2722037293},
    .{key = "soft_body_pin_point", value = 2658558584},
    .{key = "soft_body_is_point_pinned", value = 3120086654},
    .{key = "joint_create", value = 529393457},
    .{key = "joint_clear", value = 2722037293},
    .{key = "joint_make_pin", value = 4280171926},
    .{key = "pin_joint_set_param", value = 810685294},
    .{key = "pin_joint_get_param", value = 2817972347},
    .{key = "pin_joint_set_local_a", value = 3227306858},
    .{key = "pin_joint_get_local_a", value = 531438156},
    .{key = "pin_joint_set_local_b", value = 3227306858},
    .{key = "pin_joint_get_local_b", value = 531438156},
    .{key = "joint_make_hinge", value = 1684107643},
    .{key = "hinge_joint_set_param", value = 3165502333},
    .{key = "hinge_joint_get_param", value = 2129207581},
    .{key = "hinge_joint_set_flag", value = 1601626188},
    .{key = "hinge_joint_get_flag", value = 4165147865},
    .{key = "joint_make_slider", value = 1684107643},
    .{key = "slider_joint_set_param", value = 2264833593},
    .{key = "slider_joint_get_param", value = 3498644957},
    .{key = "joint_make_cone_twist", value = 1684107643},
    .{key = "cone_twist_joint_set_param", value = 808587618},
    .{key = "cone_twist_joint_get_param", value = 1134789658},
    .{key = "joint_get_type", value = 4290791900},
    .{key = "joint_set_solver_priority", value = 3411492887},
    .{key = "joint_get_solver_priority", value = 2198884583},
    .{key = "joint_disable_collisions_between_bodies", value = 1265174801},
    .{key = "joint_is_disabled_collisions_between_bodies", value = 4155700596},
    .{key = "joint_make_generic_6dof", value = 1684107643},
    .{key = "generic_6dof_joint_set_param", value = 2600081391},
    .{key = "generic_6dof_joint_get_param", value = 467122058},
    .{key = "generic_6dof_joint_set_flag", value = 3570926903},
    .{key = "generic_6dof_joint_get_flag", value = 4158090196},
    .{key = "free_rid", value = 2722037293},
    .{key = "set_active", value = 2586408642},
    .{key = "get_process_info", value = 1332958745},
    .{key = "body_test_motion_is_excluding_body", value = 4155700596},
    .{key = "body_test_motion_is_excluding_object", value = 1116898809},
    .{key = "register_server", value = 2137474292},
    .{key = "set_default_server", value = 2956805083},
    .{key = "set_vertex", value = 1530502735},
    .{key = "set_normal", value = 1530502735},
    .{key = "set_aabb", value = 259215842},
    .{key = "set_shape", value = 968641751},
    .{key = "get_shape", value = 121922552},
    .{key = "set_shape_rid", value = 2722037293},
    .{key = "get_shape_rid", value = 2944877500},
    .{key = "set_transform", value = 2761652528},
    .{key = "get_transform", value = 3814499831},
    .{key = "set_motion", value = 743155724},
    .{key = "get_motion", value = 3341600327},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_exclude", value = 381264803},
    .{key = "get_exclude", value = 3995934104},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_shape", value = 968641751},
    .{key = "get_shape", value = 121922552},
    .{key = "set_shape_rid", value = 2722037293},
    .{key = "get_shape_rid", value = 2944877500},
    .{key = "set_transform", value = 2952846383},
    .{key = "get_transform", value = 3229777777},
    .{key = "set_motion", value = 3460891852},
    .{key = "get_motion", value = 3360562783},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_exclude", value = 381264803},
    .{key = "get_exclude", value = 3995934104},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "get_from", value = 3814499831},
    .{key = "set_from", value = 2761652528},
    .{key = "get_motion", value = 3341600327},
    .{key = "set_motion", value = 743155724},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_margin", value = 373806689},
    .{key = "is_collide_separation_ray_enabled", value = 36873697},
    .{key = "set_collide_separation_ray_enabled", value = 2586408642},
    .{key = "get_exclude_bodies", value = 3995934104},
    .{key = "set_exclude_bodies", value = 381264803},
    .{key = "get_exclude_objects", value = 3995934104},
    .{key = "set_exclude_objects", value = 381264803},
    .{key = "is_recovery_as_collision_enabled", value = 36873697},
    .{key = "set_recovery_as_collision_enabled", value = 2586408642},
    .{key = "get_from", value = 3229777777},
    .{key = "set_from", value = 2952846383},
    .{key = "get_motion", value = 3360562783},
    .{key = "set_motion", value = 3460891852},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_margin", value = 373806689},
    .{key = "get_max_collisions", value = 3905245786},
    .{key = "set_max_collisions", value = 1286410249},
    .{key = "is_collide_separation_ray_enabled", value = 36873697},
    .{key = "set_collide_separation_ray_enabled", value = 2586408642},
    .{key = "get_exclude_bodies", value = 3995934104},
    .{key = "set_exclude_bodies", value = 381264803},
    .{key = "get_exclude_objects", value = 3995934104},
    .{key = "set_exclude_objects", value = 381264803},
    .{key = "is_recovery_as_collision_enabled", value = 36873697},
    .{key = "set_recovery_as_collision_enabled", value = 2586408642},
    .{key = "get_travel", value = 3341600327},
    .{key = "get_remainder", value = 3341600327},
    .{key = "get_collision_point", value = 3341600327},
    .{key = "get_collision_normal", value = 3341600327},
    .{key = "get_collider_velocity", value = 3341600327},
    .{key = "get_collider_id", value = 3905245786},
    .{key = "get_collider_rid", value = 2944877500},
    .{key = "get_collider", value = 1981248198},
    .{key = "get_collider_shape", value = 3905245786},
    .{key = "get_collision_local_shape", value = 3905245786},
    .{key = "get_collision_depth", value = 1740695150},
    .{key = "get_collision_safe_fraction", value = 1740695150},
    .{key = "get_collision_unsafe_fraction", value = 1740695150},
    .{key = "get_travel", value = 3360562783},
    .{key = "get_remainder", value = 3360562783},
    .{key = "get_collision_safe_fraction", value = 1740695150},
    .{key = "get_collision_unsafe_fraction", value = 1740695150},
    .{key = "get_collision_count", value = 3905245786},
    .{key = "get_collision_point", value = 1914908202},
    .{key = "get_collision_normal", value = 1914908202},
    .{key = "get_collider_velocity", value = 1914908202},
    .{key = "get_collider_id", value = 1591665591},
    .{key = "get_collider_rid", value = 1231817359},
    .{key = "get_collider", value = 2639523548},
    .{key = "get_collider_shape", value = 1591665591},
    .{key = "get_collision_local_shape", value = 1591665591},
    .{key = "get_collision_depth", value = 218038398},
    .{key = "set_softness", value = 373806689},
    .{key = "get_softness", value = 1740695150},
    .{key = "set_angular_limit_lower", value = 373806689},
    .{key = "get_angular_limit_lower", value = 1740695150},
    .{key = "set_angular_limit_upper", value = 373806689},
    .{key = "get_angular_limit_upper", value = 1740695150},
    .{key = "set_motor_target_velocity", value = 373806689},
    .{key = "get_motor_target_velocity", value = 1740695150},
    .{key = "set_motor_enabled", value = 2586408642},
    .{key = "is_motor_enabled", value = 36873697},
    .{key = "set_angular_limit_enabled", value = 2586408642},
    .{key = "is_angular_limit_enabled", value = 36873697},
    .{key = "set_param", value = 2059913726},
    .{key = "get_param", value = 1758438771},
    .{key = "set_aabb", value = 259215842},
    .{key = "set_size", value = 743155724},
    .{key = "set_size", value = 560364750},
    .{key = "get_size", value = 2785653706},
    .{key = "set_size", value = 1130785943},
    .{key = "get_size", value = 3690982128},
    .{key = "set_layers", value = 1286410249},
    .{key = "set_size", value = 743155724},
    .{key = "get_size", value = 3341600327},
    .{key = "set_subdivide_width", value = 1286410249},
    .{key = "get_subdivide_width", value = 3905245786},
    .{key = "set_subdivide_depth", value = 1286410249},
    .{key = "get_subdivide_depth", value = 3905245786},
    .{key = "set_center_offset", value = 3460891852},
    .{key = "get_center_offset", value = 3360562783},
    .{key = "set_orientation", value = 2751399687},
    .{key = "get_orientation", value = 3227599250},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_texture_offset", value = 743155724},
    .{key = "get_texture_offset", value = 3341600327},
    .{key = "set_texture_scale", value = 373806689},
    .{key = "get_texture_scale", value = 1740695150},
    .{key = "set_polygon", value = 1509147220},
    .{key = "get_polygon", value = 2961356807},
    .{key = "set_uv", value = 1509147220},
    .{key = "get_uv", value = 2961356807},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_polygons", value = 381264803},
    .{key = "get_polygons", value = 3995934104},
    .{key = "set_vertex_colors", value = 3546319833},
    .{key = "get_vertex_colors", value = 1392750486},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_texture_offset", value = 743155724},
    .{key = "get_texture_offset", value = 3341600327},
    .{key = "set_texture_rotation", value = 373806689},
    .{key = "get_texture_rotation", value = 1740695150},
    .{key = "set_texture_scale", value = 743155724},
    .{key = "get_texture_scale", value = 3341600327},
    .{key = "set_invert_enabled", value = 2586408642},
    .{key = "get_invert_enabled", value = 36873697},
    .{key = "set_antialiased", value = 2586408642},
    .{key = "get_antialiased", value = 36873697},
    .{key = "set_invert_border", value = 373806689},
    .{key = "get_invert_border", value = 1740695150},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "add_bone", value = 703042815},
    .{key = "get_bone_count", value = 3905245786},
    .{key = "get_bone_path", value = 408788394},
    .{key = "get_bone_weights", value = 1542882410},
    .{key = "erase_bone", value = 1286410249},
    .{key = "clear_bones", value = 3218959716},
    .{key = "set_bone_path", value = 2761262315},
    .{key = "set_bone_weights", value = 1345852415},
    .{key = "set_skeleton", value = 1348162250},
    .{key = "get_skeleton", value = 4075236667},
    .{key = "set_internal_vertex_count", value = 1286410249},
    .{key = "get_internal_vertex_count", value = 3905245786},
    .{key = "set_polygon", value = 1509147220},
    .{key = "get_polygon", value = 2961356807},
    .{key = "setup", value = 3251786936},
    .{key = "find_path", value = 1562168077},
    .{key = "get_intersections", value = 3932192302},
    .{key = "get_closest_point", value = 2656412154},
    .{key = "is_point_inside", value = 556197845},
    .{key = "set_point_penalty", value = 1602489585},
    .{key = "get_point_penalty", value = 2339986948},
    .{key = "get_bounds", value = 1639390495},
    .{key = "activate_item_by_event", value = 3716412023},
    .{key = "set_prefer_native_menu", value = 2586408642},
    .{key = "is_prefer_native_menu", value = 36873697},
    .{key = "add_item", value = 3674230041},
    .{key = "add_icon_item", value = 1086190128},
    .{key = "add_check_item", value = 3674230041},
    .{key = "add_icon_check_item", value = 1086190128},
    .{key = "add_radio_check_item", value = 3674230041},
    .{key = "add_icon_radio_check_item", value = 1086190128},
    .{key = "add_multistate_item", value = 150780458},
    .{key = "add_shortcut", value = 3451850107},
    .{key = "add_icon_shortcut", value = 2997871092},
    .{key = "add_check_shortcut", value = 1642193386},
    .{key = "add_icon_check_shortcut", value = 3856247530},
    .{key = "add_radio_check_shortcut", value = 1642193386},
    .{key = "add_icon_radio_check_shortcut", value = 3856247530},
    .{key = "add_submenu_item", value = 2979222410},
    .{key = "add_submenu_node_item", value = 1325455216},
    .{key = "set_item_text", value = 501894301},
    .{key = "set_item_text_direction", value = 1707680378},
    .{key = "set_item_language", value = 501894301},
    .{key = "set_item_icon", value = 666127730},
    .{key = "set_item_icon_max_width", value = 3937882851},
    .{key = "set_item_icon_modulate", value = 2878471219},
    .{key = "set_item_checked", value = 300928843},
    .{key = "set_item_id", value = 3937882851},
    .{key = "set_item_accelerator", value = 2992817551},
    .{key = "set_item_metadata", value = 2152698145},
    .{key = "set_item_disabled", value = 300928843},
    .{key = "set_item_submenu", value = 501894301},
    .{key = "set_item_submenu_node", value = 1068370740},
    .{key = "set_item_as_separator", value = 300928843},
    .{key = "set_item_as_checkable", value = 300928843},
    .{key = "set_item_as_radio_checkable", value = 300928843},
    .{key = "set_item_tooltip", value = 501894301},
    .{key = "set_item_shortcut", value = 825127832},
    .{key = "set_item_indent", value = 3937882851},
    .{key = "set_item_multistate", value = 3937882851},
    .{key = "set_item_multistate_max", value = 3937882851},
    .{key = "set_item_shortcut_disabled", value = 300928843},
    .{key = "toggle_item_checked", value = 1286410249},
    .{key = "toggle_item_multistate", value = 1286410249},
    .{key = "get_item_text", value = 844755477},
    .{key = "get_item_text_direction", value = 4235602388},
    .{key = "get_item_language", value = 844755477},
    .{key = "get_item_icon", value = 3536238170},
    .{key = "get_item_icon_max_width", value = 923996154},
    .{key = "get_item_icon_modulate", value = 3457211756},
    .{key = "is_item_checked", value = 1116898809},
    .{key = "get_item_id", value = 923996154},
    .{key = "get_item_index", value = 923996154},
    .{key = "get_item_accelerator", value = 253789942},
    .{key = "get_item_metadata", value = 4227898402},
    .{key = "is_item_disabled", value = 1116898809},
    .{key = "get_item_submenu", value = 844755477},
    .{key = "get_item_submenu_node", value = 2100501353},
    .{key = "is_item_separator", value = 1116898809},
    .{key = "is_item_checkable", value = 1116898809},
    .{key = "is_item_radio_checkable", value = 1116898809},
    .{key = "is_item_shortcut_disabled", value = 1116898809},
    .{key = "get_item_tooltip", value = 844755477},
    .{key = "get_item_shortcut", value = 1449483325},
    .{key = "get_item_indent", value = 923996154},
    .{key = "get_item_multistate_max", value = 923996154},
    .{key = "get_item_multistate", value = 923996154},
    .{key = "set_focused_item", value = 1286410249},
    .{key = "get_focused_item", value = 3905245786},
    .{key = "set_item_count", value = 1286410249},
    .{key = "get_item_count", value = 3905245786},
    .{key = "scroll_to_item", value = 1286410249},
    .{key = "remove_item", value = 1286410249},
    .{key = "add_separator", value = 2266703459},
    .{key = "clear", value = 107499316},
    .{key = "set_hide_on_item_selection", value = 2586408642},
    .{key = "is_hide_on_item_selection", value = 36873697},
    .{key = "set_hide_on_checkable_item_selection", value = 2586408642},
    .{key = "is_hide_on_checkable_item_selection", value = 36873697},
    .{key = "set_hide_on_state_item_selection", value = 2586408642},
    .{key = "is_hide_on_state_item_selection", value = 36873697},
    .{key = "set_submenu_popup_delay", value = 373806689},
    .{key = "get_submenu_popup_delay", value = 1740695150},
    .{key = "set_allow_search", value = 2586408642},
    .{key = "get_allow_search", value = 36873697},
    .{key = "is_system_menu", value = 36873697},
    .{key = "set_system_menu", value = 600639674},
    .{key = "get_system_menu", value = 1222557358},
    .{key = "create_from_image", value = 3679243433},
    .{key = "get_format", value = 3847873762},
    .{key = "get_compression_mode", value = 3265612739},
    .{key = "set_size_override", value = 743155724},
    .{key = "get_size_override", value = 3341600327},
    .{key = "set_keep_compressed_buffer", value = 2586408642},
    .{key = "is_keeping_compressed_buffer", value = 36873697},
    .{key = "set_keep_all_compressed_buffers", value = 2586408642},
    .{key = "is_keeping_all_compressed_buffers", value = 2240911060},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "get_mesh_arrays", value = 3995934104},
    .{key = "set_custom_aabb", value = 259215842},
    .{key = "get_custom_aabb", value = 1068685055},
    .{key = "set_flip_faces", value = 2586408642},
    .{key = "get_flip_faces", value = 36873697},
    .{key = "set_add_uv2", value = 2586408642},
    .{key = "get_add_uv2", value = 36873697},
    .{key = "set_uv2_padding", value = 373806689},
    .{key = "get_uv2_padding", value = 1740695150},
    .{key = "request_update", value = 3218959716},
    .{key = "set_left_to_right", value = 373806689},
    .{key = "get_left_to_right", value = 1740695150},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_subdivide_width", value = 1286410249},
    .{key = "get_subdivide_width", value = 3905245786},
    .{key = "set_subdivide_height", value = 1286410249},
    .{key = "get_subdivide_height", value = 3905245786},
    .{key = "set_subdivide_depth", value = 1286410249},
    .{key = "get_subdivide_depth", value = 3905245786},
    .{key = "set_sky_top_color", value = 2920490490},
    .{key = "get_sky_top_color", value = 3444240500},
    .{key = "set_sky_horizon_color", value = 2920490490},
    .{key = "get_sky_horizon_color", value = 3444240500},
    .{key = "set_sky_curve", value = 373806689},
    .{key = "get_sky_curve", value = 1740695150},
    .{key = "set_sky_energy_multiplier", value = 373806689},
    .{key = "get_sky_energy_multiplier", value = 1740695150},
    .{key = "set_sky_cover", value = 4051416890},
    .{key = "get_sky_cover", value = 3635182373},
    .{key = "set_sky_cover_modulate", value = 2920490490},
    .{key = "get_sky_cover_modulate", value = 3444240500},
    .{key = "set_ground_bottom_color", value = 2920490490},
    .{key = "get_ground_bottom_color", value = 3444240500},
    .{key = "set_ground_horizon_color", value = 2920490490},
    .{key = "get_ground_horizon_color", value = 3444240500},
    .{key = "set_ground_curve", value = 373806689},
    .{key = "get_ground_curve", value = 1740695150},
    .{key = "set_ground_energy_multiplier", value = 373806689},
    .{key = "get_ground_energy_multiplier", value = 1740695150},
    .{key = "set_sun_angle_max", value = 373806689},
    .{key = "get_sun_angle_max", value = 1740695150},
    .{key = "set_sun_curve", value = 373806689},
    .{key = "get_sun_curve", value = 1740695150},
    .{key = "set_use_debanding", value = 2586408642},
    .{key = "get_use_debanding", value = 36873697},
    .{key = "set_energy_multiplier", value = 373806689},
    .{key = "get_energy_multiplier", value = 1740695150},
    .{key = "set_fill_mode", value = 1286410249},
    .{key = "get_fill_mode", value = 2455072627},
    .{key = "set_show_percentage", value = 2586408642},
    .{key = "is_percentage_shown", value = 36873697},
    .{key = "set_indeterminate", value = 2586408642},
    .{key = "is_indeterminate", value = 36873697},
    .{key = "set_editor_preview_indeterminate", value = 2586408642},
    .{key = "is_editor_preview_indeterminate_enabled", value = 36873697},
    .{key = "has_setting", value = 3927539163},
    .{key = "set_setting", value = 402577236},
    .{key = "get_setting", value = 223050753},
    .{key = "get_setting_with_override", value = 2760726917},
    .{key = "get_global_class_list", value = 2915620761},
    .{key = "set_order", value = 2956805083},
    .{key = "get_order", value = 1321353865},
    .{key = "set_initial_value", value = 402577236},
    .{key = "set_as_basic", value = 2678287736},
    .{key = "set_as_internal", value = 2678287736},
    .{key = "add_property_info", value = 4155329257},
    .{key = "set_restart_if_changed", value = 2678287736},
    .{key = "clear", value = 83702148},
    .{key = "localize_path", value = 3135753539},
    .{key = "globalize_path", value = 3135753539},
    .{key = "save", value = 166280745},
    .{key = "load_resource_pack", value = 708980503},
    .{key = "save_custom", value = 166001499},
    .{key = "from", value = 4190193059},
    .{key = "from_current", value = 4279177709},
    .{key = "as_relative", value = 4279177709},
    .{key = "set_trans", value = 1899107404},
    .{key = "set_ease", value = 1080455622},
    .{key = "set_custom_interpolator", value = 3174170268},
    .{key = "set_delay", value = 2171559331},
    .{key = "set_size", value = 743155724},
    .{key = "get_size", value = 3341600327},
    .{key = "set_format", value = 565531219},
    .{key = "get_format", value = 2235804183},
    .{key = "set_samples", value = 3774171498},
    .{key = "get_samples", value = 407791724},
    .{key = "set_usage_flags", value = 1286410249},
    .{key = "get_usage_flags", value = 3905245786},
    .{key = "set_color_attachments", value = 3614634198},
    .{key = "get_color_attachments", value = 1930428628},
    .{key = "set_input_attachments", value = 3614634198},
    .{key = "get_input_attachments", value = 1930428628},
    .{key = "set_resolve_attachments", value = 3614634198},
    .{key = "get_resolve_attachments", value = 1930428628},
    .{key = "set_preserve_attachments", value = 3614634198},
    .{key = "get_preserve_attachments", value = 1930428628},
    .{key = "set_depth_attachment", value = 1286410249},
    .{key = "get_depth_attachment", value = 3905245786},
    .{key = "set_enable_logic_op", value = 2586408642},
    .{key = "get_enable_logic_op", value = 36873697},
    .{key = "set_logic_op", value = 3610841058},
    .{key = "get_logic_op", value = 988254690},
    .{key = "set_blend_constant", value = 2920490490},
    .{key = "get_blend_constant", value = 3444240500},
    .{key = "set_attachments", value = 381264803},
    .{key = "get_attachments", value = 3995934104},
    .{key = "set_as_mix", value = 3218959716},
    .{key = "set_enable_blend", value = 2586408642},
    .{key = "get_enable_blend", value = 36873697},
    .{key = "set_src_color_blend_factor", value = 2251019273},
    .{key = "get_src_color_blend_factor", value = 3691288359},
    .{key = "set_dst_color_blend_factor", value = 2251019273},
    .{key = "get_dst_color_blend_factor", value = 3691288359},
    .{key = "set_color_blend_op", value = 3073022720},
    .{key = "get_color_blend_op", value = 1385093561},
    .{key = "set_src_alpha_blend_factor", value = 2251019273},
    .{key = "get_src_alpha_blend_factor", value = 3691288359},
    .{key = "set_dst_alpha_blend_factor", value = 2251019273},
    .{key = "get_dst_alpha_blend_factor", value = 3691288359},
    .{key = "set_alpha_blend_op", value = 3073022720},
    .{key = "get_alpha_blend_op", value = 1385093561},
    .{key = "set_write_r", value = 2586408642},
    .{key = "get_write_r", value = 36873697},
    .{key = "set_write_g", value = 2586408642},
    .{key = "get_write_g", value = 36873697},
    .{key = "set_write_b", value = 2586408642},
    .{key = "get_write_b", value = 36873697},
    .{key = "set_write_a", value = 2586408642},
    .{key = "get_write_a", value = 36873697},
    .{key = "set_enable_depth_test", value = 2586408642},
    .{key = "get_enable_depth_test", value = 36873697},
    .{key = "set_enable_depth_write", value = 2586408642},
    .{key = "get_enable_depth_write", value = 36873697},
    .{key = "set_depth_compare_operator", value = 2573711505},
    .{key = "get_depth_compare_operator", value = 269730778},
    .{key = "set_enable_depth_range", value = 2586408642},
    .{key = "get_enable_depth_range", value = 36873697},
    .{key = "set_depth_range_min", value = 373806689},
    .{key = "get_depth_range_min", value = 1740695150},
    .{key = "set_depth_range_max", value = 373806689},
    .{key = "get_depth_range_max", value = 1740695150},
    .{key = "set_enable_stencil", value = 2586408642},
    .{key = "get_enable_stencil", value = 36873697},
    .{key = "set_front_op_fail", value = 2092799566},
    .{key = "get_front_op_fail", value = 1714732389},
    .{key = "set_front_op_pass", value = 2092799566},
    .{key = "get_front_op_pass", value = 1714732389},
    .{key = "set_front_op_depth_fail", value = 2092799566},
    .{key = "get_front_op_depth_fail", value = 1714732389},
    .{key = "set_front_op_compare", value = 2573711505},
    .{key = "get_front_op_compare", value = 269730778},
    .{key = "set_front_op_compare_mask", value = 1286410249},
    .{key = "get_front_op_compare_mask", value = 3905245786},
    .{key = "set_front_op_write_mask", value = 1286410249},
    .{key = "get_front_op_write_mask", value = 3905245786},
    .{key = "set_front_op_reference", value = 1286410249},
    .{key = "get_front_op_reference", value = 3905245786},
    .{key = "set_back_op_fail", value = 2092799566},
    .{key = "get_back_op_fail", value = 1714732389},
    .{key = "set_back_op_pass", value = 2092799566},
    .{key = "get_back_op_pass", value = 1714732389},
    .{key = "set_back_op_depth_fail", value = 2092799566},
    .{key = "get_back_op_depth_fail", value = 1714732389},
    .{key = "set_back_op_compare", value = 2573711505},
    .{key = "get_back_op_compare", value = 269730778},
    .{key = "set_back_op_compare_mask", value = 1286410249},
    .{key = "get_back_op_compare_mask", value = 3905245786},
    .{key = "set_back_op_write_mask", value = 1286410249},
    .{key = "get_back_op_write_mask", value = 3905245786},
    .{key = "set_back_op_reference", value = 1286410249},
    .{key = "get_back_op_reference", value = 3905245786},
    .{key = "set_sample_count", value = 3774171498},
    .{key = "get_sample_count", value = 407791724},
    .{key = "set_enable_sample_shading", value = 2586408642},
    .{key = "get_enable_sample_shading", value = 36873697},
    .{key = "set_min_sample_shading", value = 373806689},
    .{key = "get_min_sample_shading", value = 1740695150},
    .{key = "set_enable_alpha_to_coverage", value = 2586408642},
    .{key = "get_enable_alpha_to_coverage", value = 36873697},
    .{key = "set_enable_alpha_to_one", value = 2586408642},
    .{key = "get_enable_alpha_to_one", value = 36873697},
    .{key = "set_sample_masks", value = 381264803},
    .{key = "get_sample_masks", value = 3995934104},
    .{key = "set_enable_depth_clamp", value = 2586408642},
    .{key = "get_enable_depth_clamp", value = 36873697},
    .{key = "set_discard_primitives", value = 2586408642},
    .{key = "get_discard_primitives", value = 36873697},
    .{key = "set_wireframe", value = 2586408642},
    .{key = "get_wireframe", value = 36873697},
    .{key = "set_cull_mode", value = 2662586502},
    .{key = "get_cull_mode", value = 2192484313},
    .{key = "set_front_face", value = 2637251213},
    .{key = "get_front_face", value = 708793786},
    .{key = "set_depth_bias_enabled", value = 2586408642},
    .{key = "get_depth_bias_enabled", value = 36873697},
    .{key = "set_depth_bias_constant_factor", value = 373806689},
    .{key = "get_depth_bias_constant_factor", value = 1740695150},
    .{key = "set_depth_bias_clamp", value = 373806689},
    .{key = "get_depth_bias_clamp", value = 1740695150},
    .{key = "set_depth_bias_slope_factor", value = 373806689},
    .{key = "get_depth_bias_slope_factor", value = 1740695150},
    .{key = "set_line_width", value = 373806689},
    .{key = "get_line_width", value = 1740695150},
    .{key = "set_patch_control_points", value = 1286410249},
    .{key = "get_patch_control_points", value = 3905245786},
    .{key = "set_value", value = 1114965689},
    .{key = "get_value", value = 1214101251},
    .{key = "set_constant_id", value = 1286410249},
    .{key = "get_constant_id", value = 3905245786},
    .{key = "set_mag_filter", value = 1493420382},
    .{key = "get_mag_filter", value = 2209202801},
    .{key = "set_min_filter", value = 1493420382},
    .{key = "get_min_filter", value = 2209202801},
    .{key = "set_mip_filter", value = 1493420382},
    .{key = "get_mip_filter", value = 2209202801},
    .{key = "set_repeat_u", value = 246127626},
    .{key = "get_repeat_u", value = 3227895872},
    .{key = "set_repeat_v", value = 246127626},
    .{key = "get_repeat_v", value = 3227895872},
    .{key = "set_repeat_w", value = 246127626},
    .{key = "get_repeat_w", value = 3227895872},
    .{key = "set_lod_bias", value = 373806689},
    .{key = "get_lod_bias", value = 1740695150},
    .{key = "set_use_anisotropy", value = 2586408642},
    .{key = "get_use_anisotropy", value = 36873697},
    .{key = "set_anisotropy_max", value = 373806689},
    .{key = "get_anisotropy_max", value = 1740695150},
    .{key = "set_enable_compare", value = 2586408642},
    .{key = "get_enable_compare", value = 36873697},
    .{key = "set_compare_op", value = 2573711505},
    .{key = "get_compare_op", value = 269730778},
    .{key = "set_min_lod", value = 373806689},
    .{key = "get_min_lod", value = 1740695150},
    .{key = "set_max_lod", value = 373806689},
    .{key = "get_max_lod", value = 1740695150},
    .{key = "set_border_color", value = 1115869595},
    .{key = "get_border_color", value = 3514246478},
    .{key = "set_unnormalized_uvw", value = 2586408642},
    .{key = "get_unnormalized_uvw", value = 36873697},
    .{key = "set_bytecode", value = 1558064255},
    .{key = "get_spirv", value = 3340165340},
    .{key = "get_version_list", value = 3995934104},
    .{key = "set_base_error", value = 83702148},
    .{key = "get_base_error", value = 201670096},
    .{key = "set_stage_bytecode", value = 3514097977},
    .{key = "get_stage_bytecode", value = 3816765404},
    .{key = "set_stage_compile_error", value = 620821314},
    .{key = "get_stage_compile_error", value = 3354920045},
    .{key = "set_stage_source", value = 620821314},
    .{key = "get_stage_source", value = 3354920045},
    .{key = "set_language", value = 3422186742},
    .{key = "get_language", value = 1063538261},
    .{key = "set_format", value = 565531219},
    .{key = "get_format", value = 2235804183},
    .{key = "set_width", value = 1286410249},
    .{key = "get_width", value = 3905245786},
    .{key = "set_height", value = 1286410249},
    .{key = "get_height", value = 3905245786},
    .{key = "set_depth", value = 1286410249},
    .{key = "get_depth", value = 3905245786},
    .{key = "set_array_layers", value = 1286410249},
    .{key = "get_array_layers", value = 3905245786},
    .{key = "set_mipmaps", value = 1286410249},
    .{key = "get_mipmaps", value = 3905245786},
    .{key = "set_texture_type", value = 652343381},
    .{key = "get_texture_type", value = 4036357416},
    .{key = "set_samples", value = 3774171498},
    .{key = "get_samples", value = 407791724},
    .{key = "set_usage_bits", value = 245642367},
    .{key = "get_usage_bits", value = 1313398998},
    .{key = "add_shareable_format", value = 565531219},
    .{key = "remove_shareable_format", value = 565531219},
    .{key = "set_format_override", value = 565531219},
    .{key = "get_format_override", value = 2235804183},
    .{key = "set_swizzle_r", value = 3833362581},
    .{key = "get_swizzle_r", value = 4150792614},
    .{key = "set_swizzle_g", value = 3833362581},
    .{key = "get_swizzle_g", value = 4150792614},
    .{key = "set_swizzle_b", value = 3833362581},
    .{key = "get_swizzle_b", value = 4150792614},
    .{key = "set_swizzle_a", value = 3833362581},
    .{key = "get_swizzle_a", value = 4150792614},
    .{key = "set_uniform_type", value = 1664894931},
    .{key = "get_uniform_type", value = 475470040},
    .{key = "set_binding", value = 1286410249},
    .{key = "get_binding", value = 3905245786},
    .{key = "add_id", value = 2722037293},
    .{key = "clear_ids", value = 3218959716},
    .{key = "get_ids", value = 3995934104},
    .{key = "set_location", value = 1286410249},
    .{key = "get_location", value = 3905245786},
    .{key = "set_offset", value = 1286410249},
    .{key = "get_offset", value = 3905245786},
    .{key = "set_format", value = 565531219},
    .{key = "get_format", value = 2235804183},
    .{key = "set_stride", value = 1286410249},
    .{key = "get_stride", value = 3905245786},
    .{key = "set_frequency", value = 522141836},
    .{key = "get_frequency", value = 4154106413},
    .{key = "set_seed", value = 1286410249},
    .{key = "get_seed", value = 2455072627},
    .{key = "set_state", value = 1286410249},
    .{key = "get_state", value = 3905245786},
    .{key = "randi", value = 2455072627},
    .{key = "randf", value = 191475506},
    .{key = "randfn", value = 837325100},
    .{key = "randf_range", value = 4269894367},
    .{key = "randi_range", value = 50157827},
    .{key = "rand_weighted", value = 4189642986},
    .{key = "randomize", value = 3218959716},
    .{key = "get_value", value = 1740695150},
    .{key = "get_min", value = 1740695150},
    .{key = "get_max", value = 1740695150},
    .{key = "get_step", value = 1740695150},
    .{key = "get_page", value = 1740695150},
    .{key = "get_as_ratio", value = 1740695150},
    .{key = "set_value", value = 373806689},
    .{key = "set_value_no_signal", value = 373806689},
    .{key = "set_min", value = 373806689},
    .{key = "set_max", value = 373806689},
    .{key = "set_step", value = 373806689},
    .{key = "set_page", value = 373806689},
    .{key = "set_as_ratio", value = 373806689},
    .{key = "set_use_rounded_values", value = 2586408642},
    .{key = "is_using_rounded_values", value = 36873697},
    .{key = "set_exp_ratio", value = 2586408642},
    .{key = "is_ratio_exp", value = 36873697},
    .{key = "set_allow_greater", value = 2586408642},
    .{key = "is_greater_allowed", value = 36873697},
    .{key = "set_allow_lesser", value = 2586408642},
    .{key = "is_lesser_allowed", value = 36873697},
    .{key = "share", value = 1078189570},
    .{key = "unshare", value = 3218959716},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_target_position", value = 743155724},
    .{key = "get_target_position", value = 3341600327},
    .{key = "is_colliding", value = 36873697},
    .{key = "force_raycast_update", value = 3218959716},
    .{key = "get_collider", value = 1981248198},
    .{key = "get_collider_rid", value = 2944877500},
    .{key = "get_collider_shape", value = 3905245786},
    .{key = "get_collision_point", value = 3341600327},
    .{key = "get_collision_normal", value = 3341600327},
    .{key = "add_exception_rid", value = 2722037293},
    .{key = "add_exception", value = 3090941106},
    .{key = "remove_exception_rid", value = 2722037293},
    .{key = "remove_exception", value = 3090941106},
    .{key = "clear_exceptions", value = 3218959716},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_exclude_parent_body", value = 2586408642},
    .{key = "get_exclude_parent_body", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_hit_from_inside", value = 2586408642},
    .{key = "is_hit_from_inside_enabled", value = 36873697},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_target_position", value = 3460891852},
    .{key = "get_target_position", value = 3360562783},
    .{key = "is_colliding", value = 36873697},
    .{key = "force_raycast_update", value = 3218959716},
    .{key = "get_collider", value = 1981248198},
    .{key = "get_collider_rid", value = 2944877500},
    .{key = "get_collider_shape", value = 3905245786},
    .{key = "get_collision_point", value = 3360562783},
    .{key = "get_collision_normal", value = 3360562783},
    .{key = "get_collision_face_index", value = 3905245786},
    .{key = "add_exception_rid", value = 2722037293},
    .{key = "add_exception", value = 1976431078},
    .{key = "remove_exception_rid", value = 2722037293},
    .{key = "remove_exception", value = 1976431078},
    .{key = "clear_exceptions", value = 3218959716},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_exclude_parent_body", value = 2586408642},
    .{key = "get_exclude_parent_body", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_hit_from_inside", value = 2586408642},
    .{key = "is_hit_from_inside_enabled", value = 36873697},
    .{key = "set_hit_back_faces", value = 2586408642},
    .{key = "is_hit_back_faces_enabled", value = 36873697},
    .{key = "set_debug_shape_custom_color", value = 2920490490},
    .{key = "get_debug_shape_custom_color", value = 3444240500},
    .{key = "set_debug_shape_thickness", value = 1286410249},
    .{key = "get_debug_shape_thickness", value = 3905245786},
    .{key = "set_size", value = 743155724},
    .{key = "get_size", value = 3341600327},
    .{key = "init_ref", value = 2240911060},
    .{key = "reference", value = 2240911060},
    .{key = "unreference", value = 2240911060},
    .{key = "get_reference_count", value = 3905245786},
    .{key = "get_border_color", value = 3444240500},
    .{key = "set_border_color", value = 2920490490},
    .{key = "get_border_width", value = 1740695150},
    .{key = "set_border_width", value = 373806689},
    .{key = "get_editor_only", value = 36873697},
    .{key = "set_editor_only", value = 2586408642},
    .{key = "set_intensity", value = 373806689},
    .{key = "get_intensity", value = 1740695150},
    .{key = "set_ambient_mode", value = 1748981278},
    .{key = "get_ambient_mode", value = 1014607621},
    .{key = "set_ambient_color", value = 2920490490},
    .{key = "get_ambient_color", value = 3444240500},
    .{key = "set_ambient_color_energy", value = 373806689},
    .{key = "get_ambient_color_energy", value = 1740695150},
    .{key = "set_max_distance", value = 373806689},
    .{key = "get_max_distance", value = 1740695150},
    .{key = "set_mesh_lod_threshold", value = 373806689},
    .{key = "get_mesh_lod_threshold", value = 1740695150},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_origin_offset", value = 3460891852},
    .{key = "get_origin_offset", value = 3360562783},
    .{key = "set_as_interior", value = 2586408642},
    .{key = "is_set_as_interior", value = 36873697},
    .{key = "set_enable_box_projection", value = 2586408642},
    .{key = "is_box_projection_enabled", value = 36873697},
    .{key = "set_enable_shadows", value = 2586408642},
    .{key = "are_shadows_enabled", value = 36873697},
    .{key = "set_cull_mask", value = 1286410249},
    .{key = "get_cull_mask", value = 3905245786},
    .{key = "set_reflection_mask", value = 1286410249},
    .{key = "get_reflection_mask", value = 3905245786},
    .{key = "set_update_mode", value = 4090221187},
    .{key = "get_update_mode", value = 2367550552},
    .{key = "create_from_string", value = 2150300909},
    .{key = "clear", value = 3218959716},
    .{key = "compile", value = 166001499},
    .{key = "search", value = 3365977994},
    .{key = "search_all", value = 849021363},
    .{key = "sub", value = 54019702},
    .{key = "is_valid", value = 36873697},
    .{key = "get_pattern", value = 201670096},
    .{key = "get_group_count", value = 3905245786},
    .{key = "get_names", value = 1139954409},
    .{key = "get_subject", value = 201670096},
    .{key = "get_group_count", value = 3905245786},
    .{key = "get_names", value = 3102165223},
    .{key = "get_strings", value = 1139954409},
    .{key = "get_string", value = 687115856},
    .{key = "get_start", value = 490464691},
    .{key = "get_end", value = 490464691},
    .{key = "set_remote_node", value = 1348162250},
    .{key = "get_remote_node", value = 4075236667},
    .{key = "force_update_cache", value = 3218959716},
    .{key = "set_use_global_coordinates", value = 2586408642},
    .{key = "get_use_global_coordinates", value = 36873697},
    .{key = "set_update_position", value = 2586408642},
    .{key = "get_update_position", value = 36873697},
    .{key = "set_update_rotation", value = 2586408642},
    .{key = "get_update_rotation", value = 36873697},
    .{key = "set_update_scale", value = 2586408642},
    .{key = "get_update_scale", value = 36873697},
    .{key = "set_remote_node", value = 1348162250},
    .{key = "get_remote_node", value = 4075236667},
    .{key = "force_update_cache", value = 3218959716},
    .{key = "set_use_global_coordinates", value = 2586408642},
    .{key = "get_use_global_coordinates", value = 36873697},
    .{key = "set_update_position", value = 2586408642},
    .{key = "get_update_position", value = 36873697},
    .{key = "set_update_rotation", value = 2586408642},
    .{key = "get_update_rotation", value = 36873697},
    .{key = "set_update_scale", value = 2586408642},
    .{key = "get_update_scale", value = 36873697},
    .{key = "get_render_scene_buffers", value = 2793216201},
    .{key = "get_render_scene_data", value = 1288715698},
    .{key = "get_environment", value = 2944877500},
    .{key = "get_camera_attributes", value = 2944877500},
    .{key = "configure", value = 3072623270},
    .{key = "get_render_target", value = 2944877500},
    .{key = "set_render_target", value = 2722037293},
    .{key = "get_internal_size", value = 3690982128},
    .{key = "set_internal_size", value = 1130785943},
    .{key = "get_target_size", value = 3690982128},
    .{key = "set_target_size", value = 1130785943},
    .{key = "get_view_count", value = 3905245786},
    .{key = "set_view_count", value = 1286410249},
    .{key = "get_scaling_3d_mode", value = 976778074},
    .{key = "set_scaling_3d_mode", value = 447477857},
    .{key = "get_msaa_3d", value = 3109158617},
    .{key = "set_msaa_3d", value = 3952630748},
    .{key = "get_screen_space_aa", value = 641513172},
    .{key = "set_screen_space_aa", value = 139543108},
    .{key = "get_fsr_sharpness", value = 1740695150},
    .{key = "set_fsr_sharpness", value = 373806689},
    .{key = "get_texture_mipmap_bias", value = 1740695150},
    .{key = "set_texture_mipmap_bias", value = 373806689},
    .{key = "has_texture", value = 471820014},
    .{key = "create_texture", value = 3559915770},
    .{key = "create_texture_from_format", value = 3344669382},
    .{key = "create_texture_view", value = 283055834},
    .{key = "get_texture", value = 750006389},
    .{key = "get_texture_format", value = 371461758},
    .{key = "get_texture_slice", value = 588440706},
    .{key = "get_texture_slice_view", value = 682451778},
    .{key = "get_texture_slice_size", value = 2617625368},
    .{key = "clear_context", value = 3304788590},
    .{key = "get_color_texture", value = 3050822880},
    .{key = "get_color_layer", value = 3087988589},
    .{key = "get_depth_texture", value = 3050822880},
    .{key = "get_depth_layer", value = 3087988589},
    .{key = "get_velocity_texture", value = 3050822880},
    .{key = "get_velocity_layer", value = 3087988589},
    .{key = "get_render_target", value = 2944877500},
    .{key = "get_view_count", value = 3905245786},
    .{key = "get_internal_size", value = 3690982128},
    .{key = "get_msaa_3d", value = 3109158617},
    .{key = "get_use_taa", value = 36873697},
    .{key = "get_cam_transform", value = 3229777777},
    .{key = "get_cam_projection", value = 2910717950},
    .{key = "get_view_count", value = 3905245786},
    .{key = "get_view_eye_offset", value = 711720468},
    .{key = "get_view_projection", value = 3179846605},
    .{key = "get_uniform_buffer", value = 2944877500},
    .{key = "texture_create", value = 3709173589},
    .{key = "texture_create_shared", value = 3178156134},
    .{key = "texture_create_shared_from_slice", value = 1808971279},
    .{key = "texture_create_from_extension", value = 1397171480},
    .{key = "texture_update", value = 1349464008},
    .{key = "texture_get_data", value = 1859412099},
    .{key = "texture_is_format_supported_for_usage", value = 2592520478},
    .{key = "texture_is_shared", value = 3521089500},
    .{key = "texture_is_valid", value = 3521089500},
    .{key = "texture_copy", value = 2859522160},
    .{key = "texture_clear", value = 3477703247},
    .{key = "texture_resolve_multisample", value = 3181288260},
    .{key = "texture_get_format", value = 1374471690},
    .{key = "texture_get_native_handle", value = 3917799429},
    .{key = "framebuffer_format_create", value = 697032759},
    .{key = "framebuffer_format_create_multipass", value = 2647479094},
    .{key = "framebuffer_format_create_empty", value = 555930169},
    .{key = "framebuffer_format_get_texture_samples", value = 4223391010},
    .{key = "framebuffer_create", value = 3284231055},
    .{key = "framebuffer_create_multipass", value = 1750306695},
    .{key = "framebuffer_create_empty", value = 3058360618},
    .{key = "framebuffer_get_format", value = 3917799429},
    .{key = "framebuffer_is_valid", value = 4155700596},
    .{key = "sampler_create", value = 2327892535},
    .{key = "sampler_is_format_supported_for_filter", value = 2247922238},
    .{key = "vertex_buffer_create", value = 3410049843},
    .{key = "vertex_format_create", value = 1242678479},
    .{key = "vertex_array_create", value = 3799816279},
    .{key = "index_buffer_create", value = 3935920523},
    .{key = "index_array_create", value = 2256026069},
    .{key = "shader_compile_spirv_from_source", value = 1178973306},
    .{key = "shader_compile_binary_from_spirv", value = 134910450},
    .{key = "shader_create_from_spirv", value = 342949005},
    .{key = "shader_create_from_bytecode", value = 1687031350},
    .{key = "shader_create_placeholder", value = 529393457},
    .{key = "shader_get_vertex_input_attribute_mask", value = 3917799429},
    .{key = "uniform_buffer_create", value = 34556762},
    .{key = "storage_buffer_create", value = 2316365934},
    .{key = "texture_buffer_create", value = 1470338698},
    .{key = "uniform_set_create", value = 2280795797},
    .{key = "uniform_set_is_valid", value = 3521089500},
    .{key = "buffer_copy", value = 864257779},
    .{key = "buffer_update", value = 3454956949},
    .{key = "buffer_clear", value = 2452320800},
    .{key = "buffer_get_data", value = 3101830688},
    .{key = "render_pipeline_create", value = 2385451958},
    .{key = "render_pipeline_is_valid", value = 3521089500},
    .{key = "compute_pipeline_create", value = 1448838280},
    .{key = "compute_pipeline_is_valid", value = 3521089500},
    .{key = "screen_get_width", value = 1591665591},
    .{key = "screen_get_height", value = 1591665591},
    .{key = "screen_get_framebuffer_format", value = 1591665591},
    .{key = "draw_list_begin_for_screen", value = 3988079995},
    .{key = "draw_list_begin", value = 2686605154},
    .{key = "draw_list_begin_split", value = 2406300660},
    .{key = "draw_list_set_blend_constants", value = 2878471219},
    .{key = "draw_list_bind_render_pipeline", value = 4040184819},
    .{key = "draw_list_bind_uniform_set", value = 749655778},
    .{key = "draw_list_bind_vertex_array", value = 4040184819},
    .{key = "draw_list_bind_index_array", value = 4040184819},
    .{key = "draw_list_set_push_constant", value = 2772371345},
    .{key = "draw_list_draw", value = 4230067973},
    .{key = "draw_list_enable_scissor", value = 244650101},
    .{key = "draw_list_disable_scissor", value = 1286410249},
    .{key = "draw_list_switch_to_next_pass", value = 2455072627},
    .{key = "draw_list_switch_to_next_pass_split", value = 2865087369},
    .{key = "draw_list_end", value = 3218959716},
    .{key = "compute_list_begin", value = 2455072627},
    .{key = "compute_list_bind_compute_pipeline", value = 4040184819},
    .{key = "compute_list_set_push_constant", value = 2772371345},
    .{key = "compute_list_bind_uniform_set", value = 749655778},
    .{key = "compute_list_dispatch", value = 4275841770},
    .{key = "compute_list_add_barrier", value = 1286410249},
    .{key = "compute_list_end", value = 3218959716},
    .{key = "free_rid", value = 2722037293},
    .{key = "capture_timestamp", value = 83702148},
    .{key = "get_captured_timestamps_count", value = 3905245786},
    .{key = "get_captured_timestamps_frame", value = 3905245786},
    .{key = "get_captured_timestamp_gpu_time", value = 923996154},
    .{key = "get_captured_timestamp_cpu_time", value = 923996154},
    .{key = "get_captured_timestamp_name", value = 844755477},
    .{key = "limit_get", value = 1559202131},
    .{key = "get_frame_delay", value = 3905245786},
    .{key = "submit", value = 3218959716},
    .{key = "sync", value = 3218959716},
    .{key = "barrier", value = 3718155691},
    .{key = "full_barrier", value = 3218959716},
    .{key = "create_local_device", value = 2846302423},
    .{key = "set_resource_name", value = 2726140452},
    .{key = "draw_command_begin_label", value = 1636512886},
    .{key = "draw_command_insert_label", value = 1636512886},
    .{key = "draw_command_end_label", value = 3218959716},
    .{key = "get_device_vendor_name", value = 201670096},
    .{key = "get_device_name", value = 201670096},
    .{key = "get_device_pipeline_cache_uuid", value = 201670096},
    .{key = "get_memory_usage", value = 251690689},
    .{key = "get_driver_resource", value = 501815484},
    .{key = "texture_2d_create", value = 2010018390},
    .{key = "texture_2d_layered_create", value = 913689023},
    .{key = "texture_3d_create", value = 4036838706},
    .{key = "texture_proxy_create", value = 41030802},
    .{key = "texture_2d_update", value = 999539803},
    .{key = "texture_3d_update", value = 684822712},
    .{key = "texture_proxy_update", value = 395945892},
    .{key = "texture_2d_placeholder_create", value = 529393457},
    .{key = "texture_2d_layered_placeholder_create", value = 1394585590},
    .{key = "texture_3d_placeholder_create", value = 529393457},
    .{key = "texture_2d_get", value = 4206205781},
    .{key = "texture_2d_layer_get", value = 2705440895},
    .{key = "texture_3d_get", value = 2684255073},
    .{key = "texture_replace", value = 395945892},
    .{key = "texture_set_size_override", value = 4288446313},
    .{key = "texture_set_path", value = 2726140452},
    .{key = "texture_get_path", value = 642473191},
    .{key = "texture_get_format", value = 1932918979},
    .{key = "texture_set_force_redraw_if_visible", value = 1265174801},
    .{key = "texture_rd_create", value = 1434128712},
    .{key = "texture_get_rd_texture", value = 2790148051},
    .{key = "texture_get_native_handle", value = 1834114100},
    .{key = "shader_create", value = 529393457},
    .{key = "shader_set_code", value = 2726140452},
    .{key = "shader_set_path_hint", value = 2726140452},
    .{key = "shader_get_code", value = 642473191},
    .{key = "get_shader_parameter_list", value = 2684255073},
    .{key = "shader_get_parameter_default", value = 2621281810},
    .{key = "shader_set_default_texture_parameter", value = 4094001817},
    .{key = "shader_get_default_texture_parameter", value = 1464608890},
    .{key = "material_create", value = 529393457},
    .{key = "material_set_shader", value = 395945892},
    .{key = "material_set_param", value = 3477296213},
    .{key = "material_get_param", value = 2621281810},
    .{key = "material_set_render_priority", value = 3411492887},
    .{key = "material_set_next_pass", value = 395945892},
    .{key = "mesh_create_from_surfaces", value = 4291747531},
    .{key = "mesh_create", value = 529393457},
    .{key = "mesh_surface_get_format_offset", value = 2981368685},
    .{key = "mesh_surface_get_format_vertex_stride", value = 3188363337},
    .{key = "mesh_surface_get_format_normal_tangent_stride", value = 3188363337},
    .{key = "mesh_surface_get_format_attribute_stride", value = 3188363337},
    .{key = "mesh_surface_get_format_skin_stride", value = 3188363337},
    .{key = "mesh_add_surface", value = 1217542888},
    .{key = "mesh_add_surface_from_arrays", value = 2342446560},
    .{key = "mesh_get_blend_shape_count", value = 2198884583},
    .{key = "mesh_set_blend_shape_mode", value = 1294662092},
    .{key = "mesh_get_blend_shape_mode", value = 4282291819},
    .{key = "mesh_surface_set_material", value = 2310537182},
    .{key = "mesh_surface_get_material", value = 1066463050},
    .{key = "mesh_get_surface", value = 186674697},
    .{key = "mesh_surface_get_arrays", value = 1778388067},
    .{key = "mesh_surface_get_blend_shape_arrays", value = 1778388067},
    .{key = "mesh_get_surface_count", value = 2198884583},
    .{key = "mesh_set_custom_aabb", value = 3696536120},
    .{key = "mesh_get_custom_aabb", value = 974181306},
    .{key = "mesh_clear", value = 2722037293},
    .{key = "mesh_surface_update_vertex_region", value = 2900195149},
    .{key = "mesh_surface_update_attribute_region", value = 2900195149},
    .{key = "mesh_surface_update_skin_region", value = 2900195149},
    .{key = "mesh_set_shadow_mesh", value = 395945892},
    .{key = "multimesh_create", value = 529393457},
    .{key = "multimesh_allocate_data", value = 283685892},
    .{key = "multimesh_get_instance_count", value = 2198884583},
    .{key = "multimesh_set_mesh", value = 395945892},
    .{key = "multimesh_instance_set_transform", value = 675327471},
    .{key = "multimesh_instance_set_transform_2d", value = 736082694},
    .{key = "multimesh_instance_set_color", value = 176975443},
    .{key = "multimesh_instance_set_custom_data", value = 176975443},
    .{key = "multimesh_get_mesh", value = 3814569979},
    .{key = "multimesh_get_aabb", value = 974181306},
    .{key = "multimesh_set_custom_aabb", value = 3696536120},
    .{key = "multimesh_get_custom_aabb", value = 974181306},
    .{key = "multimesh_instance_get_transform", value = 1050775521},
    .{key = "multimesh_instance_get_transform_2d", value = 1324854622},
    .{key = "multimesh_instance_get_color", value = 2946315076},
    .{key = "multimesh_instance_get_custom_data", value = 2946315076},
    .{key = "multimesh_set_visible_instances", value = 3411492887},
    .{key = "multimesh_get_visible_instances", value = 2198884583},
    .{key = "multimesh_set_buffer", value = 2960552364},
    .{key = "multimesh_get_buffer", value = 3964669176},
    .{key = "skeleton_create", value = 529393457},
    .{key = "skeleton_allocate_data", value = 1904426712},
    .{key = "skeleton_get_bone_count", value = 2198884583},
    .{key = "skeleton_bone_set_transform", value = 675327471},
    .{key = "skeleton_bone_get_transform", value = 1050775521},
    .{key = "skeleton_bone_set_transform_2d", value = 736082694},
    .{key = "skeleton_bone_get_transform_2d", value = 1324854622},
    .{key = "skeleton_set_base_transform_2d", value = 1246044741},
    .{key = "directional_light_create", value = 529393457},
    .{key = "omni_light_create", value = 529393457},
    .{key = "spot_light_create", value = 529393457},
    .{key = "light_set_color", value = 2948539648},
    .{key = "light_set_param", value = 501936875},
    .{key = "light_set_shadow", value = 1265174801},
    .{key = "light_set_projector", value = 395945892},
    .{key = "light_set_negative", value = 1265174801},
    .{key = "light_set_cull_mask", value = 3411492887},
    .{key = "light_set_distance_fade", value = 1622292572},
    .{key = "light_set_reverse_cull_face_mode", value = 1265174801},
    .{key = "light_set_bake_mode", value = 1048525260},
    .{key = "light_set_max_sdfgi_cascade", value = 3411492887},
    .{key = "light_omni_set_shadow_mode", value = 2552677200},
    .{key = "light_directional_set_shadow_mode", value = 380462970},
    .{key = "light_directional_set_blend_splits", value = 1265174801},
    .{key = "light_directional_set_sky_mode", value = 2559740754},
    .{key = "light_projectors_set_filter", value = 43944325},
    .{key = "positional_soft_shadow_filter_set_quality", value = 3613045266},
    .{key = "directional_soft_shadow_filter_set_quality", value = 3613045266},
    .{key = "directional_shadow_atlas_set_size", value = 300928843},
    .{key = "reflection_probe_create", value = 529393457},
    .{key = "reflection_probe_set_update_mode", value = 3853670147},
    .{key = "reflection_probe_set_intensity", value = 1794382983},
    .{key = "reflection_probe_set_ambient_mode", value = 184163074},
    .{key = "reflection_probe_set_ambient_color", value = 2948539648},
    .{key = "reflection_probe_set_ambient_energy", value = 1794382983},
    .{key = "reflection_probe_set_max_distance", value = 1794382983},
    .{key = "reflection_probe_set_size", value = 3227306858},
    .{key = "reflection_probe_set_origin_offset", value = 3227306858},
    .{key = "reflection_probe_set_as_interior", value = 1265174801},
    .{key = "reflection_probe_set_enable_box_projection", value = 1265174801},
    .{key = "reflection_probe_set_enable_shadows", value = 1265174801},
    .{key = "reflection_probe_set_cull_mask", value = 3411492887},
    .{key = "reflection_probe_set_reflection_mask", value = 3411492887},
    .{key = "reflection_probe_set_resolution", value = 3411492887},
    .{key = "reflection_probe_set_mesh_lod_threshold", value = 1794382983},
    .{key = "decal_create", value = 529393457},
    .{key = "decal_set_size", value = 3227306858},
    .{key = "decal_set_texture", value = 3953344054},
    .{key = "decal_set_emission_energy", value = 1794382983},
    .{key = "decal_set_albedo_mix", value = 1794382983},
    .{key = "decal_set_modulate", value = 2948539648},
    .{key = "decal_set_cull_mask", value = 3411492887},
    .{key = "decal_set_distance_fade", value = 2972769666},
    .{key = "decal_set_fade", value = 2513314492},
    .{key = "decal_set_normal_fade", value = 1794382983},
    .{key = "decals_set_filter", value = 3519875702},
    .{key = "gi_set_use_half_resolution", value = 2586408642},
    .{key = "voxel_gi_create", value = 529393457},
    .{key = "voxel_gi_allocate_data", value = 4108223027},
    .{key = "voxel_gi_get_octree_size", value = 2607699645},
    .{key = "voxel_gi_get_octree_cells", value = 3348040486},
    .{key = "voxel_gi_get_data_cells", value = 3348040486},
    .{key = "voxel_gi_get_distance_field", value = 3348040486},
    .{key = "voxel_gi_get_level_counts", value = 788230395},
    .{key = "voxel_gi_get_to_cell_xform", value = 1128465797},
    .{key = "voxel_gi_set_dynamic_range", value = 1794382983},
    .{key = "voxel_gi_set_propagation", value = 1794382983},
    .{key = "voxel_gi_set_energy", value = 1794382983},
    .{key = "voxel_gi_set_baked_exposure_normalization", value = 1794382983},
    .{key = "voxel_gi_set_bias", value = 1794382983},
    .{key = "voxel_gi_set_normal_bias", value = 1794382983},
    .{key = "voxel_gi_set_interior", value = 1265174801},
    .{key = "voxel_gi_set_use_two_bounces", value = 1265174801},
    .{key = "voxel_gi_set_quality", value = 1538689978},
    .{key = "lightmap_create", value = 529393457},
    .{key = "lightmap_set_textures", value = 2646464759},
    .{key = "lightmap_set_probe_bounds", value = 3696536120},
    .{key = "lightmap_set_probe_interior", value = 1265174801},
    .{key = "lightmap_set_probe_capture_data", value = 3217845880},
    .{key = "lightmap_get_probe_capture_points", value = 808965560},
    .{key = "lightmap_get_probe_capture_sh", value = 1569415609},
    .{key = "lightmap_get_probe_capture_tetrahedra", value = 788230395},
    .{key = "lightmap_get_probe_capture_bsp_tree", value = 788230395},
    .{key = "lightmap_set_baked_exposure_normalization", value = 1794382983},
    .{key = "lightmap_set_probe_capture_update_speed", value = 373806689},
    .{key = "particles_create", value = 529393457},
    .{key = "particles_set_mode", value = 3492270028},
    .{key = "particles_set_emitting", value = 1265174801},
    .{key = "particles_get_emitting", value = 3521089500},
    .{key = "particles_set_amount", value = 3411492887},
    .{key = "particles_set_amount_ratio", value = 1794382983},
    .{key = "particles_set_lifetime", value = 1794382983},
    .{key = "particles_set_one_shot", value = 1265174801},
    .{key = "particles_set_pre_process_time", value = 1794382983},
    .{key = "particles_set_explosiveness_ratio", value = 1794382983},
    .{key = "particles_set_randomness_ratio", value = 1794382983},
    .{key = "particles_set_interp_to_end", value = 1794382983},
    .{key = "particles_set_emitter_velocity", value = 3227306858},
    .{key = "particles_set_custom_aabb", value = 3696536120},
    .{key = "particles_set_speed_scale", value = 1794382983},
    .{key = "particles_set_use_local_coordinates", value = 1265174801},
    .{key = "particles_set_process_material", value = 395945892},
    .{key = "particles_set_fixed_fps", value = 3411492887},
    .{key = "particles_set_interpolate", value = 1265174801},
    .{key = "particles_set_fractional_delta", value = 1265174801},
    .{key = "particles_set_collision_base_size", value = 1794382983},
    .{key = "particles_set_transform_align", value = 3264971368},
    .{key = "particles_set_trails", value = 2010054925},
    .{key = "particles_set_trail_bind_poses", value = 684822712},
    .{key = "particles_is_inactive", value = 3521089500},
    .{key = "particles_request_process", value = 2722037293},
    .{key = "particles_restart", value = 2722037293},
    .{key = "particles_set_subemitter", value = 395945892},
    .{key = "particles_emit", value = 4043136117},
    .{key = "particles_set_draw_order", value = 935028487},
    .{key = "particles_set_draw_passes", value = 3411492887},
    .{key = "particles_set_draw_pass_mesh", value = 2310537182},
    .{key = "particles_get_current_aabb", value = 3952830260},
    .{key = "particles_set_emission_transform", value = 3935195649},
    .{key = "particles_collision_create", value = 529393457},
    .{key = "particles_collision_set_collision_type", value = 1497044930},
    .{key = "particles_collision_set_cull_mask", value = 3411492887},
    .{key = "particles_collision_set_sphere_radius", value = 1794382983},
    .{key = "particles_collision_set_box_extents", value = 3227306858},
    .{key = "particles_collision_set_attractor_strength", value = 1794382983},
    .{key = "particles_collision_set_attractor_directionality", value = 1794382983},
    .{key = "particles_collision_set_attractor_attenuation", value = 1794382983},
    .{key = "particles_collision_set_field_texture", value = 395945892},
    .{key = "particles_collision_height_field_update", value = 2722037293},
    .{key = "particles_collision_set_height_field_resolution", value = 962977297},
    .{key = "fog_volume_create", value = 529393457},
    .{key = "fog_volume_set_shape", value = 3818703106},
    .{key = "fog_volume_set_size", value = 3227306858},
    .{key = "fog_volume_set_material", value = 395945892},
    .{key = "visibility_notifier_create", value = 529393457},
    .{key = "visibility_notifier_set_aabb", value = 3696536120},
    .{key = "visibility_notifier_set_callbacks", value = 2689735388},
    .{key = "occluder_create", value = 529393457},
    .{key = "occluder_set_mesh", value = 3854404263},
    .{key = "camera_create", value = 529393457},
    .{key = "camera_set_perspective", value = 157498339},
    .{key = "camera_set_orthogonal", value = 157498339},
    .{key = "camera_set_frustum", value = 1889878953},
    .{key = "camera_set_transform", value = 3935195649},
    .{key = "camera_set_cull_mask", value = 3411492887},
    .{key = "camera_set_environment", value = 395945892},
    .{key = "camera_set_camera_attributes", value = 395945892},
    .{key = "camera_set_compositor", value = 395945892},
    .{key = "camera_set_use_vertical_aspect", value = 1265174801},
    .{key = "viewport_create", value = 529393457},
    .{key = "viewport_set_use_xr", value = 1265174801},
    .{key = "viewport_set_size", value = 4288446313},
    .{key = "viewport_set_active", value = 1265174801},
    .{key = "viewport_set_parent_viewport", value = 395945892},
    .{key = "viewport_attach_to_screen", value = 1062245816},
    .{key = "viewport_set_render_direct_to_screen", value = 1265174801},
    .{key = "viewport_set_canvas_cull_mask", value = 3411492887},
    .{key = "viewport_set_scaling_3d_mode", value = 2386524376},
    .{key = "viewport_set_scaling_3d_scale", value = 1794382983},
    .{key = "viewport_set_fsr_sharpness", value = 1794382983},
    .{key = "viewport_set_texture_mipmap_bias", value = 1794382983},
    .{key = "viewport_set_update_mode", value = 3161116010},
    .{key = "viewport_set_clear_mode", value = 3628367896},
    .{key = "viewport_get_render_target", value = 3814569979},
    .{key = "viewport_get_texture", value = 3814569979},
    .{key = "viewport_set_disable_3d", value = 1265174801},
    .{key = "viewport_set_disable_2d", value = 1265174801},
    .{key = "viewport_set_environment_mode", value = 2196892182},
    .{key = "viewport_attach_camera", value = 395945892},
    .{key = "viewport_set_scenario", value = 395945892},
    .{key = "viewport_attach_canvas", value = 395945892},
    .{key = "viewport_remove_canvas", value = 395945892},
    .{key = "viewport_set_snap_2d_transforms_to_pixel", value = 1265174801},
    .{key = "viewport_set_snap_2d_vertices_to_pixel", value = 1265174801},
    .{key = "viewport_set_default_canvas_item_texture_filter", value = 1155129294},
    .{key = "viewport_set_default_canvas_item_texture_repeat", value = 1652956681},
    .{key = "viewport_set_canvas_transform", value = 3608606053},
    .{key = "viewport_set_canvas_stacking", value = 3713930247},
    .{key = "viewport_set_transparent_background", value = 1265174801},
    .{key = "viewport_set_global_canvas_transform", value = 1246044741},
    .{key = "viewport_set_sdf_oversize_and_scale", value = 1329198632},
    .{key = "viewport_set_positional_shadow_atlas_size", value = 1904426712},
    .{key = "viewport_set_positional_shadow_atlas_quadrant_subdivision", value = 4288446313},
    .{key = "viewport_set_msaa_3d", value = 3764433340},
    .{key = "viewport_set_msaa_2d", value = 3764433340},
    .{key = "viewport_set_use_hdr_2d", value = 1265174801},
    .{key = "viewport_set_screen_space_aa", value = 1447279591},
    .{key = "viewport_set_use_taa", value = 1265174801},
    .{key = "viewport_set_use_debanding", value = 1265174801},
    .{key = "viewport_set_use_occlusion_culling", value = 1265174801},
    .{key = "viewport_set_occlusion_rays_per_thread", value = 1286410249},
    .{key = "viewport_set_occlusion_culling_build_quality", value = 2069725696},
    .{key = "viewport_get_render_info", value = 2041262392},
    .{key = "viewport_set_debug_draw", value = 2089420930},
    .{key = "viewport_set_measure_render_time", value = 1265174801},
    .{key = "viewport_get_measured_render_time_cpu", value = 866169185},
    .{key = "viewport_get_measured_render_time_gpu", value = 866169185},
    .{key = "viewport_set_vrs_mode", value = 398809874},
    .{key = "viewport_set_vrs_texture", value = 395945892},
    .{key = "sky_create", value = 529393457},
    .{key = "sky_set_radiance_size", value = 3411492887},
    .{key = "sky_set_mode", value = 3279019937},
    .{key = "sky_set_material", value = 395945892},
    .{key = "sky_bake_panorama", value = 3875285818},
    .{key = "compositor_effect_create", value = 529393457},
    .{key = "compositor_effect_set_enabled", value = 1265174801},
    .{key = "compositor_effect_set_callback", value = 487412485},
    .{key = "compositor_effect_set_flag", value = 3659527075},
    .{key = "compositor_create", value = 529393457},
    .{key = "compositor_set_compositor_effects", value = 684822712},
    .{key = "environment_create", value = 529393457},
    .{key = "environment_set_background", value = 3937328877},
    .{key = "environment_set_sky", value = 395945892},
    .{key = "environment_set_sky_custom_fov", value = 1794382983},
    .{key = "environment_set_sky_orientation", value = 1735850857},
    .{key = "environment_set_bg_color", value = 2948539648},
    .{key = "environment_set_bg_energy", value = 2513314492},
    .{key = "environment_set_canvas_max_layer", value = 3411492887},
    .{key = "environment_set_ambient_light", value = 1214961493},
    .{key = "environment_set_glow", value = 2421724940},
    .{key = "environment_set_tonemap", value = 2914312638},
    .{key = "environment_set_adjustment", value = 876799838},
    .{key = "environment_set_ssr", value = 3607294374},
    .{key = "environment_set_ssao", value = 3994732740},
    .{key = "environment_set_fog", value = 105051629},
    .{key = "environment_set_sdfgi", value = 3519144388},
    .{key = "environment_set_volumetric_fog", value = 1553633833},
    .{key = "environment_glow_set_use_bicubic_upscale", value = 2586408642},
    .{key = "environment_set_ssr_roughness_quality", value = 1190026788},
    .{key = "environment_set_ssao_quality", value = 189753569},
    .{key = "environment_set_ssil_quality", value = 1713836683},
    .{key = "environment_set_sdfgi_ray_count", value = 340137951},
    .{key = "environment_set_sdfgi_frames_to_converge", value = 2182444374},
    .{key = "environment_set_sdfgi_frames_to_update_light", value = 1251144068},
    .{key = "environment_set_volumetric_fog_volume_size", value = 3937882851},
    .{key = "environment_set_volumetric_fog_filter_active", value = 2586408642},
    .{key = "environment_bake_panorama", value = 2452908646},
    .{key = "screen_space_roughness_limiter_set_active", value = 916716790},
    .{key = "sub_surface_scattering_set_quality", value = 64571803},
    .{key = "sub_surface_scattering_set_scale", value = 1017552074},
    .{key = "camera_attributes_create", value = 529393457},
    .{key = "camera_attributes_set_dof_blur_quality", value = 2220136795},
    .{key = "camera_attributes_set_dof_blur_bokeh_shape", value = 1205058394},
    .{key = "camera_attributes_set_dof_blur", value = 316272616},
    .{key = "camera_attributes_set_exposure", value = 2513314492},
    .{key = "camera_attributes_set_auto_exposure", value = 4266986332},
    .{key = "scenario_create", value = 529393457},
    .{key = "scenario_set_environment", value = 395945892},
    .{key = "scenario_set_fallback_environment", value = 395945892},
    .{key = "scenario_set_camera_attributes", value = 395945892},
    .{key = "scenario_set_compositor", value = 395945892},
    .{key = "instance_create2", value = 746547085},
    .{key = "instance_create", value = 529393457},
    .{key = "instance_set_base", value = 395945892},
    .{key = "instance_set_scenario", value = 395945892},
    .{key = "instance_set_layer_mask", value = 3411492887},
    .{key = "instance_set_pivot_data", value = 1280615259},
    .{key = "instance_set_transform", value = 3935195649},
    .{key = "instance_attach_object_instance_id", value = 3411492887},
    .{key = "instance_set_blend_shape_weight", value = 1892459533},
    .{key = "instance_set_surface_override_material", value = 2310537182},
    .{key = "instance_set_visible", value = 1265174801},
    .{key = "instance_geometry_set_transparency", value = 1794382983},
    .{key = "instance_set_custom_aabb", value = 3696536120},
    .{key = "instance_attach_skeleton", value = 395945892},
    .{key = "instance_set_extra_visibility_margin", value = 1794382983},
    .{key = "instance_set_visibility_parent", value = 395945892},
    .{key = "instance_set_ignore_culling", value = 1265174801},
    .{key = "instance_geometry_set_flag", value = 1014989537},
    .{key = "instance_geometry_set_cast_shadows_setting", value = 3768836020},
    .{key = "instance_geometry_set_material_override", value = 395945892},
    .{key = "instance_geometry_set_material_overlay", value = 395945892},
    .{key = "instance_geometry_set_visibility_range", value = 4263925858},
    .{key = "instance_geometry_set_lightmap", value = 536974962},
    .{key = "instance_geometry_set_lod_bias", value = 1794382983},
    .{key = "instance_geometry_set_shader_parameter", value = 3477296213},
    .{key = "instance_geometry_get_shader_parameter", value = 2621281810},
    .{key = "instance_geometry_get_shader_parameter_default_value", value = 2621281810},
    .{key = "instance_geometry_get_shader_parameter_list", value = 2684255073},
    .{key = "instances_cull_aabb", value = 2570105777},
    .{key = "instances_cull_ray", value = 2208759584},
    .{key = "instances_cull_convex", value = 2488539944},
    .{key = "bake_render_uv2", value = 1904608558},
    .{key = "canvas_create", value = 529393457},
    .{key = "canvas_set_item_mirroring", value = 2343975398},
    .{key = "canvas_set_item_repeat", value = 1739512717},
    .{key = "canvas_set_modulate", value = 2948539648},
    .{key = "canvas_set_disable_scale", value = 2586408642},
    .{key = "canvas_texture_create", value = 529393457},
    .{key = "canvas_texture_set_channel", value = 3822119138},
    .{key = "canvas_texture_set_shading_parameters", value = 2124967469},
    .{key = "canvas_texture_set_texture_filter", value = 1155129294},
    .{key = "canvas_texture_set_texture_repeat", value = 1652956681},
    .{key = "canvas_item_create", value = 529393457},
    .{key = "canvas_item_set_parent", value = 395945892},
    .{key = "canvas_item_set_default_texture_filter", value = 1155129294},
    .{key = "canvas_item_set_default_texture_repeat", value = 1652956681},
    .{key = "canvas_item_set_visible", value = 1265174801},
    .{key = "canvas_item_set_light_mask", value = 3411492887},
    .{key = "canvas_item_set_visibility_layer", value = 3411492887},
    .{key = "canvas_item_set_transform", value = 1246044741},
    .{key = "canvas_item_set_clip", value = 1265174801},
    .{key = "canvas_item_set_distance_field_mode", value = 1265174801},
    .{key = "canvas_item_set_custom_rect", value = 1333997032},
    .{key = "canvas_item_set_modulate", value = 2948539648},
    .{key = "canvas_item_set_self_modulate", value = 2948539648},
    .{key = "canvas_item_set_draw_behind_parent", value = 1265174801},
    .{key = "canvas_item_add_line", value = 1819681853},
    .{key = "canvas_item_add_polyline", value = 3098767073},
    .{key = "canvas_item_add_multiline", value = 2088642721},
    .{key = "canvas_item_add_rect", value = 934531857},
    .{key = "canvas_item_add_circle", value = 2439351960},
    .{key = "canvas_item_add_texture_rect", value = 324864032},
    .{key = "canvas_item_add_msdf_texture_rect_region", value = 97408773},
    .{key = "canvas_item_add_lcd_texture_rect_region", value = 359793297},
    .{key = "canvas_item_add_texture_rect_region", value = 485157892},
    .{key = "canvas_item_add_nine_patch", value = 389957886},
    .{key = "canvas_item_add_primitive", value = 3731601077},
    .{key = "canvas_item_add_polygon", value = 3580000528},
    .{key = "canvas_item_add_triangle_array", value = 660261329},
    .{key = "canvas_item_add_mesh", value = 316450961},
    .{key = "canvas_item_add_multimesh", value = 2131855138},
    .{key = "canvas_item_add_particles", value = 2575754278},
    .{key = "canvas_item_add_set_transform", value = 1246044741},
    .{key = "canvas_item_add_clip_ignore", value = 1265174801},
    .{key = "canvas_item_add_animation_slice", value = 2646834499},
    .{key = "canvas_item_set_sort_children_by_y", value = 1265174801},
    .{key = "canvas_item_set_z_index", value = 3411492887},
    .{key = "canvas_item_set_z_as_relative_to_parent", value = 1265174801},
    .{key = "canvas_item_set_copy_to_backbuffer", value = 2429202503},
    .{key = "canvas_item_clear", value = 2722037293},
    .{key = "canvas_item_set_draw_index", value = 3411492887},
    .{key = "canvas_item_set_material", value = 395945892},
    .{key = "canvas_item_set_use_parent_material", value = 1265174801},
    .{key = "canvas_item_set_visibility_notifier", value = 3568945579},
    .{key = "canvas_item_set_canvas_group_mode", value = 3973586316},
    .{key = "debug_canvas_item_get_rect", value = 624227424},
    .{key = "canvas_light_create", value = 529393457},
    .{key = "canvas_light_attach_to_canvas", value = 395945892},
    .{key = "canvas_light_set_enabled", value = 1265174801},
    .{key = "canvas_light_set_texture_scale", value = 1794382983},
    .{key = "canvas_light_set_transform", value = 1246044741},
    .{key = "canvas_light_set_texture", value = 395945892},
    .{key = "canvas_light_set_texture_offset", value = 3201125042},
    .{key = "canvas_light_set_color", value = 2948539648},
    .{key = "canvas_light_set_height", value = 1794382983},
    .{key = "canvas_light_set_energy", value = 1794382983},
    .{key = "canvas_light_set_z_range", value = 4288446313},
    .{key = "canvas_light_set_layer_range", value = 4288446313},
    .{key = "canvas_light_set_item_cull_mask", value = 3411492887},
    .{key = "canvas_light_set_item_shadow_cull_mask", value = 3411492887},
    .{key = "canvas_light_set_mode", value = 2957564891},
    .{key = "canvas_light_set_shadow_enabled", value = 1265174801},
    .{key = "canvas_light_set_shadow_filter", value = 393119659},
    .{key = "canvas_light_set_shadow_color", value = 2948539648},
    .{key = "canvas_light_set_shadow_smooth", value = 1794382983},
    .{key = "canvas_light_set_blend_mode", value = 804895945},
    .{key = "canvas_light_occluder_create", value = 529393457},
    .{key = "canvas_light_occluder_attach_to_canvas", value = 395945892},
    .{key = "canvas_light_occluder_set_enabled", value = 1265174801},
    .{key = "canvas_light_occluder_set_polygon", value = 395945892},
    .{key = "canvas_light_occluder_set_as_sdf_collision", value = 1265174801},
    .{key = "canvas_light_occluder_set_transform", value = 1246044741},
    .{key = "canvas_light_occluder_set_light_mask", value = 3411492887},
    .{key = "canvas_occluder_polygon_create", value = 529393457},
    .{key = "canvas_occluder_polygon_set_shape", value = 2103882027},
    .{key = "canvas_occluder_polygon_set_cull_mode", value = 1839404663},
    .{key = "canvas_set_shadow_texture_size", value = 1286410249},
    .{key = "global_shader_parameter_add", value = 463390080},
    .{key = "global_shader_parameter_remove", value = 3304788590},
    .{key = "global_shader_parameter_get_list", value = 3995934104},
    .{key = "global_shader_parameter_set", value = 3776071444},
    .{key = "global_shader_parameter_set_override", value = 3776071444},
    .{key = "global_shader_parameter_get", value = 2760726917},
    .{key = "global_shader_parameter_get_type", value = 1601414142},
    .{key = "free_rid", value = 2722037293},
    .{key = "request_frame_drawn_callback", value = 1611583062},
    .{key = "has_changed", value = 36873697},
    .{key = "get_rendering_info", value = 3763192241},
    .{key = "get_video_adapter_name", value = 201670096},
    .{key = "get_video_adapter_vendor", value = 201670096},
    .{key = "get_video_adapter_type", value = 3099547011},
    .{key = "get_video_adapter_api_version", value = 201670096},
    .{key = "make_sphere_mesh", value = 2251015897},
    .{key = "get_test_cube", value = 529393457},
    .{key = "get_test_texture", value = 529393457},
    .{key = "get_white_texture", value = 529393457},
    .{key = "set_boot_image", value = 3759744527},
    .{key = "get_default_clear_color", value = 3200896285},
    .{key = "set_default_clear_color", value = 2920490490},
    .{key = "has_os_feature", value = 3927539163},
    .{key = "set_debug_generate_wireframes", value = 2586408642},
    .{key = "is_render_loop_enabled", value = 36873697},
    .{key = "set_render_loop_enabled", value = 2586408642},
    .{key = "get_frame_setup_time_cpu", value = 1740695150},
    .{key = "force_sync", value = 3218959716},
    .{key = "force_draw", value = 1076185472},
    .{key = "get_rendering_device", value = 1405107940},
    .{key = "create_local_rendering_device", value = 1405107940},
    .{key = "call_on_render_thread", value = 1611583062},
    .{key = "has_feature", value = 598462696},
    .{key = "set_path", value = 83702148},
    .{key = "take_over_path", value = 83702148},
    .{key = "get_path", value = 201670096},
    .{key = "set_name", value = 83702148},
    .{key = "get_name", value = 201670096},
    .{key = "get_rid", value = 2944877500},
    .{key = "set_local_to_scene", value = 2586408642},
    .{key = "is_local_to_scene", value = 36873697},
    .{key = "get_local_scene", value = 3160264692},
    .{key = "setup_local_to_scene", value = 3218959716},
    .{key = "generate_scene_unique_id", value = 2841200299},
    .{key = "set_scene_unique_id", value = 83702148},
    .{key = "get_scene_unique_id", value = 201670096},
    .{key = "emit_changed", value = 3218959716},
    .{key = "duplicate", value = 482882304},
    .{key = "load_from_buffer", value = 354904730},
    .{key = "load_from_file", value = 797568536},
    .{key = "load_threaded_request", value = 3614384323},
    .{key = "load_threaded_get_status", value = 4137685479},
    .{key = "load_threaded_get", value = 1748875256},
    .{key = "load", value = 3358495409},
    .{key = "get_recognized_extensions_for_type", value = 3538744774},
    .{key = "add_resource_format_loader", value = 2896595483},
    .{key = "remove_resource_format_loader", value = 405397102},
    .{key = "set_abort_on_missing_resources", value = 2586408642},
    .{key = "get_dependencies", value = 3538744774},
    .{key = "has_cached", value = 2323990056},
    .{key = "exists", value = 4185558881},
    .{key = "get_resource_uid", value = 1597066294},
    .{key = "add_resource", value = 1168801743},
    .{key = "remove_resource", value = 3304788590},
    .{key = "rename_resource", value = 3740211285},
    .{key = "has_resource", value = 2619796661},
    .{key = "get_resource", value = 3742749261},
    .{key = "get_resource_list", value = 1139954409},
    .{key = "save", value = 2983274697},
    .{key = "get_recognized_extensions", value = 4223597960},
    .{key = "add_resource_format_saver", value = 362894272},
    .{key = "remove_resource_format_saver", value = 3373026878},
    .{key = "id_to_text", value = 844755477},
    .{key = "text_to_id", value = 1321353865},
    .{key = "create_id", value = 2455072627},
    .{key = "has_id", value = 1116898809},
    .{key = "add_id", value = 501894301},
    .{key = "set_id", value = 501894301},
    .{key = "get_id_path", value = 844755477},
    .{key = "remove_id", value = 1286410249},
    .{key = "set_size", value = 373806689},
    .{key = "get_size", value = 1740695150},
    .{key = "set_sections", value = 1286410249},
    .{key = "get_sections", value = 3905245786},
    .{key = "set_section_length", value = 373806689},
    .{key = "get_section_length", value = 1740695150},
    .{key = "set_section_segments", value = 1286410249},
    .{key = "get_section_segments", value = 3905245786},
    .{key = "set_curve", value = 270443179},
    .{key = "get_curve", value = 2460114913},
    .{key = "set_shape", value = 1684440262},
    .{key = "get_shape", value = 1317484155},
    .{key = "get_parsed_text", value = 201670096},
    .{key = "add_text", value = 83702148},
    .{key = "set_text", value = 83702148},
    .{key = "add_image", value = 3017663154},
    .{key = "update_image", value = 815048486},
    .{key = "newline", value = 3218959716},
    .{key = "remove_paragraph", value = 3067735520},
    .{key = "push_font", value = 2347424842},
    .{key = "push_font_size", value = 1286410249},
    .{key = "push_normal", value = 3218959716},
    .{key = "push_bold", value = 3218959716},
    .{key = "push_bold_italics", value = 3218959716},
    .{key = "push_italics", value = 3218959716},
    .{key = "push_mono", value = 3218959716},
    .{key = "push_color", value = 2920490490},
    .{key = "push_outline_size", value = 1286410249},
    .{key = "push_outline_color", value = 2920490490},
    .{key = "push_paragraph", value = 3089306873},
    .{key = "push_indent", value = 1286410249},
    .{key = "push_list", value = 3017143144},
    .{key = "push_meta", value = 2206155733},
    .{key = "push_hint", value = 83702148},
    .{key = "push_language", value = 83702148},
    .{key = "push_underline", value = 3218959716},
    .{key = "push_strikethrough", value = 3218959716},
    .{key = "push_table", value = 2623499273},
    .{key = "push_dropcap", value = 4061635501},
    .{key = "set_table_column_expand", value = 2185176273},
    .{key = "set_cell_row_background_color", value = 3465483165},
    .{key = "set_cell_border_color", value = 2920490490},
    .{key = "set_cell_size_override", value = 3108078480},
    .{key = "set_cell_padding", value = 2046264180},
    .{key = "push_cell", value = 3218959716},
    .{key = "push_fgcolor", value = 2920490490},
    .{key = "push_bgcolor", value = 2920490490},
    .{key = "push_customfx", value = 2337942958},
    .{key = "push_context", value = 3218959716},
    .{key = "pop_context", value = 3218959716},
    .{key = "pop", value = 3218959716},
    .{key = "pop_all", value = 3218959716},
    .{key = "clear", value = 3218959716},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_autowrap_mode", value = 3289138044},
    .{key = "get_autowrap_mode", value = 1549071663},
    .{key = "set_meta_underline", value = 2586408642},
    .{key = "is_meta_underlined", value = 36873697},
    .{key = "set_hint_underline", value = 2586408642},
    .{key = "is_hint_underlined", value = 36873697},
    .{key = "set_scroll_active", value = 2586408642},
    .{key = "is_scroll_active", value = 36873697},
    .{key = "set_scroll_follow", value = 2586408642},
    .{key = "is_scroll_following", value = 36873697},
    .{key = "get_v_scroll_bar", value = 2630340773},
    .{key = "scroll_to_line", value = 1286410249},
    .{key = "scroll_to_paragraph", value = 1286410249},
    .{key = "scroll_to_selection", value = 3218959716},
    .{key = "set_tab_size", value = 1286410249},
    .{key = "get_tab_size", value = 3905245786},
    .{key = "set_fit_content", value = 2586408642},
    .{key = "is_fit_content_enabled", value = 36873697},
    .{key = "set_selection_enabled", value = 2586408642},
    .{key = "is_selection_enabled", value = 36873697},
    .{key = "set_context_menu_enabled", value = 2586408642},
    .{key = "is_context_menu_enabled", value = 36873697},
    .{key = "set_shortcut_keys_enabled", value = 2586408642},
    .{key = "is_shortcut_keys_enabled", value = 36873697},
    .{key = "set_deselect_on_focus_loss_enabled", value = 2586408642},
    .{key = "is_deselect_on_focus_loss_enabled", value = 36873697},
    .{key = "set_drag_and_drop_selection_enabled", value = 2586408642},
    .{key = "is_drag_and_drop_selection_enabled", value = 36873697},
    .{key = "get_selection_from", value = 3905245786},
    .{key = "get_selection_to", value = 3905245786},
    .{key = "select_all", value = 3218959716},
    .{key = "get_selected_text", value = 201670096},
    .{key = "deselect", value = 3218959716},
    .{key = "parse_bbcode", value = 83702148},
    .{key = "append_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "is_ready", value = 36873697},
    .{key = "set_threaded", value = 2586408642},
    .{key = "is_threaded", value = 36873697},
    .{key = "set_progress_bar_delay", value = 1286410249},
    .{key = "get_progress_bar_delay", value = 3905245786},
    .{key = "set_visible_characters", value = 1286410249},
    .{key = "get_visible_characters", value = 3905245786},
    .{key = "get_visible_characters_behavior", value = 258789322},
    .{key = "set_visible_characters_behavior", value = 3383839701},
    .{key = "set_visible_ratio", value = 373806689},
    .{key = "get_visible_ratio", value = 1740695150},
    .{key = "get_character_line", value = 3744713108},
    .{key = "get_character_paragraph", value = 3744713108},
    .{key = "get_total_character_count", value = 3905245786},
    .{key = "set_use_bbcode", value = 2586408642},
    .{key = "is_using_bbcode", value = 36873697},
    .{key = "get_line_count", value = 3905245786},
    .{key = "get_visible_line_count", value = 3905245786},
    .{key = "get_paragraph_count", value = 3905245786},
    .{key = "get_visible_paragraph_count", value = 3905245786},
    .{key = "get_content_height", value = 3905245786},
    .{key = "get_content_width", value = 3905245786},
    .{key = "get_line_offset", value = 4025615559},
    .{key = "get_paragraph_offset", value = 4025615559},
    .{key = "parse_expressions_for_values", value = 1522900837},
    .{key = "set_effects", value = 381264803},
    .{key = "get_effects", value = 2915620761},
    .{key = "install_effect", value = 1114965689},
    .{key = "get_menu", value = 229722558},
    .{key = "is_menu_visible", value = 36873697},
    .{key = "menu_option", value = 1286410249},
    .{key = "set_mass", value = 373806689},
    .{key = "get_mass", value = 1740695150},
    .{key = "get_inertia", value = 1740695150},
    .{key = "set_inertia", value = 373806689},
    .{key = "set_center_of_mass_mode", value = 1757235706},
    .{key = "get_center_of_mass_mode", value = 3277132817},
    .{key = "set_center_of_mass", value = 743155724},
    .{key = "get_center_of_mass", value = 3341600327},
    .{key = "set_physics_material_override", value = 1784508650},
    .{key = "get_physics_material_override", value = 2521850424},
    .{key = "set_gravity_scale", value = 373806689},
    .{key = "get_gravity_scale", value = 1740695150},
    .{key = "set_linear_damp_mode", value = 3406533708},
    .{key = "get_linear_damp_mode", value = 2970511462},
    .{key = "set_angular_damp_mode", value = 3406533708},
    .{key = "get_angular_damp_mode", value = 2970511462},
    .{key = "set_linear_damp", value = 373806689},
    .{key = "get_linear_damp", value = 1740695150},
    .{key = "set_angular_damp", value = 373806689},
    .{key = "get_angular_damp", value = 1740695150},
    .{key = "set_linear_velocity", value = 743155724},
    .{key = "get_linear_velocity", value = 3341600327},
    .{key = "set_angular_velocity", value = 373806689},
    .{key = "get_angular_velocity", value = 1740695150},
    .{key = "set_max_contacts_reported", value = 1286410249},
    .{key = "get_max_contacts_reported", value = 3905245786},
    .{key = "get_contact_count", value = 3905245786},
    .{key = "set_use_custom_integrator", value = 2586408642},
    .{key = "is_using_custom_integrator", value = 2240911060},
    .{key = "set_contact_monitor", value = 2586408642},
    .{key = "is_contact_monitor_enabled", value = 36873697},
    .{key = "set_continuous_collision_detection_mode", value = 1000241384},
    .{key = "get_continuous_collision_detection_mode", value = 815214376},
    .{key = "set_axis_velocity", value = 743155724},
    .{key = "apply_central_impulse", value = 3862383994},
    .{key = "apply_impulse", value = 4288681949},
    .{key = "apply_torque_impulse", value = 373806689},
    .{key = "apply_central_force", value = 743155724},
    .{key = "apply_force", value = 4288681949},
    .{key = "apply_torque", value = 373806689},
    .{key = "add_constant_central_force", value = 743155724},
    .{key = "add_constant_force", value = 4288681949},
    .{key = "add_constant_torque", value = 373806689},
    .{key = "set_constant_force", value = 743155724},
    .{key = "get_constant_force", value = 3341600327},
    .{key = "set_constant_torque", value = 373806689},
    .{key = "get_constant_torque", value = 1740695150},
    .{key = "set_sleeping", value = 2586408642},
    .{key = "is_sleeping", value = 36873697},
    .{key = "set_can_sleep", value = 2586408642},
    .{key = "is_able_to_sleep", value = 36873697},
    .{key = "set_lock_rotation_enabled", value = 2586408642},
    .{key = "is_lock_rotation_enabled", value = 36873697},
    .{key = "set_freeze_enabled", value = 2586408642},
    .{key = "is_freeze_enabled", value = 36873697},
    .{key = "set_freeze_mode", value = 1705112154},
    .{key = "get_freeze_mode", value = 2016872314},
    .{key = "get_colliding_bodies", value = 3995934104},
    .{key = "set_mass", value = 373806689},
    .{key = "get_mass", value = 1740695150},
    .{key = "set_inertia", value = 3460891852},
    .{key = "get_inertia", value = 3360562783},
    .{key = "set_center_of_mass_mode", value = 3625866032},
    .{key = "get_center_of_mass_mode", value = 237405040},
    .{key = "set_center_of_mass", value = 3460891852},
    .{key = "get_center_of_mass", value = 3360562783},
    .{key = "set_physics_material_override", value = 1784508650},
    .{key = "get_physics_material_override", value = 2521850424},
    .{key = "set_linear_velocity", value = 3460891852},
    .{key = "get_linear_velocity", value = 3360562783},
    .{key = "set_angular_velocity", value = 3460891852},
    .{key = "get_angular_velocity", value = 3360562783},
    .{key = "get_inverse_inertia_tensor", value = 2716978435},
    .{key = "set_gravity_scale", value = 373806689},
    .{key = "get_gravity_scale", value = 1740695150},
    .{key = "set_linear_damp_mode", value = 1802035050},
    .{key = "get_linear_damp_mode", value = 1366206940},
    .{key = "set_angular_damp_mode", value = 1802035050},
    .{key = "get_angular_damp_mode", value = 1366206940},
    .{key = "set_linear_damp", value = 373806689},
    .{key = "get_linear_damp", value = 1740695150},
    .{key = "set_angular_damp", value = 373806689},
    .{key = "get_angular_damp", value = 1740695150},
    .{key = "set_max_contacts_reported", value = 1286410249},
    .{key = "get_max_contacts_reported", value = 3905245786},
    .{key = "get_contact_count", value = 3905245786},
    .{key = "set_use_custom_integrator", value = 2586408642},
    .{key = "is_using_custom_integrator", value = 2240911060},
    .{key = "set_contact_monitor", value = 2586408642},
    .{key = "is_contact_monitor_enabled", value = 36873697},
    .{key = "set_use_continuous_collision_detection", value = 2586408642},
    .{key = "is_using_continuous_collision_detection", value = 36873697},
    .{key = "set_axis_velocity", value = 3460891852},
    .{key = "apply_central_impulse", value = 3460891852},
    .{key = "apply_impulse", value = 2754756483},
    .{key = "apply_torque_impulse", value = 3460891852},
    .{key = "apply_central_force", value = 3460891852},
    .{key = "apply_force", value = 2754756483},
    .{key = "apply_torque", value = 3460891852},
    .{key = "add_constant_central_force", value = 3460891852},
    .{key = "add_constant_force", value = 2754756483},
    .{key = "add_constant_torque", value = 3460891852},
    .{key = "set_constant_force", value = 3460891852},
    .{key = "get_constant_force", value = 3360562783},
    .{key = "set_constant_torque", value = 3460891852},
    .{key = "get_constant_torque", value = 3360562783},
    .{key = "set_sleeping", value = 2586408642},
    .{key = "is_sleeping", value = 36873697},
    .{key = "set_can_sleep", value = 2586408642},
    .{key = "is_able_to_sleep", value = 36873697},
    .{key = "set_lock_rotation_enabled", value = 2586408642},
    .{key = "is_lock_rotation_enabled", value = 36873697},
    .{key = "set_freeze_enabled", value = 2586408642},
    .{key = "is_freeze_enabled", value = 36873697},
    .{key = "set_freeze_mode", value = 1319914653},
    .{key = "get_freeze_mode", value = 2008423905},
    .{key = "get_colliding_bodies", value = 3995934104},
    .{key = "set_animation_path", value = 1348162250},
    .{key = "get_animation_path", value = 4075236667},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_cell_size", value = 373806689},
    .{key = "get_cell_size", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_zero_y", value = 2586408642},
    .{key = "get_zero_y", value = 36873697},
    .{key = "set_root_path", value = 1348162250},
    .{key = "get_root_path", value = 4075236667},
    .{key = "clear", value = 3218959716},
    .{key = "disconnect_peer", value = 1286410249},
    .{key = "get_authenticating_peers", value = 969006518},
    .{key = "send_auth", value = 506032537},
    .{key = "complete_auth", value = 844576869},
    .{key = "set_auth_callback", value = 1611583062},
    .{key = "get_auth_callback", value = 1307783378},
    .{key = "set_auth_timeout", value = 373806689},
    .{key = "get_auth_timeout", value = 1740695150},
    .{key = "set_refuse_new_connections", value = 2586408642},
    .{key = "is_refusing_new_connections", value = 36873697},
    .{key = "set_allow_object_decoding", value = 2586408642},
    .{key = "is_object_decoding_allowed", value = 36873697},
    .{key = "set_server_relay_enabled", value = 2586408642},
    .{key = "is_server_relay_enabled", value = 36873697},
    .{key = "send_bytes", value = 1307428718},
    .{key = "get_max_sync_packet_size", value = 3905245786},
    .{key = "set_max_sync_packet_size", value = 1286410249},
    .{key = "get_max_delta_packet_size", value = 3905245786},
    .{key = "set_max_delta_packet_size", value = 1286410249},
    .{key = "get_properties", value = 3995934104},
    .{key = "add_property", value = 4094619021},
    .{key = "has_property", value = 861721659},
    .{key = "remove_property", value = 1348162250},
    .{key = "property_get_index", value = 1382022557},
    .{key = "property_get_spawn", value = 3456846888},
    .{key = "property_set_spawn", value = 3868023870},
    .{key = "property_get_replication_mode", value = 2870606336},
    .{key = "property_set_replication_mode", value = 3200083865},
    .{key = "property_get_sync", value = 3456846888},
    .{key = "property_set_sync", value = 3868023870},
    .{key = "property_get_watch", value = 3456846888},
    .{key = "property_set_watch", value = 3868023870},
    .{key = "get_node_count", value = 3905245786},
    .{key = "get_node_type", value = 659327637},
    .{key = "get_node_name", value = 659327637},
    .{key = "get_node_path", value = 2272487792},
    .{key = "get_node_owner_path", value = 408788394},
    .{key = "is_node_instance_placeholder", value = 1116898809},
    .{key = "get_node_instance_placeholder", value = 844755477},
    .{key = "get_node_instance", value = 511017218},
    .{key = "get_node_groups", value = 647634434},
    .{key = "get_node_index", value = 923996154},
    .{key = "get_node_property_count", value = 923996154},
    .{key = "get_node_property_name", value = 351665558},
    .{key = "get_node_property_value", value = 678354945},
    .{key = "get_connection_count", value = 3905245786},
    .{key = "get_connection_source", value = 408788394},
    .{key = "get_connection_signal", value = 659327637},
    .{key = "get_connection_target", value = 408788394},
    .{key = "get_connection_method", value = 659327637},
    .{key = "get_connection_flags", value = 923996154},
    .{key = "get_connection_binds", value = 663333327},
    .{key = "get_connection_unbinds", value = 923996154},
    .{key = "get_root", value = 1757182445},
    .{key = "has_group", value = 2619796661},
    .{key = "is_auto_accept_quit", value = 36873697},
    .{key = "set_auto_accept_quit", value = 2586408642},
    .{key = "is_quit_on_go_back", value = 36873697},
    .{key = "set_quit_on_go_back", value = 2586408642},
    .{key = "set_debug_collisions_hint", value = 2586408642},
    .{key = "is_debugging_collisions_hint", value = 36873697},
    .{key = "set_debug_paths_hint", value = 2586408642},
    .{key = "is_debugging_paths_hint", value = 36873697},
    .{key = "set_debug_navigation_hint", value = 2586408642},
    .{key = "is_debugging_navigation_hint", value = 36873697},
    .{key = "set_edited_scene_root", value = 1078189570},
    .{key = "get_edited_scene_root", value = 3160264692},
    .{key = "set_pause", value = 2586408642},
    .{key = "is_paused", value = 36873697},
    .{key = "create_timer", value = 2709170273},
    .{key = "create_tween", value = 3426978995},
    .{key = "get_processed_tweens", value = 2915620761},
    .{key = "get_node_count", value = 3905245786},
    .{key = "get_frame", value = 3905245786},
    .{key = "quit", value = 1995695955},
    .{key = "queue_delete", value = 3975164845},
    .{key = "call_group_flags", value = 1527739229},
    .{key = "notify_group_flags", value = 1245489420},
    .{key = "set_group_flags", value = 3497599527},
    .{key = "call_group", value = 1257962832},
    .{key = "notify_group", value = 2415702435},
    .{key = "set_group", value = 1279312029},
    .{key = "get_nodes_in_group", value = 689397652},
    .{key = "get_first_node_in_group", value = 4071044623},
    .{key = "get_node_count_in_group", value = 2458036349},
    .{key = "set_current_scene", value = 1078189570},
    .{key = "get_current_scene", value = 3160264692},
    .{key = "change_scene_to_file", value = 166001499},
    .{key = "change_scene_to_packed", value = 107349098},
    .{key = "reload_current_scene", value = 166280745},
    .{key = "unload_current_scene", value = 3218959716},
    .{key = "set_multiplayer", value = 2385607013},
    .{key = "get_multiplayer", value = 3453401404},
    .{key = "set_multiplayer_poll_enabled", value = 2586408642},
    .{key = "is_multiplayer_poll_enabled", value = 36873697},
    .{key = "set_time_left", value = 373806689},
    .{key = "get_time_left", value = 1740695150},
    .{key = "can_instantiate", value = 36873697},
    .{key = "instance_has", value = 397768994},
    .{key = "has_source_code", value = 36873697},
    .{key = "get_source_code", value = 201670096},
    .{key = "set_source_code", value = 83702148},
    .{key = "reload", value = 1633102583},
    .{key = "get_base_script", value = 278624046},
    .{key = "get_instance_base_type", value = 2002593661},
    .{key = "get_global_name", value = 2002593661},
    .{key = "has_script_signal", value = 2619796661},
    .{key = "get_script_property_list", value = 2915620761},
    .{key = "get_script_method_list", value = 2915620761},
    .{key = "get_script_signal_list", value = 2915620761},
    .{key = "get_script_constant_map", value = 2382534195},
    .{key = "get_property_default_value", value = 2138907829},
    .{key = "is_tool", value = 36873697},
    .{key = "is_abstract", value = 36873697},
    .{key = "config", value = 869314288},
    .{key = "get_current_editor", value = 1906266726},
    .{key = "get_open_script_editors", value = 3995934104},
    .{key = "register_syntax_highlighter", value = 1092774468},
    .{key = "unregister_syntax_highlighter", value = 1092774468},
    .{key = "goto_line", value = 1286410249},
    .{key = "get_current_script", value = 2146468882},
    .{key = "get_open_scripts", value = 3995934104},
    .{key = "open_script_create_dialog", value = 3186203200},
    .{key = "get_base_editor", value = 2783021301},
    .{key = "add_syntax_highlighter", value = 1092774468},
    .{key = "set_custom_step", value = 373806689},
    .{key = "get_custom_step", value = 1740695150},
    .{key = "set_h_scroll", value = 1286410249},
    .{key = "get_h_scroll", value = 3905245786},
    .{key = "set_v_scroll", value = 1286410249},
    .{key = "get_v_scroll", value = 3905245786},
    .{key = "set_horizontal_custom_step", value = 373806689},
    .{key = "get_horizontal_custom_step", value = 1740695150},
    .{key = "set_vertical_custom_step", value = 373806689},
    .{key = "get_vertical_custom_step", value = 1740695150},
    .{key = "set_horizontal_scroll_mode", value = 2750506364},
    .{key = "get_horizontal_scroll_mode", value = 3987985145},
    .{key = "set_vertical_scroll_mode", value = 2750506364},
    .{key = "get_vertical_scroll_mode", value = 3987985145},
    .{key = "set_deadzone", value = 1286410249},
    .{key = "get_deadzone", value = 3905245786},
    .{key = "set_follow_focus", value = 2586408642},
    .{key = "is_following_focus", value = 36873697},
    .{key = "get_h_scroll_bar", value = 4004517983},
    .{key = "get_v_scroll_bar", value = 2630340773},
    .{key = "ensure_control_visible", value = 1496901182},
    .{key = "set_a", value = 743155724},
    .{key = "get_a", value = 3341600327},
    .{key = "set_b", value = 743155724},
    .{key = "get_b", value = 3341600327},
    .{key = "wait", value = 3218959716},
    .{key = "try_wait", value = 2240911060},
    .{key = "post", value = 3218959716},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_slide_on_slope", value = 2586408642},
    .{key = "get_slide_on_slope", value = 36873697},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_slide_on_slope", value = 2586408642},
    .{key = "get_slide_on_slope", value = 36873697},
    .{key = "get_mode", value = 3392948163},
    .{key = "set_code", value = 83702148},
    .{key = "get_code", value = 201670096},
    .{key = "set_default_texture_parameter", value = 2750740428},
    .{key = "get_default_texture_parameter", value = 3090538643},
    .{key = "get_shader_uniform_list", value = 1230511656},
    .{key = "set_code", value = 83702148},
    .{key = "get_code", value = 201670096},
    .{key = "set_shader", value = 3341921675},
    .{key = "get_shader", value = 2078273437},
    .{key = "set_shader_parameter", value = 3776071444},
    .{key = "get_shader_parameter", value = 2760726917},
    .{key = "set_custom_solver_bias", value = 373806689},
    .{key = "get_custom_solver_bias", value = 1740695150},
    .{key = "collide", value = 3709843132},
    .{key = "collide_with_motion", value = 2869556801},
    .{key = "collide_and_get_contacts", value = 3056932662},
    .{key = "collide_with_motion_and_get_contacts", value = 3620351573},
    .{key = "draw", value = 2948539648},
    .{key = "get_rect", value = 1639390495},
    .{key = "set_custom_solver_bias", value = 373806689},
    .{key = "get_custom_solver_bias", value = 1740695150},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 1740695150},
    .{key = "get_debug_mesh", value = 1605880883},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_shape", value = 771364740},
    .{key = "get_shape", value = 522005891},
    .{key = "set_target_position", value = 743155724},
    .{key = "get_target_position", value = 3341600327},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_max_results", value = 1286410249},
    .{key = "get_max_results", value = 3905245786},
    .{key = "is_colliding", value = 36873697},
    .{key = "get_collision_count", value = 3905245786},
    .{key = "force_shapecast_update", value = 3218959716},
    .{key = "get_collider", value = 3332903315},
    .{key = "get_collider_rid", value = 495598643},
    .{key = "get_collider_shape", value = 923996154},
    .{key = "get_collision_point", value = 2299179447},
    .{key = "get_collision_normal", value = 2299179447},
    .{key = "get_closest_collision_safe_fraction", value = 1740695150},
    .{key = "get_closest_collision_unsafe_fraction", value = 1740695150},
    .{key = "add_exception_rid", value = 2722037293},
    .{key = "add_exception", value = 3090941106},
    .{key = "remove_exception_rid", value = 2722037293},
    .{key = "remove_exception", value = 3090941106},
    .{key = "clear_exceptions", value = 3218959716},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_exclude_parent_body", value = 2586408642},
    .{key = "get_exclude_parent_body", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "resource_changed", value = 968641751},
    .{key = "set_enabled", value = 2586408642},
    .{key = "is_enabled", value = 36873697},
    .{key = "set_shape", value = 1549710052},
    .{key = "get_shape", value = 3214262478},
    .{key = "set_target_position", value = 3460891852},
    .{key = "get_target_position", value = 3360562783},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 1740695150},
    .{key = "set_max_results", value = 1286410249},
    .{key = "get_max_results", value = 3905245786},
    .{key = "is_colliding", value = 36873697},
    .{key = "get_collision_count", value = 3905245786},
    .{key = "force_shapecast_update", value = 3218959716},
    .{key = "get_collider", value = 3332903315},
    .{key = "get_collider_rid", value = 495598643},
    .{key = "get_collider_shape", value = 923996154},
    .{key = "get_collision_point", value = 711720468},
    .{key = "get_collision_normal", value = 711720468},
    .{key = "get_closest_collision_safe_fraction", value = 1740695150},
    .{key = "get_closest_collision_unsafe_fraction", value = 1740695150},
    .{key = "add_exception_rid", value = 2722037293},
    .{key = "add_exception", value = 1976431078},
    .{key = "remove_exception_rid", value = 2722037293},
    .{key = "remove_exception", value = 1976431078},
    .{key = "clear_exceptions", value = 3218959716},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_exclude_parent_body", value = 2586408642},
    .{key = "get_exclude_parent_body", value = 36873697},
    .{key = "set_collide_with_areas", value = 2586408642},
    .{key = "is_collide_with_areas_enabled", value = 36873697},
    .{key = "set_collide_with_bodies", value = 2586408642},
    .{key = "is_collide_with_bodies_enabled", value = 36873697},
    .{key = "set_debug_shape_custom_color", value = 2920490490},
    .{key = "get_debug_shape_custom_color", value = 3444240500},
    .{key = "set_events", value = 381264803},
    .{key = "get_events", value = 3995934104},
    .{key = "has_valid_event", value = 36873697},
    .{key = "matches_event", value = 3738334489},
    .{key = "get_as_text", value = 201670096},
    .{key = "get_bone_count", value = 3905245786},
    .{key = "get_bone", value = 2556267111},
    .{key = "get_skeleton", value = 2944877500},
    .{key = "set_modification_stack", value = 3907307132},
    .{key = "get_modification_stack", value = 2107508396},
    .{key = "execute_modifications", value = 1005356550},
    .{key = "set_bone_local_pose_override", value = 555457532},
    .{key = "get_bone_local_pose_override", value = 2995540667},
    .{key = "add_bone", value = 1597066294},
    .{key = "find_bone", value = 1321353865},
    .{key = "get_bone_name", value = 844755477},
    .{key = "set_bone_name", value = 501894301},
    .{key = "get_bone_parent", value = 923996154},
    .{key = "set_bone_parent", value = 3937882851},
    .{key = "get_bone_count", value = 3905245786},
    .{key = "get_version", value = 3905245786},
    .{key = "unparent_bone_and_rest", value = 1286410249},
    .{key = "get_bone_children", value = 1706082319},
    .{key = "get_parentless_bones", value = 1930428628},
    .{key = "get_bone_rest", value = 1965739696},
    .{key = "set_bone_rest", value = 3616898986},
    .{key = "get_bone_global_rest", value = 1965739696},
    .{key = "create_skin_from_rest_transforms", value = 1032037385},
    .{key = "register_skin", value = 3405789568},
    .{key = "localize_rests", value = 3218959716},
    .{key = "clear_bones", value = 3218959716},
    .{key = "get_bone_pose", value = 1965739696},
    .{key = "set_bone_pose_position", value = 1530502735},
    .{key = "set_bone_pose_rotation", value = 2823819782},
    .{key = "set_bone_pose_scale", value = 1530502735},
    .{key = "get_bone_pose_position", value = 711720468},
    .{key = "get_bone_pose_rotation", value = 476865136},
    .{key = "get_bone_pose_scale", value = 711720468},
    .{key = "reset_bone_pose", value = 1286410249},
    .{key = "reset_bone_poses", value = 3218959716},
    .{key = "is_bone_enabled", value = 1116898809},
    .{key = "set_bone_enabled", value = 972357352},
    .{key = "clear_bones_global_pose_override", value = 3218959716},
    .{key = "set_bone_global_pose_override", value = 3483398371},
    .{key = "get_bone_global_pose_override", value = 1965739696},
    .{key = "get_bone_global_pose", value = 1965739696},
    .{key = "get_bone_global_pose_no_override", value = 1965739696},
    .{key = "force_update_all_bone_transforms", value = 3218959716},
    .{key = "force_update_bone_child_transform", value = 1286410249},
    .{key = "set_motion_scale", value = 373806689},
    .{key = "get_motion_scale", value = 1740695150},
    .{key = "set_show_rest_only", value = 2586408642},
    .{key = "is_show_rest_only", value = 36873697},
    .{key = "set_animate_physical_bones", value = 2586408642},
    .{key = "get_animate_physical_bones", value = 36873697},
    .{key = "physical_bones_stop_simulation", value = 3218959716},
    .{key = "physical_bones_start_simulation", value = 2787316981},
    .{key = "physical_bones_add_collision_exception", value = 2722037293},
    .{key = "physical_bones_remove_collision_exception", value = 2722037293},
    .{key = "set_root_bone", value = 3304788590},
    .{key = "get_root_bone", value = 2002593661},
    .{key = "set_tip_bone", value = 3304788590},
    .{key = "get_tip_bone", value = 2002593661},
    .{key = "set_interpolation", value = 373806689},
    .{key = "get_interpolation", value = 1740695150},
    .{key = "set_target_transform", value = 2952846383},
    .{key = "get_target_transform", value = 3229777777},
    .{key = "set_target_node", value = 1348162250},
    .{key = "get_target_node", value = 277076166},
    .{key = "set_override_tip_basis", value = 2586408642},
    .{key = "is_override_tip_basis", value = 36873697},
    .{key = "set_use_magnet", value = 2586408642},
    .{key = "is_using_magnet", value = 36873697},
    .{key = "set_magnet_position", value = 3460891852},
    .{key = "get_magnet_position", value = 3360562783},
    .{key = "get_parent_skeleton", value = 1488626673},
    .{key = "is_running", value = 2240911060},
    .{key = "set_min_distance", value = 373806689},
    .{key = "get_min_distance", value = 1740695150},
    .{key = "set_max_iterations", value = 1286410249},
    .{key = "get_max_iterations", value = 3905245786},
    .{key = "start", value = 107499316},
    .{key = "stop", value = 3218959716},
    .{key = "set_enabled", value = 2586408642},
    .{key = "get_enabled", value = 2240911060},
    .{key = "get_modification_stack", value = 2137761694},
    .{key = "set_is_setup", value = 2586408642},
    .{key = "get_is_setup", value = 36873697},
    .{key = "set_execution_mode", value = 1286410249},
    .{key = "get_execution_mode", value = 3905245786},
    .{key = "clamp_angle", value = 1229502682},
    .{key = "set_editor_draw_gizmo", value = 2586408642},
    .{key = "get_editor_draw_gizmo", value = 36873697},
    .{key = "set_target_node", value = 1348162250},
    .{key = "get_target_node", value = 4075236667},
    .{key = "set_tip_node", value = 1348162250},
    .{key = "get_tip_node", value = 4075236667},
    .{key = "set_ccdik_data_chain_length", value = 1286410249},
    .{key = "get_ccdik_data_chain_length", value = 2455072627},
    .{key = "set_ccdik_joint_bone2d_node", value = 2761262315},
    .{key = "get_ccdik_joint_bone2d_node", value = 408788394},
    .{key = "set_ccdik_joint_bone_index", value = 3937882851},
    .{key = "get_ccdik_joint_bone_index", value = 923996154},
    .{key = "set_ccdik_joint_rotate_from_joint", value = 300928843},
    .{key = "get_ccdik_joint_rotate_from_joint", value = 1116898809},
    .{key = "set_ccdik_joint_enable_constraint", value = 300928843},
    .{key = "get_ccdik_joint_enable_constraint", value = 1116898809},
    .{key = "set_ccdik_joint_constraint_angle_min", value = 1602489585},
    .{key = "get_ccdik_joint_constraint_angle_min", value = 2339986948},
    .{key = "set_ccdik_joint_constraint_angle_max", value = 1602489585},
    .{key = "get_ccdik_joint_constraint_angle_max", value = 2339986948},
    .{key = "set_ccdik_joint_constraint_angle_invert", value = 300928843},
    .{key = "get_ccdik_joint_constraint_angle_invert", value = 1116898809},
    .{key = "set_target_node", value = 1348162250},
    .{key = "get_target_node", value = 4075236667},
    .{key = "set_fabrik_data_chain_length", value = 1286410249},
    .{key = "get_fabrik_data_chain_length", value = 2455072627},
    .{key = "set_fabrik_joint_bone2d_node", value = 2761262315},
    .{key = "get_fabrik_joint_bone2d_node", value = 408788394},
    .{key = "set_fabrik_joint_bone_index", value = 3937882851},
    .{key = "get_fabrik_joint_bone_index", value = 923996154},
    .{key = "set_fabrik_joint_magnet_position", value = 163021252},
    .{key = "get_fabrik_joint_magnet_position", value = 2299179447},
    .{key = "set_fabrik_joint_use_target_rotation", value = 300928843},
    .{key = "get_fabrik_joint_use_target_rotation", value = 1116898809},
    .{key = "set_target_node", value = 1348162250},
    .{key = "get_target_node", value = 4075236667},
    .{key = "set_jiggle_data_chain_length", value = 1286410249},
    .{key = "get_jiggle_data_chain_length", value = 2455072627},
    .{key = "set_stiffness", value = 373806689},
    .{key = "get_stiffness", value = 1740695150},
    .{key = "set_mass", value = 373806689},
    .{key = "get_mass", value = 1740695150},
    .{key = "set_damping", value = 373806689},
    .{key = "get_damping", value = 1740695150},
    .{key = "set_use_gravity", value = 2586408642},
    .{key = "get_use_gravity", value = 36873697},
    .{key = "set_gravity", value = 743155724},
    .{key = "get_gravity", value = 3341600327},
    .{key = "set_use_colliders", value = 2586408642},
    .{key = "get_use_colliders", value = 36873697},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_jiggle_joint_bone2d_node", value = 2761262315},
    .{key = "get_jiggle_joint_bone2d_node", value = 408788394},
    .{key = "set_jiggle_joint_bone_index", value = 3937882851},
    .{key = "get_jiggle_joint_bone_index", value = 923996154},
    .{key = "set_jiggle_joint_override", value = 300928843},
    .{key = "get_jiggle_joint_override", value = 1116898809},
    .{key = "set_jiggle_joint_stiffness", value = 1602489585},
    .{key = "get_jiggle_joint_stiffness", value = 2339986948},
    .{key = "set_jiggle_joint_mass", value = 1602489585},
    .{key = "get_jiggle_joint_mass", value = 2339986948},
    .{key = "set_jiggle_joint_damping", value = 1602489585},
    .{key = "get_jiggle_joint_damping", value = 2339986948},
    .{key = "set_jiggle_joint_use_gravity", value = 300928843},
    .{key = "get_jiggle_joint_use_gravity", value = 1116898809},
    .{key = "set_jiggle_joint_gravity", value = 163021252},
    .{key = "get_jiggle_joint_gravity", value = 2299179447},
    .{key = "set_bone2d_node", value = 1348162250},
    .{key = "get_bone2d_node", value = 4075236667},
    .{key = "set_bone_index", value = 1286410249},
    .{key = "get_bone_index", value = 3905245786},
    .{key = "set_target_node", value = 1348162250},
    .{key = "get_target_node", value = 4075236667},
    .{key = "set_additional_rotation", value = 373806689},
    .{key = "get_additional_rotation", value = 1740695150},
    .{key = "set_enable_constraint", value = 2586408642},
    .{key = "get_enable_constraint", value = 36873697},
    .{key = "set_constraint_angle_min", value = 373806689},
    .{key = "get_constraint_angle_min", value = 1740695150},
    .{key = "set_constraint_angle_max", value = 373806689},
    .{key = "get_constraint_angle_max", value = 1740695150},
    .{key = "set_constraint_angle_invert", value = 2586408642},
    .{key = "get_constraint_angle_invert", value = 36873697},
    .{key = "set_physical_bone_chain_length", value = 1286410249},
    .{key = "get_physical_bone_chain_length", value = 2455072627},
    .{key = "set_physical_bone_node", value = 2761262315},
    .{key = "get_physical_bone_node", value = 408788394},
    .{key = "fetch_physical_bones", value = 3218959716},
    .{key = "start_simulation", value = 2787316981},
    .{key = "stop_simulation", value = 2787316981},
    .{key = "set_held_modification_stack", value = 3907307132},
    .{key = "get_held_modification_stack", value = 2107508396},
    .{key = "set_target_node", value = 1348162250},
    .{key = "get_target_node", value = 4075236667},
    .{key = "set_target_minimum_distance", value = 373806689},
    .{key = "get_target_minimum_distance", value = 1740695150},
    .{key = "set_target_maximum_distance", value = 373806689},
    .{key = "get_target_maximum_distance", value = 1740695150},
    .{key = "set_flip_bend_direction", value = 2586408642},
    .{key = "get_flip_bend_direction", value = 36873697},
    .{key = "set_joint_one_bone2d_node", value = 1348162250},
    .{key = "get_joint_one_bone2d_node", value = 4075236667},
    .{key = "set_joint_one_bone_idx", value = 1286410249},
    .{key = "get_joint_one_bone_idx", value = 3905245786},
    .{key = "set_joint_two_bone2d_node", value = 1348162250},
    .{key = "get_joint_two_bone2d_node", value = 4075236667},
    .{key = "set_joint_two_bone_idx", value = 1286410249},
    .{key = "get_joint_two_bone_idx", value = 3905245786},
    .{key = "setup", value = 3218959716},
    .{key = "execute", value = 1005356550},
    .{key = "enable_all_modifications", value = 2586408642},
    .{key = "get_modification", value = 2570274329},
    .{key = "add_modification", value = 354162120},
    .{key = "delete_modification", value = 1286410249},
    .{key = "set_modification", value = 1098262544},
    .{key = "set_modification_count", value = 1286410249},
    .{key = "get_modification_count", value = 3905245786},
    .{key = "get_is_setup", value = 36873697},
    .{key = "set_enabled", value = 2586408642},
    .{key = "get_enabled", value = 36873697},
    .{key = "set_strength", value = 373806689},
    .{key = "get_strength", value = 1740695150},
    .{key = "get_skeleton", value = 1697361217},
    .{key = "set_root_bone", value = 3304788590},
    .{key = "get_root_bone", value = 2737447660},
    .{key = "set_scale_base_bone", value = 3304788590},
    .{key = "get_scale_base_bone", value = 2737447660},
    .{key = "set_group_size", value = 1286410249},
    .{key = "get_group_size", value = 2455072627},
    .{key = "get_group_name", value = 659327637},
    .{key = "set_group_name", value = 3780747571},
    .{key = "get_texture", value = 3536238170},
    .{key = "set_texture", value = 666127730},
    .{key = "set_bone_size", value = 1286410249},
    .{key = "get_bone_size", value = 2455072627},
    .{key = "find_bone", value = 2458036349},
    .{key = "get_bone_name", value = 659327637},
    .{key = "set_bone_name", value = 3780747571},
    .{key = "get_bone_parent", value = 659327637},
    .{key = "set_bone_parent", value = 3780747571},
    .{key = "get_tail_direction", value = 2675997574},
    .{key = "set_tail_direction", value = 1231951015},
    .{key = "get_bone_tail", value = 659327637},
    .{key = "set_bone_tail", value = 3780747571},
    .{key = "get_reference_pose", value = 1965739696},
    .{key = "set_reference_pose", value = 3616898986},
    .{key = "get_handle_offset", value = 2299179447},
    .{key = "set_handle_offset", value = 163021252},
    .{key = "get_group", value = 659327637},
    .{key = "set_group", value = 3780747571},
    .{key = "set_bind_count", value = 1286410249},
    .{key = "get_bind_count", value = 3905245786},
    .{key = "add_bind", value = 3616898986},
    .{key = "add_named_bind", value = 3154712474},
    .{key = "set_bind_pose", value = 3616898986},
    .{key = "get_bind_pose", value = 1965739696},
    .{key = "set_bind_name", value = 3780747571},
    .{key = "get_bind_name", value = 659327637},
    .{key = "set_bind_bone", value = 3937882851},
    .{key = "get_bind_bone", value = 923996154},
    .{key = "clear_binds", value = 3218959716},
    .{key = "get_skeleton", value = 2944877500},
    .{key = "get_skin", value = 2074563878},
    .{key = "set_radiance_size", value = 1512957179},
    .{key = "get_radiance_size", value = 2708733976},
    .{key = "set_process_mode", value = 875986769},
    .{key = "get_process_mode", value = 731245043},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_ticks", value = 1286410249},
    .{key = "get_ticks", value = 3905245786},
    .{key = "get_ticks_on_borders", value = 36873697},
    .{key = "set_ticks_on_borders", value = 2586408642},
    .{key = "set_editable", value = 2586408642},
    .{key = "is_editable", value = 36873697},
    .{key = "set_scrollable", value = 2586408642},
    .{key = "is_scrollable", value = 36873697},
    .{key = "set_param", value = 918243683},
    .{key = "get_param", value = 959925627},
    .{key = "get_physics_rid", value = 2944877500},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 3905245786},
    .{key = "set_collision_layer", value = 1286410249},
    .{key = "get_collision_layer", value = 3905245786},
    .{key = "set_collision_mask_value", value = 300928843},
    .{key = "get_collision_mask_value", value = 1116898809},
    .{key = "set_collision_layer_value", value = 300928843},
    .{key = "get_collision_layer_value", value = 1116898809},
    .{key = "set_parent_collision_ignore", value = 1348162250},
    .{key = "get_parent_collision_ignore", value = 4075236667},
    .{key = "set_disable_mode", value = 1104158384},
    .{key = "get_disable_mode", value = 4135042476},
    .{key = "get_collision_exceptions", value = 2915620761},
    .{key = "add_collision_exception_with", value = 1078189570},
    .{key = "remove_collision_exception_with", value = 1078189570},
    .{key = "set_simulation_precision", value = 1286410249},
    .{key = "get_simulation_precision", value = 2455072627},
    .{key = "set_total_mass", value = 373806689},
    .{key = "get_total_mass", value = 191475506},
    .{key = "set_linear_stiffness", value = 373806689},
    .{key = "get_linear_stiffness", value = 191475506},
    .{key = "set_pressure_coefficient", value = 373806689},
    .{key = "get_pressure_coefficient", value = 191475506},
    .{key = "set_damping_coefficient", value = 373806689},
    .{key = "get_damping_coefficient", value = 191475506},
    .{key = "set_drag_coefficient", value = 373806689},
    .{key = "get_drag_coefficient", value = 191475506},
    .{key = "get_point_transform", value = 871989493},
    .{key = "set_point_pinned", value = 3814935226},
    .{key = "is_point_pinned", value = 1116898809},
    .{key = "set_ray_pickable", value = 2586408642},
    .{key = "is_ray_pickable", value = 36873697},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_height", value = 373806689},
    .{key = "get_height", value = 1740695150},
    .{key = "set_radial_segments", value = 1286410249},
    .{key = "get_radial_segments", value = 3905245786},
    .{key = "set_rings", value = 1286410249},
    .{key = "get_rings", value = 3905245786},
    .{key = "set_is_hemisphere", value = 2586408642},
    .{key = "get_is_hemisphere", value = 36873697},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_horizontal_alignment", value = 2312603777},
    .{key = "get_horizontal_alignment", value = 341400642},
    .{key = "set_suffix", value = 83702148},
    .{key = "get_suffix", value = 201670096},
    .{key = "set_prefix", value = 83702148},
    .{key = "get_prefix", value = 201670096},
    .{key = "set_editable", value = 2586408642},
    .{key = "set_custom_arrow_step", value = 373806689},
    .{key = "get_custom_arrow_step", value = 1740695150},
    .{key = "is_editable", value = 36873697},
    .{key = "set_update_on_text_changed", value = 2586408642},
    .{key = "get_update_on_text_changed", value = 36873697},
    .{key = "set_select_all_on_focus", value = 2586408642},
    .{key = "is_select_all_on_focus", value = 36873697},
    .{key = "apply", value = 3218959716},
    .{key = "get_line_edit", value = 4071694264},
    .{key = "set_split_offset", value = 1286410249},
    .{key = "get_split_offset", value = 3905245786},
    .{key = "clamp_split_offset", value = 3218959716},
    .{key = "set_collapsed", value = 2586408642},
    .{key = "is_collapsed", value = 36873697},
    .{key = "set_dragger_visibility", value = 1168273952},
    .{key = "get_dragger_visibility", value = 967297479},
    .{key = "set_vertical", value = 2586408642},
    .{key = "is_vertical", value = 36873697},
    .{key = "get_hit_length", value = 191475506},
    .{key = "set_length", value = 373806689},
    .{key = "get_length", value = 1740695150},
    .{key = "set_shape", value = 1549710052},
    .{key = "get_shape", value = 3214262478},
    .{key = "add_excluded_object", value = 2722037293},
    .{key = "remove_excluded_object", value = 3521089500},
    .{key = "clear_excluded_objects", value = 3218959716},
    .{key = "set_collision_mask", value = 1286410249},
    .{key = "get_collision_mask", value = 2455072627},
    .{key = "set_margin", value = 373806689},
    .{key = "get_margin", value = 191475506},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_centered", value = 2586408642},
    .{key = "is_centered", value = 36873697},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_flip_h", value = 2586408642},
    .{key = "is_flipped_h", value = 36873697},
    .{key = "set_flip_v", value = 2586408642},
    .{key = "is_flipped_v", value = 36873697},
    .{key = "set_region_enabled", value = 2586408642},
    .{key = "is_region_enabled", value = 36873697},
    .{key = "is_pixel_opaque", value = 556197845},
    .{key = "set_region_rect", value = 2046264180},
    .{key = "get_region_rect", value = 1639390495},
    .{key = "set_region_filter_clip_enabled", value = 2586408642},
    .{key = "is_region_filter_clip_enabled", value = 36873697},
    .{key = "set_frame", value = 1286410249},
    .{key = "get_frame", value = 3905245786},
    .{key = "set_frame_coords", value = 1130785943},
    .{key = "get_frame_coords", value = 3690982128},
    .{key = "set_vframes", value = 1286410249},
    .{key = "get_vframes", value = 3905245786},
    .{key = "set_hframes", value = 1286410249},
    .{key = "get_hframes", value = 3905245786},
    .{key = "get_rect", value = 1639390495},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_region_enabled", value = 2586408642},
    .{key = "is_region_enabled", value = 36873697},
    .{key = "set_region_rect", value = 2046264180},
    .{key = "get_region_rect", value = 1639390495},
    .{key = "set_frame", value = 1286410249},
    .{key = "get_frame", value = 3905245786},
    .{key = "set_frame_coords", value = 1130785943},
    .{key = "get_frame_coords", value = 3690982128},
    .{key = "set_vframes", value = 1286410249},
    .{key = "get_vframes", value = 3905245786},
    .{key = "set_hframes", value = 1286410249},
    .{key = "get_hframes", value = 3905245786},
    .{key = "set_centered", value = 2586408642},
    .{key = "is_centered", value = 36873697},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_flip_h", value = 2586408642},
    .{key = "is_flipped_h", value = 36873697},
    .{key = "set_flip_v", value = 2586408642},
    .{key = "is_flipped_v", value = 36873697},
    .{key = "set_modulate", value = 2920490490},
    .{key = "get_modulate", value = 3444240500},
    .{key = "set_render_priority", value = 1286410249},
    .{key = "get_render_priority", value = 3905245786},
    .{key = "set_pixel_size", value = 373806689},
    .{key = "get_pixel_size", value = 1740695150},
    .{key = "set_axis", value = 1144690656},
    .{key = "get_axis", value = 3050976882},
    .{key = "set_draw_flag", value = 1135633219},
    .{key = "get_draw_flag", value = 1733036628},
    .{key = "set_alpha_cut_mode", value = 227561226},
    .{key = "get_alpha_cut_mode", value = 336003791},
    .{key = "set_alpha_scissor_threshold", value = 373806689},
    .{key = "get_alpha_scissor_threshold", value = 1740695150},
    .{key = "set_alpha_hash_scale", value = 373806689},
    .{key = "get_alpha_hash_scale", value = 1740695150},
    .{key = "set_alpha_antialiasing", value = 3212649852},
    .{key = "get_alpha_antialiasing", value = 2889939400},
    .{key = "set_alpha_antialiasing_edge", value = 373806689},
    .{key = "get_alpha_antialiasing_edge", value = 1740695150},
    .{key = "set_billboard_mode", value = 4202036497},
    .{key = "get_billboard_mode", value = 1283840139},
    .{key = "set_texture_filter", value = 22904437},
    .{key = "get_texture_filter", value = 3289213076},
    .{key = "get_item_rect", value = 1639390495},
    .{key = "generate_triangle_mesh", value = 3476533166},
    .{key = "add_animation", value = 3304788590},
    .{key = "has_animation", value = 2619796661},
    .{key = "remove_animation", value = 3304788590},
    .{key = "rename_animation", value = 3740211285},
    .{key = "get_animation_names", value = 1139954409},
    .{key = "set_animation_speed", value = 4135858297},
    .{key = "get_animation_speed", value = 2349060816},
    .{key = "set_animation_loop", value = 2524380260},
    .{key = "get_animation_loop", value = 2619796661},
    .{key = "add_frame", value = 1351332740},
    .{key = "set_frame", value = 56804795},
    .{key = "remove_frame", value = 2415702435},
    .{key = "get_frame_count", value = 2458036349},
    .{key = "get_frame_texture", value = 2900517879},
    .{key = "get_frame_duration", value = 1129309260},
    .{key = "clear", value = 3304788590},
    .{key = "clear_all", value = 3218959716},
    .{key = "set_constant_linear_velocity", value = 743155724},
    .{key = "set_constant_angular_velocity", value = 373806689},
    .{key = "get_constant_linear_velocity", value = 3341600327},
    .{key = "get_constant_angular_velocity", value = 1740695150},
    .{key = "set_physics_material_override", value = 1784508650},
    .{key = "get_physics_material_override", value = 2521850424},
    .{key = "set_constant_linear_velocity", value = 3460891852},
    .{key = "set_constant_angular_velocity", value = 3460891852},
    .{key = "get_constant_linear_velocity", value = 3360562783},
    .{key = "get_constant_angular_velocity", value = 3360562783},
    .{key = "set_physics_material_override", value = 1784508650},
    .{key = "get_physics_material_override", value = 2521850424},
    .{key = "set_tooltip", value = 83702148},
    .{key = "get_tooltip", value = 201670096},
    .{key = "set_icon", value = 532598488},
    .{key = "get_icon", value = 4190603485},
    .{key = "set_visible", value = 2586408642},
    .{key = "is_visible", value = 36873697},
    .{key = "put_data", value = 680677267},
    .{key = "put_partial_data", value = 2934048347},
    .{key = "get_data", value = 1171824711},
    .{key = "get_partial_data", value = 1171824711},
    .{key = "get_available_bytes", value = 3905245786},
    .{key = "set_big_endian", value = 2586408642},
    .{key = "is_big_endian_enabled", value = 36873697},
    .{key = "put_8", value = 1286410249},
    .{key = "put_u8", value = 1286410249},
    .{key = "put_16", value = 1286410249},
    .{key = "put_u16", value = 1286410249},
    .{key = "put_32", value = 1286410249},
    .{key = "put_u32", value = 1286410249},
    .{key = "put_64", value = 1286410249},
    .{key = "put_u64", value = 1286410249},
    .{key = "put_float", value = 373806689},
    .{key = "put_double", value = 373806689},
    .{key = "put_string", value = 83702148},
    .{key = "put_utf8_string", value = 83702148},
    .{key = "put_var", value = 738511890},
    .{key = "get_8", value = 2455072627},
    .{key = "get_u8", value = 2455072627},
    .{key = "get_16", value = 2455072627},
    .{key = "get_u16", value = 2455072627},
    .{key = "get_32", value = 2455072627},
    .{key = "get_u32", value = 2455072627},
    .{key = "get_64", value = 2455072627},
    .{key = "get_u64", value = 2455072627},
    .{key = "get_float", value = 191475506},
    .{key = "get_double", value = 191475506},
    .{key = "get_string", value = 2309358862},
    .{key = "get_utf8_string", value = 2309358862},
    .{key = "get_var", value = 3442865206},
    .{key = "seek", value = 1286410249},
    .{key = "get_size", value = 3905245786},
    .{key = "get_position", value = 3905245786},
    .{key = "resize", value = 1286410249},
    .{key = "set_data_array", value = 2971499966},
    .{key = "get_data_array", value = 2362200018},
    .{key = "clear", value = 3218959716},
    .{key = "duplicate", value = 2474064677},
    .{key = "start_compression", value = 781582770},
    .{key = "start_decompression", value = 781582770},
    .{key = "finish", value = 166280745},
    .{key = "clear", value = 3218959716},
    .{key = "bind", value = 3167955072},
    .{key = "connect_to_host", value = 993915709},
    .{key = "poll", value = 166280745},
    .{key = "get_status", value = 859471121},
    .{key = "get_connected_host", value = 201670096},
    .{key = "get_connected_port", value = 3905245786},
    .{key = "get_local_port", value = 3905245786},
    .{key = "disconnect_from_host", value = 3218959716},
    .{key = "set_no_delay", value = 2586408642},
    .{key = "poll", value = 3218959716},
    .{key = "accept_stream", value = 4292689651},
    .{key = "connect_to_stream", value = 57169517},
    .{key = "get_status", value = 1128380576},
    .{key = "get_stream", value = 2741655269},
    .{key = "disconnect_from_stream", value = 3218959716},
    .{key = "get_minimum_size", value = 3341600327},
    .{key = "set_content_margin", value = 4290182280},
    .{key = "set_content_margin_all", value = 373806689},
    .{key = "get_content_margin", value = 2869120046},
    .{key = "get_margin", value = 2869120046},
    .{key = "get_offset", value = 3341600327},
    .{key = "draw", value = 2275962004},
    .{key = "get_current_item_drawn", value = 3213695180},
    .{key = "test_mask", value = 3735564539},
    .{key = "set_bg_color", value = 2920490490},
    .{key = "get_bg_color", value = 3444240500},
    .{key = "set_border_color", value = 2920490490},
    .{key = "get_border_color", value = 3444240500},
    .{key = "set_border_width_all", value = 1286410249},
    .{key = "get_border_width_min", value = 3905245786},
    .{key = "set_border_width", value = 437707142},
    .{key = "get_border_width", value = 1983885014},
    .{key = "set_border_blend", value = 2586408642},
    .{key = "get_border_blend", value = 36873697},
    .{key = "set_corner_radius_all", value = 1286410249},
    .{key = "set_corner_radius", value = 2696158768},
    .{key = "get_corner_radius", value = 3982397690},
    .{key = "set_expand_margin", value = 4290182280},
    .{key = "set_expand_margin_all", value = 373806689},
    .{key = "get_expand_margin", value = 2869120046},
    .{key = "set_draw_center", value = 2586408642},
    .{key = "is_draw_center_enabled", value = 36873697},
    .{key = "set_skew", value = 743155724},
    .{key = "get_skew", value = 3341600327},
    .{key = "set_shadow_color", value = 2920490490},
    .{key = "get_shadow_color", value = 3444240500},
    .{key = "set_shadow_size", value = 1286410249},
    .{key = "get_shadow_size", value = 3905245786},
    .{key = "set_shadow_offset", value = 743155724},
    .{key = "get_shadow_offset", value = 3341600327},
    .{key = "set_anti_aliased", value = 2586408642},
    .{key = "is_anti_aliased", value = 36873697},
    .{key = "set_aa_size", value = 373806689},
    .{key = "get_aa_size", value = 1740695150},
    .{key = "set_corner_detail", value = 1286410249},
    .{key = "get_corner_detail", value = 3905245786},
    .{key = "set_color", value = 2920490490},
    .{key = "get_color", value = 3444240500},
    .{key = "set_thickness", value = 1286410249},
    .{key = "get_thickness", value = 3905245786},
    .{key = "set_grow_begin", value = 373806689},
    .{key = "get_grow_begin", value = 1740695150},
    .{key = "set_grow_end", value = 373806689},
    .{key = "get_grow_end", value = 1740695150},
    .{key = "set_vertical", value = 2586408642},
    .{key = "is_vertical", value = 36873697},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_texture_margin", value = 4290182280},
    .{key = "set_texture_margin_all", value = 373806689},
    .{key = "get_texture_margin", value = 2869120046},
    .{key = "set_expand_margin", value = 4290182280},
    .{key = "set_expand_margin_all", value = 373806689},
    .{key = "get_expand_margin", value = 2869120046},
    .{key = "set_region_rect", value = 2046264180},
    .{key = "get_region_rect", value = 1639390495},
    .{key = "set_draw_center", value = 2586408642},
    .{key = "is_draw_center_enabled", value = 36873697},
    .{key = "set_modulate", value = 2920490490},
    .{key = "get_modulate", value = 3444240500},
    .{key = "set_h_axis_stretch_mode", value = 2965538783},
    .{key = "get_h_axis_stretch_mode", value = 3807744063},
    .{key = "set_v_axis_stretch_mode", value = 2965538783},
    .{key = "get_v_axis_stretch_mode", value = 3807744063},
    .{key = "set_size", value = 1130785943},
    .{key = "get_size", value = 3690982128},
    .{key = "set_size_2d_override", value = 1130785943},
    .{key = "get_size_2d_override", value = 3690982128},
    .{key = "set_size_2d_override_stretch", value = 2586408642},
    .{key = "is_size_2d_override_stretch_enabled", value = 36873697},
    .{key = "set_update_mode", value = 1295690030},
    .{key = "get_update_mode", value = 2980171553},
    .{key = "set_clear_mode", value = 2834454712},
    .{key = "get_clear_mode", value = 331324495},
    .{key = "set_stretch", value = 2586408642},
    .{key = "is_stretch_enabled", value = 36873697},
    .{key = "set_stretch_shrink", value = 1286410249},
    .{key = "get_stretch_shrink", value = 3905245786},
    .{key = "set_skin_weight_count", value = 618679515},
    .{key = "get_skin_weight_count", value = 1072401130},
    .{key = "set_custom_format", value = 4087759856},
    .{key = "get_custom_format", value = 839863283},
    .{key = "begin", value = 2230304113},
    .{key = "add_vertex", value = 3460891852},
    .{key = "set_color", value = 2920490490},
    .{key = "set_normal", value = 3460891852},
    .{key = "set_tangent", value = 3505987427},
    .{key = "set_uv", value = 743155724},
    .{key = "set_uv2", value = 743155724},
    .{key = "set_bones", value = 3614634198},
    .{key = "set_weights", value = 2899603908},
    .{key = "set_custom", value = 2878471219},
    .{key = "set_smooth_group", value = 1286410249},
    .{key = "add_triangle_fan", value = 2235017613},
    .{key = "add_index", value = 1286410249},
    .{key = "index", value = 3218959716},
    .{key = "deindex", value = 3218959716},
    .{key = "generate_normals", value = 107499316},
    .{key = "generate_tangents", value = 3218959716},
    .{key = "optimize_indices_for_cache", value = 3218959716},
    .{key = "get_aabb", value = 1068685055},
    .{key = "generate_lod", value = 1938056459},
    .{key = "set_material", value = 2757459619},
    .{key = "get_primitive_type", value = 768822145},
    .{key = "clear", value = 3218959716},
    .{key = "create_from", value = 1767024570},
    .{key = "create_from_blend_shape", value = 1306185582},
    .{key = "append_from", value = 2217967155},
    .{key = "commit", value = 4107864055},
    .{key = "commit_to_arrays", value = 2915620761},
    .{key = "get_line_syntax_highlighting", value = 3554694381},
    .{key = "update_cache", value = 3218959716},
    .{key = "clear_highlighting_cache", value = 3218959716},
    .{key = "get_text_edit", value = 1893027089},
    .{key = "set_antialiasing", value = 1669900},
    .{key = "get_antialiasing", value = 4262718649},
    .{key = "set_disable_embedded_bitmaps", value = 2586408642},
    .{key = "get_disable_embedded_bitmaps", value = 36873697},
    .{key = "set_generate_mipmaps", value = 2586408642},
    .{key = "get_generate_mipmaps", value = 36873697},
    .{key = "set_allow_system_fallback", value = 2586408642},
    .{key = "is_allow_system_fallback", value = 36873697},
    .{key = "set_force_autohinter", value = 2586408642},
    .{key = "is_force_autohinter", value = 36873697},
    .{key = "set_hinting", value = 1827459492},
    .{key = "get_hinting", value = 3683214614},
    .{key = "set_subpixel_positioning", value = 4225742182},
    .{key = "get_subpixel_positioning", value = 1069238588},
    .{key = "set_multichannel_signed_distance_field", value = 2586408642},
    .{key = "is_multichannel_signed_distance_field", value = 36873697},
    .{key = "set_msdf_pixel_range", value = 1286410249},
    .{key = "get_msdf_pixel_range", value = 3905245786},
    .{key = "set_msdf_size", value = 1286410249},
    .{key = "get_msdf_size", value = 3905245786},
    .{key = "set_oversampling", value = 373806689},
    .{key = "get_oversampling", value = 1740695150},
    .{key = "get_font_names", value = 1139954409},
    .{key = "set_font_names", value = 4015028928},
    .{key = "get_font_italic", value = 36873697},
    .{key = "set_font_italic", value = 2586408642},
    .{key = "set_font_weight", value = 1286410249},
    .{key = "set_font_stretch", value = 1286410249},
    .{key = "listen", value = 3167955072},
    .{key = "is_connection_available", value = 36873697},
    .{key = "is_listening", value = 36873697},
    .{key = "get_local_port", value = 3905245786},
    .{key = "take_connection", value = 30545006},
    .{key = "stop", value = 3218959716},
    .{key = "client", value = 3565000357},
    .{key = "client_unsafe", value = 2090251749},
    .{key = "server", value = 36969539},
    .{key = "set_tab_count", value = 1286410249},
    .{key = "get_tab_count", value = 3905245786},
    .{key = "set_current_tab", value = 1286410249},
    .{key = "get_current_tab", value = 3905245786},
    .{key = "get_previous_tab", value = 3905245786},
    .{key = "select_previous_available", value = 2240911060},
    .{key = "select_next_available", value = 2240911060},
    .{key = "set_tab_title", value = 501894301},
    .{key = "get_tab_title", value = 844755477},
    .{key = "set_tab_text_direction", value = 1707680378},
    .{key = "get_tab_text_direction", value = 4235602388},
    .{key = "set_tab_language", value = 501894301},
    .{key = "get_tab_language", value = 844755477},
    .{key = "set_tab_icon", value = 666127730},
    .{key = "get_tab_icon", value = 3536238170},
    .{key = "set_tab_icon_max_width", value = 3937882851},
    .{key = "get_tab_icon_max_width", value = 923996154},
    .{key = "set_tab_button_icon", value = 666127730},
    .{key = "get_tab_button_icon", value = 3536238170},
    .{key = "set_tab_disabled", value = 300928843},
    .{key = "is_tab_disabled", value = 1116898809},
    .{key = "set_tab_hidden", value = 300928843},
    .{key = "is_tab_hidden", value = 1116898809},
    .{key = "set_tab_metadata", value = 2152698145},
    .{key = "get_tab_metadata", value = 4227898402},
    .{key = "remove_tab", value = 1286410249},
    .{key = "add_tab", value = 1465444425},
    .{key = "get_tab_idx_at_point", value = 3820158470},
    .{key = "set_tab_alignment", value = 2413632353},
    .{key = "get_tab_alignment", value = 2178122193},
    .{key = "set_clip_tabs", value = 2586408642},
    .{key = "get_clip_tabs", value = 36873697},
    .{key = "get_tab_offset", value = 3905245786},
    .{key = "get_offset_buttons_visible", value = 36873697},
    .{key = "ensure_tab_visible", value = 1286410249},
    .{key = "get_tab_rect", value = 3327874267},
    .{key = "move_tab", value = 3937882851},
    .{key = "set_tab_close_display_policy", value = 2212906737},
    .{key = "get_tab_close_display_policy", value = 2956568028},
    .{key = "set_max_tab_width", value = 1286410249},
    .{key = "get_max_tab_width", value = 3905245786},
    .{key = "set_scrolling_enabled", value = 2586408642},
    .{key = "get_scrolling_enabled", value = 36873697},
    .{key = "set_drag_to_rearrange_enabled", value = 2586408642},
    .{key = "get_drag_to_rearrange_enabled", value = 36873697},
    .{key = "set_tabs_rearrange_group", value = 1286410249},
    .{key = "get_tabs_rearrange_group", value = 3905245786},
    .{key = "set_scroll_to_selected", value = 2586408642},
    .{key = "get_scroll_to_selected", value = 36873697},
    .{key = "set_select_with_rmb", value = 2586408642},
    .{key = "get_select_with_rmb", value = 36873697},
    .{key = "set_deselect_enabled", value = 2586408642},
    .{key = "get_deselect_enabled", value = 36873697},
    .{key = "clear_tabs", value = 3218959716},
    .{key = "get_tab_count", value = 3905245786},
    .{key = "set_current_tab", value = 1286410249},
    .{key = "get_current_tab", value = 3905245786},
    .{key = "get_previous_tab", value = 3905245786},
    .{key = "select_previous_available", value = 2240911060},
    .{key = "select_next_available", value = 2240911060},
    .{key = "get_current_tab_control", value = 2783021301},
    .{key = "get_tab_bar", value = 1865451809},
    .{key = "get_tab_control", value = 1065994134},
    .{key = "set_tab_alignment", value = 2413632353},
    .{key = "get_tab_alignment", value = 2178122193},
    .{key = "set_tabs_position", value = 256673370},
    .{key = "get_tabs_position", value = 919937023},
    .{key = "set_clip_tabs", value = 2586408642},
    .{key = "get_clip_tabs", value = 36873697},
    .{key = "set_tabs_visible", value = 2586408642},
    .{key = "are_tabs_visible", value = 36873697},
    .{key = "set_all_tabs_in_front", value = 2586408642},
    .{key = "is_all_tabs_in_front", value = 36873697},
    .{key = "set_tab_title", value = 501894301},
    .{key = "get_tab_title", value = 844755477},
    .{key = "set_tab_icon", value = 666127730},
    .{key = "get_tab_icon", value = 3536238170},
    .{key = "set_tab_disabled", value = 300928843},
    .{key = "is_tab_disabled", value = 1116898809},
    .{key = "set_tab_hidden", value = 300928843},
    .{key = "is_tab_hidden", value = 1116898809},
    .{key = "set_tab_metadata", value = 2152698145},
    .{key = "get_tab_metadata", value = 4227898402},
    .{key = "set_tab_button_icon", value = 666127730},
    .{key = "get_tab_button_icon", value = 3536238170},
    .{key = "get_tab_idx_at_point", value = 3820158470},
    .{key = "get_tab_idx_from_control", value = 2787397975},
    .{key = "set_popup", value = 1078189570},
    .{key = "get_popup", value = 111095082},
    .{key = "set_drag_to_rearrange_enabled", value = 2586408642},
    .{key = "get_drag_to_rearrange_enabled", value = 36873697},
    .{key = "set_tabs_rearrange_group", value = 1286410249},
    .{key = "get_tabs_rearrange_group", value = 3905245786},
    .{key = "set_use_hidden_tabs_for_min_size", value = 2586408642},
    .{key = "get_use_hidden_tabs_for_min_size", value = 36873697},
    .{key = "set_tab_focus_mode", value = 3232914922},
    .{key = "get_tab_focus_mode", value = 2132829277},
    .{key = "set_deselect_enabled", value = 2586408642},
    .{key = "get_deselect_enabled", value = 36873697},
    .{key = "has_ime_text", value = 36873697},
    .{key = "cancel_ime", value = 3218959716},
    .{key = "apply_ime", value = 3218959716},
    .{key = "set_editable", value = 2586408642},
    .{key = "is_editable", value = 36873697},
    .{key = "set_text_direction", value = 119160795},
    .{key = "get_text_direction", value = 797257663},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "set_tab_size", value = 1286410249},
    .{key = "get_tab_size", value = 3905245786},
    .{key = "set_indent_wrapped_lines", value = 2586408642},
    .{key = "is_indent_wrapped_lines", value = 36873697},
    .{key = "set_overtype_mode_enabled", value = 2586408642},
    .{key = "is_overtype_mode_enabled", value = 36873697},
    .{key = "set_context_menu_enabled", value = 2586408642},
    .{key = "is_context_menu_enabled", value = 36873697},
    .{key = "set_shortcut_keys_enabled", value = 2586408642},
    .{key = "is_shortcut_keys_enabled", value = 36873697},
    .{key = "set_virtual_keyboard_enabled", value = 2586408642},
    .{key = "is_virtual_keyboard_enabled", value = 36873697},
    .{key = "set_middle_mouse_paste_enabled", value = 2586408642},
    .{key = "is_middle_mouse_paste_enabled", value = 36873697},
    .{key = "clear", value = 3218959716},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "get_line_count", value = 3905245786},
    .{key = "set_placeholder", value = 83702148},
    .{key = "get_placeholder", value = 201670096},
    .{key = "set_line", value = 501894301},
    .{key = "get_line", value = 844755477},
    .{key = "get_line_width", value = 688195400},
    .{key = "get_line_height", value = 3905245786},
    .{key = "get_indent_level", value = 923996154},
    .{key = "get_first_non_whitespace_column", value = 923996154},
    .{key = "swap_lines", value = 3937882851},
    .{key = "insert_line_at", value = 501894301},
    .{key = "insert_text_at_caret", value = 2697778442},
    .{key = "remove_text", value = 4275841770},
    .{key = "get_last_unhidden_line", value = 3905245786},
    .{key = "get_next_visible_line_offset_from", value = 3175239445},
    .{key = "get_next_visible_line_index_offset_from", value = 3386475622},
    .{key = "backspace", value = 1025054187},
    .{key = "cut", value = 1025054187},
    .{key = "copy", value = 1025054187},
    .{key = "paste", value = 1025054187},
    .{key = "paste_primary_clipboard", value = 1025054187},
    .{key = "start_action", value = 2834827583},
    .{key = "end_action", value = 3218959716},
    .{key = "begin_complex_operation", value = 3218959716},
    .{key = "end_complex_operation", value = 3218959716},
    .{key = "has_undo", value = 36873697},
    .{key = "has_redo", value = 36873697},
    .{key = "undo", value = 3218959716},
    .{key = "redo", value = 3218959716},
    .{key = "clear_undo_history", value = 3218959716},
    .{key = "tag_saved_version", value = 3218959716},
    .{key = "get_version", value = 3905245786},
    .{key = "get_saved_version", value = 3905245786},
    .{key = "set_search_text", value = 83702148},
    .{key = "set_search_flags", value = 1286410249},
    .{key = "search", value = 1203739136},
    .{key = "set_tooltip_request_func", value = 1611583062},
    .{key = "get_local_mouse_pos", value = 3341600327},
    .{key = "get_word_at_pos", value = 3674420000},
    .{key = "get_line_column_at_pos", value = 239517838},
    .{key = "get_pos_at_line_column", value = 410388347},
    .{key = "get_rect_at_line_column", value = 3256618057},
    .{key = "get_minimap_line_at_pos", value = 2485466453},
    .{key = "is_dragging_cursor", value = 36873697},
    .{key = "is_mouse_over_selection", value = 1840282309},
    .{key = "set_caret_type", value = 1211596914},
    .{key = "get_caret_type", value = 2830252959},
    .{key = "set_caret_blink_enabled", value = 2586408642},
    .{key = "is_caret_blink_enabled", value = 36873697},
    .{key = "set_caret_blink_interval", value = 373806689},
    .{key = "get_caret_blink_interval", value = 1740695150},
    .{key = "set_draw_caret_when_editable_disabled", value = 2586408642},
    .{key = "is_drawing_caret_when_editable_disabled", value = 36873697},
    .{key = "set_move_caret_on_right_click_enabled", value = 2586408642},
    .{key = "is_move_caret_on_right_click_enabled", value = 36873697},
    .{key = "set_caret_mid_grapheme_enabled", value = 2586408642},
    .{key = "is_caret_mid_grapheme_enabled", value = 36873697},
    .{key = "set_multiple_carets_enabled", value = 2586408642},
    .{key = "is_multiple_carets_enabled", value = 36873697},
    .{key = "add_caret", value = 50157827},
    .{key = "remove_caret", value = 1286410249},
    .{key = "remove_secondary_carets", value = 3218959716},
    .{key = "merge_overlapping_carets", value = 3218959716},
    .{key = "get_caret_count", value = 3905245786},
    .{key = "add_caret_at_carets", value = 2586408642},
    .{key = "get_caret_index_edit_order", value = 969006518},
    .{key = "adjust_carets_after_edit", value = 1770277138},
    .{key = "is_caret_visible", value = 1051549951},
    .{key = "get_caret_draw_pos", value = 478253731},
    .{key = "set_caret_line", value = 1302582944},
    .{key = "get_caret_line", value = 1591665591},
    .{key = "set_caret_column", value = 3796796178},
    .{key = "get_caret_column", value = 1591665591},
    .{key = "get_caret_wrap_index", value = 1591665591},
    .{key = "get_word_under_caret", value = 3929349208},
    .{key = "set_selecting_enabled", value = 2586408642},
    .{key = "is_selecting_enabled", value = 36873697},
    .{key = "set_deselect_on_focus_loss_enabled", value = 2586408642},
    .{key = "is_deselect_on_focus_loss_enabled", value = 36873697},
    .{key = "set_drag_and_drop_selection_enabled", value = 2586408642},
    .{key = "is_drag_and_drop_selection_enabled", value = 36873697},
    .{key = "set_selection_mode", value = 1443345937},
    .{key = "get_selection_mode", value = 3750106938},
    .{key = "select_all", value = 3218959716},
    .{key = "select_word_under_caret", value = 1025054187},
    .{key = "add_selection_for_next_occurrence", value = 3218959716},
    .{key = "select", value = 2560984452},
    .{key = "has_selection", value = 2824505868},
    .{key = "get_selected_text", value = 2309358862},
    .{key = "get_selection_line", value = 1591665591},
    .{key = "get_selection_column", value = 1591665591},
    .{key = "get_selection_from_line", value = 1591665591},
    .{key = "get_selection_from_column", value = 1591665591},
    .{key = "get_selection_to_line", value = 1591665591},
    .{key = "get_selection_to_column", value = 1591665591},
    .{key = "deselect", value = 1025054187},
    .{key = "delete_selection", value = 1025054187},
    .{key = "set_line_wrapping_mode", value = 2525115309},
    .{key = "get_line_wrapping_mode", value = 3562716114},
    .{key = "set_autowrap_mode", value = 3289138044},
    .{key = "get_autowrap_mode", value = 1549071663},
    .{key = "is_line_wrapped", value = 1116898809},
    .{key = "get_line_wrap_count", value = 923996154},
    .{key = "get_line_wrap_index_at_column", value = 3175239445},
    .{key = "get_line_wrapped_text", value = 647634434},
    .{key = "set_smooth_scroll_enabled", value = 2586408642},
    .{key = "is_smooth_scroll_enabled", value = 36873697},
    .{key = "get_v_scroll_bar", value = 3226026593},
    .{key = "get_h_scroll_bar", value = 3774687988},
    .{key = "set_v_scroll", value = 373806689},
    .{key = "get_v_scroll", value = 1740695150},
    .{key = "set_h_scroll", value = 1286410249},
    .{key = "get_h_scroll", value = 3905245786},
    .{key = "set_scroll_past_end_of_file_enabled", value = 2586408642},
    .{key = "is_scroll_past_end_of_file_enabled", value = 36873697},
    .{key = "set_v_scroll_speed", value = 373806689},
    .{key = "get_v_scroll_speed", value = 1740695150},
    .{key = "set_fit_content_height_enabled", value = 2586408642},
    .{key = "is_fit_content_height_enabled", value = 36873697},
    .{key = "get_scroll_pos_for_line", value = 3929084198},
    .{key = "set_line_as_first_visible", value = 2230941749},
    .{key = "get_first_visible_line", value = 3905245786},
    .{key = "set_line_as_center_visible", value = 2230941749},
    .{key = "set_line_as_last_visible", value = 2230941749},
    .{key = "get_last_full_visible_line", value = 3905245786},
    .{key = "get_last_full_visible_line_wrap_index", value = 3905245786},
    .{key = "get_visible_line_count", value = 3905245786},
    .{key = "get_visible_line_count_in_range", value = 3175239445},
    .{key = "get_total_visible_line_count", value = 3905245786},
    .{key = "adjust_viewport_to_caret", value = 1995695955},
    .{key = "center_viewport_to_caret", value = 1995695955},
    .{key = "set_draw_minimap", value = 2586408642},
    .{key = "is_drawing_minimap", value = 36873697},
    .{key = "set_minimap_width", value = 1286410249},
    .{key = "get_minimap_width", value = 3905245786},
    .{key = "get_minimap_visible_lines", value = 3905245786},
    .{key = "add_gutter", value = 1025054187},
    .{key = "remove_gutter", value = 1286410249},
    .{key = "get_gutter_count", value = 3905245786},
    .{key = "set_gutter_name", value = 501894301},
    .{key = "get_gutter_name", value = 844755477},
    .{key = "set_gutter_type", value = 1088959071},
    .{key = "get_gutter_type", value = 1159699127},
    .{key = "set_gutter_width", value = 3937882851},
    .{key = "get_gutter_width", value = 923996154},
    .{key = "set_gutter_draw", value = 300928843},
    .{key = "is_gutter_drawn", value = 1116898809},
    .{key = "set_gutter_clickable", value = 300928843},
    .{key = "is_gutter_clickable", value = 1116898809},
    .{key = "set_gutter_overwritable", value = 300928843},
    .{key = "is_gutter_overwritable", value = 1116898809},
    .{key = "merge_gutters", value = 3937882851},
    .{key = "set_gutter_custom_draw", value = 957362965},
    .{key = "get_total_gutter_width", value = 3905245786},
    .{key = "set_line_gutter_metadata", value = 2060538656},
    .{key = "get_line_gutter_metadata", value = 678354945},
    .{key = "set_line_gutter_text", value = 2285447957},
    .{key = "get_line_gutter_text", value = 1391810591},
    .{key = "set_line_gutter_icon", value = 176101966},
    .{key = "get_line_gutter_icon", value = 2584904275},
    .{key = "set_line_gutter_item_color", value = 3733378741},
    .{key = "get_line_gutter_item_color", value = 2165839948},
    .{key = "set_line_gutter_clickable", value = 1383440665},
    .{key = "is_line_gutter_clickable", value = 2522259332},
    .{key = "set_line_background_color", value = 2878471219},
    .{key = "get_line_background_color", value = 3457211756},
    .{key = "set_syntax_highlighter", value = 2765644541},
    .{key = "get_syntax_highlighter", value = 2721131626},
    .{key = "set_highlight_current_line", value = 2586408642},
    .{key = "is_highlight_current_line_enabled", value = 36873697},
    .{key = "set_highlight_all_occurrences", value = 2586408642},
    .{key = "is_highlight_all_occurrences_enabled", value = 36873697},
    .{key = "get_draw_control_chars", value = 36873697},
    .{key = "set_draw_control_chars", value = 2586408642},
    .{key = "set_draw_tabs", value = 2586408642},
    .{key = "is_drawing_tabs", value = 36873697},
    .{key = "set_draw_spaces", value = 2586408642},
    .{key = "is_drawing_spaces", value = 36873697},
    .{key = "get_menu", value = 229722558},
    .{key = "is_menu_visible", value = 36873697},
    .{key = "menu_option", value = 1286410249},
    .{key = "clear", value = 3218959716},
    .{key = "set_direction", value = 1418190634},
    .{key = "get_direction", value = 2516697328},
    .{key = "set_orientation", value = 42823726},
    .{key = "get_orientation", value = 175768116},
    .{key = "set_preserve_invalid", value = 2586408642},
    .{key = "get_preserve_invalid", value = 36873697},
    .{key = "set_preserve_control", value = 2586408642},
    .{key = "get_preserve_control", value = 36873697},
    .{key = "set_bidi_override", value = 381264803},
    .{key = "add_string", value = 621426851},
    .{key = "add_object", value = 1316529304},
    .{key = "resize_object", value = 2095776372},
    .{key = "set_width", value = 373806689},
    .{key = "get_width", value = 1740695150},
    .{key = "set_horizontal_alignment", value = 2312603777},
    .{key = "get_horizontal_alignment", value = 341400642},
    .{key = "tab_align", value = 2899603908},
    .{key = "set_flags", value = 2877345813},
    .{key = "get_flags", value = 1583363614},
    .{key = "set_text_overrun_behavior", value = 1008890932},
    .{key = "get_text_overrun_behavior", value = 3779142101},
    .{key = "set_ellipsis_char", value = 83702148},
    .{key = "get_ellipsis_char", value = 201670096},
    .{key = "get_objects", value = 3995934104},
    .{key = "get_object_rect", value = 1742700391},
    .{key = "get_size", value = 3341600327},
    .{key = "get_rid", value = 2944877500},
    .{key = "get_line_ascent", value = 1740695150},
    .{key = "get_line_descent", value = 1740695150},
    .{key = "get_line_width", value = 1740695150},
    .{key = "get_line_underline_position", value = 1740695150},
    .{key = "get_line_underline_thickness", value = 1740695150},
    .{key = "draw", value = 856975658},
    .{key = "draw_outline", value = 1343401456},
    .{key = "hit_test", value = 2401831903},
    .{key = "set_horizontal_alignment", value = 2312603777},
    .{key = "get_horizontal_alignment", value = 341400642},
    .{key = "set_vertical_alignment", value = 1796458609},
    .{key = "get_vertical_alignment", value = 3274884059},
    .{key = "set_text", value = 83702148},
    .{key = "get_text", value = 201670096},
    .{key = "set_font", value = 1262170328},
    .{key = "get_font", value = 3229501585},
    .{key = "set_font_size", value = 1286410249},
    .{key = "get_font_size", value = 3905245786},
    .{key = "set_line_spacing", value = 373806689},
    .{key = "get_line_spacing", value = 1740695150},
    .{key = "set_autowrap_mode", value = 3289138044},
    .{key = "get_autowrap_mode", value = 1549071663},
    .{key = "set_justification_flags", value = 2877345813},
    .{key = "get_justification_flags", value = 1583363614},
    .{key = "set_depth", value = 373806689},
    .{key = "get_depth", value = 1740695150},
    .{key = "set_width", value = 373806689},
    .{key = "get_width", value = 1740695150},
    .{key = "set_pixel_size", value = 373806689},
    .{key = "get_pixel_size", value = 1740695150},
    .{key = "set_offset", value = 743155724},
    .{key = "get_offset", value = 3341600327},
    .{key = "set_curve_step", value = 373806689},
    .{key = "get_curve_step", value = 1740695150},
    .{key = "set_text_direction", value = 1418190634},
    .{key = "get_text_direction", value = 2516697328},
    .{key = "set_language", value = 83702148},
    .{key = "get_language", value = 201670096},
    .{key = "set_structured_text_bidi_override", value = 55961453},
    .{key = "get_structured_text_bidi_override", value = 3385126229},
    .{key = "set_structured_text_bidi_override_options", value = 381264803},
    .{key = "get_structured_text_bidi_override_options", value = 3995934104},
    .{key = "set_uppercase", value = 2586408642},
    .{key = "is_uppercase", value = 36873697},
    .{key = "clear", value = 3218959716},
    .{key = "set_direction", value = 1418190634},
    .{key = "get_direction", value = 2516697328},
    .{key = "set_custom_punctuation", value = 83702148},
    .{key = "get_custom_punctuation", value = 201670096},
    .{key = "set_orientation", value = 42823726},
    .{key = "get_orientation", value = 175768116},
    .{key = "set_preserve_invalid", value = 2586408642},
    .{key = "get_preserve_invalid", value = 36873697},
    .{key = "set_preserve_control", value = 2586408642},
    .{key = "get_preserve_control", value = 36873697},
    .{key = "set_bidi_override", value = 381264803},
    .{key = "set_dropcap", value = 2498990330},
    .{key = "clear_dropcap", value = 3218959716},
    .{key = "add_string", value = 621426851},
    .{key = "add_object", value = 1316529304},
    .{key = "resize_object", value = 2095776372},
    .{key = "set_alignment", value = 2312603777},
    .{key = "get_alignment", value = 341400642},
    .{key = "tab_align", value = 2899603908},
    .{key = "set_break_flags", value = 2809697122},
    .{key = "get_break_flags", value = 2340632602},
    .{key = "set_justification_flags", value = 2877345813},
    .{key = "get_justification_flags", value = 1583363614},
    .{key = "set_text_overrun_behavior", value = 1008890932},
    .{key = "get_text_overrun_behavior", value = 3779142101},
    .{key = "set_ellipsis_char", value = 83702148},
    .{key = "get_ellipsis_char", value = 201670096},
    .{key = "set_width", value = 373806689},
    .{key = "get_width", value = 1740695150},
    .{key = "get_non_wrapped_size", value = 3341600327},
    .{key = "get_size", value = 3341600327},
    .{key = "get_rid", value = 2944877500},
    .{key = "get_line_rid", value = 495598643},
    .{key = "get_dropcap_rid", value = 2944877500},
    .{key = "get_line_count", value = 3905245786},
    .{key = "set_max_lines_visible", value = 1286410249},
    .{key = "get_max_lines_visible", value = 3905245786},
    .{key = "get_line_objects", value = 663333327},
    .{key = "get_line_object_rect", value = 204315017},
    .{key = "get_line_size", value = 2299179447},
    .{key = "get_line_range", value = 880721226},
    .{key = "get_line_ascent", value = 2339986948},
    .{key = "get_line_descent", value = 2339986948},
    .{key = "get_line_width", value = 2339986948},
    .{key = "get_line_underline_position", value = 2339986948},
    .{key = "get_line_underline_thickness", value = 2339986948},
    .{key = "get_dropcap_size", value = 3341600327},
    .{key = "get_dropcap_lines", value = 3905245786},
    .{key = "draw", value = 1567802413},
    .{key = "draw_outline", value = 1893131224},
    .{key = "draw_line", value = 1242169894},
    .{key = "draw_line_outline", value = 2664926980},
    .{key = "draw_dropcap", value = 856975658},
    .{key = "draw_dropcap_outline", value = 1343401456},
    .{key = "hit_test", value = 3820158470},
    .{key = "has_feature", value = 3967367083},
    .{key = "get_name", value = 201670096},
    .{key = "get_features", value = 3905245786},
    .{key = "load_support_data", value = 2323990056},
    .{key = "get_support_data_filename", value = 201670096},
    .{key = "get_support_data_info", value = 201670096},
    .{key = "save_support_data", value = 3927539163},
    .{key = "is_locale_right_to_left", value = 3927539163},
    .{key = "name_to_tag", value = 1321353865},
    .{key = "tag_to_name", value = 844755477},
    .{key = "has", value = 3521089500},
    .{key = "free_rid", value = 2722037293},
    .{key = "create_font", value = 529393457},
    .{key = "create_font_linked_variation", value = 41030802},
    .{key = "font_set_data", value = 1355495400},
    .{key = "font_set_face_index", value = 3411492887},
    .{key = "font_get_face_index", value = 2198884583},
    .{key = "font_get_face_count", value = 2198884583},
    .{key = "font_set_style", value = 898466325},
    .{key = "font_get_style", value = 3082502592},
    .{key = "font_set_name", value = 2726140452},
    .{key = "font_get_name", value = 642473191},
    .{key = "font_get_ot_name_strings", value = 1882737106},
    .{key = "font_set_style_name", value = 2726140452},
    .{key = "font_get_style_name", value = 642473191},
    .{key = "font_set_weight", value = 3411492887},
    .{key = "font_get_weight", value = 2198884583},
    .{key = "font_set_stretch", value = 3411492887},
    .{key = "font_get_stretch", value = 2198884583},
    .{key = "font_set_antialiasing", value = 958337235},
    .{key = "font_get_antialiasing", value = 3389420495},
    .{key = "font_set_disable_embedded_bitmaps", value = 1265174801},
    .{key = "font_get_disable_embedded_bitmaps", value = 4155700596},
    .{key = "font_set_generate_mipmaps", value = 1265174801},
    .{key = "font_get_generate_mipmaps", value = 4155700596},
    .{key = "font_set_multichannel_signed_distance_field", value = 1265174801},
    .{key = "font_is_multichannel_signed_distance_field", value = 4155700596},
    .{key = "font_set_msdf_pixel_range", value = 3411492887},
    .{key = "font_get_msdf_pixel_range", value = 2198884583},
    .{key = "font_set_msdf_size", value = 3411492887},
    .{key = "font_get_msdf_size", value = 2198884583},
    .{key = "font_set_fixed_size", value = 3411492887},
    .{key = "font_get_fixed_size", value = 2198884583},
    .{key = "font_set_fixed_size_scale_mode", value = 1029390307},
    .{key = "font_get_fixed_size_scale_mode", value = 4113120379},
    .{key = "font_set_allow_system_fallback", value = 1265174801},
    .{key = "font_is_allow_system_fallback", value = 4155700596},
    .{key = "font_set_force_autohinter", value = 1265174801},
    .{key = "font_is_force_autohinter", value = 4155700596},
    .{key = "font_set_hinting", value = 1520010864},
    .{key = "font_get_hinting", value = 3971592737},
    .{key = "font_set_subpixel_positioning", value = 3830459669},
    .{key = "font_get_subpixel_positioning", value = 2752233671},
    .{key = "font_set_embolden", value = 1794382983},
    .{key = "font_get_embolden", value = 866169185},
    .{key = "font_set_spacing", value = 1307259930},
    .{key = "font_get_spacing", value = 1213653558},
    .{key = "font_set_baseline_offset", value = 1794382983},
    .{key = "font_get_baseline_offset", value = 866169185},
    .{key = "font_set_transform", value = 1246044741},
    .{key = "font_get_transform", value = 213527486},
    .{key = "font_set_variation_coordinates", value = 1217542888},
    .{key = "font_get_variation_coordinates", value = 1882737106},
    .{key = "font_set_oversampling", value = 1794382983},
    .{key = "font_get_oversampling", value = 866169185},
    .{key = "font_get_size_cache_list", value = 2684255073},
    .{key = "font_clear_size_cache", value = 2722037293},
    .{key = "font_remove_size_cache", value = 2450610377},
    .{key = "font_set_ascent", value = 1892459533},
    .{key = "font_get_ascent", value = 755457166},
    .{key = "font_set_descent", value = 1892459533},
    .{key = "font_get_descent", value = 755457166},
    .{key = "font_set_underline_position", value = 1892459533},
    .{key = "font_get_underline_position", value = 755457166},
    .{key = "font_set_underline_thickness", value = 1892459533},
    .{key = "font_get_underline_thickness", value = 755457166},
    .{key = "font_set_scale", value = 1892459533},
    .{key = "font_get_scale", value = 755457166},
    .{key = "font_get_texture_count", value = 1311001310},
    .{key = "font_clear_textures", value = 2450610377},
    .{key = "font_remove_texture", value = 3810512262},
    .{key = "font_set_texture_image", value = 2354485091},
    .{key = "font_get_texture_image", value = 2451761155},
    .{key = "font_set_texture_offsets", value = 3005398047},
    .{key = "font_get_texture_offsets", value = 3420028887},
    .{key = "font_get_glyph_list", value = 46086620},
    .{key = "font_clear_glyphs", value = 2450610377},
    .{key = "font_remove_glyph", value = 3810512262},
    .{key = "font_get_glyph_advance", value = 2555689501},
    .{key = "font_set_glyph_advance", value = 3219397315},
    .{key = "font_get_glyph_offset", value = 513728628},
    .{key = "font_set_glyph_offset", value = 1812632090},
    .{key = "font_get_glyph_size", value = 513728628},
    .{key = "font_set_glyph_size", value = 1812632090},
    .{key = "font_get_glyph_uv_rect", value = 2274268786},
    .{key = "font_set_glyph_uv_rect", value = 1973324081},
    .{key = "font_get_glyph_texture_idx", value = 4292800474},
    .{key = "font_set_glyph_texture_idx", value = 4254580980},
    .{key = "font_get_glyph_texture_rid", value = 1451696141},
    .{key = "font_get_glyph_texture_size", value = 513728628},
    .{key = "font_get_glyph_contours", value = 2903964473},
    .{key = "font_get_kerning_list", value = 1778388067},
    .{key = "font_clear_kerning_map", value = 3411492887},
    .{key = "font_remove_kerning", value = 2141860016},
    .{key = "font_set_kerning", value = 3630965883},
    .{key = "font_get_kerning", value = 1019980169},
    .{key = "font_get_glyph_index", value = 1765635060},
    .{key = "font_get_char_from_glyph_index", value = 2156738276},
    .{key = "font_has_char", value = 3120086654},
    .{key = "font_get_supported_chars", value = 642473191},
    .{key = "font_render_range", value = 4254580980},
    .{key = "font_render_glyph", value = 3810512262},
    .{key = "font_draw_glyph", value = 1339057948},
    .{key = "font_draw_glyph_outline", value = 2626165733},
    .{key = "font_is_language_supported", value = 3199320846},
    .{key = "font_set_language_support_override", value = 2313957094},
    .{key = "font_get_language_support_override", value = 2829184646},
    .{key = "font_remove_language_support_override", value = 2726140452},
    .{key = "font_get_language_support_overrides", value = 2801473409},
    .{key = "font_is_script_supported", value = 3199320846},
    .{key = "font_set_script_support_override", value = 2313957094},
    .{key = "font_get_script_support_override", value = 2829184646},
    .{key = "font_remove_script_support_override", value = 2726140452},
    .{key = "font_get_script_support_overrides", value = 2801473409},
    .{key = "font_set_opentype_feature_overrides", value = 1217542888},
    .{key = "font_get_opentype_feature_overrides", value = 1882737106},
    .{key = "font_supported_feature_list", value = 1882737106},
    .{key = "font_supported_variation_list", value = 1882737106},
    .{key = "font_get_global_oversampling", value = 1740695150},
    .{key = "font_set_global_oversampling", value = 373806689},
    .{key = "get_hex_code_box_size", value = 3016396712},
    .{key = "draw_hex_code_box", value = 1602046441},
    .{key = "create_shaped_text", value = 1231398698},
    .{key = "shaped_text_clear", value = 2722037293},
    .{key = "shaped_text_set_direction", value = 1551430183},
    .{key = "shaped_text_get_direction", value = 3065904362},
    .{key = "shaped_text_get_inferred_direction", value = 3065904362},
    .{key = "shaped_text_set_bidi_override", value = 684822712},
    .{key = "shaped_text_set_custom_punctuation", value = 2726140452},
    .{key = "shaped_text_get_custom_punctuation", value = 642473191},
    .{key = "shaped_text_set_custom_ellipsis", value = 3411492887},
    .{key = "shaped_text_get_custom_ellipsis", value = 2198884583},
    .{key = "shaped_text_set_orientation", value = 3019609126},
    .{key = "shaped_text_get_orientation", value = 3142708106},
    .{key = "shaped_text_set_preserve_invalid", value = 1265174801},
    .{key = "shaped_text_get_preserve_invalid", value = 4155700596},
    .{key = "shaped_text_set_preserve_control", value = 1265174801},
    .{key = "shaped_text_get_preserve_control", value = 4155700596},
    .{key = "shaped_text_set_spacing", value = 1307259930},
    .{key = "shaped_text_get_spacing", value = 1213653558},
    .{key = "shaped_text_add_string", value = 623473029},
    .{key = "shaped_text_add_object", value = 3664424789},
    .{key = "shaped_text_resize_object", value = 790361552},
    .{key = "shaped_get_span_count", value = 2198884583},
    .{key = "shaped_get_span_meta", value = 4069510997},
    .{key = "shaped_set_span_update_font", value = 2022725822},
    .{key = "shaped_text_substr", value = 1937682086},
    .{key = "shaped_text_get_parent", value = 3814569979},
    .{key = "shaped_text_fit_to_width", value = 530670926},
    .{key = "shaped_text_tab_align", value = 1283669550},
    .{key = "shaped_text_shape", value = 3521089500},
    .{key = "shaped_text_is_ready", value = 4155700596},
    .{key = "shaped_text_has_visible_chars", value = 4155700596},
    .{key = "shaped_text_get_glyphs", value = 2684255073},
    .{key = "shaped_text_sort_logical", value = 2670461153},
    .{key = "shaped_text_get_glyph_count", value = 2198884583},
    .{key = "shaped_text_get_range", value = 733700038},
    .{key = "shaped_text_get_line_breaks_adv", value = 2376991424},
    .{key = "shaped_text_get_line_breaks", value = 2651359741},
    .{key = "shaped_text_get_word_breaks", value = 185957063},
    .{key = "shaped_text_get_trim_pos", value = 2198884583},
    .{key = "shaped_text_get_ellipsis_pos", value = 2198884583},
    .{key = "shaped_text_get_ellipsis_glyphs", value = 2684255073},
    .{key = "shaped_text_get_ellipsis_glyph_count", value = 2198884583},
    .{key = "shaped_text_overrun_trim_to_width", value = 2723146520},
    .{key = "shaped_text_get_objects", value = 2684255073},
    .{key = "shaped_text_get_object_rect", value = 447978354},
    .{key = "shaped_text_get_object_range", value = 2524675647},
    .{key = "shaped_text_get_object_glyph", value = 1260085030},
    .{key = "shaped_text_get_size", value = 2440833711},
    .{key = "shaped_text_get_ascent", value = 866169185},
    .{key = "shaped_text_get_descent", value = 866169185},
    .{key = "shaped_text_get_width", value = 866169185},
    .{key = "shaped_text_get_underline_position", value = 866169185},
    .{key = "shaped_text_get_underline_thickness", value = 866169185},
    .{key = "shaped_text_get_carets", value = 1574219346},
    .{key = "shaped_text_get_selection", value = 3714187733},
    .{key = "shaped_text_hit_test_grapheme", value = 3149310417},
    .{key = "shaped_text_hit_test_position", value = 3149310417},
    .{key = "shaped_text_get_grapheme_bounds", value = 2546185844},
    .{key = "shaped_text_next_grapheme_pos", value = 1120910005},
    .{key = "shaped_text_prev_grapheme_pos", value = 1120910005},
    .{key = "shaped_text_get_character_breaks", value = 788230395},
    .{key = "shaped_text_next_character_pos", value = 1120910005},
    .{key = "shaped_text_prev_character_pos", value = 1120910005},
    .{key = "shaped_text_closest_character_pos", value = 1120910005},
    .{key = "shaped_text_draw", value = 880389142},
    .{key = "shaped_text_draw_outline", value = 2559184194},
    .{key = "shaped_text_get_dominant_direction_in_range", value = 3326907668},
    .{key = "format_number", value = 2664628024},
    .{key = "parse_number", value = 2664628024},
    .{key = "percent_sign", value = 993269549},
    .{key = "string_get_word_breaks", value = 581857818},
    .{key = "string_get_character_breaks", value = 2333794773},
    .{key = "is_confusable", value = 1433197768},
    .{key = "spoof_check", value = 3927539163},
    .{key = "strip_diacritics", value = 3135753539},
    .{key = "is_valid_identifier", value = 3927539163},
    .{key = "string_to_upper", value = 2664628024},
    .{key = "string_to_lower", value = 2664628024},
    .{key = "parse_structured_text", value = 3310685015},
    .{key = "add_interface", value = 1799689403},
    .{key = "get_interface_count", value = 3905245786},
    .{key = "remove_interface", value = 1799689403},
    .{key = "get_interface", value = 1672475555},
    .{key = "get_interfaces", value = 3995934104},
    .{key = "find_interface", value = 2240905781},
    .{key = "set_primary_interface", value = 1799689403},
    .{key = "get_primary_interface", value = 905850878},
    .{key = "get_width", value = 3905245786},
    .{key = "get_height", value = 3905245786},
    .{key = "get_size", value = 3341600327},
    .{key = "has_alpha", value = 36873697},
    .{key = "draw", value = 2729649137},
    .{key = "draw_rect", value = 3499451691},
    .{key = "draw_rect_region", value = 2963678660},
    .{key = "get_image", value = 4190603485},
    .{key = "create_placeholder", value = 121922552},
    .{key = "create_placeholder", value = 121922552},
    .{key = "set_texture_rd_rid", value = 2722037293},
    .{key = "get_texture_rd_rid", value = 2944877500},
    .{key = "get_format", value = 3847873762},
    .{key = "get_width", value = 3905245786},
    .{key = "get_height", value = 3905245786},
    .{key = "get_depth", value = 3905245786},
    .{key = "has_mipmaps", value = 36873697},
    .{key = "get_data", value = 3995934104},
    .{key = "create_placeholder", value = 121922552},
    .{key = "set_texture_rd_rid", value = 2722037293},
    .{key = "get_texture_rd_rid", value = 2944877500},
    .{key = "set_texture_normal", value = 4051416890},
    .{key = "set_texture_pressed", value = 4051416890},
    .{key = "set_texture_hover", value = 4051416890},
    .{key = "set_texture_disabled", value = 4051416890},
    .{key = "set_texture_focused", value = 4051416890},
    .{key = "set_click_mask", value = 698588216},
    .{key = "set_ignore_texture_size", value = 2586408642},
    .{key = "set_stretch_mode", value = 252530840},
    .{key = "set_flip_h", value = 2586408642},
    .{key = "is_flipped_h", value = 36873697},
    .{key = "set_flip_v", value = 2586408642},
    .{key = "is_flipped_v", value = 36873697},
    .{key = "get_texture_normal", value = 3635182373},
    .{key = "get_texture_pressed", value = 3635182373},
    .{key = "get_texture_hover", value = 3635182373},
    .{key = "get_texture_disabled", value = 3635182373},
    .{key = "get_texture_focused", value = 3635182373},
    .{key = "get_click_mask", value = 2459671998},
    .{key = "get_ignore_texture_size", value = 36873697},
    .{key = "get_stretch_mode", value = 33815122},
    .{key = "get_format", value = 3847873762},
    .{key = "get_layered_type", value = 518123893},
    .{key = "get_width", value = 3905245786},
    .{key = "get_height", value = 3905245786},
    .{key = "get_layers", value = 3905245786},
    .{key = "has_mipmaps", value = 36873697},
    .{key = "get_layer_data", value = 3655284255},
    .{key = "set_texture_rd_rid", value = 2722037293},
    .{key = "get_texture_rd_rid", value = 2944877500},
    .{key = "set_under_texture", value = 4051416890},
    .{key = "get_under_texture", value = 3635182373},
    .{key = "set_progress_texture", value = 4051416890},
    .{key = "get_progress_texture", value = 3635182373},
    .{key = "set_over_texture", value = 4051416890},
    .{key = "get_over_texture", value = 3635182373},
    .{key = "set_fill_mode", value = 1286410249},
    .{key = "get_fill_mode", value = 2455072627},
    .{key = "set_tint_under", value = 2920490490},
    .{key = "get_tint_under", value = 3444240500},
    .{key = "set_tint_progress", value = 2920490490},
    .{key = "get_tint_progress", value = 3444240500},
    .{key = "set_tint_over", value = 2920490490},
    .{key = "get_tint_over", value = 3444240500},
    .{key = "set_texture_progress_offset", value = 743155724},
    .{key = "get_texture_progress_offset", value = 3341600327},
    .{key = "set_radial_initial_angle", value = 373806689},
    .{key = "get_radial_initial_angle", value = 191475506},
    .{key = "set_radial_center_offset", value = 743155724},
    .{key = "get_radial_center_offset", value = 1497962370},
    .{key = "set_fill_degrees", value = 373806689},
    .{key = "get_fill_degrees", value = 191475506},
    .{key = "set_stretch_margin", value = 437707142},
    .{key = "get_stretch_margin", value = 1983885014},
    .{key = "set_nine_patch_stretch", value = 2586408642},
    .{key = "get_nine_patch_stretch", value = 36873697},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_expand_mode", value = 1870766882},
    .{key = "get_expand_mode", value = 3863824733},
    .{key = "set_flip_h", value = 2586408642},
    .{key = "is_flipped_h", value = 36873697},
    .{key = "set_flip_v", value = 2586408642},
    .{key = "is_flipped_v", value = 36873697},
    .{key = "set_stretch_mode", value = 58788729},
    .{key = "get_stretch_mode", value = 346396079},
    .{key = "set_icon", value = 2188371082},
    .{key = "get_icon", value = 934555193},
    .{key = "has_icon", value = 471820014},
    .{key = "rename_icon", value = 642128662},
    .{key = "clear_icon", value = 3740211285},
    .{key = "get_icon_list", value = 4291131558},
    .{key = "get_icon_type_list", value = 1139954409},
    .{key = "set_stylebox", value = 2075907568},
    .{key = "get_stylebox", value = 3405608165},
    .{key = "has_stylebox", value = 471820014},
    .{key = "rename_stylebox", value = 642128662},
    .{key = "clear_stylebox", value = 3740211285},
    .{key = "get_stylebox_list", value = 4291131558},
    .{key = "get_stylebox_type_list", value = 1139954409},
    .{key = "set_font", value = 177292320},
    .{key = "get_font", value = 3445063586},
    .{key = "has_font", value = 471820014},
    .{key = "rename_font", value = 642128662},
    .{key = "clear_font", value = 3740211285},
    .{key = "get_font_list", value = 4291131558},
    .{key = "get_font_type_list", value = 1139954409},
    .{key = "set_font_size", value = 281601298},
    .{key = "get_font_size", value = 2419549490},
    .{key = "has_font_size", value = 471820014},
    .{key = "rename_font_size", value = 642128662},
    .{key = "clear_font_size", value = 3740211285},
    .{key = "get_font_size_list", value = 4291131558},
    .{key = "get_font_size_type_list", value = 1139954409},
    .{key = "set_color", value = 4111215154},
    .{key = "get_color", value = 2015923404},
    .{key = "has_color", value = 471820014},
    .{key = "rename_color", value = 642128662},
    .{key = "clear_color", value = 3740211285},
    .{key = "get_color_list", value = 4291131558},
    .{key = "get_color_type_list", value = 1139954409},
    .{key = "set_constant", value = 281601298},
    .{key = "get_constant", value = 2419549490},
    .{key = "has_constant", value = 471820014},
    .{key = "rename_constant", value = 642128662},
    .{key = "clear_constant", value = 3740211285},
    .{key = "get_constant_list", value = 4291131558},
    .{key = "get_constant_type_list", value = 1139954409},
    .{key = "set_default_base_scale", value = 373806689},
    .{key = "get_default_base_scale", value = 1740695150},
    .{key = "has_default_base_scale", value = 36873697},
    .{key = "set_default_font", value = 1262170328},
    .{key = "get_default_font", value = 3229501585},
    .{key = "has_default_font", value = 36873697},
    .{key = "set_default_font_size", value = 1286410249},
    .{key = "get_default_font_size", value = 3905245786},
    .{key = "has_default_font_size", value = 36873697},
    .{key = "set_theme_item", value = 2492983623},
    .{key = "get_theme_item", value = 2191024021},
    .{key = "has_theme_item", value = 1739311056},
    .{key = "rename_theme_item", value = 3900867553},
    .{key = "clear_theme_item", value = 2965505587},
    .{key = "get_theme_item_list", value = 3726716710},
    .{key = "get_theme_item_type_list", value = 1316004935},
    .{key = "set_type_variation", value = 3740211285},
    .{key = "is_type_variation", value = 471820014},
    .{key = "clear_type_variation", value = 3304788590},
    .{key = "get_type_variation_base", value = 1965194235},
    .{key = "get_type_variation_list", value = 1761182771},
    .{key = "add_type", value = 3304788590},
    .{key = "remove_type", value = 3304788590},
    .{key = "get_type_list", value = 1139954409},
    .{key = "merge_with", value = 2326690814},
    .{key = "clear", value = 3218959716},
    .{key = "get_default_theme", value = 754276358},
    .{key = "get_project_theme", value = 754276358},
    .{key = "set_fallback_base_scale", value = 373806689},
    .{key = "get_fallback_base_scale", value = 191475506},
    .{key = "set_fallback_font", value = 1262170328},
    .{key = "get_fallback_font", value = 3656929885},
    .{key = "set_fallback_font_size", value = 1286410249},
    .{key = "get_fallback_font_size", value = 2455072627},
    .{key = "set_fallback_icon", value = 4051416890},
    .{key = "get_fallback_icon", value = 255860311},
    .{key = "set_fallback_stylebox", value = 2797200388},
    .{key = "get_fallback_stylebox", value = 496040854},
    .{key = "start", value = 1327203254},
    .{key = "get_id", value = 201670096},
    .{key = "is_started", value = 36873697},
    .{key = "is_alive", value = 36873697},
    .{key = "wait_to_finish", value = 1460262497},
    .{key = "set_thread_safety_checks_enabled", value = 2586408642},
    .{key = "set_flip_h", value = 2586408642},
    .{key = "get_flip_h", value = 36873697},
    .{key = "set_flip_v", value = 2586408642},
    .{key = "get_flip_v", value = 36873697},
    .{key = "set_transpose", value = 2586408642},
    .{key = "get_transpose", value = 36873697},
    .{key = "set_material", value = 2757459619},
    .{key = "get_material", value = 5934680},
    .{key = "set_texture_origin", value = 1130785943},
    .{key = "get_texture_origin", value = 3690982128},
    .{key = "set_modulate", value = 2920490490},
    .{key = "get_modulate", value = 3444240500},
    .{key = "set_z_index", value = 1286410249},
    .{key = "get_z_index", value = 3905245786},
    .{key = "set_y_sort_origin", value = 1286410249},
    .{key = "get_y_sort_origin", value = 3905245786},
    .{key = "set_occluder", value = 914399637},
    .{key = "get_occluder", value = 2377324099},
    .{key = "set_constant_linear_velocity", value = 163021252},
    .{key = "get_constant_linear_velocity", value = 2299179447},
    .{key = "set_constant_angular_velocity", value = 1602489585},
    .{key = "get_constant_angular_velocity", value = 2339986948},
    .{key = "set_collision_polygons_count", value = 3937882851},
    .{key = "get_collision_polygons_count", value = 923996154},
    .{key = "add_collision_polygon", value = 1286410249},
    .{key = "remove_collision_polygon", value = 3937882851},
    .{key = "set_collision_polygon_points", value = 3230546541},
    .{key = "get_collision_polygon_points", value = 103942801},
    .{key = "set_collision_polygon_one_way", value = 1383440665},
    .{key = "is_collision_polygon_one_way", value = 2522259332},
    .{key = "set_collision_polygon_one_way_margin", value = 3506521499},
    .{key = "get_collision_polygon_one_way_margin", value = 3085491603},
    .{key = "set_terrain_set", value = 1286410249},
    .{key = "get_terrain_set", value = 3905245786},
    .{key = "set_terrain", value = 1286410249},
    .{key = "get_terrain", value = 3905245786},
    .{key = "set_terrain_peering_bit", value = 1084452308},
    .{key = "get_terrain_peering_bit", value = 3831796792},
    .{key = "set_navigation_polygon", value = 2224691167},
    .{key = "get_navigation_polygon", value = 2907127272},
    .{key = "set_probability", value = 373806689},
    .{key = "get_probability", value = 1740695150},
    .{key = "set_custom_data", value = 402577236},
    .{key = "get_custom_data", value = 1868160156},
    .{key = "set_custom_data_by_layer_id", value = 2152698145},
    .{key = "get_custom_data_by_layer_id", value = 4227898402},
    .{key = "set_navigation_map", value = 4040184819},
    .{key = "get_navigation_map", value = 495598643},
    .{key = "force_update", value = 1025054187},
    .{key = "set_rendering_quadrant_size", value = 1286410249},
    .{key = "get_rendering_quadrant_size", value = 3905245786},
    .{key = "get_layers_count", value = 3905245786},
    .{key = "add_layer", value = 1286410249},
    .{key = "move_layer", value = 3937882851},
    .{key = "remove_layer", value = 1286410249},
    .{key = "set_layer_name", value = 501894301},
    .{key = "get_layer_name", value = 844755477},
    .{key = "set_layer_enabled", value = 300928843},
    .{key = "is_layer_enabled", value = 1116898809},
    .{key = "set_layer_modulate", value = 2878471219},
    .{key = "get_layer_modulate", value = 3457211756},
    .{key = "set_layer_y_sort_enabled", value = 300928843},
    .{key = "is_layer_y_sort_enabled", value = 1116898809},
    .{key = "set_layer_y_sort_origin", value = 3937882851},
    .{key = "get_layer_y_sort_origin", value = 923996154},
    .{key = "set_layer_z_index", value = 3937882851},
    .{key = "get_layer_z_index", value = 923996154},
    .{key = "set_layer_navigation_enabled", value = 300928843},
    .{key = "is_layer_navigation_enabled", value = 1116898809},
    .{key = "set_layer_navigation_map", value = 4040184819},
    .{key = "get_layer_navigation_map", value = 495598643},
    .{key = "set_collision_animatable", value = 2586408642},
    .{key = "is_collision_animatable", value = 36873697},
    .{key = "set_collision_visibility_mode", value = 3193440636},
    .{key = "get_collision_visibility_mode", value = 1697018252},
    .{key = "set_navigation_visibility_mode", value = 3193440636},
    .{key = "get_navigation_visibility_mode", value = 1697018252},
    .{key = "set_cell", value = 966713560},
    .{key = "erase_cell", value = 2311374912},
    .{key = "get_cell_source_id", value = 551761942},
    .{key = "get_cell_atlas_coords", value = 1869815066},
    .{key = "get_cell_alternative_tile", value = 551761942},
    .{key = "get_cell_tile_data", value = 2849631287},
    .{key = "get_coords_for_body_rid", value = 291584212},
    .{key = "get_layer_for_body_rid", value = 3917799429},
    .{key = "get_pattern", value = 2833570986},
    .{key = "map_pattern", value = 1864516957},
    .{key = "set_pattern", value = 1195853946},
    .{key = "set_cells_terrain_connect", value = 3578627656},
    .{key = "set_cells_terrain_path", value = 3578627656},
    .{key = "fix_invalid_tiles", value = 3218959716},
    .{key = "clear_layer", value = 1286410249},
    .{key = "clear", value = 3218959716},
    .{key = "update_internals", value = 3218959716},
    .{key = "notify_runtime_tile_data_update", value = 1025054187},
    .{key = "get_surrounding_cells", value = 2673526557},
    .{key = "get_used_cells", value = 663333327},
    .{key = "get_used_cells_by_id", value = 2931012785},
    .{key = "get_used_rect", value = 410525958},
    .{key = "map_to_local", value = 108438297},
    .{key = "local_to_map", value = 837806996},
    .{key = "get_neighbor_cell", value = 986575103},
    .{key = "set_tileset", value = 774531446},
    .{key = "get_tileset", value = 2678226422},
    .{key = "set_cell", value = 2224802556},
    .{key = "has_cell", value = 3900751641},
    .{key = "remove_cell", value = 4153096796},
    .{key = "get_cell_source_id", value = 2485466453},
    .{key = "get_cell_atlas_coords", value = 3050897911},
    .{key = "get_cell_alternative_tile", value = 2485466453},
    .{key = "get_used_cells", value = 3995934104},
    .{key = "get_size", value = 3690982128},
    .{key = "set_size", value = 1130785943},
    .{key = "is_empty", value = 36873697},
    .{key = "get_next_source_id", value = 3905245786},
    .{key = "add_source", value = 1059186179},
    .{key = "remove_source", value = 1286410249},
    .{key = "set_source_id", value = 3937882851},
    .{key = "get_source_count", value = 3905245786},
    .{key = "get_source_id", value = 923996154},
    .{key = "has_source", value = 1116898809},
    .{key = "get_source", value = 1763540252},
    .{key = "set_tile_shape", value = 2131427112},
    .{key = "get_tile_shape", value = 716918169},
    .{key = "set_tile_layout", value = 1071216679},
    .{key = "get_tile_layout", value = 194628839},
    .{key = "set_tile_offset_axis", value = 3300198521},
    .{key = "get_tile_offset_axis", value = 762494114},
    .{key = "set_tile_size", value = 1130785943},
    .{key = "get_tile_size", value = 3690982128},
    .{key = "set_uv_clipping", value = 2586408642},
    .{key = "is_uv_clipping", value = 36873697},
    .{key = "get_occlusion_layers_count", value = 3905245786},
    .{key = "add_occlusion_layer", value = 1025054187},
    .{key = "move_occlusion_layer", value = 3937882851},
    .{key = "remove_occlusion_layer", value = 1286410249},
    .{key = "set_occlusion_layer_light_mask", value = 3937882851},
    .{key = "get_occlusion_layer_light_mask", value = 923996154},
    .{key = "set_occlusion_layer_sdf_collision", value = 300928843},
    .{key = "get_occlusion_layer_sdf_collision", value = 1116898809},
    .{key = "get_physics_layers_count", value = 3905245786},
    .{key = "add_physics_layer", value = 1025054187},
    .{key = "move_physics_layer", value = 3937882851},
    .{key = "remove_physics_layer", value = 1286410249},
    .{key = "set_physics_layer_collision_layer", value = 3937882851},
    .{key = "get_physics_layer_collision_layer", value = 923996154},
    .{key = "set_physics_layer_collision_mask", value = 3937882851},
    .{key = "get_physics_layer_collision_mask", value = 923996154},
    .{key = "set_physics_layer_physics_material", value = 1018687357},
    .{key = "get_physics_layer_physics_material", value = 788318639},
    .{key = "get_terrain_sets_count", value = 3905245786},
    .{key = "add_terrain_set", value = 1025054187},
    .{key = "move_terrain_set", value = 3937882851},
    .{key = "remove_terrain_set", value = 1286410249},
    .{key = "set_terrain_set_mode", value = 3943003916},
    .{key = "get_terrain_set_mode", value = 2084469411},
    .{key = "get_terrains_count", value = 923996154},
    .{key = "add_terrain", value = 1230568737},
    .{key = "move_terrain", value = 1649997291},
    .{key = "remove_terrain", value = 3937882851},
    .{key = "set_terrain_name", value = 2285447957},
    .{key = "get_terrain_name", value = 1391810591},
    .{key = "set_terrain_color", value = 3733378741},
    .{key = "get_terrain_color", value = 2165839948},
    .{key = "get_navigation_layers_count", value = 3905245786},
    .{key = "add_navigation_layer", value = 1025054187},
    .{key = "move_navigation_layer", value = 3937882851},
    .{key = "remove_navigation_layer", value = 1286410249},
    .{key = "set_navigation_layer_layers", value = 3937882851},
    .{key = "get_navigation_layer_layers", value = 923996154},
    .{key = "set_navigation_layer_layer_value", value = 1383440665},
    .{key = "get_navigation_layer_layer_value", value = 2522259332},
    .{key = "get_custom_data_layers_count", value = 3905245786},
    .{key = "add_custom_data_layer", value = 1025054187},
    .{key = "move_custom_data_layer", value = 3937882851},
    .{key = "remove_custom_data_layer", value = 1286410249},
    .{key = "get_custom_data_layer_by_name", value = 1321353865},
    .{key = "set_custom_data_layer_name", value = 501894301},
    .{key = "get_custom_data_layer_name", value = 844755477},
    .{key = "set_custom_data_layer_type", value = 3492912874},
    .{key = "get_custom_data_layer_type", value = 2990820875},
    .{key = "set_source_level_tile_proxy", value = 3937882851},
    .{key = "get_source_level_tile_proxy", value = 3744713108},
    .{key = "has_source_level_tile_proxy", value = 3067735520},
    .{key = "remove_source_level_tile_proxy", value = 1286410249},
    .{key = "set_coords_level_tile_proxy", value = 1769939278},
    .{key = "get_coords_level_tile_proxy", value = 2856536371},
    .{key = "has_coords_level_tile_proxy", value = 3957903770},
    .{key = "remove_coords_level_tile_proxy", value = 2311374912},
    .{key = "set_alternative_level_tile_proxy", value = 3862385460},
    .{key = "get_alternative_level_tile_proxy", value = 2303761075},
    .{key = "has_alternative_level_tile_proxy", value = 180086755},
    .{key = "remove_alternative_level_tile_proxy", value = 2328951467},
    .{key = "map_tile_proxy", value = 4267935328},
    .{key = "cleanup_invalid_tile_proxies", value = 3218959716},
    .{key = "clear_tile_proxies", value = 3218959716},
    .{key = "add_pattern", value = 763712015},
    .{key = "get_pattern", value = 4207737510},
    .{key = "remove_pattern", value = 1286410249},
    .{key = "get_patterns_count", value = 2455072627},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_margins", value = 1130785943},
    .{key = "get_margins", value = 3690982128},
    .{key = "set_separation", value = 1130785943},
    .{key = "get_separation", value = 3690982128},
    .{key = "set_texture_region_size", value = 1130785943},
    .{key = "get_texture_region_size", value = 3690982128},
    .{key = "set_use_texture_padding", value = 2586408642},
    .{key = "get_use_texture_padding", value = 36873697},
    .{key = "create_tile", value = 190528769},
    .{key = "remove_tile", value = 1130785943},
    .{key = "move_tile_in_atlas", value = 3870111920},
    .{key = "get_tile_size_in_atlas", value = 3050897911},
    .{key = "has_room_for_tile", value = 3018597268},
    .{key = "get_tiles_to_be_removed_on_change", value = 1240378054},
    .{key = "get_tile_at_coords", value = 3050897911},
    .{key = "has_tiles_outside_texture", value = 36873697},
    .{key = "clear_tiles_outside_texture", value = 3218959716},
    .{key = "set_tile_animation_columns", value = 3200960707},
    .{key = "get_tile_animation_columns", value = 2485466453},
    .{key = "set_tile_animation_separation", value = 1941061099},
    .{key = "get_tile_animation_separation", value = 3050897911},
    .{key = "set_tile_animation_speed", value = 2262553149},
    .{key = "get_tile_animation_speed", value = 719993801},
    .{key = "set_tile_animation_mode", value = 3192753483},
    .{key = "get_tile_animation_mode", value = 4025349959},
    .{key = "set_tile_animation_frames_count", value = 3200960707},
    .{key = "get_tile_animation_frames_count", value = 2485466453},
    .{key = "set_tile_animation_frame_duration", value = 2843487787},
    .{key = "get_tile_animation_frame_duration", value = 1802448425},
    .{key = "get_tile_animation_total_duration", value = 719993801},
    .{key = "create_alternative_tile", value = 2226298068},
    .{key = "remove_alternative_tile", value = 3200960707},
    .{key = "set_alternative_tile_id", value = 1499785778},
    .{key = "get_next_alternative_tile_id", value = 2485466453},
    .{key = "get_tile_data", value = 3534028207},
    .{key = "get_atlas_grid_size", value = 3690982128},
    .{key = "get_tile_texture_region", value = 241857547},
    .{key = "get_runtime_texture", value = 3635182373},
    .{key = "get_runtime_tile_texture_region", value = 104874263},
    .{key = "get_scene_tiles_count", value = 2455072627},
    .{key = "get_scene_tile_id", value = 3744713108},
    .{key = "has_scene_tile_id", value = 3067735520},
    .{key = "create_scene_tile", value = 1117465415},
    .{key = "set_scene_tile_id", value = 3937882851},
    .{key = "set_scene_tile_scene", value = 3435852839},
    .{key = "get_scene_tile_scene", value = 511017218},
    .{key = "set_scene_tile_display_placeholder", value = 300928843},
    .{key = "get_scene_tile_display_placeholder", value = 1116898809},
    .{key = "remove_scene_tile", value = 1286410249},
    .{key = "get_next_scene_tile_id", value = 3905245786},
    .{key = "get_tiles_count", value = 3905245786},
    .{key = "get_tile_id", value = 880721226},
    .{key = "has_tile", value = 3900751641},
    .{key = "get_alternative_tiles_count", value = 2485466453},
    .{key = "get_alternative_tile_id", value = 89881719},
    .{key = "has_alternative_tile", value = 1073731340},
    .{key = "get_datetime_dict_from_unix_time", value = 3485342025},
    .{key = "get_date_dict_from_unix_time", value = 3485342025},
    .{key = "get_time_dict_from_unix_time", value = 3485342025},
    .{key = "get_datetime_string_from_unix_time", value = 2311239925},
    .{key = "get_date_string_from_unix_time", value = 844755477},
    .{key = "get_time_string_from_unix_time", value = 844755477},
    .{key = "get_datetime_dict_from_datetime_string", value = 3253569256},
    .{key = "get_datetime_string_from_datetime_dict", value = 1898123706},
    .{key = "get_unix_time_from_datetime_dict", value = 3021115443},
    .{key = "get_unix_time_from_datetime_string", value = 1321353865},
    .{key = "get_offset_string_from_offset_minutes", value = 844755477},
    .{key = "get_datetime_dict_from_system", value = 205769976},
    .{key = "get_date_dict_from_system", value = 205769976},
    .{key = "get_time_dict_from_system", value = 205769976},
    .{key = "get_datetime_string_from_system", value = 1136425492},
    .{key = "get_date_string_from_system", value = 1162154673},
    .{key = "get_time_string_from_system", value = 1162154673},
    .{key = "get_time_zone_from_system", value = 3102165223},
    .{key = "get_unix_time_from_system", value = 1740695150},
    .{key = "get_ticks_msec", value = 3905245786},
    .{key = "get_ticks_usec", value = 3905245786},
    .{key = "set_wait_time", value = 373806689},
    .{key = "get_wait_time", value = 1740695150},
    .{key = "set_one_shot", value = 2586408642},
    .{key = "is_one_shot", value = 36873697},
    .{key = "set_autostart", value = 2586408642},
    .{key = "has_autostart", value = 36873697},
    .{key = "start", value = 1392008558},
    .{key = "stop", value = 3218959716},
    .{key = "set_paused", value = 2586408642},
    .{key = "is_paused", value = 36873697},
    .{key = "is_stopped", value = 36873697},
    .{key = "get_time_left", value = 1740695150},
    .{key = "set_timer_process_callback", value = 3469495063},
    .{key = "get_timer_process_callback", value = 2672570227},
    .{key = "set_inner_radius", value = 373806689},
    .{key = "get_inner_radius", value = 1740695150},
    .{key = "set_outer_radius", value = 373806689},
    .{key = "get_outer_radius", value = 1740695150},
    .{key = "set_rings", value = 1286410249},
    .{key = "get_rings", value = 3905245786},
    .{key = "set_ring_segments", value = 1286410249},
    .{key = "get_ring_segments", value = 3905245786},
    .{key = "set_texture_normal", value = 4051416890},
    .{key = "get_texture_normal", value = 3635182373},
    .{key = "set_texture_pressed", value = 4051416890},
    .{key = "get_texture_pressed", value = 3635182373},
    .{key = "set_bitmask", value = 698588216},
    .{key = "get_bitmask", value = 2459671998},
    .{key = "set_shape", value = 771364740},
    .{key = "get_shape", value = 522005891},
    .{key = "set_shape_centered", value = 2586408642},
    .{key = "is_shape_centered", value = 36873697},
    .{key = "set_shape_visible", value = 2586408642},
    .{key = "is_shape_visible", value = 36873697},
    .{key = "set_action", value = 83702148},
    .{key = "get_action", value = 201670096},
    .{key = "set_visibility_mode", value = 3031128463},
    .{key = "get_visibility_mode", value = 2558996468},
    .{key = "set_passby_press", value = 2586408642},
    .{key = "is_passby_press_enabled", value = 36873697},
    .{key = "is_pressed", value = 36873697},
    .{key = "set_locale", value = 83702148},
    .{key = "get_locale", value = 201670096},
    .{key = "add_message", value = 971803314},
    .{key = "add_plural_message", value = 360316719},
    .{key = "get_message", value = 58037827},
    .{key = "get_plural_message", value = 1333931916},
    .{key = "erase_message", value = 3919944288},
    .{key = "get_message_list", value = 1139954409},
    .{key = "get_translated_message_list", value = 1139954409},
    .{key = "get_message_count", value = 3905245786},
    .{key = "set_locale", value = 83702148},
    .{key = "get_locale", value = 201670096},
    .{key = "get_tool_locale", value = 2841200299},
    .{key = "compare_locales", value = 2878152881},
    .{key = "standardize_locale", value = 3135753539},
    .{key = "get_all_languages", value = 1139954409},
    .{key = "get_language_name", value = 3135753539},
    .{key = "get_all_scripts", value = 1139954409},
    .{key = "get_script_name", value = 3135753539},
    .{key = "get_all_countries", value = 1139954409},
    .{key = "get_country_name", value = 3135753539},
    .{key = "get_locale_name", value = 3135753539},
    .{key = "translate", value = 58037827},
    .{key = "translate_plural", value = 1333931916},
    .{key = "add_translation", value = 1466479800},
    .{key = "remove_translation", value = 1466479800},
    .{key = "get_translation_object", value = 2065240175},
    .{key = "clear", value = 3218959716},
    .{key = "get_loaded_locales", value = 1139954409},
    .{key = "is_pseudolocalization_enabled", value = 36873697},
    .{key = "set_pseudolocalization_enabled", value = 2586408642},
    .{key = "reload_pseudolocalization", value = 3218959716},
    .{key = "pseudolocalize", value = 1965194235},
    .{key = "clear", value = 3218959716},
    .{key = "create_item", value = 528467046},
    .{key = "get_root", value = 1514277247},
    .{key = "set_column_custom_minimum_width", value = 3937882851},
    .{key = "set_column_expand", value = 300928843},
    .{key = "set_column_expand_ratio", value = 3937882851},
    .{key = "set_column_clip_content", value = 300928843},
    .{key = "is_column_expanding", value = 1116898809},
    .{key = "is_column_clipping_content", value = 1116898809},
    .{key = "get_column_expand_ratio", value = 923996154},
    .{key = "get_column_width", value = 923996154},
    .{key = "set_hide_root", value = 2586408642},
    .{key = "is_root_hidden", value = 36873697},
    .{key = "get_next_selected", value = 873446299},
    .{key = "get_selected", value = 1514277247},
    .{key = "set_selected", value = 2662547442},
    .{key = "get_selected_column", value = 3905245786},
    .{key = "get_pressed_button", value = 3905245786},
    .{key = "set_select_mode", value = 3223887270},
    .{key = "get_select_mode", value = 100748571},
    .{key = "deselect_all", value = 3218959716},
    .{key = "set_columns", value = 1286410249},
    .{key = "get_columns", value = 3905245786},
    .{key = "get_edited", value = 1514277247},
    .{key = "get_edited_column", value = 3905245786},
    .{key = "edit_selected", value = 2595650253},
    .{key = "get_custom_popup_rect", value = 1639390495},
    .{key = "get_item_area_rect", value = 47968679},
    .{key = "get_item_at_position", value = 4193340126},
    .{key = "get_column_at_position", value = 3820158470},
    .{key = "get_drop_section_at_position", value = 3820158470},
    .{key = "get_button_id_at_position", value = 3820158470},
    .{key = "ensure_cursor_is_visible", value = 3218959716},
    .{key = "set_column_titles_visible", value = 2586408642},
    .{key = "are_column_titles_visible", value = 36873697},
    .{key = "set_column_title", value = 501894301},
    .{key = "get_column_title", value = 844755477},
    .{key = "set_column_title_alignment", value = 3276431499},
    .{key = "get_column_title_alignment", value = 4171562184},
    .{key = "set_column_title_direction", value = 1707680378},
    .{key = "get_column_title_direction", value = 4235602388},
    .{key = "set_column_title_language", value = 501894301},
    .{key = "get_column_title_language", value = 844755477},
    .{key = "get_scroll", value = 3341600327},
    .{key = "scroll_to_item", value = 1314737213},
    .{key = "set_h_scroll_enabled", value = 2586408642},
    .{key = "is_h_scroll_enabled", value = 36873697},
    .{key = "set_v_scroll_enabled", value = 2586408642},
    .{key = "is_v_scroll_enabled", value = 36873697},
    .{key = "set_hide_folding", value = 2586408642},
    .{key = "is_folding_hidden", value = 36873697},
    .{key = "set_enable_recursive_folding", value = 2586408642},
    .{key = "is_recursive_folding_enabled", value = 36873697},
    .{key = "set_drop_mode_flags", value = 1286410249},
    .{key = "get_drop_mode_flags", value = 3905245786},
    .{key = "set_allow_rmb_select", value = 2586408642},
    .{key = "get_allow_rmb_select", value = 36873697},
    .{key = "set_allow_reselect", value = 2586408642},
    .{key = "get_allow_reselect", value = 36873697},
    .{key = "set_allow_search", value = 2586408642},
    .{key = "get_allow_search", value = 36873697},
    .{key = "set_cell_mode", value = 289920701},
    .{key = "get_cell_mode", value = 3406114978},
    .{key = "set_edit_multiline", value = 300928843},
    .{key = "is_edit_multiline", value = 1116898809},
    .{key = "set_checked", value = 300928843},
    .{key = "set_indeterminate", value = 300928843},
    .{key = "is_checked", value = 1116898809},
    .{key = "is_indeterminate", value = 1116898809},
    .{key = "propagate_check", value = 972357352},
    .{key = "set_text", value = 501894301},
    .{key = "get_text", value = 844755477},
    .{key = "set_text_direction", value = 1707680378},
    .{key = "get_text_direction", value = 4235602388},
    .{key = "set_autowrap_mode", value = 3633006561},
    .{key = "get_autowrap_mode", value = 2902757236},
    .{key = "set_text_overrun_behavior", value = 1940772195},
    .{key = "get_text_overrun_behavior", value = 3782727860},
    .{key = "set_structured_text_bidi_override", value = 868756907},
    .{key = "get_structured_text_bidi_override", value = 3377823772},
    .{key = "set_structured_text_bidi_override_options", value = 537221740},
    .{key = "get_structured_text_bidi_override_options", value = 663333327},
    .{key = "set_language", value = 501894301},
    .{key = "get_language", value = 844755477},
    .{key = "set_suffix", value = 501894301},
    .{key = "get_suffix", value = 844755477},
    .{key = "set_icon", value = 666127730},
    .{key = "get_icon", value = 3536238170},
    .{key = "set_icon_region", value = 1356297692},
    .{key = "get_icon_region", value = 3327874267},
    .{key = "set_icon_max_width", value = 3937882851},
    .{key = "get_icon_max_width", value = 923996154},
    .{key = "set_icon_modulate", value = 2878471219},
    .{key = "get_icon_modulate", value = 3457211756},
    .{key = "set_range", value = 1602489585},
    .{key = "get_range", value = 2339986948},
    .{key = "set_range_config", value = 1547181014},
    .{key = "get_range_config", value = 3554694381},
    .{key = "set_metadata", value = 2152698145},
    .{key = "get_metadata", value = 4227898402},
    .{key = "set_custom_draw", value = 272420368},
    .{key = "set_custom_draw_callback", value = 957362965},
    .{key = "get_custom_draw_callback", value = 1317077508},
    .{key = "set_collapsed", value = 2586408642},
    .{key = "is_collapsed", value = 2240911060},
    .{key = "set_collapsed_recursive", value = 2586408642},
    .{key = "is_any_collapsed", value = 2595650253},
    .{key = "set_visible", value = 2586408642},
    .{key = "is_visible", value = 2240911060},
    .{key = "is_visible_in_tree", value = 36873697},
    .{key = "uncollapse_tree", value = 3218959716},
    .{key = "set_custom_minimum_height", value = 1286410249},
    .{key = "get_custom_minimum_height", value = 3905245786},
    .{key = "set_selectable", value = 300928843},
    .{key = "is_selectable", value = 1116898809},
    .{key = "is_selected", value = 3067735520},
    .{key = "select", value = 1286410249},
    .{key = "deselect", value = 1286410249},
    .{key = "set_editable", value = 300928843},
    .{key = "is_editable", value = 3067735520},
    .{key = "set_custom_color", value = 2878471219},
    .{key = "get_custom_color", value = 3457211756},
    .{key = "clear_custom_color", value = 1286410249},
    .{key = "set_custom_font", value = 2637609184},
    .{key = "get_custom_font", value = 4244553094},
    .{key = "set_custom_font_size", value = 3937882851},
    .{key = "get_custom_font_size", value = 923996154},
    .{key = "set_custom_bg_color", value = 894174518},
    .{key = "clear_custom_bg_color", value = 1286410249},
    .{key = "get_custom_bg_color", value = 3457211756},
    .{key = "set_custom_as_button", value = 300928843},
    .{key = "is_custom_set_as_button", value = 1116898809},
    .{key = "add_button", value = 1688223362},
    .{key = "get_button_count", value = 923996154},
    .{key = "get_button_tooltip_text", value = 1391810591},
    .{key = "get_button_id", value = 3175239445},
    .{key = "get_button_by_id", value = 3175239445},
    .{key = "get_button_color", value = 2165839948},
    .{key = "get_button", value = 2584904275},
    .{key = "set_button_tooltip_text", value = 2285447957},
    .{key = "set_button", value = 176101966},
    .{key = "erase_button", value = 3937882851},
    .{key = "set_button_disabled", value = 1383440665},
    .{key = "set_button_color", value = 3733378741},
    .{key = "is_button_disabled", value = 2522259332},
    .{key = "set_tooltip_text", value = 501894301},
    .{key = "get_tooltip_text", value = 844755477},
    .{key = "set_text_alignment", value = 3276431499},
    .{key = "get_text_alignment", value = 4171562184},
    .{key = "set_expand_right", value = 300928843},
    .{key = "get_expand_right", value = 1116898809},
    .{key = "set_disable_folding", value = 2586408642},
    .{key = "is_folding_disabled", value = 36873697},
    .{key = "create_child", value = 954243986},
    .{key = "add_child", value = 1819951137},
    .{key = "remove_child", value = 1819951137},
    .{key = "get_tree", value = 2243340556},
    .{key = "get_next", value = 1514277247},
    .{key = "get_prev", value = 2768121250},
    .{key = "get_parent", value = 1514277247},
    .{key = "get_first_child", value = 1514277247},
    .{key = "get_next_in_tree", value = 1666920593},
    .{key = "get_prev_in_tree", value = 1666920593},
    .{key = "get_next_visible", value = 1666920593},
    .{key = "get_prev_visible", value = 1666920593},
    .{key = "get_child", value = 306700752},
    .{key = "get_child_count", value = 2455072627},
    .{key = "get_children", value = 2915620761},
    .{key = "get_index", value = 2455072627},
    .{key = "move_before", value = 1819951137},
    .{key = "move_after", value = 1819951137},
    .{key = "call_recursive", value = 2866548813},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_radial_steps", value = 1286410249},
    .{key = "get_radial_steps", value = 3905245786},
    .{key = "set_sections", value = 1286410249},
    .{key = "get_sections", value = 3905245786},
    .{key = "set_section_length", value = 373806689},
    .{key = "get_section_length", value = 1740695150},
    .{key = "set_section_rings", value = 1286410249},
    .{key = "get_section_rings", value = 3905245786},
    .{key = "set_cap_top", value = 2586408642},
    .{key = "is_cap_top", value = 36873697},
    .{key = "set_cap_bottom", value = 2586408642},
    .{key = "is_cap_bottom", value = 36873697},
    .{key = "set_curve", value = 270443179},
    .{key = "get_curve", value = 2460114913},
    .{key = "tween_property", value = 4049770449},
    .{key = "tween_interval", value = 413360199},
    .{key = "tween_callback", value = 1540176488},
    .{key = "tween_method", value = 2337877153},
    .{key = "custom_step", value = 330693286},
    .{key = "stop", value = 3218959716},
    .{key = "pause", value = 3218959716},
    .{key = "play", value = 3218959716},
    .{key = "kill", value = 3218959716},
    .{key = "get_total_elapsed_time", value = 1740695150},
    .{key = "is_running", value = 2240911060},
    .{key = "is_valid", value = 2240911060},
    .{key = "bind_node", value = 2946786331},
    .{key = "set_process_mode", value = 855258840},
    .{key = "set_pause_mode", value = 3363368837},
    .{key = "set_parallel", value = 1942052223},
    .{key = "set_loops", value = 2670836414},
    .{key = "get_loops_left", value = 3905245786},
    .{key = "set_speed_scale", value = 3961971106},
    .{key = "set_trans", value = 3965963875},
    .{key = "set_ease", value = 1208117252},
    .{key = "parallel", value = 3426978995},
    .{key = "chain", value = 3426978995},
    .{key = "interpolate_value", value = 3452526450},
    .{key = "listen", value = 3167955072},
    .{key = "poll", value = 166280745},
    .{key = "is_connection_available", value = 36873697},
    .{key = "get_local_port", value = 3905245786},
    .{key = "is_listening", value = 36873697},
    .{key = "take_connection", value = 808734560},
    .{key = "stop", value = 3218959716},
    .{key = "set_max_pending_connections", value = 1286410249},
    .{key = "get_max_pending_connections", value = 3905245786},
    .{key = "get_device_count", value = 3905245786},
    .{key = "get_device", value = 2193290270},
    .{key = "add_device", value = 986715920},
    .{key = "set_device", value = 3015133723},
    .{key = "remove_device", value = 1286410249},
    .{key = "clear_devices", value = 3218959716},
    .{key = "get_gateway", value = 2276800779},
    .{key = "discover", value = 1575334765},
    .{key = "query_external_address", value = 201670096},
    .{key = "add_port_mapping", value = 818314583},
    .{key = "delete_port_mapping", value = 3444187325},
    .{key = "set_discover_multicast_if", value = 83702148},
    .{key = "get_discover_multicast_if", value = 201670096},
    .{key = "set_discover_local_port", value = 1286410249},
    .{key = "get_discover_local_port", value = 3905245786},
    .{key = "set_discover_ipv6", value = 2586408642},
    .{key = "is_discover_ipv6", value = 36873697},
    .{key = "is_valid_gateway", value = 36873697},
    .{key = "query_external_address", value = 201670096},
    .{key = "add_port_mapping", value = 818314583},
    .{key = "delete_port_mapping", value = 3444187325},
    .{key = "set_description_url", value = 83702148},
    .{key = "get_description_url", value = 201670096},
    .{key = "set_service_type", value = 83702148},
    .{key = "get_service_type", value = 201670096},
    .{key = "set_igd_control_url", value = 83702148},
    .{key = "get_igd_control_url", value = 201670096},
    .{key = "set_igd_service_type", value = 83702148},
    .{key = "get_igd_service_type", value = 201670096},
    .{key = "set_igd_our_addr", value = 83702148},
    .{key = "get_igd_our_addr", value = 201670096},
    .{key = "set_igd_status", value = 519504122},
    .{key = "get_igd_status", value = 180887011},
    .{key = "create_action", value = 3171901514},
    .{key = "commit_action", value = 3216645846},
    .{key = "is_committing_action", value = 36873697},
    .{key = "add_do_method", value = 1611583062},
    .{key = "add_undo_method", value = 1611583062},
    .{key = "add_do_property", value = 1017172818},
    .{key = "add_undo_property", value = 1017172818},
    .{key = "add_do_reference", value = 3975164845},
    .{key = "add_undo_reference", value = 3975164845},
    .{key = "start_force_keep_in_merge_ends", value = 3218959716},
    .{key = "end_force_keep_in_merge_ends", value = 3218959716},
    .{key = "get_history_count", value = 2455072627},
    .{key = "get_current_action", value = 2455072627},
    .{key = "get_action_name", value = 990163283},
    .{key = "clear_history", value = 3216645846},
    .{key = "get_current_action_name", value = 201670096},
    .{key = "has_undo", value = 36873697},
    .{key = "has_redo", value = 36873697},
    .{key = "get_version", value = 3905245786},
    .{key = "set_max_steps", value = 1286410249},
    .{key = "get_max_steps", value = 3905245786},
    .{key = "redo", value = 2240911060},
    .{key = "undo", value = 2240911060},
    .{key = "get_cache", value = 658571723},
    .{key = "set_engine_force", value = 373806689},
    .{key = "get_engine_force", value = 1740695150},
    .{key = "set_brake", value = 373806689},
    .{key = "get_brake", value = 1740695150},
    .{key = "set_steering", value = 373806689},
    .{key = "get_steering", value = 1740695150},
    .{key = "set_radius", value = 373806689},
    .{key = "get_radius", value = 1740695150},
    .{key = "set_suspension_rest_length", value = 373806689},
    .{key = "get_suspension_rest_length", value = 1740695150},
    .{key = "set_suspension_travel", value = 373806689},
    .{key = "get_suspension_travel", value = 1740695150},
    .{key = "set_suspension_stiffness", value = 373806689},
    .{key = "get_suspension_stiffness", value = 1740695150},
    .{key = "set_suspension_max_force", value = 373806689},
    .{key = "get_suspension_max_force", value = 1740695150},
    .{key = "set_damping_compression", value = 373806689},
    .{key = "get_damping_compression", value = 1740695150},
    .{key = "set_damping_relaxation", value = 373806689},
    .{key = "get_damping_relaxation", value = 1740695150},
    .{key = "set_use_as_traction", value = 2586408642},
    .{key = "is_used_as_traction", value = 36873697},
    .{key = "set_use_as_steering", value = 2586408642},
    .{key = "is_used_as_steering", value = 36873697},
    .{key = "set_friction_slip", value = 373806689},
    .{key = "get_friction_slip", value = 1740695150},
    .{key = "is_in_contact", value = 36873697},
    .{key = "get_contact_body", value = 151077316},
    .{key = "set_roll_influence", value = 373806689},
    .{key = "get_roll_influence", value = 1740695150},
    .{key = "get_skidinfo", value = 1740695150},
    .{key = "get_rpm", value = 1740695150},
    .{key = "set_engine_force", value = 373806689},
    .{key = "get_engine_force", value = 1740695150},
    .{key = "set_brake", value = 373806689},
    .{key = "get_brake", value = 1740695150},
    .{key = "set_steering", value = 373806689},
    .{key = "get_steering", value = 1740695150},
    .{key = "set_file", value = 83702148},
    .{key = "get_file", value = 2841200299},
    .{key = "mix_audio", value = 93876830},
    .{key = "set_stream", value = 2317102564},
    .{key = "get_stream", value = 438621487},
    .{key = "play", value = 3218959716},
    .{key = "stop", value = 3218959716},
    .{key = "is_playing", value = 36873697},
    .{key = "set_paused", value = 2586408642},
    .{key = "is_paused", value = 36873697},
    .{key = "set_loop", value = 2586408642},
    .{key = "has_loop", value = 36873697},
    .{key = "set_volume", value = 373806689},
    .{key = "get_volume", value = 1740695150},
    .{key = "set_volume_db", value = 373806689},
    .{key = "get_volume_db", value = 1740695150},
    .{key = "set_audio_track", value = 1286410249},
    .{key = "get_audio_track", value = 3905245786},
    .{key = "get_stream_name", value = 201670096},
    .{key = "get_stream_length", value = 1740695150},
    .{key = "set_stream_position", value = 373806689},
    .{key = "get_stream_position", value = 1740695150},
    .{key = "set_autoplay", value = 2586408642},
    .{key = "has_autoplay", value = 36873697},
    .{key = "set_expand", value = 2586408642},
    .{key = "has_expand", value = 36873697},
    .{key = "set_buffering_msec", value = 1286410249},
    .{key = "get_buffering_msec", value = 3905245786},
    .{key = "set_bus", value = 3304788590},
    .{key = "get_bus", value = 2002593661},
    .{key = "get_video_texture", value = 3635182373},
    .{key = "set_world_2d", value = 2736080068},
    .{key = "get_world_2d", value = 2339128592},
    .{key = "find_world_2d", value = 2339128592},
    .{key = "set_canvas_transform", value = 2761652528},
    .{key = "get_canvas_transform", value = 3814499831},
    .{key = "set_global_canvas_transform", value = 2761652528},
    .{key = "get_global_canvas_transform", value = 3814499831},
    .{key = "get_final_transform", value = 3814499831},
    .{key = "get_screen_transform", value = 3814499831},
    .{key = "get_visible_rect", value = 1639390495},
    .{key = "set_transparent_background", value = 2586408642},
    .{key = "has_transparent_background", value = 36873697},
    .{key = "set_use_hdr_2d", value = 2586408642},
    .{key = "is_using_hdr_2d", value = 36873697},
    .{key = "set_msaa_2d", value = 3330258708},
    .{key = "get_msaa_2d", value = 2542055527},
    .{key = "set_msaa_3d", value = 3330258708},
    .{key = "get_msaa_3d", value = 2542055527},
    .{key = "set_screen_space_aa", value = 3544169389},
    .{key = "get_screen_space_aa", value = 1390814124},
    .{key = "set_use_taa", value = 2586408642},
    .{key = "is_using_taa", value = 36873697},
    .{key = "set_use_debanding", value = 2586408642},
    .{key = "is_using_debanding", value = 36873697},
    .{key = "set_use_occlusion_culling", value = 2586408642},
    .{key = "is_using_occlusion_culling", value = 36873697},
    .{key = "set_debug_draw", value = 1970246205},
    .{key = "get_debug_draw", value = 579191299},
    .{key = "get_render_info", value = 481977019},
    .{key = "get_texture", value = 1746695840},
    .{key = "set_physics_object_picking", value = 2586408642},
    .{key = "get_physics_object_picking", value = 2240911060},
    .{key = "set_physics_object_picking_sort", value = 2586408642},
    .{key = "get_physics_object_picking_sort", value = 2240911060},
    .{key = "set_physics_object_picking_first_only", value = 2586408642},
    .{key = "get_physics_object_picking_first_only", value = 2240911060},
    .{key = "get_viewport_rid", value = 2944877500},
    .{key = "push_text_input", value = 83702148},
    .{key = "push_input", value = 3644664830},
    .{key = "push_unhandled_input", value = 3644664830},
    .{key = "get_mouse_position", value = 3341600327},
    .{key = "warp_mouse", value = 743155724},
    .{key = "update_mouse_cursor_state", value = 3218959716},
    .{key = "gui_get_drag_data", value = 1214101251},
    .{key = "gui_is_dragging", value = 36873697},
    .{key = "gui_is_drag_successful", value = 36873697},
    .{key = "gui_release_focus", value = 3218959716},
    .{key = "gui_get_focus_owner", value = 2783021301},
    .{key = "gui_get_hovered_control", value = 2783021301},
    .{key = "set_disable_input", value = 2586408642},
    .{key = "is_input_disabled", value = 36873697},
    .{key = "set_positional_shadow_atlas_size", value = 1286410249},
    .{key = "get_positional_shadow_atlas_size", value = 3905245786},
    .{key = "set_positional_shadow_atlas_16_bits", value = 2586408642},
    .{key = "get_positional_shadow_atlas_16_bits", value = 36873697},
    .{key = "set_snap_controls_to_pixels", value = 2586408642},
    .{key = "is_snap_controls_to_pixels_enabled", value = 36873697},
    .{key = "set_snap_2d_transforms_to_pixel", value = 2586408642},
    .{key = "is_snap_2d_transforms_to_pixel_enabled", value = 36873697},
    .{key = "set_snap_2d_vertices_to_pixel", value = 2586408642},
    .{key = "is_snap_2d_vertices_to_pixel_enabled", value = 36873697},
    .{key = "set_positional_shadow_atlas_quadrant_subdiv", value = 2596956071},
    .{key = "get_positional_shadow_atlas_quadrant_subdiv", value = 2676778355},
    .{key = "set_input_as_handled", value = 3218959716},
    .{key = "is_input_handled", value = 36873697},
    .{key = "set_handle_input_locally", value = 2586408642},
    .{key = "is_handling_input_locally", value = 36873697},
    .{key = "set_default_canvas_item_texture_filter", value = 2815160100},
    .{key = "get_default_canvas_item_texture_filter", value = 896601198},
    .{key = "set_embedding_subwindows", value = 2586408642},
    .{key = "is_embedding_subwindows", value = 36873697},
    .{key = "get_embedded_subwindows", value = 3995934104},
    .{key = "set_canvas_cull_mask", value = 1286410249},
    .{key = "get_canvas_cull_mask", value = 3905245786},
    .{key = "set_canvas_cull_mask_bit", value = 300928843},
    .{key = "get_canvas_cull_mask_bit", value = 1116898809},
    .{key = "set_default_canvas_item_texture_repeat", value = 1658513413},
    .{key = "get_default_canvas_item_texture_repeat", value = 4049774160},
    .{key = "set_sdf_oversize", value = 2574159017},
    .{key = "get_sdf_oversize", value = 2631427510},
    .{key = "set_sdf_scale", value = 1402773951},
    .{key = "get_sdf_scale", value = 3162688184},
    .{key = "set_mesh_lod_threshold", value = 373806689},
    .{key = "get_mesh_lod_threshold", value = 1740695150},
    .{key = "set_as_audio_listener_2d", value = 2586408642},
    .{key = "is_audio_listener_2d", value = 36873697},
    .{key = "get_camera_2d", value = 3551466917},
    .{key = "set_world_3d", value = 1400875337},
    .{key = "get_world_3d", value = 317588385},
    .{key = "find_world_3d", value = 317588385},
    .{key = "set_use_own_world_3d", value = 2586408642},
    .{key = "is_using_own_world_3d", value = 36873697},
    .{key = "get_camera_3d", value = 2285090890},
    .{key = "set_as_audio_listener_3d", value = 2586408642},
    .{key = "is_audio_listener_3d", value = 36873697},
    .{key = "set_disable_3d", value = 2586408642},
    .{key = "is_3d_disabled", value = 36873697},
    .{key = "set_use_xr", value = 2586408642},
    .{key = "is_using_xr", value = 2240911060},
    .{key = "set_scaling_3d_mode", value = 1531597597},
    .{key = "get_scaling_3d_mode", value = 2597660574},
    .{key = "set_scaling_3d_scale", value = 373806689},
    .{key = "get_scaling_3d_scale", value = 1740695150},
    .{key = "set_fsr_sharpness", value = 373806689},
    .{key = "get_fsr_sharpness", value = 1740695150},
    .{key = "set_texture_mipmap_bias", value = 373806689},
    .{key = "get_texture_mipmap_bias", value = 1740695150},
    .{key = "set_vrs_mode", value = 2749867817},
    .{key = "get_vrs_mode", value = 349660525},
    .{key = "set_vrs_texture", value = 4051416890},
    .{key = "get_vrs_texture", value = 3635182373},
    .{key = "set_viewport_path_in_scene", value = 1348162250},
    .{key = "get_viewport_path_in_scene", value = 4075236667},
    .{key = "set_enable_mode", value = 2961788752},
    .{key = "get_enable_mode", value = 2650445576},
    .{key = "set_enable_node_path", value = 1348162250},
    .{key = "get_enable_node_path", value = 277076166},
    .{key = "set_enable_mode", value = 320303646},
    .{key = "get_enable_mode", value = 3352990031},
    .{key = "set_enable_node_path", value = 1348162250},
    .{key = "get_enable_node_path", value = 277076166},
    .{key = "set_rect", value = 2046264180},
    .{key = "get_rect", value = 1639390495},
    .{key = "is_on_screen", value = 36873697},
    .{key = "set_aabb", value = 259215842},
    .{key = "is_on_screen", value = 36873697},
    .{key = "set_base", value = 2722037293},
    .{key = "get_base", value = 2944877500},
    .{key = "get_instance", value = 2944877500},
    .{key = "set_layer_mask", value = 1286410249},
    .{key = "get_layer_mask", value = 3905245786},
    .{key = "set_layer_mask_value", value = 300928843},
    .{key = "get_layer_mask_value", value = 1116898809},
    .{key = "set_sorting_offset", value = 373806689},
    .{key = "get_sorting_offset", value = 1740695150},
    .{key = "set_sorting_use_aabb_center", value = 2586408642},
    .{key = "is_sorting_use_aabb_center", value = 36873697},
    .{key = "get_aabb", value = 1068685055},
    .{key = "set_mode", value = 3978014962},
    .{key = "add_node", value = 1560769431},
    .{key = "get_node", value = 3784670312},
    .{key = "set_node_position", value = 2726660721},
    .{key = "get_node_position", value = 2175036082},
    .{key = "get_node_list", value = 2370592410},
    .{key = "get_valid_node_id", value = 629467342},
    .{key = "remove_node", value = 844050912},
    .{key = "replace_node", value = 3144735253},
    .{key = "is_node_connection", value = 3922381898},
    .{key = "can_connect_nodes", value = 3922381898},
    .{key = "connect_nodes", value = 3081049573},
    .{key = "disconnect_nodes", value = 2268060358},
    .{key = "connect_nodes_forced", value = 2268060358},
    .{key = "get_node_connections", value = 1441964831},
    .{key = "set_graph_offset", value = 743155724},
    .{key = "get_graph_offset", value = 3341600327},
    .{key = "add_varying", value = 2084110726},
    .{key = "remove_varying", value = 83702148},
    .{key = "has_varying", value = 3927539163},
    .{key = "get_default_input_port", value = 1894493699},
    .{key = "set_output_port_for_preview", value = 1286410249},
    .{key = "get_output_port_for_preview", value = 3905245786},
    .{key = "set_input_port_default_value", value = 150923387},
    .{key = "get_input_port_default_value", value = 4227898402},
    .{key = "remove_input_port_default_value", value = 1286410249},
    .{key = "clear_default_input_values", value = 3218959716},
    .{key = "set_default_input_values", value = 381264803},
    .{key = "get_default_input_values", value = 3995934104},
    .{key = "set_billboard_type", value = 1227463289},
    .{key = "get_billboard_type", value = 3724188517},
    .{key = "set_keep_scale_enabled", value = 2586408642},
    .{key = "is_keep_scale_enabled", value = 36873697},
    .{key = "set_constant", value = 2586408642},
    .{key = "get_constant", value = 36873697},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 2586408642},
    .{key = "get_default_value", value = 36873697},
    .{key = "set_op_type", value = 405010749},
    .{key = "get_op_type", value = 233276050},
    .{key = "set_constant", value = 2920490490},
    .{key = "get_constant", value = 3444240500},
    .{key = "set_function", value = 3973396138},
    .{key = "get_function", value = 554863321},
    .{key = "set_operator", value = 4260370673},
    .{key = "get_operator", value = 1950956529},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 2920490490},
    .{key = "get_default_value", value = 3444240500},
    .{key = "set_title", value = 83702148},
    .{key = "get_title", value = 201670096},
    .{key = "set_description", value = 83702148},
    .{key = "get_description", value = 201670096},
    .{key = "set_comparison_type", value = 516558320},
    .{key = "get_comparison_type", value = 3495315961},
    .{key = "set_function", value = 2370951349},
    .{key = "get_function", value = 4089164265},
    .{key = "set_condition", value = 918742392},
    .{key = "get_condition", value = 3281078941},
    .{key = "set_source", value = 1625400621},
    .{key = "get_source", value = 2222048781},
    .{key = "set_cube_map", value = 2219800736},
    .{key = "get_cube_map", value = 1772111058},
    .{key = "set_texture_type", value = 1899718876},
    .{key = "get_texture_type", value = 3356498888},
    .{key = "set_texture", value = 181872837},
    .{key = "get_texture", value = 2800800579},
    .{key = "set_texture", value = 8031783},
    .{key = "get_texture", value = 1950275015},
    .{key = "get_option_index", value = 923996154},
    .{key = "set_op_type", value = 377800221},
    .{key = "get_op_type", value = 3997800514},
    .{key = "set_function", value = 1944704156},
    .{key = "get_function", value = 2389093396},
    .{key = "set_precision", value = 797270566},
    .{key = "get_precision", value = 3822547323},
    .{key = "set_expression", value = 83702148},
    .{key = "get_expression", value = 201670096},
    .{key = "set_constant", value = 373806689},
    .{key = "get_constant", value = 1740695150},
    .{key = "set_function", value = 536026177},
    .{key = "get_function", value = 2033948868},
    .{key = "set_operator", value = 2488468047},
    .{key = "get_operator", value = 1867979390},
    .{key = "set_hint", value = 3712586466},
    .{key = "get_hint", value = 3042240429},
    .{key = "set_min", value = 373806689},
    .{key = "get_min", value = 1740695150},
    .{key = "set_max", value = 373806689},
    .{key = "get_max", value = 1740695150},
    .{key = "set_step", value = 373806689},
    .{key = "get_step", value = 1740695150},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 373806689},
    .{key = "get_default_value", value = 1740695150},
    .{key = "set_inputs", value = 83702148},
    .{key = "get_inputs", value = 201670096},
    .{key = "set_outputs", value = 83702148},
    .{key = "get_outputs", value = 201670096},
    .{key = "is_valid_port_name", value = 3927539163},
    .{key = "add_input_port", value = 2285447957},
    .{key = "remove_input_port", value = 1286410249},
    .{key = "get_input_port_count", value = 3905245786},
    .{key = "has_input_port", value = 1116898809},
    .{key = "clear_input_ports", value = 3218959716},
    .{key = "add_output_port", value = 2285447957},
    .{key = "remove_output_port", value = 1286410249},
    .{key = "get_output_port_count", value = 3905245786},
    .{key = "has_output_port", value = 1116898809},
    .{key = "clear_output_ports", value = 3218959716},
    .{key = "set_input_port_name", value = 501894301},
    .{key = "set_input_port_type", value = 3937882851},
    .{key = "set_output_port_name", value = 501894301},
    .{key = "set_output_port_type", value = 3937882851},
    .{key = "get_free_input_port_id", value = 3905245786},
    .{key = "get_free_output_port_id", value = 3905245786},
    .{key = "set_input_name", value = 83702148},
    .{key = "get_input_name", value = 201670096},
    .{key = "get_input_real_name", value = 201670096},
    .{key = "set_constant", value = 1286410249},
    .{key = "get_constant", value = 3905245786},
    .{key = "set_function", value = 424195284},
    .{key = "get_function", value = 2753496911},
    .{key = "set_operator", value = 1677909323},
    .{key = "get_operator", value = 1236987913},
    .{key = "set_hint", value = 2540512075},
    .{key = "get_hint", value = 4250814924},
    .{key = "set_min", value = 1286410249},
    .{key = "get_min", value = 3905245786},
    .{key = "set_max", value = 1286410249},
    .{key = "get_max", value = 3905245786},
    .{key = "set_step", value = 1286410249},
    .{key = "get_step", value = 3905245786},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 1286410249},
    .{key = "get_default_value", value = 3905245786},
    .{key = "set_function", value = 1438374690},
    .{key = "get_function", value = 580678557},
    .{key = "set_op_type", value = 3397501671},
    .{key = "get_op_type", value = 4013957297},
    .{key = "set_op_type", value = 1409862380},
    .{key = "get_op_type", value = 2823201991},
    .{key = "set_parameter_name", value = 83702148},
    .{key = "get_parameter_name", value = 201670096},
    .{key = "set_qualifier", value = 1276489447},
    .{key = "get_qualifier", value = 3558406205},
    .{key = "set_parameter_name", value = 83702148},
    .{key = "get_parameter_name", value = 201670096},
    .{key = "set_mode", value = 3457585749},
    .{key = "get_mode", value = 2660365633},
    .{key = "set_flags", value = 3960756792},
    .{key = "get_flags", value = 171277835},
    .{key = "set_mode_2d", value = 2586408642},
    .{key = "is_mode_2d", value = 36873697},
    .{key = "set_mesh", value = 194775623},
    .{key = "get_mesh", value = 1808005922},
    .{key = "set_use_all_surfaces", value = 2586408642},
    .{key = "is_use_all_surfaces", value = 36873697},
    .{key = "set_surface_index", value = 1286410249},
    .{key = "get_surface_index", value = 3905245786},
    .{key = "set_degrees_mode", value = 2586408642},
    .{key = "is_degrees_mode", value = 36873697},
    .{key = "set_op_type", value = 2060089061},
    .{key = "get_op_type", value = 3597061078},
    .{key = "set_size", value = 743155724},
    .{key = "get_size", value = 3341600327},
    .{key = "set_source", value = 3315130991},
    .{key = "get_source", value = 1079494121},
    .{key = "set_op_type", value = 2427426148},
    .{key = "get_op_type", value = 359640855},
    .{key = "set_op_type", value = 715172489},
    .{key = "get_op_type", value = 3274022781},
    .{key = "set_op_type", value = 510471861},
    .{key = "get_op_type", value = 2517845071},
    .{key = "set_source", value = 905262939},
    .{key = "get_source", value = 2896297444},
    .{key = "set_texture", value = 4051416890},
    .{key = "get_texture", value = 3635182373},
    .{key = "set_texture_type", value = 986314081},
    .{key = "get_texture_type", value = 3290430153},
    .{key = "set_texture_array", value = 2206200446},
    .{key = "get_texture_array", value = 146117123},
    .{key = "set_texture", value = 1188404210},
    .{key = "get_texture", value = 373985333},
    .{key = "set_texture_type", value = 2227296876},
    .{key = "get_texture_type", value = 367922070},
    .{key = "set_color_default", value = 4217624432},
    .{key = "get_color_default", value = 3837060134},
    .{key = "set_texture_filter", value = 2147684752},
    .{key = "get_texture_filter", value = 4184490817},
    .{key = "set_texture_repeat", value = 2036143070},
    .{key = "get_texture_repeat", value = 1690132794},
    .{key = "set_texture_source", value = 1212687372},
    .{key = "get_texture_source", value = 2039092262},
    .{key = "set_constant", value = 2952846383},
    .{key = "get_constant", value = 3229777777},
    .{key = "set_function", value = 2900990409},
    .{key = "get_function", value = 2839926569},
    .{key = "set_operator", value = 2287310733},
    .{key = "get_operator", value = 1238663601},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 2952846383},
    .{key = "get_default_value", value = 3229777777},
    .{key = "set_operator", value = 1785665912},
    .{key = "get_operator", value = 1622088722},
    .{key = "set_constant", value = 1286410249},
    .{key = "get_constant", value = 3905245786},
    .{key = "set_function", value = 2273148961},
    .{key = "get_function", value = 4187123296},
    .{key = "set_operator", value = 3463048345},
    .{key = "get_operator", value = 256631461},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 1286410249},
    .{key = "get_default_value", value = 3905245786},
    .{key = "set_function", value = 765791915},
    .{key = "get_function", value = 3772902164},
    .{key = "set_varying_name", value = 83702148},
    .{key = "get_varying_name", value = 201670096},
    .{key = "set_varying_type", value = 3565867981},
    .{key = "get_varying_type", value = 523183580},
    .{key = "set_constant", value = 743155724},
    .{key = "get_constant", value = 3341600327},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 743155724},
    .{key = "get_default_value", value = 3341600327},
    .{key = "set_constant", value = 3460891852},
    .{key = "get_constant", value = 3360562783},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 3460891852},
    .{key = "get_default_value", value = 3360562783},
    .{key = "set_constant", value = 1727505552},
    .{key = "get_constant", value = 1222331677},
    .{key = "set_default_value_enabled", value = 2586408642},
    .{key = "is_default_value_enabled", value = 36873697},
    .{key = "set_default_value", value = 643568085},
    .{key = "get_default_value", value = 2435802345},
    .{key = "set_op_type", value = 1692596998},
    .{key = "get_op_type", value = 2568738462},
    .{key = "set_function", value = 629964457},
    .{key = "get_function", value = 4047776843},
    .{key = "set_operator", value = 3371507302},
    .{key = "get_operator", value = 11793929},
    .{key = "set_probe_data", value = 1637849675},
    .{key = "get_probe_data", value = 1730645405},
    .{key = "set_subdiv", value = 2240898472},
    .{key = "get_subdiv", value = 4261647950},
    .{key = "set_size", value = 3460891852},
    .{key = "get_size", value = 3360562783},
    .{key = "set_camera_attributes", value = 2817810567},
    .{key = "get_camera_attributes", value = 3921283215},
    .{key = "bake", value = 2781551026},
    .{key = "debug_bake", value = 3218959716},
    .{key = "allocate", value = 4041601946},
    .{key = "get_bounds", value = 1068685055},
    .{key = "get_octree_size", value = 3360562783},
    .{key = "get_to_cell_xform", value = 3229777777},
    .{key = "get_octree_cells", value = 2362200018},
    .{key = "get_data_cells", value = 2362200018},
    .{key = "get_level_counts", value = 1930428628},
    .{key = "set_dynamic_range", value = 373806689},
    .{key = "get_dynamic_range", value = 1740695150},
    .{key = "set_energy", value = 373806689},
    .{key = "get_energy", value = 1740695150},
    .{key = "set_bias", value = 373806689},
    .{key = "get_bias", value = 1740695150},
    .{key = "set_normal_bias", value = 373806689},
    .{key = "get_normal_bias", value = 1740695150},
    .{key = "set_propagation", value = 373806689},
    .{key = "get_propagation", value = 1740695150},
    .{key = "set_interior", value = 2586408642},
    .{key = "is_interior", value = 36873697},
    .{key = "set_use_two_bounces", value = 2586408642},
    .{key = "is_using_two_bounces", value = 36873697},
    .{key = "get_ref", value = 1214101251},
    .{key = "poll", value = 166280745},
    .{key = "close", value = 3218959716},
    .{key = "was_string_packet", value = 36873697},
    .{key = "set_write_mode", value = 1999768052},
    .{key = "get_write_mode", value = 2848495172},
    .{key = "get_ready_state", value = 3501143017},
    .{key = "get_label", value = 201670096},
    .{key = "is_ordered", value = 36873697},
    .{key = "get_id", value = 3905245786},
    .{key = "get_max_packet_life_time", value = 3905245786},
    .{key = "get_max_retransmits", value = 3905245786},
    .{key = "get_protocol", value = 201670096},
    .{key = "is_negotiated", value = 36873697},
    .{key = "get_buffered_amount", value = 3905245786},
    .{key = "create_server", value = 2865356025},
    .{key = "create_client", value = 2641732907},
    .{key = "create_mesh", value = 2641732907},
    .{key = "add_peer", value = 4078953270},
    .{key = "remove_peer", value = 1286410249},
    .{key = "has_peer", value = 3067735520},
    .{key = "get_peer", value = 3554694381},
    .{key = "get_peers", value = 2382534195},
    .{key = "set_default_extension", value = 3304788590},
    .{key = "initialize", value = 2625064318},
    .{key = "create_data_channel", value = 1288557393},
    .{key = "create_offer", value = 166280745},
    .{key = "set_local_description", value = 852856452},
    .{key = "set_remote_description", value = 852856452},
    .{key = "add_ice_candidate", value = 3958950400},
    .{key = "poll", value = 166280745},
    .{key = "close", value = 3218959716},
    .{key = "get_connection_state", value = 2275710506},
    .{key = "get_gathering_state", value = 4262591401},
    .{key = "get_signaling_state", value = 3342956226},
    .{key = "create_client", value = 1966198364},
    .{key = "create_server", value = 2400822951},
    .{key = "get_peer", value = 1381378851},
    .{key = "get_peer_address", value = 844755477},
    .{key = "get_peer_port", value = 923996154},
    .{key = "get_supported_protocols", value = 1139954409},
    .{key = "set_supported_protocols", value = 4015028928},
    .{key = "get_handshake_headers", value = 1139954409},
    .{key = "set_handshake_headers", value = 4015028928},
    .{key = "get_inbound_buffer_size", value = 3905245786},
    .{key = "set_inbound_buffer_size", value = 1286410249},
    .{key = "get_outbound_buffer_size", value = 3905245786},
    .{key = "set_outbound_buffer_size", value = 1286410249},
    .{key = "get_handshake_timeout", value = 1740695150},
    .{key = "set_handshake_timeout", value = 373806689},
    .{key = "set_max_queued_packets", value = 1286410249},
    .{key = "get_max_queued_packets", value = 3905245786},
    .{key = "connect_to_url", value = 1966198364},
    .{key = "accept_stream", value = 255125695},
    .{key = "send", value = 2780360567},
    .{key = "send_text", value = 166001499},
    .{key = "was_string_packet", value = 36873697},
    .{key = "poll", value = 3218959716},
    .{key = "close", value = 1047156615},
    .{key = "get_connected_host", value = 201670096},
    .{key = "get_connected_port", value = 3905245786},
    .{key = "get_selected_protocol", value = 201670096},
    .{key = "get_requested_url", value = 201670096},
    .{key = "set_no_delay", value = 2586408642},
    .{key = "get_current_outbound_buffered_amount", value = 3905245786},
    .{key = "get_ready_state", value = 346482985},
    .{key = "get_close_code", value = 3905245786},
    .{key = "get_close_reason", value = 201670096},
    .{key = "get_supported_protocols", value = 1139954409},
    .{key = "set_supported_protocols", value = 4015028928},
    .{key = "get_handshake_headers", value = 1139954409},
    .{key = "set_handshake_headers", value = 4015028928},
    .{key = "get_inbound_buffer_size", value = 3905245786},
    .{key = "set_inbound_buffer_size", value = 1286410249},
    .{key = "get_outbound_buffer_size", value = 3905245786},
    .{key = "set_outbound_buffer_size", value = 1286410249},
    .{key = "set_max_queued_packets", value = 1286410249},
    .{key = "get_max_queued_packets", value = 3905245786},
    .{key = "is_session_supported", value = 83702148},
    .{key = "set_session_mode", value = 83702148},
    .{key = "get_session_mode", value = 201670096},
    .{key = "set_required_features", value = 83702148},
    .{key = "get_required_features", value = 201670096},
    .{key = "set_optional_features", value = 83702148},
    .{key = "get_optional_features", value = 201670096},
    .{key = "get_reference_space_type", value = 201670096},
    .{key = "get_enabled_features", value = 201670096},
    .{key = "set_requested_reference_space_types", value = 83702148},
    .{key = "get_requested_reference_space_types", value = 201670096},
    .{key = "is_input_source_active", value = 1116898809},
    .{key = "get_input_source_tracker", value = 636011756},
    .{key = "get_input_source_target_ray_mode", value = 2852387453},
    .{key = "get_visibility_state", value = 201670096},
    .{key = "get_display_refresh_rate", value = 1740695150},
    .{key = "set_display_refresh_rate", value = 373806689},
    .{key = "get_available_display_refresh_rates", value = 3995934104},
    .{key = "set_title", value = 83702148},
    .{key = "get_title", value = 201670096},
    .{key = "get_window_id", value = 3905245786},
    .{key = "set_initial_position", value = 4084468099},
    .{key = "get_initial_position", value = 4294066647},
    .{key = "set_current_screen", value = 1286410249},
    .{key = "get_current_screen", value = 3905245786},
    .{key = "set_position", value = 1130785943},
    .{key = "get_position", value = 3690982128},
    .{key = "move_to_center", value = 3218959716},
    .{key = "set_size", value = 1130785943},
    .{key = "get_size", value = 3690982128},
    .{key = "reset_size", value = 3218959716},
    .{key = "get_position_with_decorations", value = 3690982128},
    .{key = "get_size_with_decorations", value = 3690982128},
    .{key = "set_max_size", value = 1130785943},
    .{key = "get_max_size", value = 3690982128},
    .{key = "set_min_size", value = 1130785943},
    .{key = "get_min_size", value = 3690982128},
    .{key = "set_mode", value = 3095236531},
    .{key = "get_mode", value = 2566346114},
    .{key = "set_flag", value = 3426449779},
    .{key = "get_flag", value = 3062752289},
    .{key = "is_maximize_allowed", value = 36873697},
    .{key = "request_attention", value = 3218959716},
    .{key = "move_to_foreground", value = 3218959716},
    .{key = "set_visible", value = 2586408642},
    .{key = "is_visible", value = 36873697},
    .{key = "hide", value = 3218959716},
    .{key = "show", value = 3218959716},
    .{key = "set_transient", value = 2586408642},
    .{key = "is_transient", value = 36873697},
    .{key = "set_transient_to_focused", value = 2586408642},
    .{key = "is_transient_to_focused", value = 36873697},
    .{key = "set_exclusive", value = 2586408642},
    .{key = "is_exclusive", value = 36873697},
    .{key = "set_unparent_when_invisible", value = 2586408642},
    .{key = "can_draw", value = 36873697},
    .{key = "has_focus", value = 36873697},
    .{key = "grab_focus", value = 3218959716},
    .{key = "set_ime_active", value = 2586408642},
    .{key = "set_ime_position", value = 1130785943},
    .{key = "is_embedded", value = 36873697},
    .{key = "get_contents_minimum_size", value = 3341600327},
    .{key = "set_force_native", value = 2586408642},
    .{key = "get_force_native", value = 36873697},
    .{key = "set_content_scale_size", value = 1130785943},
    .{key = "get_content_scale_size", value = 3690982128},
    .{key = "set_content_scale_mode", value = 2937716473},
    .{key = "get_content_scale_mode", value = 161585230},
    .{key = "set_content_scale_aspect", value = 2370399418},
    .{key = "get_content_scale_aspect", value = 4158790715},
    .{key = "set_content_scale_stretch", value = 349355940},
    .{key = "get_content_scale_stretch", value = 536857316},
    .{key = "set_keep_title_visible", value = 2586408642},
    .{key = "get_keep_title_visible", value = 36873697},
    .{key = "set_content_scale_factor", value = 373806689},
    .{key = "get_content_scale_factor", value = 1740695150},
    .{key = "set_use_font_oversampling", value = 2586408642},
    .{key = "is_using_font_oversampling", value = 36873697},
    .{key = "set_mouse_passthrough_polygon", value = 1509147220},
    .{key = "get_mouse_passthrough_polygon", value = 2961356807},
    .{key = "set_wrap_controls", value = 2586408642},
    .{key = "is_wrapping_controls", value = 36873697},
    .{key = "child_controls_changed", value = 3218959716},
    .{key = "set_theme", value = 2326690814},
    .{key = "get_theme", value = 3846893731},
    .{key = "set_theme_type_variation", value = 3304788590},
    .{key = "get_theme_type_variation", value = 2002593661},
    .{key = "begin_bulk_theme_override", value = 3218959716},
    .{key = "end_bulk_theme_override", value = 3218959716},
    .{key = "add_theme_icon_override", value = 1373065600},
    .{key = "add_theme_stylebox_override", value = 4188838905},
    .{key = "add_theme_font_override", value = 3518018674},
    .{key = "add_theme_font_size_override", value = 2415702435},
    .{key = "add_theme_color_override", value = 4260178595},
    .{key = "add_theme_constant_override", value = 2415702435},
    .{key = "remove_theme_icon_override", value = 3304788590},
    .{key = "remove_theme_stylebox_override", value = 3304788590},
    .{key = "remove_theme_font_override", value = 3304788590},
    .{key = "remove_theme_font_size_override", value = 3304788590},
    .{key = "remove_theme_color_override", value = 3304788590},
    .{key = "remove_theme_constant_override", value = 3304788590},
    .{key = "get_theme_icon", value = 2336455395},
    .{key = "get_theme_stylebox", value = 2759935355},
    .{key = "get_theme_font", value = 387378635},
    .{key = "get_theme_font_size", value = 229578101},
    .{key = "get_theme_color", value = 2377051548},
    .{key = "get_theme_constant", value = 229578101},
    .{key = "has_theme_icon_override", value = 2619796661},
    .{key = "has_theme_stylebox_override", value = 2619796661},
    .{key = "has_theme_font_override", value = 2619796661},
    .{key = "has_theme_font_size_override", value = 2619796661},
    .{key = "has_theme_color_override", value = 2619796661},
    .{key = "has_theme_constant_override", value = 2619796661},
    .{key = "has_theme_icon", value = 1187511791},
    .{key = "has_theme_stylebox", value = 1187511791},
    .{key = "has_theme_font", value = 1187511791},
    .{key = "has_theme_font_size", value = 1187511791},
    .{key = "has_theme_color", value = 1187511791},
    .{key = "has_theme_constant", value = 1187511791},
    .{key = "get_theme_default_base_scale", value = 1740695150},
    .{key = "get_theme_default_font", value = 3229501585},
    .{key = "get_theme_default_font_size", value = 3905245786},
    .{key = "set_layout_direction", value = 3094704184},
    .{key = "get_layout_direction", value = 3909617982},
    .{key = "is_layout_rtl", value = 36873697},
    .{key = "set_auto_translate", value = 2586408642},
    .{key = "is_auto_translating", value = 36873697},
    .{key = "popup", value = 1680304321},
    .{key = "popup_on_parent", value = 1763793166},
    .{key = "popup_centered", value = 3447975422},
    .{key = "popup_centered_ratio", value = 1014814997},
    .{key = "popup_centered_clamped", value = 2613752477},
    .{key = "popup_exclusive", value = 2134721627},
    .{key = "popup_exclusive_on_parent", value = 2344671043},
    .{key = "popup_exclusive_centered", value = 3357594017},
    .{key = "popup_exclusive_centered_ratio", value = 2284776287},
    .{key = "popup_exclusive_centered_clamped", value = 2612708785},
    .{key = "add_task", value = 3745067146},
    .{key = "is_task_completed", value = 1116898809},
    .{key = "wait_for_task_completion", value = 844576869},
    .{key = "add_group_task", value = 1801953219},
    .{key = "is_group_task_completed", value = 1116898809},
    .{key = "get_group_processed_element_count", value = 923996154},
    .{key = "wait_for_group_task_completion", value = 1286410249},
    .{key = "get_canvas", value = 2944877500},
    .{key = "get_space", value = 2944877500},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "get_direct_space_state", value = 2506717822},
    .{key = "get_space", value = 2944877500},
    .{key = "get_navigation_map", value = 2944877500},
    .{key = "get_scenario", value = 2944877500},
    .{key = "set_environment", value = 4143518816},
    .{key = "get_environment", value = 3082064660},
    .{key = "set_fallback_environment", value = 4143518816},
    .{key = "get_fallback_environment", value = 3082064660},
    .{key = "set_camera_attributes", value = 2817810567},
    .{key = "get_camera_attributes", value = 3921283215},
    .{key = "get_direct_space_state", value = 2069328350},
    .{key = "set_normal", value = 743155724},
    .{key = "get_normal", value = 3341600327},
    .{key = "set_distance", value = 373806689},
    .{key = "get_distance", value = 1740695150},
    .{key = "set_plane", value = 3505987427},
    .{key = "get_plane", value = 2753500971},
    .{key = "set_environment", value = 4143518816},
    .{key = "get_environment", value = 3082064660},
    .{key = "set_camera_attributes", value = 2817810567},
    .{key = "get_camera_attributes", value = 3921283215},
    .{key = "set_compositor", value = 1586754307},
    .{key = "get_compositor", value = 3647707413},
    .{key = "save", value = 166001499},
    .{key = "load", value = 166001499},
    .{key = "save_to_string", value = 2841200299},
    .{key = "load_from_string", value = 166001499},
    .{key = "read", value = 166280745},
    .{key = "get_node_type", value = 2984359541},
    .{key = "get_node_name", value = 201670096},
    .{key = "get_node_data", value = 201670096},
    .{key = "get_node_offset", value = 3905245786},
    .{key = "get_attribute_count", value = 3905245786},
    .{key = "get_attribute_name", value = 844755477},
    .{key = "get_attribute_value", value = 844755477},
    .{key = "has_attribute", value = 3927539163},
    .{key = "get_named_attribute_value", value = 3135753539},
    .{key = "get_named_attribute_value_safe", value = 3135753539},
    .{key = "is_empty", value = 36873697},
    .{key = "get_current_line", value = 3905245786},
    .{key = "skip_section", value = 3218959716},
    .{key = "seek", value = 844576869},
    .{key = "open", value = 166001499},
    .{key = "open_buffer", value = 680677267},
    .{key = "get_size", value = 3360562783},
    .{key = "get_plane", value = 2753500971},
    .{key = "set_body_tracker", value = 3304788590},
    .{key = "get_body_tracker", value = 2002593661},
    .{key = "set_target", value = 1348162250},
    .{key = "get_target", value = 4075236667},
    .{key = "set_body_update", value = 2211199417},
    .{key = "get_body_update", value = 2642335328},
    .{key = "set_bone_update", value = 3356796943},
    .{key = "get_bone_update", value = 1309305964},
    .{key = "set_show_when_tracked", value = 2586408642},
    .{key = "get_show_when_tracked", value = 36873697},
    .{key = "set_has_tracking_data", value = 2586408642},
    .{key = "get_has_tracking_data", value = 36873697},
    .{key = "set_body_flags", value = 2103235750},
    .{key = "get_body_flags", value = 3543166366},
    .{key = "set_joint_flags", value = 592144999},
    .{key = "get_joint_flags", value = 1030162609},
    .{key = "set_joint_transform", value = 2635424328},
    .{key = "get_joint_transform", value = 3474811534},
    .{key = "is_button_pressed", value = 2619796661},
    .{key = "get_input", value = 2760726917},
    .{key = "get_float", value = 2349060816},
    .{key = "get_vector2", value = 3100822709},
    .{key = "get_tracker_hand", value = 4181770860},
    .{key = "set_face_tracker", value = 3304788590},
    .{key = "get_face_tracker", value = 2002593661},
    .{key = "set_target", value = 1348162250},
    .{key = "get_target", value = 4075236667},
    .{key = "get_blend_shape", value = 330010046},
    .{key = "set_blend_shape", value = 2352588791},
    .{key = "get_blend_shapes", value = 675695659},
    .{key = "set_blend_shapes", value = 2899603908},
    .{key = "set_hand_tracker", value = 3304788590},
    .{key = "get_hand_tracker", value = 2002593661},
    .{key = "set_target", value = 1348162250},
    .{key = "get_target", value = 4075236667},
    .{key = "set_bone_update", value = 3635701455},
    .{key = "get_bone_update", value = 2873665691},
    .{key = "set_hand", value = 89041945},
    .{key = "get_hand", value = 1790719290},
    .{key = "set_has_tracking_data", value = 2586408642},
    .{key = "get_has_tracking_data", value = 36873697},
    .{key = "set_hand_tracking_source", value = 2958308861},
    .{key = "get_hand_tracking_source", value = 2475045250},
    .{key = "set_hand_joint_flags", value = 3028437365},
    .{key = "get_hand_joint_flags", value = 1730972401},
    .{key = "set_hand_joint_transform", value = 2529959613},
    .{key = "get_hand_joint_transform", value = 1090840196},
    .{key = "set_hand_joint_radius", value = 2723659615},
    .{key = "get_hand_joint_radius", value = 3400025734},
    .{key = "set_hand_joint_linear_velocity", value = 1978646737},
    .{key = "get_hand_joint_linear_velocity", value = 547240792},
    .{key = "set_hand_joint_angular_velocity", value = 1978646737},
    .{key = "get_hand_joint_angular_velocity", value = 547240792},
    .{key = "get_name", value = 2002593661},
    .{key = "get_capabilities", value = 3905245786},
    .{key = "is_primary", value = 2240911060},
    .{key = "set_primary", value = 2586408642},
    .{key = "is_initialized", value = 36873697},
    .{key = "initialize", value = 2240911060},
    .{key = "uninitialize", value = 3218959716},
    .{key = "get_system_info", value = 2382534195},
    .{key = "get_tracking_status", value = 167423259},
    .{key = "get_render_target_size", value = 1497962370},
    .{key = "get_view_count", value = 2455072627},
    .{key = "trigger_haptic_pulse", value = 3752640163},
    .{key = "supports_play_area_mode", value = 3429955281},
    .{key = "get_play_area_mode", value = 1615132885},
    .{key = "set_play_area_mode", value = 3429955281},
    .{key = "get_play_area", value = 497664490},
    .{key = "get_anchor_detection_is_enabled", value = 36873697},
    .{key = "set_anchor_detection_is_enabled", value = 2586408642},
    .{key = "get_camera_feed_id", value = 2455072627},
    .{key = "is_passthrough_supported", value = 2240911060},
    .{key = "is_passthrough_enabled", value = 2240911060},
    .{key = "start_passthrough", value = 2240911060},
    .{key = "stop_passthrough", value = 3218959716},
    .{key = "get_transform_for_view", value = 518934792},
    .{key = "get_projection_for_view", value = 3766090294},
    .{key = "get_supported_environment_blend_modes", value = 2915620761},
    .{key = "set_environment_blend_mode", value = 551152418},
    .{key = "get_environment_blend_mode", value = 1984334071},
    .{key = "get_color_texture", value = 529393457},
    .{key = "get_depth_texture", value = 529393457},
    .{key = "get_velocity_texture", value = 529393457},
    .{key = "add_blit", value = 258596971},
    .{key = "get_render_target_texture", value = 41030802},
    .{key = "set_tracker", value = 3304788590},
    .{key = "get_tracker", value = 2002593661},
    .{key = "set_pose_name", value = 3304788590},
    .{key = "get_pose_name", value = 2002593661},
    .{key = "get_is_active", value = 36873697},
    .{key = "get_has_tracking_data", value = 36873697},
    .{key = "get_pose", value = 2806551826},
    .{key = "trigger_haptic_pulse", value = 508576839},
    .{key = "set_world_scale", value = 373806689},
    .{key = "get_world_scale", value = 1740695150},
    .{key = "set_current", value = 2586408642},
    .{key = "is_current", value = 36873697},
    .{key = "set_has_tracking_data", value = 2586408642},
    .{key = "get_has_tracking_data", value = 36873697},
    .{key = "set_name", value = 3304788590},
    .{key = "get_name", value = 2002593661},
    .{key = "set_transform", value = 2952846383},
    .{key = "get_transform", value = 3229777777},
    .{key = "get_adjusted_transform", value = 3229777777},
    .{key = "set_linear_velocity", value = 3460891852},
    .{key = "get_linear_velocity", value = 3360562783},
    .{key = "set_angular_velocity", value = 3460891852},
    .{key = "get_angular_velocity", value = 3360562783},
    .{key = "set_tracking_confidence", value = 4171656666},
    .{key = "get_tracking_confidence", value = 2064923680},
    .{key = "get_tracker_type", value = 2784508102},
    .{key = "set_tracker_type", value = 3055763575},
    .{key = "get_tracker_name", value = 2002593661},
    .{key = "set_tracker_name", value = 3304788590},
    .{key = "get_tracker_desc", value = 201670096},
    .{key = "set_tracker_desc", value = 83702148},
    .{key = "get_tracker_profile", value = 201670096},
    .{key = "set_tracker_profile", value = 83702148},
    .{key = "get_tracker_hand", value = 4181770860},
    .{key = "set_tracker_hand", value = 3904108980},
    .{key = "has_pose", value = 2619796661},
    .{key = "get_pose", value = 4099720006},
    .{key = "invalidate_pose", value = 3304788590},
    .{key = "set_pose", value = 3451230163},
    .{key = "get_input", value = 2760726917},
    .{key = "set_input", value = 3776071444},
    .{key = "get_world_scale", value = 1740695150},
    .{key = "set_world_scale", value = 373806689},
    .{key = "get_world_origin", value = 3229777777},
    .{key = "set_world_origin", value = 2952846383},
    .{key = "get_reference_frame", value = 3229777777},
    .{key = "clear_reference_frame", value = 3229777777},
    .{key = "center_on_hmd", value = 1450904707},
    .{key = "get_hmd_transform", value = 4183770049},
    .{key = "add_interface", value = 1898711491},
    .{key = "get_interface_count", value = 3905245786},
    .{key = "remove_interface", value = 1898711491},
    .{key = "get_interface", value = 4237347919},
    .{key = "get_interfaces", value = 3995934104},
    .{key = "find_interface", value = 1395192955},
    .{key = "add_tracker", value = 2692800323},
    .{key = "remove_tracker", value = 2692800323},
    .{key = "get_trackers", value = 3554694381},
    .{key = "get_tracker", value = 2742084544},
    .{key = "add_hand_tracker", value = 3621889893},
    .{key = "remove_hand_tracker", value = 3304788590},
    .{key = "get_hand_trackers", value = 3102165223},
    .{key = "get_hand_tracker", value = 1737588170},
    .{key = "add_face_tracker", value = 1147273494},
    .{key = "remove_face_tracker", value = 3304788590},
    .{key = "get_face_trackers", value = 3102165223},
    .{key = "get_face_tracker", value = 3066800848},
    .{key = "add_body_tracker", value = 3020366798},
    .{key = "remove_body_tracker", value = 3304788590},
    .{key = "get_body_trackers", value = 3102165223},
    .{key = "get_body_tracker", value = 2543746419},
    .{key = "get_primary_interface", value = 2143545064},
    .{key = "set_primary_interface", value = 1898711491},
    .{key = "open", value = 1936816515},
    .{key = "start_file", value = 166001499},
    .{key = "write_file", value = 680677267},
    .{key = "close_file", value = 166280745},
    .{key = "close", value = 166280745},
    .{key = "open", value = 166001499},
    .{key = "close", value = 166280745},
    .{key = "get_files", value = 2981934095},
    .{key = "read_file", value = 740857591},
    .{key = "file_exists", value = 35364943},
]};

#run {

    assert(size_of(Nil) == 0);
    assert(size_of(Vector2) == 8);
    assert(size_of(Vector2i) == 8);
    assert(size_of(Rect2) == 16);
    assert(size_of(Rect2i) == 16);
    assert(size_of(Vector3) == 12);
    assert(size_of(Vector3i) == 12);
    assert(size_of(Transform2D) == 24);
    assert(size_of(Vector4) == 16);
    assert(size_of(Vector4i) == 16);
    assert(size_of(Plane) == 16);
    assert(size_of(Quaternion) == 16);
    assert(size_of(AABB) == 24);
    assert(size_of(Basis) == 36);
    assert(size_of(Transform3D) == 48);
    assert(size_of(Projection) == 64);
    assert(size_of(Color) == 16);
    assert(size_of(StringName) == 4);
    assert(size_of(NodePath) == 4);
    assert(size_of(RID) == 8);
    assert(size_of(Callable) == 16);
    assert(size_of(Signal) == 16);
    assert(size_of(Dictionary) == 4);
    assert(size_of(Array) == 4);
    assert(size_of(PackedByteArray) == 8);
    assert(size_of(PackedInt32Array) == 8);
    assert(size_of(PackedInt64Array) == 8);
    assert(size_of(PackedFloat32Array) == 8);
    assert(size_of(PackedFloat64Array) == 8);
    assert(size_of(PackedStringArray) == 8);
    assert(size_of(PackedVector2Array) == 8);
    assert(size_of(PackedVector3Array) == 8);
    assert(size_of(PackedColorArray) == 8);
    assert(size_of(Variant) == 24);
}

#scope_file

Math :: #import "Math";
#import "Hash_Table";
