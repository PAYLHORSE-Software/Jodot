//  --------------------
// | JODOT GDT BINDINGS |
//  --------------------

gdt :: struct {

    Nil :: void;

    // bool, int and float should match native

    // TODO
    String :: struct { // 32
    }

    Vector2 :: Math.Vector2;

    Vector2i :: struct {
        x: s32;
        y: s32;
    }

    Rect2 :: struct {
        x: Vector2;
        y: Vector2;
    }

    Rect2i :: struct {
        x: Vector2i;
        y: Vector2i;
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
        x: u32;
        y: u32;
        z: u32;
        w: u32;
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

    // TODO
    StringName :: struct {}
    NodePath :: struct {}
    RID :: struct {}
    Callable :: struct {}
    Signal :: struct {}
    Dictionary :: struct {}
    Array :: struct {}
    PackedByteArray :: struct {}
    PackedInt32Array :: struct {}
    PackedInt64Array :: struct {}
    PackedFloat32Array :: struct {}
    PackedFloat64Array :: struct {}
    PackedStringArray :: struct {}
    PackedVector2Array :: struct {}
    PackedVector3Array :: struct {}
    PackedColorArray :: struct {}

    Side :: enum s32 {
        SIDE_LEFT :: 0;
        SIDE_TOP :: 1;
        SIDE_RIGHT :: 2;
        SIDE_BOTTOM :: 3;
    }

    Corner :: enum s32 {
        CORNER_TOP_LEFT :: 0;
        CORNER_TOP_RIGHT :: 1;
        CORNER_BOTTOM_RIGHT :: 2;
        CORNER_BOTTOM_LEFT :: 3;
    }

    Orientation :: enum s32 {
        VERTICAL :: 1;
        HORIZONTAL :: 0;
    }

    ClockDirection :: enum s32 {
        CLOCKWISE :: 0;
        COUNTERCLOCKWISE :: 1;
    }

    HorizontalAlignment :: enum s32 {
        HORIZONTAL_ALIGNMENT_LEFT :: 0;
        HORIZONTAL_ALIGNMENT_CENTER :: 1;
        HORIZONTAL_ALIGNMENT_RIGHT :: 2;
        HORIZONTAL_ALIGNMENT_FILL :: 3;
    }

    VerticalAlignment :: enum s32 {
        VERTICAL_ALIGNMENT_TOP :: 0;
        VERTICAL_ALIGNMENT_CENTER :: 1;
        VERTICAL_ALIGNMENT_BOTTOM :: 2;
        VERTICAL_ALIGNMENT_FILL :: 3;
    }

    InlineAlignment :: enum s32 {
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

    EulerOrder :: enum s32 {
        EULER_ORDER_XYZ :: 0;
        EULER_ORDER_XZY :: 1;
        EULER_ORDER_YXZ :: 2;
        EULER_ORDER_YZX :: 3;
        EULER_ORDER_ZXY :: 4;
        EULER_ORDER_ZYX :: 5;
    }

    Key :: enum s32 {
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

    KeyModifierMask :: enum s32 {
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

    KeyLocation :: enum s32 {
        KEY_LOCATION_UNSPECIFIED :: 0;
        KEY_LOCATION_LEFT :: 1;
        KEY_LOCATION_RIGHT :: 2;
    }

    MouseButton :: enum s32 {
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

    MouseButtonMask :: enum s32 {
        MOUSE_BUTTON_MASK_LEFT :: 1;
        MOUSE_BUTTON_MASK_RIGHT :: 2;
        MOUSE_BUTTON_MASK_MIDDLE :: 4;
        MOUSE_BUTTON_MASK_MB_XBUTTON1 :: 128;
        MOUSE_BUTTON_MASK_MB_XBUTTON2 :: 256;
    } @bitfield

    JoyButton :: enum s32 {
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

    JoyAxis :: enum s32 {
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

    MIDIMessage :: enum s32 {
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

    Error :: enum s32 {
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

    PropertyHint :: enum s32 {
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

    PropertyUsageFlags :: enum s32 {
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

    MethodFlags :: enum s32 {
        METHOD_FLAG_NORMAL :: 1;
        METHOD_FLAG_EDITOR :: 2;
        METHOD_FLAG_CONST :: 4;
        METHOD_FLAG_VIRTUAL :: 8;
        METHOD_FLAG_VARARG :: 16;
        METHOD_FLAG_STATIC :: 32;
        METHOD_FLAG_OBJECT_CORE :: 64;
        METHOD_FLAGS_DEFAULT :: 1;
    } @bitfield

    Variant_Type :: enum s32 {
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

    Variant_Operator :: enum s32 {
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

    AESContext :: struct {}

    AStar2D :: struct {}

    AStar3D :: struct {}

    AStarGrid2D :: struct {}

    AcceptDialog :: struct {}

    AnimatableBody2D :: struct {}

    AnimatableBody3D :: struct {}

    AnimatedSprite2D :: struct {}

    AnimatedSprite3D :: struct {}

    AnimatedTexture :: struct {}

    Animation :: struct {}

    AnimationLibrary :: struct {}

    AnimationMixer :: struct {}

    AnimationNode :: struct {}

    AnimationNodeAdd2 :: struct {}

    AnimationNodeAdd3 :: struct {}

    AnimationNodeAnimation :: struct {}

    AnimationNodeBlend2 :: struct {}

    AnimationNodeBlend3 :: struct {}

    AnimationNodeBlendSpace1D :: struct {}

    AnimationNodeBlendSpace2D :: struct {}

    AnimationNodeBlendTree :: struct {}

    AnimationNodeOneShot :: struct {}

    AnimationNodeOutput :: struct {}

    AnimationNodeStateMachine :: struct {}

    AnimationNodeStateMachinePlayback :: struct {}

    AnimationNodeStateMachineTransition :: struct {}

    AnimationNodeSub2 :: struct {}

    AnimationNodeSync :: struct {}

    AnimationNodeTimeScale :: struct {}

    AnimationNodeTimeSeek :: struct {}

    AnimationNodeTransition :: struct {}

    AnimationPlayer :: struct {}

    AnimationRootNode :: struct {}

    AnimationTree :: struct {}

    Area2D :: struct {}

    Area3D :: struct {}

    ArrayMesh :: struct {}

    ArrayOccluder3D :: struct {}

    AspectRatioContainer :: struct {}

    AtlasTexture :: struct {}

    AudioBusLayout :: struct {}

    AudioEffect :: struct {}

    AudioEffectAmplify :: struct {}

    AudioEffectBandLimitFilter :: struct {}

    AudioEffectBandPassFilter :: struct {}

    AudioEffectCapture :: struct {}

    AudioEffectChorus :: struct {}

    AudioEffectCompressor :: struct {}

    AudioEffectDelay :: struct {}

    AudioEffectDistortion :: struct {}

    AudioEffectEQ :: struct {}

    AudioEffectEQ10 :: struct {}

    AudioEffectEQ21 :: struct {}

    AudioEffectEQ6 :: struct {}

    AudioEffectFilter :: struct {}

    AudioEffectHighPassFilter :: struct {}

    AudioEffectHighShelfFilter :: struct {}

    AudioEffectInstance :: struct {}

    AudioEffectLimiter :: struct {}

    AudioEffectLowPassFilter :: struct {}

    AudioEffectLowShelfFilter :: struct {}

    AudioEffectNotchFilter :: struct {}

    AudioEffectPanner :: struct {}

    AudioEffectPhaser :: struct {}

    AudioEffectPitchShift :: struct {}

    AudioEffectRecord :: struct {}

    AudioEffectReverb :: struct {}

    AudioEffectSpectrumAnalyzer :: struct {}

    AudioEffectSpectrumAnalyzerInstance :: struct {}

    AudioEffectStereoEnhance :: struct {}

    AudioListener2D :: struct {}

    AudioListener3D :: struct {}

    AudioServer :: struct {}

    AudioStream :: struct {}

    AudioStreamGenerator :: struct {}

    AudioStreamGeneratorPlayback :: struct {}

    AudioStreamInteractive :: struct {}

    AudioStreamMP3 :: struct {}

    AudioStreamMicrophone :: struct {}

    AudioStreamOggVorbis :: struct {}

    AudioStreamPlayback :: struct {}

    AudioStreamPlaybackInteractive :: struct {}

    AudioStreamPlaybackOggVorbis :: struct {}

    AudioStreamPlaybackPlaylist :: struct {}

    AudioStreamPlaybackPolyphonic :: struct {}

    AudioStreamPlaybackResampled :: struct {}

    AudioStreamPlaybackSynchronized :: struct {}

    AudioStreamPlayer :: struct {}

    AudioStreamPlayer2D :: struct {}

    AudioStreamPlayer3D :: struct {}

    AudioStreamPlaylist :: struct {}

    AudioStreamPolyphonic :: struct {}

    AudioStreamRandomizer :: struct {}

    AudioStreamSynchronized :: struct {}

    AudioStreamWAV :: struct {}

    BackBufferCopy :: struct {}

    BaseButton :: struct {}

    BaseMaterial3D :: struct {}

    BitMap :: struct {}

    Bone2D :: struct {}

    BoneAttachment3D :: struct {}

    BoneMap :: struct {}

    BoxContainer :: struct {}

    BoxMesh :: struct {}

    BoxOccluder3D :: struct {}

    BoxShape3D :: struct {}

    Button :: struct {}

    ButtonGroup :: struct {}

    CPUParticles2D :: struct {}

    CPUParticles3D :: struct {}

    CSGBox3D :: struct {}

    CSGCombiner3D :: struct {}

    CSGCylinder3D :: struct {}

    CSGMesh3D :: struct {}

    CSGPolygon3D :: struct {}

    CSGPrimitive3D :: struct {}

    CSGShape3D :: struct {}

    CSGSphere3D :: struct {}

    CSGTorus3D :: struct {}

    CallbackTweener :: struct {}

    Camera2D :: struct {}

    Camera3D :: struct {}

    CameraAttributes :: struct {}

    CameraAttributesPhysical :: struct {}

    CameraAttributesPractical :: struct {}

    CameraFeed :: struct {}

    CameraServer :: struct {}

    CameraTexture :: struct {}

    CanvasGroup :: struct {}

    CanvasItem :: struct {}

    CanvasItemMaterial :: struct {}

    CanvasLayer :: struct {}

    CanvasModulate :: struct {}

    CanvasTexture :: struct {}

    CapsuleMesh :: struct {}

    CapsuleShape2D :: struct {}

    CapsuleShape3D :: struct {}

    CenterContainer :: struct {}

    CharFXTransform :: struct {}

    CharacterBody2D :: struct {}

    CharacterBody3D :: struct {}

    CheckBox :: struct {}

    CheckButton :: struct {}

    CircleShape2D :: struct {}

    ClassDB :: struct {}

    CodeEdit :: struct {}

    CodeHighlighter :: struct {}

    CollisionObject2D :: struct {}

    CollisionObject3D :: struct {}

    CollisionPolygon2D :: struct {}

    CollisionPolygon3D :: struct {}

    CollisionShape2D :: struct {}

    CollisionShape3D :: struct {}

    ColorPicker :: struct {}

    ColorPickerButton :: struct {}

    ColorRect :: struct {}

    Compositor :: struct {}

    CompositorEffect :: struct {}

    CompressedCubemap :: struct {}

    CompressedCubemapArray :: struct {}

    CompressedTexture2D :: struct {}

    CompressedTexture2DArray :: struct {}

    CompressedTexture3D :: struct {}

    CompressedTextureLayered :: struct {}

    ConcavePolygonShape2D :: struct {}

    ConcavePolygonShape3D :: struct {}

    ConeTwistJoint3D :: struct {}

    ConfigFile :: struct {}

    ConfirmationDialog :: struct {}

    Container :: struct {}

    Control :: struct {}

    ConvexPolygonShape2D :: struct {}

    ConvexPolygonShape3D :: struct {}

    Crypto :: struct {}

    CryptoKey :: struct {}

    Cubemap :: struct {}

    CubemapArray :: struct {}

    Curve :: struct {}

    Curve2D :: struct {}

    Curve3D :: struct {}

    CurveTexture :: struct {}

    CurveXYZTexture :: struct {}

    CylinderMesh :: struct {}

    CylinderShape3D :: struct {}

    DTLSServer :: struct {}

    DampedSpringJoint2D :: struct {}

    Decal :: struct {}

    DirAccess :: struct {}

    DirectionalLight2D :: struct {}

    DirectionalLight3D :: struct {}

    DisplayServer :: struct {}

    ENetConnection :: struct {}

    ENetMultiplayerPeer :: struct {}

    ENetPacketPeer :: struct {}

    EditorCommandPalette :: struct {}

    EditorDebuggerPlugin :: struct {}

    EditorDebuggerSession :: struct {}

    EditorExportPlatform :: struct {}

    EditorExportPlatformAndroid :: struct {}

    EditorExportPlatformIOS :: struct {}

    EditorExportPlatformLinuxBSD :: struct {}

    EditorExportPlatformMacOS :: struct {}

    EditorExportPlatformPC :: struct {}

    EditorExportPlatformWeb :: struct {}

    EditorExportPlatformWindows :: struct {}

    EditorExportPlugin :: struct {}

    EditorFeatureProfile :: struct {}

    EditorFileDialog :: struct {}

    EditorFileSystem :: struct {}

    EditorFileSystemDirectory :: struct {}

    EditorFileSystemImportFormatSupportQuery :: struct {}

    EditorImportPlugin :: struct {}

    EditorInspector :: struct {}

    EditorInspectorPlugin :: struct {}

    EditorInterface :: struct {}

    EditorNode3DGizmo :: struct {}

    EditorNode3DGizmoPlugin :: struct {}

    EditorPaths :: struct {}

    EditorPlugin :: struct {}

    EditorProperty :: struct {}

    EditorResourceConversionPlugin :: struct {}

    EditorResourcePicker :: struct {}

    EditorResourcePreview :: struct {}

    EditorResourcePreviewGenerator :: struct {}

    EditorResourceTooltipPlugin :: struct {}

    EditorSceneFormatImporter :: struct {}

    EditorSceneFormatImporterBlend :: struct {}

    EditorSceneFormatImporterFBX2GLTF :: struct {}

    EditorSceneFormatImporterGLTF :: struct {}

    EditorSceneFormatImporterUFBX :: struct {}

    EditorScenePostImport :: struct {}

    EditorScenePostImportPlugin :: struct {}

    EditorScript :: struct {}

    EditorScriptPicker :: struct {}

    EditorSelection :: struct {}

    EditorSettings :: struct {}

    EditorSpinSlider :: struct {}

    EditorSyntaxHighlighter :: struct {}

    EditorTranslationParserPlugin :: struct {}

    EditorUndoRedoManager :: struct {}

    EditorVCSInterface :: struct {}

    EncodedObjectAsID :: struct {}

    Engine :: struct {}

    EngineDebugger :: struct {}

    EngineProfiler :: struct {}

    Environment :: struct {}

    Expression :: struct {}

    FBXDocument :: struct {}

    FBXState :: struct {}

    FastNoiseLite :: struct {}

    FileAccess :: struct {}

    FileDialog :: struct {}

    FileSystemDock :: struct {}

    FlowContainer :: struct {}

    FogMaterial :: struct {}

    FogVolume :: struct {}

    Font :: struct {}

    FontFile :: struct {}

    FontVariation :: struct {}

    FramebufferCacheRD :: struct {}

    GDExtension :: struct {}

    GDExtensionManager :: struct {}

    GDScript :: struct {}

    GLTFAccessor :: struct {}

    GLTFAnimation :: struct {}

    GLTFBufferView :: struct {}

    GLTFCamera :: struct {}

    GLTFDocument :: struct {}

    GLTFDocumentExtension :: struct {}

    GLTFDocumentExtensionConvertImporterMesh :: struct {}

    GLTFLight :: struct {}

    GLTFMesh :: struct {}

    GLTFNode :: struct {}

    GLTFPhysicsBody :: struct {}

    GLTFPhysicsShape :: struct {}

    GLTFSkeleton :: struct {}

    GLTFSkin :: struct {}

    GLTFSpecGloss :: struct {}

    GLTFState :: struct {}

    GLTFTexture :: struct {}

    GLTFTextureSampler :: struct {}

    GPUParticles2D :: struct {}

    GPUParticles3D :: struct {}

    GPUParticlesAttractor3D :: struct {}

    GPUParticlesAttractorBox3D :: struct {}

    GPUParticlesAttractorSphere3D :: struct {}

    GPUParticlesAttractorVectorField3D :: struct {}

    GPUParticlesCollision3D :: struct {}

    GPUParticlesCollisionBox3D :: struct {}

    GPUParticlesCollisionHeightField3D :: struct {}

    GPUParticlesCollisionSDF3D :: struct {}

    GPUParticlesCollisionSphere3D :: struct {}

    Generic6DOFJoint3D :: struct {}

    Geometry2D :: struct {}

    Geometry3D :: struct {}

    GeometryInstance3D :: struct {}

    Gradient :: struct {}

    GradientTexture1D :: struct {}

    GradientTexture2D :: struct {}

    GraphEdit :: struct {}

    GraphElement :: struct {}

    GraphNode :: struct {}

    GridContainer :: struct {}

    GridMap :: struct {}

    GrooveJoint2D :: struct {}

    HBoxContainer :: struct {}

    HFlowContainer :: struct {}

    HMACContext :: struct {}

    HScrollBar :: struct {}

    HSeparator :: struct {}

    HSlider :: struct {}

    HSplitContainer :: struct {}

    HTTPClient :: struct {}

    HTTPRequest :: struct {}

    HashingContext :: struct {}

    HeightMapShape3D :: struct {}

    HingeJoint3D :: struct {}

    IP :: struct {}

    Image :: struct {}

    ImageFormatLoader :: struct {}

    ImageFormatLoaderExtension :: struct {}

    ImageTexture :: struct {}

    ImageTexture3D :: struct {}

    ImageTextureLayered :: struct {}

    ImmediateMesh :: struct {}

    ImporterMesh :: struct {}

    ImporterMeshInstance3D :: struct {}

    Input :: struct {}

    InputEvent :: struct {}

    InputEventAction :: struct {}

    InputEventFromWindow :: struct {}

    InputEventGesture :: struct {}

    InputEventJoypadButton :: struct {}

    InputEventJoypadMotion :: struct {}

    InputEventKey :: struct {}

    InputEventMIDI :: struct {}

    InputEventMagnifyGesture :: struct {}

    InputEventMouse :: struct {}

    InputEventMouseButton :: struct {}

    InputEventMouseMotion :: struct {}

    InputEventPanGesture :: struct {}

    InputEventScreenDrag :: struct {}

    InputEventScreenTouch :: struct {}

    InputEventShortcut :: struct {}

    InputEventWithModifiers :: struct {}

    InputMap :: struct {}

    InstancePlaceholder :: struct {}

    IntervalTweener :: struct {}

    ItemList :: struct {}

    JNISingleton :: struct {}

    JSON :: struct {}

    JSONRPC :: struct {}

    JavaClass :: struct {}

    JavaClassWrapper :: struct {}

    JavaScriptBridge :: struct {}

    JavaScriptObject :: struct {}

    Joint2D :: struct {}

    Joint3D :: struct {}

    KinematicCollision2D :: struct {}

    KinematicCollision3D :: struct {}

    Label :: struct {}

    Label3D :: struct {}

    LabelSettings :: struct {}

    Light2D :: struct {}

    Light3D :: struct {}

    LightOccluder2D :: struct {}

    LightmapGI :: struct {}

    LightmapGIData :: struct {}

    LightmapProbe :: struct {}

    Lightmapper :: struct {}

    LightmapperRD :: struct {}

    Line2D :: struct {}

    LineEdit :: struct {}

    LinkButton :: struct {}

    MainLoop :: struct {}

    MarginContainer :: struct {}

    Marker2D :: struct {}

    Marker3D :: struct {}

    Marshalls :: struct {}

    Material :: struct {}

    MenuBar :: struct {}

    MenuButton :: struct {}

    Mesh :: struct {}

    MeshConvexDecompositionSettings :: struct {}

    MeshDataTool :: struct {}

    MeshInstance2D :: struct {}

    MeshInstance3D :: struct {}

    MeshLibrary :: struct {}

    MeshTexture :: struct {}

    MethodTweener :: struct {}

    MissingNode :: struct {}

    MissingResource :: struct {}

    MobileVRInterface :: struct {}

    MovieWriter :: struct {}

    MultiMesh :: struct {}

    MultiMeshInstance2D :: struct {}

    MultiMeshInstance3D :: struct {}

    MultiplayerAPI :: struct {}

    MultiplayerAPIExtension :: struct {}

    MultiplayerPeer :: struct {}

    MultiplayerPeerExtension :: struct {}

    MultiplayerSpawner :: struct {}

    MultiplayerSynchronizer :: struct {}

    Mutex :: struct {}

    NativeMenu :: struct {}

    NavigationAgent2D :: struct {}

    NavigationAgent3D :: struct {}

    NavigationLink2D :: struct {}

    NavigationLink3D :: struct {}

    NavigationMesh :: struct {}

    NavigationMeshGenerator :: struct {}

    NavigationMeshSourceGeometryData2D :: struct {}

    NavigationMeshSourceGeometryData3D :: struct {}

    NavigationObstacle2D :: struct {}

    NavigationObstacle3D :: struct {}

    NavigationPathQueryParameters2D :: struct {}

    NavigationPathQueryParameters3D :: struct {}

    NavigationPathQueryResult2D :: struct {}

    NavigationPathQueryResult3D :: struct {}

    NavigationPolygon :: struct {}

    NavigationRegion2D :: struct {}

    NavigationRegion3D :: struct {}

    NavigationServer2D :: struct {}

    NavigationServer3D :: struct {}

    NinePatchRect :: struct {}

    Node :: struct {}

    Node2D :: struct {}

    Node3D :: struct {}

    Node3DGizmo :: struct {}

    Noise :: struct {}

    NoiseTexture2D :: struct {}

    NoiseTexture3D :: struct {}

    ORMMaterial3D :: struct {}

    OS :: struct {}

    Object :: struct {}

    Occluder3D :: struct {}

    OccluderInstance3D :: struct {}

    OccluderPolygon2D :: struct {}

    OfflineMultiplayerPeer :: struct {}

    OggPacketSequence :: struct {}

    OggPacketSequencePlayback :: struct {}

    OmniLight3D :: struct {}

    OpenXRAPIExtension :: struct {}

    OpenXRAction :: struct {}

    OpenXRActionMap :: struct {}

    OpenXRActionSet :: struct {}

    OpenXRExtensionWrapperExtension :: struct {}

    OpenXRHand :: struct {}

    OpenXRIPBinding :: struct {}

    OpenXRInteractionProfile :: struct {}

    OpenXRInteractionProfileMetadata :: struct {}

    OpenXRInterface :: struct {}

    OptimizedTranslation :: struct {}

    OptionButton :: struct {}

    PCKPacker :: struct {}

    PackedDataContainer :: struct {}

    PackedDataContainerRef :: struct {}

    PackedScene :: struct {}

    PacketPeer :: struct {}

    PacketPeerDTLS :: struct {}

    PacketPeerExtension :: struct {}

    PacketPeerStream :: struct {}

    PacketPeerUDP :: struct {}

    Panel :: struct {}

    PanelContainer :: struct {}

    PanoramaSkyMaterial :: struct {}

    Parallax2D :: struct {}

    ParallaxBackground :: struct {}

    ParallaxLayer :: struct {}

    ParticleProcessMaterial :: struct {}

    Path2D :: struct {}

    Path3D :: struct {}

    PathFollow2D :: struct {}

    PathFollow3D :: struct {}

    Performance :: struct {}

    PhysicalBone2D :: struct {}

    PhysicalBone3D :: struct {}

    PhysicalSkyMaterial :: struct {}

    PhysicsBody2D :: struct {}

    PhysicsBody3D :: struct {}

    PhysicsDirectBodyState2D :: struct {}

    PhysicsDirectBodyState2DExtension :: struct {}

    PhysicsDirectBodyState3D :: struct {}

    PhysicsDirectBodyState3DExtension :: struct {}

    PhysicsDirectSpaceState2D :: struct {}

    PhysicsDirectSpaceState2DExtension :: struct {}

    PhysicsDirectSpaceState3D :: struct {}

    PhysicsDirectSpaceState3DExtension :: struct {}

    PhysicsMaterial :: struct {}

    PhysicsPointQueryParameters2D :: struct {}

    PhysicsPointQueryParameters3D :: struct {}

    PhysicsRayQueryParameters2D :: struct {}

    PhysicsRayQueryParameters3D :: struct {}

    PhysicsServer2D :: struct {}

    PhysicsServer2DExtension :: struct {}

    PhysicsServer2DManager :: struct {}

    PhysicsServer3D :: struct {}

    PhysicsServer3DExtension :: struct {}

    PhysicsServer3DManager :: struct {}

    PhysicsServer3DRenderingServerHandler :: struct {}

    PhysicsShapeQueryParameters2D :: struct {}

    PhysicsShapeQueryParameters3D :: struct {}

    PhysicsTestMotionParameters2D :: struct {}

    PhysicsTestMotionParameters3D :: struct {}

    PhysicsTestMotionResult2D :: struct {}

    PhysicsTestMotionResult3D :: struct {}

    PinJoint2D :: struct {}

    PinJoint3D :: struct {}

    PlaceholderCubemap :: struct {}

    PlaceholderCubemapArray :: struct {}

    PlaceholderMaterial :: struct {}

    PlaceholderMesh :: struct {}

    PlaceholderTexture2D :: struct {}

    PlaceholderTexture2DArray :: struct {}

    PlaceholderTexture3D :: struct {}

    PlaceholderTextureLayered :: struct {}

    PlaneMesh :: struct {}

    PointLight2D :: struct {}

    PointMesh :: struct {}

    Polygon2D :: struct {}

    PolygonOccluder3D :: struct {}

    PolygonPathFinder :: struct {}

    Popup :: struct {}

    PopupMenu :: struct {}

    PopupPanel :: struct {}

    PortableCompressedTexture2D :: struct {}

    PrimitiveMesh :: struct {}

    PrismMesh :: struct {}

    ProceduralSkyMaterial :: struct {}

    ProgressBar :: struct {}

    ProjectSettings :: struct {}

    PropertyTweener :: struct {}

    QuadMesh :: struct {}

    QuadOccluder3D :: struct {}

    RDAttachmentFormat :: struct {}

    RDFramebufferPass :: struct {}

    RDPipelineColorBlendState :: struct {}

    RDPipelineColorBlendStateAttachment :: struct {}

    RDPipelineDepthStencilState :: struct {}

    RDPipelineMultisampleState :: struct {}

    RDPipelineRasterizationState :: struct {}

    RDPipelineSpecializationConstant :: struct {}

    RDSamplerState :: struct {}

    RDShaderFile :: struct {}

    RDShaderSPIRV :: struct {}

    RDShaderSource :: struct {}

    RDTextureFormat :: struct {}

    RDTextureView :: struct {}

    RDUniform :: struct {}

    RDVertexAttribute :: struct {}

    RandomNumberGenerator :: struct {}

    Range :: struct {}

    RayCast2D :: struct {}

    RayCast3D :: struct {}

    RectangleShape2D :: struct {}

    RefCounted :: struct {}

    ReferenceRect :: struct {}

    ReflectionProbe :: struct {}

    RegEx :: struct {}

    RegExMatch :: struct {}

    RemoteTransform2D :: struct {}

    RemoteTransform3D :: struct {}

    RenderData :: struct {}

    RenderDataExtension :: struct {}

    RenderDataRD :: struct {}

    RenderSceneBuffers :: struct {}

    RenderSceneBuffersConfiguration :: struct {}

    RenderSceneBuffersExtension :: struct {}

    RenderSceneBuffersRD :: struct {}

    RenderSceneData :: struct {}

    RenderSceneDataExtension :: struct {}

    RenderSceneDataRD :: struct {}

    RenderingDevice :: struct {}

    RenderingServer :: struct {}

    Resource :: struct {}

    ResourceFormatLoader :: struct {}

    ResourceFormatSaver :: struct {}

    ResourceImporter :: struct {}

    ResourceImporterBMFont :: struct {}

    ResourceImporterBitMap :: struct {}

    ResourceImporterCSVTranslation :: struct {}

    ResourceImporterDynamicFont :: struct {}

    ResourceImporterImage :: struct {}

    ResourceImporterImageFont :: struct {}

    ResourceImporterLayeredTexture :: struct {}

    ResourceImporterMP3 :: struct {}

    ResourceImporterOBJ :: struct {}

    ResourceImporterOggVorbis :: struct {}

    ResourceImporterScene :: struct {}

    ResourceImporterShaderFile :: struct {}

    ResourceImporterTexture :: struct {}

    ResourceImporterTextureAtlas :: struct {}

    ResourceImporterWAV :: struct {}

    ResourceLoader :: struct {}

    ResourcePreloader :: struct {}

    ResourceSaver :: struct {}

    ResourceUID :: struct {}

    RibbonTrailMesh :: struct {}

    RichTextEffect :: struct {}

    RichTextLabel :: struct {}

    RigidBody2D :: struct {}

    RigidBody3D :: struct {}

    RootMotionView :: struct {}

    SceneMultiplayer :: struct {}

    SceneReplicationConfig :: struct {}

    SceneState :: struct {}

    SceneTree :: struct {}

    SceneTreeTimer :: struct {}

    Script :: struct {}

    ScriptCreateDialog :: struct {}

    ScriptEditor :: struct {}

    ScriptEditorBase :: struct {}

    ScriptExtension :: struct {}

    ScriptLanguage :: struct {}

    ScriptLanguageExtension :: struct {}

    ScrollBar :: struct {}

    ScrollContainer :: struct {}

    SegmentShape2D :: struct {}

    Semaphore :: struct {}

    SeparationRayShape2D :: struct {}

    SeparationRayShape3D :: struct {}

    Separator :: struct {}

    Shader :: struct {}

    ShaderGlobalsOverride :: struct {}

    ShaderInclude :: struct {}

    ShaderMaterial :: struct {}

    Shape2D :: struct {}

    Shape3D :: struct {}

    ShapeCast2D :: struct {}

    ShapeCast3D :: struct {}

    Shortcut :: struct {}

    Skeleton2D :: struct {}

    Skeleton3D :: struct {}

    SkeletonIK3D :: struct {}

    SkeletonModification2D :: struct {}

    SkeletonModification2DCCDIK :: struct {}

    SkeletonModification2DFABRIK :: struct {}

    SkeletonModification2DJiggle :: struct {}

    SkeletonModification2DLookAt :: struct {}

    SkeletonModification2DPhysicalBones :: struct {}

    SkeletonModification2DStackHolder :: struct {}

    SkeletonModification2DTwoBoneIK :: struct {}

    SkeletonModificationStack2D :: struct {}

    SkeletonProfile :: struct {}

    SkeletonProfileHumanoid :: struct {}

    Skin :: struct {}

    SkinReference :: struct {}

    Sky :: struct {}

    Slider :: struct {}

    SliderJoint3D :: struct {}

    SoftBody3D :: struct {}

    SphereMesh :: struct {}

    SphereOccluder3D :: struct {}

    SphereShape3D :: struct {}

    SpinBox :: struct {}

    SplitContainer :: struct {}

    SpotLight3D :: struct {}

    SpringArm3D :: struct {}

    Sprite2D :: struct {}

    Sprite3D :: struct {}

    SpriteBase3D :: struct {}

    SpriteFrames :: struct {}

    StandardMaterial3D :: struct {}

    StaticBody2D :: struct {}

    StaticBody3D :: struct {}

    StatusIndicator :: struct {}

    StreamPeer :: struct {}

    StreamPeerBuffer :: struct {}

    StreamPeerExtension :: struct {}

    StreamPeerGZIP :: struct {}

    StreamPeerTCP :: struct {}

    StreamPeerTLS :: struct {}

    StyleBox :: struct {}

    StyleBoxEmpty :: struct {}

    StyleBoxFlat :: struct {}

    StyleBoxLine :: struct {}

    StyleBoxTexture :: struct {}

    SubViewport :: struct {}

    SubViewportContainer :: struct {}

    SurfaceTool :: struct {}

    SyntaxHighlighter :: struct {}

    SystemFont :: struct {}

    TCPServer :: struct {}

    TLSOptions :: struct {}

    TabBar :: struct {}

    TabContainer :: struct {}

    TextEdit :: struct {}

    TextLine :: struct {}

    TextMesh :: struct {}

    TextParagraph :: struct {}

    TextServer :: struct {}

    TextServerAdvanced :: struct {}

    TextServerDummy :: struct {}

    TextServerExtension :: struct {}

    TextServerManager :: struct {}

    Texture :: struct {}

    Texture2D :: struct {}

    Texture2DArray :: struct {}

    Texture2DArrayRD :: struct {}

    Texture2DRD :: struct {}

    Texture3D :: struct {}

    Texture3DRD :: struct {}

    TextureButton :: struct {}

    TextureCubemapArrayRD :: struct {}

    TextureCubemapRD :: struct {}

    TextureLayered :: struct {}

    TextureLayeredRD :: struct {}

    TextureProgressBar :: struct {}

    TextureRect :: struct {}

    Theme :: struct {}

    ThemeDB :: struct {}

    Thread :: struct {}

    TileData :: struct {}

    TileMap :: struct {}

    TileMapLayerGroup :: struct {}

    TileMapPattern :: struct {}

    TileSet :: struct {}

    TileSetAtlasSource :: struct {}

    TileSetScenesCollectionSource :: struct {}

    TileSetSource :: struct {}

    Time :: struct {}

    Timer :: struct {}

    TorusMesh :: struct {}

    TouchScreenButton :: struct {}

    Translation :: struct {}

    TranslationServer :: struct {}

    Tree :: struct {}

    TreeItem :: struct {}

    TriangleMesh :: struct {}

    TubeTrailMesh :: struct {}

    Tween :: struct {}

    Tweener :: struct {}

    UDPServer :: struct {}

    UPNP :: struct {}

    UPNPDevice :: struct {}

    UndoRedo :: struct {}

    UniformSetCacheRD :: struct {}

    VBoxContainer :: struct {}

    VFlowContainer :: struct {}

    VScrollBar :: struct {}

    VSeparator :: struct {}

    VSlider :: struct {}

    VSplitContainer :: struct {}

    VehicleBody3D :: struct {}

    VehicleWheel3D :: struct {}

    VideoStream :: struct {}

    VideoStreamPlayback :: struct {}

    VideoStreamPlayer :: struct {}

    VideoStreamTheora :: struct {}

    Viewport :: struct {}

    ViewportTexture :: struct {}

    VisibleOnScreenEnabler2D :: struct {}

    VisibleOnScreenEnabler3D :: struct {}

    VisibleOnScreenNotifier2D :: struct {}

    VisibleOnScreenNotifier3D :: struct {}

    VisualInstance3D :: struct {}

    VisualShader :: struct {}

    VisualShaderNode :: struct {}

    VisualShaderNodeBillboard :: struct {}

    VisualShaderNodeBooleanConstant :: struct {}

    VisualShaderNodeBooleanParameter :: struct {}

    VisualShaderNodeClamp :: struct {}

    VisualShaderNodeColorConstant :: struct {}

    VisualShaderNodeColorFunc :: struct {}

    VisualShaderNodeColorOp :: struct {}

    VisualShaderNodeColorParameter :: struct {}

    VisualShaderNodeComment :: struct {}

    VisualShaderNodeCompare :: struct {}

    VisualShaderNodeConstant :: struct {}

    VisualShaderNodeCubemap :: struct {}

    VisualShaderNodeCubemapParameter :: struct {}

    VisualShaderNodeCurveTexture :: struct {}

    VisualShaderNodeCurveXYZTexture :: struct {}

    VisualShaderNodeCustom :: struct {}

    VisualShaderNodeDerivativeFunc :: struct {}

    VisualShaderNodeDeterminant :: struct {}

    VisualShaderNodeDistanceFade :: struct {}

    VisualShaderNodeDotProduct :: struct {}

    VisualShaderNodeExpression :: struct {}

    VisualShaderNodeFaceForward :: struct {}

    VisualShaderNodeFloatConstant :: struct {}

    VisualShaderNodeFloatFunc :: struct {}

    VisualShaderNodeFloatOp :: struct {}

    VisualShaderNodeFloatParameter :: struct {}

    VisualShaderNodeFresnel :: struct {}

    VisualShaderNodeGlobalExpression :: struct {}

    VisualShaderNodeGroupBase :: struct {}

    VisualShaderNodeIf :: struct {}

    VisualShaderNodeInput :: struct {}

    VisualShaderNodeIntConstant :: struct {}

    VisualShaderNodeIntFunc :: struct {}

    VisualShaderNodeIntOp :: struct {}

    VisualShaderNodeIntParameter :: struct {}

    VisualShaderNodeIs :: struct {}

    VisualShaderNodeLinearSceneDepth :: struct {}

    VisualShaderNodeMix :: struct {}

    VisualShaderNodeMultiplyAdd :: struct {}

    VisualShaderNodeOuterProduct :: struct {}

    VisualShaderNodeOutput :: struct {}

    VisualShaderNodeParameter :: struct {}

    VisualShaderNodeParameterRef :: struct {}

    VisualShaderNodeParticleAccelerator :: struct {}

    VisualShaderNodeParticleBoxEmitter :: struct {}

    VisualShaderNodeParticleConeVelocity :: struct {}

    VisualShaderNodeParticleEmit :: struct {}

    VisualShaderNodeParticleEmitter :: struct {}

    VisualShaderNodeParticleMeshEmitter :: struct {}

    VisualShaderNodeParticleMultiplyByAxisAngle :: struct {}

    VisualShaderNodeParticleOutput :: struct {}

    VisualShaderNodeParticleRandomness :: struct {}

    VisualShaderNodeParticleRingEmitter :: struct {}

    VisualShaderNodeParticleSphereEmitter :: struct {}

    VisualShaderNodeProximityFade :: struct {}

    VisualShaderNodeRandomRange :: struct {}

    VisualShaderNodeRemap :: struct {}

    VisualShaderNodeResizableBase :: struct {}

    VisualShaderNodeRotationByAxis :: struct {}

    VisualShaderNodeSDFRaymarch :: struct {}

    VisualShaderNodeSDFToScreenUV :: struct {}

    VisualShaderNodeSample3D :: struct {}

    VisualShaderNodeScreenNormalWorldSpace :: struct {}

    VisualShaderNodeScreenUVToSDF :: struct {}

    VisualShaderNodeSmoothStep :: struct {}

    VisualShaderNodeStep :: struct {}

    VisualShaderNodeSwitch :: struct {}

    VisualShaderNodeTexture :: struct {}

    VisualShaderNodeTexture2DArray :: struct {}

    VisualShaderNodeTexture2DArrayParameter :: struct {}

    VisualShaderNodeTexture2DParameter :: struct {}

    VisualShaderNodeTexture3D :: struct {}

    VisualShaderNodeTexture3DParameter :: struct {}

    VisualShaderNodeTextureParameter :: struct {}

    VisualShaderNodeTextureParameterTriplanar :: struct {}

    VisualShaderNodeTextureSDF :: struct {}

    VisualShaderNodeTextureSDFNormal :: struct {}

    VisualShaderNodeTransformCompose :: struct {}

    VisualShaderNodeTransformConstant :: struct {}

    VisualShaderNodeTransformDecompose :: struct {}

    VisualShaderNodeTransformFunc :: struct {}

    VisualShaderNodeTransformOp :: struct {}

    VisualShaderNodeTransformParameter :: struct {}

    VisualShaderNodeTransformVecMult :: struct {}

    VisualShaderNodeUIntConstant :: struct {}

    VisualShaderNodeUIntFunc :: struct {}

    VisualShaderNodeUIntOp :: struct {}

    VisualShaderNodeUIntParameter :: struct {}

    VisualShaderNodeUVFunc :: struct {}

    VisualShaderNodeUVPolarCoord :: struct {}

    VisualShaderNodeVarying :: struct {}

    VisualShaderNodeVaryingGetter :: struct {}

    VisualShaderNodeVaryingSetter :: struct {}

    VisualShaderNodeVec2Constant :: struct {}

    VisualShaderNodeVec2Parameter :: struct {}

    VisualShaderNodeVec3Constant :: struct {}

    VisualShaderNodeVec3Parameter :: struct {}

    VisualShaderNodeVec4Constant :: struct {}

    VisualShaderNodeVec4Parameter :: struct {}

    VisualShaderNodeVectorBase :: struct {}

    VisualShaderNodeVectorCompose :: struct {}

    VisualShaderNodeVectorDecompose :: struct {}

    VisualShaderNodeVectorDistance :: struct {}

    VisualShaderNodeVectorFunc :: struct {}

    VisualShaderNodeVectorLen :: struct {}

    VisualShaderNodeVectorOp :: struct {}

    VisualShaderNodeVectorRefract :: struct {}

    VisualShaderNodeWorldPositionFromDepth :: struct {}

    VoxelGI :: struct {}

    VoxelGIData :: struct {}

    WeakRef :: struct {}

    WebRTCDataChannel :: struct {}

    WebRTCDataChannelExtension :: struct {}

    WebRTCMultiplayerPeer :: struct {}

    WebRTCPeerConnection :: struct {}

    WebRTCPeerConnectionExtension :: struct {}

    WebSocketMultiplayerPeer :: struct {}

    WebSocketPeer :: struct {}

    WebXRInterface :: struct {}

    Window :: struct {}

    WorkerThreadPool :: struct {}

    World2D :: struct {}

    World3D :: struct {}

    WorldBoundaryShape2D :: struct {}

    WorldBoundaryShape3D :: struct {}

    WorldEnvironment :: struct {}

    X509Certificate :: struct {}

    XMLParser :: struct {}

    XRAnchor3D :: struct {}

    XRBodyModifier3D :: struct {}

    XRBodyTracker :: struct {}

    XRCamera3D :: struct {}

    XRController3D :: struct {}

    XRFaceModifier3D :: struct {}

    XRFaceTracker :: struct {}

    XRHandModifier3D :: struct {}

    XRHandTracker :: struct {}

    XRInterface :: struct {}

    XRInterfaceExtension :: struct {}

    XRNode3D :: struct {}

    XROrigin3D :: struct {}

    XRPose :: struct {}

    XRPositionalTracker :: struct {}

    XRServer :: struct {}

    ZIPPacker :: struct {}

    ZIPReader :: struct {}
}

#scope_file

Math :: #import "Math";
