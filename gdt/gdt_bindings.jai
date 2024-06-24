//  --------------------
// | JODOT GDT BINDINGS |
//  --------------------

gdt :: struct {

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

    AESContext :: struct {    // 0

        #as using base: RefCounted;

        Mode :: enum s32 {
            MODE_ECB_ENCRYPT :: 0;
            MODE_ECB_DECRYPT :: 1;
            MODE_CBC_ENCRYPT :: 2;
            MODE_CBC_DECRYPT :: 3;
            MODE_MAX :: 4;
        }
    }

    AStar2D :: struct {    // 1

        #as using base: RefCounted;
    }

    AStar3D :: struct {    // 2

        #as using base: RefCounted;
    }

    AStarGrid2D :: struct {    // 3

        #as using base: RefCounted;

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

        region: Rect2i;
        size: Vector2i;
        offset: Vector2;
        cell_size: Vector2;
        cell_shape: int;
        jumping_enabled: bool;
        default_compute_heuristic: int;
        default_estimate_heuristic: int;
        diagonal_mode: int;
    }

    AcceptDialog :: struct {    // 4

        #as using base: Window;

        ok_button_text: String;
        dialog_text: String;
        dialog_hide_on_ok: bool;
        dialog_close_on_escape: bool;
        dialog_autowrap: bool;
    }

    AnimatableBody2D :: struct {    // 5

        #as using base: StaticBody2D;

        sync_to_physics: bool;
    }

    AnimatableBody3D :: struct {    // 6

        #as using base: StaticBody3D;

        sync_to_physics: bool;
    }

    AnimatedSprite2D :: struct {    // 7

        #as using base: Node2D;

        sprite_frames: SpriteFrames;
        animation: StringName;
        autoplay: StringName;
        frame: int;
        frame_progress: float;
        speed_scale: float;
        centered: bool;
        offset: Vector2;
        flip_h: bool;
        flip_v: bool;
    }

    AnimatedSprite3D :: struct {    // 8

        #as using base: SpriteBase3D;

        sprite_frames: SpriteFrames;
        animation: StringName;
        autoplay: StringName;
        frame: int;
        frame_progress: float;
        speed_scale: float;
    }

    AnimatedTexture :: struct {    // 9

        #as using base: Texture2D;

        MAX_FRAMES :: 256;
        frames: int;
        current_frame: int;
        pause: bool;
        one_shot: bool;
        speed_scale: float;
    }

    Animation :: struct {    // 10

        #as using base: Resource;

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

        length: float;
        loop_mode: int;
        step: float;
    }

    AnimationLibrary :: struct {    // 11

        #as using base: Resource;
    }

    AnimationMixer :: struct {    // 12

        #as using base: Node;

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

        active: bool;
        deterministic: bool;
        reset_on_save: bool;
        root_node: NodePath;
        root_motion_track: NodePath;
        audio_max_polyphony: int;
        callback_mode_process: int;
        callback_mode_method: int;
        callback_mode_discrete: int;
    }

    AnimationNode :: struct {    // 13

        #as using base: Resource;

        FilterAction :: enum s32 {
            FILTER_IGNORE :: 0;
            FILTER_PASS :: 1;
            FILTER_STOP :: 2;
            FILTER_BLEND :: 3;
        }

        filter_enabled: bool;
        filters: Array;
    }

    AnimationNodeAdd2 :: struct {    // 14

        #as using base: AnimationNodeSync;
    }

    AnimationNodeAdd3 :: struct {    // 15

        #as using base: AnimationNodeSync;
    }

    AnimationNodeAnimation :: struct {    // 16

        #as using base: AnimationRootNode;

        PlayMode :: enum s32 {
            PLAY_MODE_FORWARD :: 0;
            PLAY_MODE_BACKWARD :: 1;
        }

        animation: StringName;
        play_mode: int;
    }

    AnimationNodeBlend2 :: struct {    // 17

        #as using base: AnimationNodeSync;
    }

    AnimationNodeBlend3 :: struct {    // 18

        #as using base: AnimationNodeSync;
    }

    AnimationNodeBlendSpace1D :: struct {    // 19

        #as using base: AnimationRootNode;

        BlendMode :: enum s32 {
            BLEND_MODE_INTERPOLATED :: 0;
            BLEND_MODE_DISCRETE :: 1;
            BLEND_MODE_DISCRETE_CARRY :: 2;
        }

        min_space: float;
        max_space: float;
        snap: float;
        value_label: String;
        blend_mode: int;
        sync: bool;
    }

    AnimationNodeBlendSpace2D :: struct {    // 20

        #as using base: AnimationRootNode;

        BlendMode :: enum s32 {
            BLEND_MODE_INTERPOLATED :: 0;
            BLEND_MODE_DISCRETE :: 1;
            BLEND_MODE_DISCRETE_CARRY :: 2;
        }

        auto_triangles: bool;
        triangles: PackedInt32Array;
        min_space: Vector2;
        max_space: Vector2;
        snap: Vector2;
        x_label: String;
        y_label: String;
        blend_mode: int;
        sync: bool;
    }

    AnimationNodeBlendTree :: struct {    // 21

        #as using base: AnimationRootNode;

        CONNECTION_OK :: 0;
        CONNECTION_ERROR_NO_INPUT :: 1;
        CONNECTION_ERROR_NO_INPUT_INDEX :: 2;
        CONNECTION_ERROR_NO_OUTPUT :: 3;
        CONNECTION_ERROR_SAME_NODE :: 4;
        CONNECTION_ERROR_CONNECTION_EXISTS :: 5;
        graph_offset: Vector2;
    }

    AnimationNodeOneShot :: struct {    // 22

        #as using base: AnimationNodeSync;

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

        mix_mode: int;
        fadein_time: float;
        fadein_curve: Curve;
        fadeout_time: float;
        fadeout_curve: Curve;
        autorestart: bool;
        autorestart_delay: float;
        autorestart_random_delay: float;
    }

    AnimationNodeOutput :: struct {    // 23

        #as using base: AnimationNode;
    }

    AnimationNodeStateMachine :: struct {    // 24

        #as using base: AnimationRootNode;

        StateMachineType :: enum s32 {
            STATE_MACHINE_TYPE_ROOT :: 0;
            STATE_MACHINE_TYPE_NESTED :: 1;
            STATE_MACHINE_TYPE_GROUPED :: 2;
        }

        state_machine_type: int;
        allow_transition_to_self: bool;
        reset_ends: bool;
    }

    AnimationNodeStateMachinePlayback :: struct {    // 25

        #as using base: Resource;
    }

    AnimationNodeStateMachineTransition :: struct {    // 26

        #as using base: Resource;

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

        xfade_time: float;
        xfade_curve: Curve;
        reset: bool;
        priority: int;
        switch_mode: int;
        advance_mode: int;
        advance_condition: StringName;
        advance_expression: String;
    }

    AnimationNodeSub2 :: struct {    // 27

        #as using base: AnimationNodeSync;
    }

    AnimationNodeSync :: struct {    // 28

        #as using base: AnimationNode;

        sync: bool;
    }

    AnimationNodeTimeScale :: struct {    // 29

        #as using base: AnimationNode;
    }

    AnimationNodeTimeSeek :: struct {    // 30

        #as using base: AnimationNode;
    }

    AnimationNodeTransition :: struct {    // 31

        #as using base: AnimationNodeSync;

        xfade_time: float;
        xfade_curve: Curve;
        allow_transition_to_self: bool;
        input_count: int;
    }

    AnimationPlayer :: struct {    // 32

        #as using base: AnimationMixer;

        AnimationProcessCallback :: enum s32 {
            ANIMATION_PROCESS_PHYSICS :: 0;
            ANIMATION_PROCESS_IDLE :: 1;
            ANIMATION_PROCESS_MANUAL :: 2;
        }

        AnimationMethodCallMode :: enum s32 {
            ANIMATION_METHOD_CALL_DEFERRED :: 0;
            ANIMATION_METHOD_CALL_IMMEDIATE :: 1;
        }

        current_animation: StringName;
        assigned_animation: StringName;
        autoplay: StringName;
        current_animation_length: float;
        current_animation_position: float;
        playback_default_blend_time: float;
        speed_scale: float;
        movie_quit_on_finish: bool;
    }

    AnimationRootNode :: struct {    // 33

        #as using base: AnimationNode;
    }

    AnimationTree :: struct {    // 34

        #as using base: AnimationMixer;

        AnimationProcessCallback :: enum s32 {
            ANIMATION_PROCESS_PHYSICS :: 0;
            ANIMATION_PROCESS_IDLE :: 1;
            ANIMATION_PROCESS_MANUAL :: 2;
        }

        tree_root: AnimationRootNode;
        advance_expression_base_node: NodePath;
        anim_player: NodePath;
    }

    Area2D :: struct {    // 35

        #as using base: CollisionObject2D;

        SpaceOverride :: enum s32 {
            SPACE_OVERRIDE_DISABLED :: 0;
            SPACE_OVERRIDE_COMBINE :: 1;
            SPACE_OVERRIDE_COMBINE_REPLACE :: 2;
            SPACE_OVERRIDE_REPLACE :: 3;
            SPACE_OVERRIDE_REPLACE_COMBINE :: 4;
        }

        monitoring: bool;
        monitorable: bool;
        priority: int;
        gravity_space_override: int;
        gravity_point: bool;
        gravity_point_unit_distance: float;
        gravity_point_center: Vector2;
        gravity_direction: Vector2;
        gravity: float;
        linear_damp_space_override: int;
        linear_damp: float;
        angular_damp_space_override: int;
        angular_damp: float;
        audio_bus_override: bool;
        audio_bus_name: StringName;
    }

    Area3D :: struct {    // 36

        #as using base: CollisionObject3D;

        SpaceOverride :: enum s32 {
            SPACE_OVERRIDE_DISABLED :: 0;
            SPACE_OVERRIDE_COMBINE :: 1;
            SPACE_OVERRIDE_COMBINE_REPLACE :: 2;
            SPACE_OVERRIDE_REPLACE :: 3;
            SPACE_OVERRIDE_REPLACE_COMBINE :: 4;
        }

        monitoring: bool;
        monitorable: bool;
        priority: int;
        gravity_space_override: int;
        gravity_point: bool;
        gravity_point_unit_distance: float;
        gravity_point_center: Vector3;
        gravity_direction: Vector3;
        gravity: float;
        linear_damp_space_override: int;
        linear_damp: float;
        angular_damp_space_override: int;
        angular_damp: float;
        wind_force_magnitude: float;
        wind_attenuation_factor: float;
        wind_source_path: NodePath;
        audio_bus_override: bool;
        audio_bus_name: StringName;
        reverb_bus_enabled: bool;
        reverb_bus_name: StringName;
        reverb_bus_amount: float;
        reverb_bus_uniformity: float;
    }

    ArrayMesh :: struct {    // 37

        #as using base: Mesh;

        blend_shape_mode: int;
        custom_aabb: AABB;
        shadow_mesh: ArrayMesh;
    }

    ArrayOccluder3D :: struct {    // 38

        #as using base: Occluder3D;

        vertices: PackedVector3Array;
        indices: PackedInt32Array;
    }

    AspectRatioContainer :: struct {    // 39

        #as using base: Container;

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

        ratio: float;
        stretch_mode: int;
        alignment_horizontal: int;
        alignment_vertical: int;
    }

    AtlasTexture :: struct {    // 40

        #as using base: Texture2D;

        atlas: Texture2D;
        region: Rect2;
        margin: Rect2;
        filter_clip: bool;
    }

    AudioBusLayout :: struct {    // 41

        #as using base: Resource;
    }

    AudioEffect :: struct {    // 42

        #as using base: Resource;
    }

    AudioEffectAmplify :: struct {    // 43

        #as using base: AudioEffect;

        volume_db: float;
    }

    AudioEffectBandLimitFilter :: struct {    // 44

        #as using base: AudioEffectFilter;
    }

    AudioEffectBandPassFilter :: struct {    // 45

        #as using base: AudioEffectFilter;
    }

    AudioEffectCapture :: struct {    // 46

        #as using base: AudioEffect;

        buffer_length: float;
    }

    AudioEffectChorus :: struct {    // 47

        #as using base: AudioEffect;

        voice_count: int;
        dry: float;
        wet: float;
    }

    AudioEffectCompressor :: struct {    // 48

        #as using base: AudioEffect;

        threshold: float;
        ratio: float;
        gain: float;
        attack_us: float;
        release_ms: float;
        mix: float;
        sidechain: StringName;
    }

    AudioEffectDelay :: struct {    // 49

        #as using base: AudioEffect;

        dry: float;
        tap1_active: bool;
        tap1_delay_ms: float;
        tap1_level_db: float;
        tap1_pan: float;
        tap2_active: bool;
        tap2_delay_ms: float;
        tap2_level_db: float;
        tap2_pan: float;
        feedback_active: bool;
        feedback_delay_ms: float;
        feedback_level_db: float;
        feedback_lowpass: float;
    }

    AudioEffectDistortion :: struct {    // 50

        #as using base: AudioEffect;

        Mode :: enum s32 {
            MODE_CLIP :: 0;
            MODE_ATAN :: 1;
            MODE_LOFI :: 2;
            MODE_OVERDRIVE :: 3;
            MODE_WAVESHAPE :: 4;
        }

        mode: int;
        pre_gain: float;
        keep_hf_hz: float;
        drive: float;
        post_gain: float;
    }

    AudioEffectEQ :: struct {    // 51

        #as using base: AudioEffect;
    }

    AudioEffectEQ10 :: struct {    // 52

        #as using base: AudioEffectEQ;
    }

    AudioEffectEQ21 :: struct {    // 53

        #as using base: AudioEffectEQ;
    }

    AudioEffectEQ6 :: struct {    // 54

        #as using base: AudioEffectEQ;
    }

    AudioEffectFilter :: struct {    // 55

        #as using base: AudioEffect;

        FilterDB :: enum s32 {
            FILTER_6DB :: 0;
            FILTER_12DB :: 1;
            FILTER_18DB :: 2;
            FILTER_24DB :: 3;
        }

        cutoff_hz: float;
        resonance: float;
        gain: float;
        db: int;
    }

    AudioEffectHighPassFilter :: struct {    // 56

        #as using base: AudioEffectFilter;
    }

    AudioEffectHighShelfFilter :: struct {    // 57

        #as using base: AudioEffectFilter;
    }

    AudioEffectInstance :: struct {    // 58

        #as using base: RefCounted;
    }

    AudioEffectLimiter :: struct {    // 59

        #as using base: AudioEffect;

        ceiling_db: float;
        threshold_db: float;
        soft_clip_db: float;
        soft_clip_ratio: float;
    }

    AudioEffectLowPassFilter :: struct {    // 60

        #as using base: AudioEffectFilter;
    }

    AudioEffectLowShelfFilter :: struct {    // 61

        #as using base: AudioEffectFilter;
    }

    AudioEffectNotchFilter :: struct {    // 62

        #as using base: AudioEffectFilter;
    }

    AudioEffectPanner :: struct {    // 63

        #as using base: AudioEffect;

        pan: float;
    }

    AudioEffectPhaser :: struct {    // 64

        #as using base: AudioEffect;

        range_min_hz: float;
        range_max_hz: float;
        rate_hz: float;
        feedback: float;
        depth: float;
    }

    AudioEffectPitchShift :: struct {    // 65

        #as using base: AudioEffect;

        FFTSize :: enum s32 {
            FFT_SIZE_256 :: 0;
            FFT_SIZE_512 :: 1;
            FFT_SIZE_1024 :: 2;
            FFT_SIZE_2048 :: 3;
            FFT_SIZE_4096 :: 4;
            FFT_SIZE_MAX :: 5;
        }

        pitch_scale: float;
        oversampling: float;
        fft_size: int;
    }

    AudioEffectRecord :: struct {    // 66

        #as using base: AudioEffect;

        format: int;
    }

    AudioEffectReverb :: struct {    // 67

        #as using base: AudioEffect;

        predelay_msec: float;
        predelay_feedback: float;
        room_size: float;
        damping: float;
        spread: float;
        hipass: float;
        dry: float;
        wet: float;
    }

    AudioEffectSpectrumAnalyzer :: struct {    // 68

        #as using base: AudioEffect;

        FFTSize :: enum s32 {
            FFT_SIZE_256 :: 0;
            FFT_SIZE_512 :: 1;
            FFT_SIZE_1024 :: 2;
            FFT_SIZE_2048 :: 3;
            FFT_SIZE_4096 :: 4;
            FFT_SIZE_MAX :: 5;
        }

        buffer_length: float;
        tap_back_pos: float;
        fft_size: int;
    }

    AudioEffectSpectrumAnalyzerInstance :: struct {    // 69

        #as using base: AudioEffectInstance;

        MagnitudeMode :: enum s32 {
            MAGNITUDE_AVERAGE :: 0;
            MAGNITUDE_MAX :: 1;
        }
    }

    AudioEffectStereoEnhance :: struct {    // 70

        #as using base: AudioEffect;

        pan_pullout: float;
        time_pullout_ms: float;
        surround: float;
    }

    AudioListener2D :: struct {    // 71

        #as using base: Node2D;
    }

    AudioListener3D :: struct {    // 72

        #as using base: Node3D;
    }

    AudioServer :: struct {    // 73

        #as using base: Object;

        SpeakerMode :: enum s32 {
            SPEAKER_MODE_STEREO :: 0;
            SPEAKER_SURROUND_31 :: 1;
            SPEAKER_SURROUND_51 :: 2;
            SPEAKER_SURROUND_71 :: 3;
        }

        bus_count: int;
        output_device: String;
        input_device: String;
        playback_speed_scale: float;
    }

    AudioStream :: struct {    // 74

        #as using base: Resource;
    }

    AudioStreamGenerator :: struct {    // 75

        #as using base: AudioStream;

        mix_rate: float;
        buffer_length: float;
    }

    AudioStreamGeneratorPlayback :: struct {    // 76

        #as using base: AudioStreamPlaybackResampled;
    }

    AudioStreamInteractive :: struct {    // 77

        #as using base: AudioStream;

        CLIP_ANY :: -1;


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

        initial_clip: int;
        clip_count: int;
    }

    AudioStreamMP3 :: struct {    // 78

        #as using base: AudioStream;

        data: PackedByteArray;
        bpm: float;
        beat_count: int;
        bar_beats: int;
        loop: bool;
        loop_offset: float;
    }

    AudioStreamMicrophone :: struct {    // 79

        #as using base: AudioStream;
    }

    AudioStreamOggVorbis :: struct {    // 80

        #as using base: AudioStream;

        packet_sequence: Object;
        bpm: float;
        beat_count: int;
        bar_beats: int;
        loop: bool;
        loop_offset: float;
    }

    AudioStreamPlayback :: struct {    // 81

        #as using base: RefCounted;
    }

    AudioStreamPlaybackInteractive :: struct {    // 82

        #as using base: AudioStreamPlayback;
    }

    AudioStreamPlaybackOggVorbis :: struct {    // 83

        #as using base: AudioStreamPlaybackResampled;
    }

    AudioStreamPlaybackPlaylist :: struct {    // 84

        #as using base: AudioStreamPlayback;
    }

    AudioStreamPlaybackPolyphonic :: struct {    // 85

        #as using base: AudioStreamPlayback;

        INVALID_ID :: -1;

    }

    AudioStreamPlaybackResampled :: struct {    // 86

        #as using base: AudioStreamPlayback;
    }

    AudioStreamPlaybackSynchronized :: struct {    // 87

        #as using base: AudioStreamPlayback;
    }

    AudioStreamPlayer :: struct {    // 88

        #as using base: Node;

        MixTarget :: enum s32 {
            MIX_TARGET_STEREO :: 0;
            MIX_TARGET_SURROUND :: 1;
            MIX_TARGET_CENTER :: 2;
        }

        stream: AudioStream;
        volume_db: float;
        pitch_scale: float;
        playing: bool;
        autoplay: bool;
        stream_paused: bool;
        mix_target: int;
        max_polyphony: int;
        bus: StringName;
    }

    AudioStreamPlayer2D :: struct {    // 89

        #as using base: Node2D;

        stream: AudioStream;
        volume_db: float;
        pitch_scale: float;
        playing: bool;
        autoplay: bool;
        stream_paused: bool;
        max_distance: float;
        attenuation: float;
        max_polyphony: int;
        panning_strength: float;
        bus: StringName;
        area_mask: int;
    }

    AudioStreamPlayer3D :: struct {    // 90

        #as using base: Node3D;

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

        stream: AudioStream;
        attenuation_model: int;
        volume_db: float;
        unit_size: float;
        max_db: float;
        pitch_scale: float;
        playing: bool;
        autoplay: bool;
        stream_paused: bool;
        max_distance: float;
        max_polyphony: int;
        panning_strength: float;
        bus: StringName;
        area_mask: int;
        emission_angle_enabled: bool;
        emission_angle_degrees: float;
        emission_angle_filter_attenuation_db: float;
        attenuation_filter_cutoff_hz: float;
        attenuation_filter_db: float;
        doppler_tracking: int;
    }

    AudioStreamPlaylist :: struct {    // 91

        #as using base: AudioStream;

        MAX_STREAMS :: 64;
        shuffle: bool;
        loop: bool;
        fade_time: float;
        stream_count: int;
        stream_0: AudioStream;
        stream_1: AudioStream;
        stream_2: AudioStream;
        stream_3: AudioStream;
        stream_4: AudioStream;
        stream_5: AudioStream;
        stream_6: AudioStream;
        stream_7: AudioStream;
        stream_8: AudioStream;
        stream_9: AudioStream;
        stream_10: AudioStream;
        stream_11: AudioStream;
        stream_12: AudioStream;
        stream_13: AudioStream;
        stream_14: AudioStream;
        stream_15: AudioStream;
        stream_16: AudioStream;
        stream_17: AudioStream;
        stream_18: AudioStream;
        stream_19: AudioStream;
        stream_20: AudioStream;
        stream_21: AudioStream;
        stream_22: AudioStream;
        stream_23: AudioStream;
        stream_24: AudioStream;
        stream_25: AudioStream;
        stream_26: AudioStream;
        stream_27: AudioStream;
        stream_28: AudioStream;
        stream_29: AudioStream;
        stream_30: AudioStream;
        stream_31: AudioStream;
        stream_32: AudioStream;
        stream_33: AudioStream;
        stream_34: AudioStream;
        stream_35: AudioStream;
        stream_36: AudioStream;
        stream_37: AudioStream;
        stream_38: AudioStream;
        stream_39: AudioStream;
        stream_40: AudioStream;
        stream_41: AudioStream;
        stream_42: AudioStream;
        stream_43: AudioStream;
        stream_44: AudioStream;
        stream_45: AudioStream;
        stream_46: AudioStream;
        stream_47: AudioStream;
        stream_48: AudioStream;
        stream_49: AudioStream;
        stream_50: AudioStream;
        stream_51: AudioStream;
        stream_52: AudioStream;
        stream_53: AudioStream;
        stream_54: AudioStream;
        stream_55: AudioStream;
        stream_56: AudioStream;
        stream_57: AudioStream;
        stream_58: AudioStream;
        stream_59: AudioStream;
        stream_60: AudioStream;
        stream_61: AudioStream;
        stream_62: AudioStream;
        stream_63: AudioStream;
    }

    AudioStreamPolyphonic :: struct {    // 92

        #as using base: AudioStream;

        polyphony: int;
    }

    AudioStreamRandomizer :: struct {    // 93

        #as using base: AudioStream;

        PlaybackMode :: enum s32 {
            PLAYBACK_RANDOM_NO_REPEATS :: 0;
            PLAYBACK_RANDOM :: 1;
            PLAYBACK_SEQUENTIAL :: 2;
        }

        playback_mode: int;
        random_pitch: float;
        random_volume_offset_db: float;
        streams_count: int;
    }

    AudioStreamSynchronized :: struct {    // 94

        #as using base: AudioStream;

        MAX_STREAMS :: 32;
        stream_count: int;
    }

    AudioStreamWAV :: struct {    // 95

        #as using base: AudioStream;

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

        data: PackedByteArray;
        format: int;
        loop_mode: int;
        loop_begin: int;
        loop_end: int;
        mix_rate: int;
        stereo: bool;
    }

    BackBufferCopy :: struct {    // 96

        #as using base: Node2D;

        CopyMode :: enum s32 {
            COPY_MODE_DISABLED :: 0;
            COPY_MODE_RECT :: 1;
            COPY_MODE_VIEWPORT :: 2;
        }

        copy_mode: int;
        rect: Rect2;
    }

    BaseButton :: struct {    // 97

        #as using base: Control;

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

        disabled: bool;
        toggle_mode: bool;
        button_pressed: bool;
        action_mode: int;
        button_mask: int;
        keep_pressed_outside: bool;
        button_group: ButtonGroup;
        shortcut: Shortcut;
        shortcut_feedback: bool;
        shortcut_in_tooltip: bool;
    }

    BaseMaterial3D :: struct {    // 98

        #as using base: Material;

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

        transparency: int;
        alpha_scissor_threshold: float;
        alpha_hash_scale: float;
        alpha_antialiasing_mode: int;
        alpha_antialiasing_edge: float;
        blend_mode: int;
        cull_mode: int;
        depth_draw_mode: int;
        no_depth_test: bool;
        shading_mode: int;
        diffuse_mode: int;
        specular_mode: int;
        disable_ambient_light: bool;
        disable_fog: bool;
        vertex_color_use_as_albedo: bool;
        vertex_color_is_srgb: bool;
        albedo_color: Color;
        albedo_texture: Texture2D;
        albedo_texture_force_srgb: bool;
        albedo_texture_msdf: bool;
        orm_texture: Texture2D;
        metallic: float;
        metallic_specular: float;
        metallic_texture: Texture2D;
        metallic_texture_channel: int;
        roughness: float;
        roughness_texture: Texture2D;
        roughness_texture_channel: int;
        emission_enabled: bool;
        emission: Color;
        emission_energy_multiplier: float;
        emission_intensity: float;
        emission_operator: int;
        emission_on_uv2: bool;
        emission_texture: Texture2D;
        normal_enabled: bool;
        normal_scale: float;
        normal_texture: Texture2D;
        rim_enabled: bool;
        rim: float;
        rim_tint: float;
        rim_texture: Texture2D;
        clearcoat_enabled: bool;
        clearcoat: float;
        clearcoat_roughness: float;
        clearcoat_texture: Texture2D;
        anisotropy_enabled: bool;
        anisotropy: float;
        anisotropy_flowmap: Texture2D;
        ao_enabled: bool;
        ao_light_affect: float;
        ao_texture: Texture2D;
        ao_on_uv2: bool;
        ao_texture_channel: int;
        heightmap_enabled: bool;
        heightmap_scale: float;
        heightmap_deep_parallax: bool;
        heightmap_min_layers: int;
        heightmap_max_layers: int;
        heightmap_flip_tangent: bool;
        heightmap_flip_binormal: bool;
        heightmap_texture: Texture2D;
        heightmap_flip_texture: bool;
        subsurf_scatter_enabled: bool;
        subsurf_scatter_strength: float;
        subsurf_scatter_skin_mode: bool;
        subsurf_scatter_texture: Texture2D;
        subsurf_scatter_transmittance_enabled: bool;
        subsurf_scatter_transmittance_color: Color;
        subsurf_scatter_transmittance_texture: Texture2D;
        subsurf_scatter_transmittance_depth: float;
        subsurf_scatter_transmittance_boost: float;
        backlight_enabled: bool;
        backlight: Color;
        backlight_texture: Texture2D;
        refraction_enabled: bool;
        refraction_scale: float;
        refraction_texture: Texture2D;
        refraction_texture_channel: int;
        detail_enabled: bool;
        detail_mask: Texture2D;
        detail_blend_mode: int;
        detail_uv_layer: int;
        detail_albedo: Texture2D;
        detail_normal: Texture2D;
        uv1_scale: Vector3;
        uv1_offset: Vector3;
        uv1_triplanar: bool;
        uv1_triplanar_sharpness: float;
        uv1_world_triplanar: bool;
        uv2_scale: Vector3;
        uv2_offset: Vector3;
        uv2_triplanar: bool;
        uv2_triplanar_sharpness: float;
        uv2_world_triplanar: bool;
        texture_filter: int;
        texture_repeat: bool;
        disable_receive_shadows: bool;
        shadow_to_opacity: bool;
        billboard_mode: int;
        billboard_keep_scale: bool;
        particles_anim_h_frames: int;
        particles_anim_v_frames: int;
        particles_anim_loop: bool;
        grow: bool;
        grow_amount: float;
        fixed_size: bool;
        use_point_size: bool;
        point_size: float;
        use_particle_trails: bool;
        proximity_fade_enabled: bool;
        proximity_fade_distance: float;
        msdf_pixel_range: float;
        msdf_outline_size: float;
        distance_fade_mode: int;
        distance_fade_min_distance: float;
        distance_fade_max_distance: float;
    }

    BitMap :: struct {    // 99

        #as using base: Resource;

        data: Dictionary;
    }

    Bone2D :: struct {    // 100

        #as using base: Node2D;

        rest: Transform2D;
    }

    BoneAttachment3D :: struct {    // 101

        #as using base: Node3D;

        bone_name: StringName;
        bone_idx: int;
        override_pose: bool;
    }

    BoneMap :: struct {    // 102

        #as using base: Resource;

        profile: SkeletonProfile;
    }

    BoxContainer :: struct {    // 103

        #as using base: Container;

        AlignmentMode :: enum s32 {
            ALIGNMENT_BEGIN :: 0;
            ALIGNMENT_CENTER :: 1;
            ALIGNMENT_END :: 2;
        }

        alignment: int;
        vertical: bool;
    }

    BoxMesh :: struct {    // 104

        #as using base: PrimitiveMesh;

        size: Vector3;
        subdivide_width: int;
        subdivide_height: int;
        subdivide_depth: int;
    }

    BoxOccluder3D :: struct {    // 105

        #as using base: Occluder3D;

        size: Vector3;
    }

    BoxShape3D :: struct {    // 106

        #as using base: Shape3D;

        size: Vector3;
    }

    Button :: struct {    // 107

        #as using base: BaseButton;

        text: String;
        icon: Texture2D;
        flat: bool;
        alignment: int;
        text_overrun_behavior: int;
        autowrap_mode: int;
        clip_text: bool;
        icon_alignment: int;
        vertical_icon_alignment: int;
        expand_icon: bool;
        text_direction: int;
        language: String;
    }

    ButtonGroup :: struct {    // 108

        #as using base: Resource;

        allow_unpress: bool;
    }

    CPUParticles2D :: struct {    // 109

        #as using base: Node2D;

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

        emitting: bool;
        amount: int;
        lifetime: float;
        one_shot: bool;
        preprocess: float;
        speed_scale: float;
        explosiveness: float;
        randomness: float;
        lifetime_randomness: float;
        fixed_fps: int;
        fract_delta: bool;
        local_coords: bool;
        draw_order: int;
        texture: Texture2D;
        emission_shape: int;
        emission_sphere_radius: float;
        emission_rect_extents: Vector2;
        emission_points: PackedVector2Array;
        emission_normals: PackedVector2Array;
        emission_colors: PackedColorArray;
        particle_flag_align_y: bool;
        direction: Vector2;
        spread: float;
        gravity: Vector2;
        initial_velocity_min: float;
        initial_velocity_max: float;
        angular_velocity_min: float;
        angular_velocity_max: float;
        angular_velocity_curve: Curve;
        orbit_velocity_min: float;
        orbit_velocity_max: float;
        orbit_velocity_curve: Curve;
        linear_accel_min: float;
        linear_accel_max: float;
        linear_accel_curve: Curve;
        radial_accel_min: float;
        radial_accel_max: float;
        radial_accel_curve: Curve;
        tangential_accel_min: float;
        tangential_accel_max: float;
        tangential_accel_curve: Curve;
        damping_min: float;
        damping_max: float;
        damping_curve: Curve;
        angle_min: float;
        angle_max: float;
        angle_curve: Curve;
        scale_amount_min: float;
        scale_amount_max: float;
        scale_amount_curve: Curve;
        split_scale: bool;
        scale_curve_x: Curve;
        scale_curve_y: Curve;
        color: Color;
        color_ramp: Gradient;
        color_initial_ramp: Gradient;
        hue_variation_min: float;
        hue_variation_max: float;
        hue_variation_curve: Curve;
        anim_speed_min: float;
        anim_speed_max: float;
        anim_speed_curve: Curve;
        anim_offset_min: float;
        anim_offset_max: float;
        anim_offset_curve: Curve;
    }

    CPUParticles3D :: struct {    // 110

        #as using base: GeometryInstance3D;

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

        emitting: bool;
        amount: int;
        lifetime: float;
        one_shot: bool;
        preprocess: float;
        speed_scale: float;
        explosiveness: float;
        randomness: float;
        lifetime_randomness: float;
        fixed_fps: int;
        fract_delta: bool;
        visibility_aabb: AABB;
        local_coords: bool;
        draw_order: int;
        mesh: Mesh;
        emission_shape: int;
        emission_sphere_radius: float;
        emission_box_extents: Vector3;
        emission_points: PackedVector3Array;
        emission_normals: PackedVector3Array;
        emission_colors: PackedColorArray;
        emission_ring_axis: Vector3;
        emission_ring_height: float;
        emission_ring_radius: float;
        emission_ring_inner_radius: float;
        particle_flag_align_y: bool;
        particle_flag_rotate_y: bool;
        particle_flag_disable_z: bool;
        direction: Vector3;
        spread: float;
        flatness: float;
        gravity: Vector3;
        initial_velocity_min: float;
        initial_velocity_max: float;
        angular_velocity_min: float;
        angular_velocity_max: float;
        angular_velocity_curve: Curve;
        orbit_velocity_min: float;
        orbit_velocity_max: float;
        orbit_velocity_curve: Curve;
        linear_accel_min: float;
        linear_accel_max: float;
        linear_accel_curve: Curve;
        radial_accel_min: float;
        radial_accel_max: float;
        radial_accel_curve: Curve;
        tangential_accel_min: float;
        tangential_accel_max: float;
        tangential_accel_curve: Curve;
        damping_min: float;
        damping_max: float;
        damping_curve: Curve;
        angle_min: float;
        angle_max: float;
        angle_curve: Curve;
        scale_amount_min: float;
        scale_amount_max: float;
        scale_amount_curve: Curve;
        split_scale: bool;
        scale_curve_x: Curve;
        scale_curve_y: Curve;
        scale_curve_z: Curve;
        color: Color;
        color_ramp: Gradient;
        color_initial_ramp: Gradient;
        hue_variation_min: float;
        hue_variation_max: float;
        hue_variation_curve: Curve;
        anim_speed_min: float;
        anim_speed_max: float;
        anim_speed_curve: Curve;
        anim_offset_min: float;
        anim_offset_max: float;
        anim_offset_curve: Curve;
    }

    CSGBox3D :: struct {    // 111

        #as using base: CSGPrimitive3D;

        size: Vector3;
        material: BaseMaterial3D,ShaderMaterial;
    }

    CSGCombiner3D :: struct {    // 112

        #as using base: CSGShape3D;
    }

    CSGCylinder3D :: struct {    // 113

        #as using base: CSGPrimitive3D;

        radius: float;
        height: float;
        sides: int;
        cone: bool;
        smooth_faces: bool;
        material: BaseMaterial3D,ShaderMaterial;
    }

    CSGMesh3D :: struct {    // 114

        #as using base: CSGPrimitive3D;

        mesh: Mesh;
        material: BaseMaterial3D,ShaderMaterial;
    }

    CSGPolygon3D :: struct {    // 115

        #as using base: CSGPrimitive3D;

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

        polygon: PackedVector2Array;
        mode: int;
        depth: float;
        spin_degrees: float;
        spin_sides: int;
        path_node: NodePath;
        path_interval_type: int;
        path_interval: float;
        path_simplify_angle: float;
        path_rotation: int;
        path_local: bool;
        path_continuous_u: bool;
        path_u_distance: float;
        path_joined: bool;
        smooth_faces: bool;
        material: BaseMaterial3D,ShaderMaterial;
    }

    CSGPrimitive3D :: struct {    // 116

        #as using base: CSGShape3D;

        flip_faces: bool;
    }

    CSGShape3D :: struct {    // 117

        #as using base: GeometryInstance3D;

        Operation :: enum s32 {
            OPERATION_UNION :: 0;
            OPERATION_INTERSECTION :: 1;
            OPERATION_SUBTRACTION :: 2;
        }

        operation: int;
        snap: float;
        calculate_tangents: bool;
        use_collision: bool;
        collision_layer: int;
        collision_mask: int;
        collision_priority: float;
    }

    CSGSphere3D :: struct {    // 118

        #as using base: CSGPrimitive3D;

        radius: float;
        radial_segments: int;
        rings: int;
        smooth_faces: bool;
        material: BaseMaterial3D,ShaderMaterial;
    }

    CSGTorus3D :: struct {    // 119

        #as using base: CSGPrimitive3D;

        inner_radius: float;
        outer_radius: float;
        sides: int;
        ring_sides: int;
        smooth_faces: bool;
        material: BaseMaterial3D,ShaderMaterial;
    }

    CallbackTweener :: struct {    // 120

        #as using base: Tweener;
    }

    Camera2D :: struct {    // 121

        #as using base: Node2D;

        AnchorMode :: enum s32 {
            ANCHOR_MODE_FIXED_TOP_LEFT :: 0;
            ANCHOR_MODE_DRAG_CENTER :: 1;
        }

        Camera2DProcessCallback :: enum s32 {
            CAMERA2D_PROCESS_PHYSICS :: 0;
            CAMERA2D_PROCESS_IDLE :: 1;
        }

        offset: Vector2;
        anchor_mode: int;
        ignore_rotation: bool;
        enabled: bool;
        zoom: Vector2;
        custom_viewport: Viewport;
        process_callback: int;
        limit_left: int;
        limit_top: int;
        limit_right: int;
        limit_bottom: int;
        limit_smoothed: bool;
        position_smoothing_enabled: bool;
        position_smoothing_speed: float;
        rotation_smoothing_enabled: bool;
        rotation_smoothing_speed: float;
        drag_horizontal_enabled: bool;
        drag_vertical_enabled: bool;
        drag_horizontal_offset: float;
        drag_vertical_offset: float;
        drag_left_margin: float;
        drag_top_margin: float;
        drag_right_margin: float;
        drag_bottom_margin: float;
        editor_draw_screen: bool;
        editor_draw_limits: bool;
        editor_draw_drag_margin: bool;
    }

    Camera3D :: struct {    // 122

        #as using base: Node3D;

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

        keep_aspect: int;
        cull_mask: int;
        environment: Environment;
        attributes: CameraAttributesPractical,CameraAttributesPhysical;
        compositor: Compositor;
        h_offset: float;
        v_offset: float;
        doppler_tracking: int;
        projection: int;
        current: bool;
        fov: float;
        size: float;
        frustum_offset: Vector2;
        near: float;
        far: float;
    }

    CameraAttributes :: struct {    // 123

        #as using base: Resource;

        exposure_sensitivity: float;
        exposure_multiplier: float;
        auto_exposure_enabled: bool;
        auto_exposure_scale: float;
        auto_exposure_speed: float;
    }

    CameraAttributesPhysical :: struct {    // 124

        #as using base: CameraAttributes;

        frustum_focus_distance: float;
        frustum_focal_length: float;
        frustum_near: float;
        frustum_far: float;
        exposure_aperture: float;
        exposure_shutter_speed: float;
        auto_exposure_min_exposure_value: float;
        auto_exposure_max_exposure_value: float;
    }

    CameraAttributesPractical :: struct {    // 125

        #as using base: CameraAttributes;

        dof_blur_far_enabled: bool;
        dof_blur_far_distance: float;
        dof_blur_far_transition: float;
        dof_blur_near_enabled: bool;
        dof_blur_near_distance: float;
        dof_blur_near_transition: float;
        dof_blur_amount: float;
        auto_exposure_min_sensitivity: float;
        auto_exposure_max_sensitivity: float;
    }

    CameraFeed :: struct {    // 126

        #as using base: RefCounted;

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

        feed_is_active: bool;
        feed_transform: Transform2D;
    }

    CameraServer :: struct {    // 127

        #as using base: Object;

        FeedImage :: enum s32 {
            FEED_RGBA_IMAGE :: 0;
            FEED_YCBCR_IMAGE :: 0;
            FEED_Y_IMAGE :: 0;
            FEED_CBCR_IMAGE :: 1;
        }
    }

    CameraTexture :: struct {    // 128

        #as using base: Texture2D;

        camera_feed_id: int;
        which_feed: int;
        camera_is_active: bool;
    }

    CanvasGroup :: struct {    // 129

        #as using base: Node2D;

        fit_margin: float;
        clear_margin: float;
        use_mipmaps: bool;
    }

    CanvasItem :: struct {    // 130

        #as using base: Node;

        NOTIFICATION_TRANSFORM_CHANGED :: 2000;
        NOTIFICATION_LOCAL_TRANSFORM_CHANGED :: 35;
        NOTIFICATION_DRAW :: 30;
        NOTIFICATION_VISIBILITY_CHANGED :: 31;
        NOTIFICATION_ENTER_CANVAS :: 32;
        NOTIFICATION_EXIT_CANVAS :: 33;
        NOTIFICATION_WORLD_2D_CHANGED :: 36;


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

        visible: bool;
        modulate: Color;
        self_modulate: Color;
        show_behind_parent: bool;
        top_level: bool;
        clip_children: int;
        light_mask: int;
        visibility_layer: int;
        z_index: int;
        z_as_relative: bool;
        y_sort_enabled: bool;
        texture_filter: int;
        texture_repeat: int;
        material: CanvasItemMaterial,ShaderMaterial;
        use_parent_material: bool;
    }

    CanvasItemMaterial :: struct {    // 131

        #as using base: Material;

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

        blend_mode: int;
        light_mode: int;
        particles_animation: bool;
        particles_anim_h_frames: int;
        particles_anim_v_frames: int;
        particles_anim_loop: bool;
    }

    CanvasLayer :: struct {    // 132

        #as using base: Node;

        layer: int;
        visible: bool;
        offset: Vector2;
        rotation: float;
        scale: Vector2;
        transform: Transform2D;
        custom_viewport: Viewport;
        follow_viewport_enabled: bool;
        follow_viewport_scale: float;
    }

    CanvasModulate :: struct {    // 133

        #as using base: Node2D;

        color: Color;
    }

    CanvasTexture :: struct {    // 134

        #as using base: Texture2D;

        diffuse_texture: Texture2D;
        normal_texture: Texture2D;
        specular_texture: Texture2D;
        specular_color: Color;
        specular_shininess: float;
        texture_filter: int;
        texture_repeat: int;
    }

    CapsuleMesh :: struct {    // 135

        #as using base: PrimitiveMesh;

        radius: float;
        height: float;
        radial_segments: int;
        rings: int;
    }

    CapsuleShape2D :: struct {    // 136

        #as using base: Shape2D;

        radius: float;
        height: float;
    }

    CapsuleShape3D :: struct {    // 137

        #as using base: Shape3D;

        radius: float;
        height: float;
    }

    CenterContainer :: struct {    // 138

        #as using base: Container;

        use_top_left: bool;
    }

    CharFXTransform :: struct {    // 139

        #as using base: RefCounted;

        transform: Transform2D;
        range: Vector2i;
        elapsed_time: float;
        visible: bool;
        outline: bool;
        offset: Vector2;
        color: Color;
        env: Dictionary;
        glyph_index: int;
        glyph_count: int;
        glyph_flags: int;
        relative_index: int;
        font: RID;
    }

    CharacterBody2D :: struct {    // 140

        #as using base: PhysicsBody2D;

        MotionMode :: enum s32 {
            MOTION_MODE_GROUNDED :: 0;
            MOTION_MODE_FLOATING :: 1;
        }

        PlatformOnLeave :: enum s32 {
            PLATFORM_ON_LEAVE_ADD_VELOCITY :: 0;
            PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY :: 1;
            PLATFORM_ON_LEAVE_DO_NOTHING :: 2;
        }

        motion_mode: int;
        up_direction: Vector2;
        velocity: Vector2;
        slide_on_ceiling: bool;
        max_slides: int;
        wall_min_slide_angle: float;
        floor_stop_on_slope: bool;
        floor_constant_speed: bool;
        floor_block_on_wall: bool;
        floor_max_angle: float;
        floor_snap_length: float;
        platform_on_leave: int;
        platform_floor_layers: int;
        platform_wall_layers: int;
        safe_margin: float;
    }

    CharacterBody3D :: struct {    // 141

        #as using base: PhysicsBody3D;

        MotionMode :: enum s32 {
            MOTION_MODE_GROUNDED :: 0;
            MOTION_MODE_FLOATING :: 1;
        }

        PlatformOnLeave :: enum s32 {
            PLATFORM_ON_LEAVE_ADD_VELOCITY :: 0;
            PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY :: 1;
            PLATFORM_ON_LEAVE_DO_NOTHING :: 2;
        }

        motion_mode: int;
        up_direction: Vector3;
        slide_on_ceiling: bool;
        velocity: Vector3;
        max_slides: int;
        wall_min_slide_angle: float;
        floor_stop_on_slope: bool;
        floor_constant_speed: bool;
        floor_block_on_wall: bool;
        floor_max_angle: float;
        floor_snap_length: float;
        platform_on_leave: int;
        platform_floor_layers: int;
        platform_wall_layers: int;
        safe_margin: float;
    }

    CheckBox :: struct {    // 142

        #as using base: Button;
    }

    CheckButton :: struct {    // 143

        #as using base: Button;
    }

    CircleShape2D :: struct {    // 144

        #as using base: Shape2D;

        radius: float;
    }

    ClassDB :: struct {    // 145

        #as using base: Object;
    }

    CodeEdit :: struct {    // 146

        #as using base: TextEdit;

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

        symbol_lookup_on_click: bool;
        line_folding: bool;
        line_length_guidelines: PackedInt32Array;
        gutters_draw_breakpoints_gutter: bool;
        gutters_draw_bookmarks: bool;
        gutters_draw_executing_lines: bool;
        gutters_draw_line_numbers: bool;
        gutters_zero_pad_line_numbers: bool;
        gutters_draw_fold_gutter: bool;
        delimiter_strings: PackedStringArray;
        delimiter_comments: PackedStringArray;
        code_completion_enabled: bool;
        code_completion_prefixes: PackedStringArray;
        indent_size: int;
        indent_use_spaces: bool;
        indent_automatic: bool;
        indent_automatic_prefixes: PackedStringArray;
        auto_brace_completion_enabled: bool;
        auto_brace_completion_highlight_matching: bool;
        auto_brace_completion_pairs: Dictionary;
    }

    CodeHighlighter :: struct {    // 147

        #as using base: SyntaxHighlighter;

        number_color: Color;
        symbol_color: Color;
        function_color: Color;
        member_variable_color: Color;
        keyword_colors: Dictionary;
        member_keyword_colors: Dictionary;
        color_regions: Dictionary;
    }

    CollisionObject2D :: struct {    // 148

        #as using base: Node2D;

        DisableMode :: enum s32 {
            DISABLE_MODE_REMOVE :: 0;
            DISABLE_MODE_MAKE_STATIC :: 1;
            DISABLE_MODE_KEEP_ACTIVE :: 2;
        }

        disable_mode: int;
        collision_layer: int;
        collision_mask: int;
        collision_priority: float;
        input_pickable: bool;
    }

    CollisionObject3D :: struct {    // 149

        #as using base: Node3D;

        DisableMode :: enum s32 {
            DISABLE_MODE_REMOVE :: 0;
            DISABLE_MODE_MAKE_STATIC :: 1;
            DISABLE_MODE_KEEP_ACTIVE :: 2;
        }

        disable_mode: int;
        collision_layer: int;
        collision_mask: int;
        collision_priority: float;
        input_ray_pickable: bool;
        input_capture_on_drag: bool;
    }

    CollisionPolygon2D :: struct {    // 150

        #as using base: Node2D;

        BuildMode :: enum s32 {
            BUILD_SOLIDS :: 0;
            BUILD_SEGMENTS :: 1;
        }

        build_mode: int;
        polygon: PackedVector2Array;
        disabled: bool;
        one_way_collision: bool;
        one_way_collision_margin: float;
    }

    CollisionPolygon3D :: struct {    // 151

        #as using base: Node3D;

        depth: float;
        disabled: bool;
        polygon: PackedVector2Array;
        margin: float;
    }

    CollisionShape2D :: struct {    // 152

        #as using base: Node2D;

        shape: Shape2D;
        disabled: bool;
        one_way_collision: bool;
        one_way_collision_margin: float;
        debug_color: Color;
    }

    CollisionShape3D :: struct {    // 153

        #as using base: Node3D;

        shape: Shape3D;
        disabled: bool;
    }

    ColorPicker :: struct {    // 154

        #as using base: VBoxContainer;

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

        color: Color;
        edit_alpha: bool;
        color_mode: int;
        deferred_mode: bool;
        picker_shape: int;
        can_add_swatches: bool;
        sampler_visible: bool;
        color_modes_visible: bool;
        sliders_visible: bool;
        hex_visible: bool;
        presets_visible: bool;
    }

    ColorPickerButton :: struct {    // 155

        #as using base: Button;

        color: Color;
        edit_alpha: bool;
    }

    ColorRect :: struct {    // 156

        #as using base: Control;

        color: Color;
    }

    Compositor :: struct {    // 157

        #as using base: Resource;

        compositor_effects: typedarray::24/17:CompositorEffect;
    }

    CompositorEffect :: struct {    // 158

        #as using base: Resource;

        EffectCallbackType :: enum s32 {
            EFFECT_CALLBACK_TYPE_PRE_OPAQUE :: 0;
            EFFECT_CALLBACK_TYPE_POST_OPAQUE :: 1;
            EFFECT_CALLBACK_TYPE_POST_SKY :: 2;
            EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT :: 3;
            EFFECT_CALLBACK_TYPE_POST_TRANSPARENT :: 4;
            EFFECT_CALLBACK_TYPE_MAX :: 5;
        }

        enabled: bool;
        effect_callback_type: int;
        access_resolved_color: bool;
        access_resolved_depth: bool;
        needs_motion_vectors: bool;
        needs_normal_roughness: bool;
        needs_separate_specular: bool;
    }

    CompressedCubemap :: struct {    // 159

        #as using base: CompressedTextureLayered;
    }

    CompressedCubemapArray :: struct {    // 160

        #as using base: CompressedTextureLayered;
    }

    CompressedTexture2D :: struct {    // 161

        #as using base: Texture2D;

        load_path: String;
    }

    CompressedTexture2DArray :: struct {    // 162

        #as using base: CompressedTextureLayered;
    }

    CompressedTexture3D :: struct {    // 163

        #as using base: Texture3D;

        load_path: String;
    }

    CompressedTextureLayered :: struct {    // 164

        #as using base: TextureLayered;

        load_path: String;
    }

    ConcavePolygonShape2D :: struct {    // 165

        #as using base: Shape2D;

        segments: PackedVector2Array;
    }

    ConcavePolygonShape3D :: struct {    // 166

        #as using base: Shape3D;

        data: PackedVector3Array;
        backface_collision: bool;
    }

    ConeTwistJoint3D :: struct {    // 167

        #as using base: Joint3D;

        Param :: enum s32 {
            PARAM_SWING_SPAN :: 0;
            PARAM_TWIST_SPAN :: 1;
            PARAM_BIAS :: 2;
            PARAM_SOFTNESS :: 3;
            PARAM_RELAXATION :: 4;
            PARAM_MAX :: 5;
        }

        swing_span: float;
        twist_span: float;
        bias: float;
        softness: float;
        relaxation: float;
    }

    ConfigFile :: struct {    // 168

        #as using base: RefCounted;
    }

    ConfirmationDialog :: struct {    // 169

        #as using base: AcceptDialog;

        cancel_button_text: String;
    }

    Container :: struct {    // 170

        #as using base: Control;

        NOTIFICATION_PRE_SORT_CHILDREN :: 50;
        NOTIFICATION_SORT_CHILDREN :: 51;

    }

    Control :: struct {    // 171

        #as using base: CanvasItem;

        NOTIFICATION_RESIZED :: 40;
        NOTIFICATION_MOUSE_ENTER :: 41;
        NOTIFICATION_MOUSE_EXIT :: 42;
        NOTIFICATION_MOUSE_ENTER_SELF :: 60;
        NOTIFICATION_MOUSE_EXIT_SELF :: 61;
        NOTIFICATION_FOCUS_ENTER :: 43;
        NOTIFICATION_FOCUS_EXIT :: 44;
        NOTIFICATION_THEME_CHANGED :: 45;
        NOTIFICATION_SCROLL_BEGIN :: 47;
        NOTIFICATION_SCROLL_END :: 48;
        NOTIFICATION_LAYOUT_DIRECTION_CHANGED :: 49;


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

        clip_contents: bool;
        custom_minimum_size: Vector2;
        layout_direction: int;
        layout_mode: int;
        anchors_preset: int;
        anchor_left: float;
        anchor_top: float;
        anchor_right: float;
        anchor_bottom: float;
        offset_left: int;
        offset_top: int;
        offset_right: int;
        offset_bottom: int;
        grow_horizontal: int;
        grow_vertical: int;
        size: Vector2;
        position: Vector2;
        global_position: Vector2;
        rotation: float;
        rotation_degrees: float;
        scale: Vector2;
        pivot_offset: Vector2;
        size_flags_horizontal: int;
        size_flags_vertical: int;
        size_flags_stretch_ratio: float;
        localize_numeral_system: bool;
        auto_translate: bool;
        tooltip_text: String;
        focus_neighbor_left: NodePath;
        focus_neighbor_top: NodePath;
        focus_neighbor_right: NodePath;
        focus_neighbor_bottom: NodePath;
        focus_next: NodePath;
        focus_previous: NodePath;
        focus_mode: int;
        mouse_filter: int;
        mouse_force_pass_scroll_events: bool;
        mouse_default_cursor_shape: int;
        shortcut_context: Object;
        theme: Theme;
        theme_type_variation: String;
    }

    ConvexPolygonShape2D :: struct {    // 172

        #as using base: Shape2D;

        points: PackedVector2Array;
    }

    ConvexPolygonShape3D :: struct {    // 173

        #as using base: Shape3D;

        points: Array;
    }

    Crypto :: struct {    // 174

        #as using base: RefCounted;
    }

    CryptoKey :: struct {    // 175

        #as using base: Resource;
    }

    Cubemap :: struct {    // 176

        #as using base: ImageTextureLayered;
    }

    CubemapArray :: struct {    // 177

        #as using base: ImageTextureLayered;
    }

    Curve :: struct {    // 178

        #as using base: Resource;

        TangentMode :: enum s32 {
            TANGENT_FREE :: 0;
            TANGENT_LINEAR :: 1;
            TANGENT_MODE_COUNT :: 2;
        }

        min_value: float;
        max_value: float;
        bake_resolution: int;
        point_count: int;
    }

    Curve2D :: struct {    // 179

        #as using base: Resource;

        bake_interval: float;
        point_count: int;
    }

    Curve3D :: struct {    // 180

        #as using base: Resource;

        bake_interval: float;
        point_count: int;
        up_vector_enabled: bool;
    }

    CurveTexture :: struct {    // 181

        #as using base: Texture2D;

        TextureMode :: enum s32 {
            TEXTURE_MODE_RGB :: 0;
            TEXTURE_MODE_RED :: 1;
        }

        width: int;
        texture_mode: int;
        curve: Curve;
    }

    CurveXYZTexture :: struct {    // 182

        #as using base: Texture2D;

        width: int;
        curve_x: Curve;
        curve_y: Curve;
        curve_z: Curve;
    }

    CylinderMesh :: struct {    // 183

        #as using base: PrimitiveMesh;

        top_radius: float;
        bottom_radius: float;
        height: float;
        radial_segments: int;
        rings: int;
        cap_top: bool;
        cap_bottom: bool;
    }

    CylinderShape3D :: struct {    // 184

        #as using base: Shape3D;

        height: float;
        radius: float;
    }

    DTLSServer :: struct {    // 185

        #as using base: RefCounted;
    }

    DampedSpringJoint2D :: struct {    // 186

        #as using base: Joint2D;

        length: float;
        rest_length: float;
        stiffness: float;
        damping: float;
    }

    Decal :: struct {    // 187

        #as using base: VisualInstance3D;

        DecalTexture :: enum s32 {
            TEXTURE_ALBEDO :: 0;
            TEXTURE_NORMAL :: 1;
            TEXTURE_ORM :: 2;
            TEXTURE_EMISSION :: 3;
            TEXTURE_MAX :: 4;
        }

        size: Vector3;
        texture_albedo: Texture2D;
        texture_normal: Texture2D;
        texture_orm: Texture2D;
        texture_emission: Texture2D;
        emission_energy: float;
        modulate: Color;
        albedo_mix: float;
        normal_fade: float;
        upper_fade: float;
        lower_fade: float;
        distance_fade_enabled: bool;
        distance_fade_begin: float;
        distance_fade_length: float;
        cull_mask: int;
    }

    DirAccess :: struct {    // 188

        #as using base: RefCounted;

        include_navigational: bool;
        include_hidden: bool;
    }

    DirectionalLight2D :: struct {    // 189

        #as using base: Light2D;

        height: float;
        max_distance: float;
    }

    DirectionalLight3D :: struct {    // 190

        #as using base: Light3D;

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

        directional_shadow_mode: int;
        directional_shadow_split_1: float;
        directional_shadow_split_2: float;
        directional_shadow_split_3: float;
        directional_shadow_blend_splits: bool;
        directional_shadow_fade_start: float;
        directional_shadow_max_distance: float;
        directional_shadow_pancake_size: float;
        sky_mode: int;
    }

    DisplayServer :: struct {    // 191

        #as using base: Object;

        SCREEN_WITH_MOUSE_FOCUS :: -4;
        SCREEN_WITH_KEYBOARD_FOCUS :: -3;
        SCREEN_PRIMARY :: -2;
        SCREEN_OF_MAIN_WINDOW :: -1;
        MAIN_WINDOW_ID :: 0;
        INVALID_WINDOW_ID :: -1;
        INVALID_INDICATOR_ID :: -1;


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

        #as using base: RefCounted;

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

    ENetMultiplayerPeer :: struct {    // 193

        #as using base: MultiplayerPeer;

        host: ENetConnection;
    }

    ENetPacketPeer :: struct {    // 194

        #as using base: PacketPeer;

        PACKET_LOSS_SCALE :: 65536;
        PACKET_THROTTLE_SCALE :: 32;
        FLAG_RELIABLE :: 1;
        FLAG_UNSEQUENCED :: 2;
        FLAG_UNRELIABLE_FRAGMENT :: 8;


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

    EditorCommandPalette :: struct {    // 195

        #as using base: ConfirmationDialog;
    }

    EditorDebuggerPlugin :: struct {    // 196

        #as using base: RefCounted;
    }

    EditorDebuggerSession :: struct {    // 197

        #as using base: RefCounted;
    }

    EditorExportPlatform :: struct {    // 198

        #as using base: RefCounted;
    }

    EditorExportPlatformAndroid :: struct {    // 199

        #as using base: EditorExportPlatform;
    }

    EditorExportPlatformIOS :: struct {    // 200

        #as using base: EditorExportPlatform;
    }

    EditorExportPlatformLinuxBSD :: struct {    // 201

        #as using base: EditorExportPlatformPC;
    }

    EditorExportPlatformMacOS :: struct {    // 202

        #as using base: EditorExportPlatform;
    }

    EditorExportPlatformPC :: struct {    // 203

        #as using base: EditorExportPlatform;
    }

    EditorExportPlatformWeb :: struct {    // 204

        #as using base: EditorExportPlatform;
    }

    EditorExportPlatformWindows :: struct {    // 205

        #as using base: EditorExportPlatformPC;
    }

    EditorExportPlugin :: struct {    // 206

        #as using base: RefCounted;
    }

    EditorFeatureProfile :: struct {    // 207

        #as using base: RefCounted;

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

        #as using base: ConfirmationDialog;

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

        access: int;
        display_mode: int;
        file_mode: int;
        current_dir: String;
        current_file: String;
        current_path: String;
        filters: PackedStringArray;
        show_hidden_files: bool;
        disable_overwrite_warning: bool;
    }

    EditorFileSystem :: struct {    // 209

        #as using base: Node;
    }

    EditorFileSystemDirectory :: struct {    // 210

        #as using base: Object;
    }

    EditorFileSystemImportFormatSupportQuery :: struct {    // 211

        #as using base: RefCounted;
    }

    EditorImportPlugin :: struct {    // 212

        #as using base: ResourceImporter;
    }

    EditorInspector :: struct {    // 213

        #as using base: ScrollContainer;
    }

    EditorInspectorPlugin :: struct {    // 214

        #as using base: RefCounted;
    }

    EditorInterface :: struct {    // 215

        #as using base: Object;

        distraction_free_mode: bool;
        movie_maker_enabled: bool;
    }

    EditorNode3DGizmo :: struct {    // 216

        #as using base: Node3DGizmo;
    }

    EditorNode3DGizmoPlugin :: struct {    // 217

        #as using base: Resource;
    }

    EditorPaths :: struct {    // 218

        #as using base: Object;
    }

    EditorPlugin :: struct {    // 219

        #as using base: Node;

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

    EditorProperty :: struct {    // 220

        #as using base: Container;

        label: String;
        read_only: bool;
        checkable: bool;
        checked: bool;
        draw_warning: bool;
        keying: bool;
        deletable: bool;
    }

    EditorResourceConversionPlugin :: struct {    // 221

        #as using base: RefCounted;
    }

    EditorResourcePicker :: struct {    // 222

        #as using base: HBoxContainer;

        base_type: String;
        edited_resource: Resource;
        editable: bool;
        toggle_mode: bool;
    }

    EditorResourcePreview :: struct {    // 223

        #as using base: Node;
    }

    EditorResourcePreviewGenerator :: struct {    // 224

        #as using base: RefCounted;
    }

    EditorResourceTooltipPlugin :: struct {    // 225

        #as using base: RefCounted;
    }

    EditorSceneFormatImporter :: struct {    // 226

        #as using base: RefCounted;

        IMPORT_SCENE :: 1;
        IMPORT_ANIMATION :: 2;
        IMPORT_FAIL_ON_MISSING_DEPENDENCIES :: 4;
        IMPORT_GENERATE_TANGENT_ARRAYS :: 8;
        IMPORT_USE_NAMED_SKIN_BINDS :: 16;
        IMPORT_DISCARD_MESHES_AND_MATERIALS :: 32;
        IMPORT_FORCE_DISABLE_MESH_COMPRESSION :: 64;

    }

    EditorSceneFormatImporterBlend :: struct {    // 227

        #as using base: EditorSceneFormatImporter;
    }

    EditorSceneFormatImporterFBX2GLTF :: struct {    // 228

        #as using base: EditorSceneFormatImporter;
    }

    EditorSceneFormatImporterGLTF :: struct {    // 229

        #as using base: EditorSceneFormatImporter;
    }

    EditorSceneFormatImporterUFBX :: struct {    // 230

        #as using base: EditorSceneFormatImporter;
    }

    EditorScenePostImport :: struct {    // 231

        #as using base: RefCounted;
    }

    EditorScenePostImportPlugin :: struct {    // 232

        #as using base: RefCounted;

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

    EditorScript :: struct {    // 233

        #as using base: RefCounted;
    }

    EditorScriptPicker :: struct {    // 234

        #as using base: EditorResourcePicker;

        script_owner: Node;
    }

    EditorSelection :: struct {    // 235

        #as using base: Object;
    }

    EditorSettings :: struct {    // 236

        #as using base: Resource;

        NOTIFICATION_EDITOR_SETTINGS_CHANGED :: 10000;

    }

    EditorSpinSlider :: struct {    // 237

        #as using base: Range;

        label: String;
        suffix: String;
        read_only: bool;
        flat: bool;
        hide_slider: bool;
    }

    EditorSyntaxHighlighter :: struct {    // 238

        #as using base: SyntaxHighlighter;
    }

    EditorTranslationParserPlugin :: struct {    // 239

        #as using base: RefCounted;
    }

    EditorUndoRedoManager :: struct {    // 240

        #as using base: Object;

        SpecialHistory :: enum s32 {
            GLOBAL_HISTORY :: 0;
            REMOTE_HISTORY :: -9;
            INVALID_HISTORY :: -99;
        }
    }

    EditorVCSInterface :: struct {    // 241

        #as using base: Object;

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

    EncodedObjectAsID :: struct {    // 242

        #as using base: RefCounted;

        object_id: int;
    }

    Engine :: struct {    // 243

        #as using base: Object;

        print_error_messages: bool;
        physics_ticks_per_second: int;
        max_physics_steps_per_frame: int;
        max_fps: int;
        time_scale: float;
        physics_jitter_fix: float;
    }

    EngineDebugger :: struct {    // 244

        #as using base: Object;
    }

    EngineProfiler :: struct {    // 245

        #as using base: RefCounted;
    }

    Environment :: struct {    // 246

        #as using base: Resource;

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

        background_mode: int;
        background_color: Color;
        background_energy_multiplier: float;
        background_intensity: float;
        background_canvas_max_layer: int;
        background_camera_feed_id: int;
        sky: Sky;
        sky_custom_fov: float;
        sky_rotation: Vector3;
        ambient_light_source: int;
        ambient_light_color: Color;
        ambient_light_sky_contribution: float;
        ambient_light_energy: float;
        reflected_light_source: int;
        tonemap_mode: int;
        tonemap_exposure: float;
        tonemap_white: float;
        ssr_enabled: bool;
        ssr_max_steps: int;
        ssr_fade_in: float;
        ssr_fade_out: float;
        ssr_depth_tolerance: float;
        ssao_enabled: bool;
        ssao_radius: float;
        ssao_intensity: float;
        ssao_power: float;
        ssao_detail: float;
        ssao_horizon: float;
        ssao_sharpness: float;
        ssao_light_affect: float;
        ssao_ao_channel_affect: float;
        ssil_enabled: bool;
        ssil_radius: float;
        ssil_intensity: float;
        ssil_sharpness: float;
        ssil_normal_rejection: float;
        sdfgi_enabled: bool;
        sdfgi_use_occlusion: bool;
        sdfgi_read_sky_light: bool;
        sdfgi_bounce_feedback: float;
        sdfgi_cascades: int;
        sdfgi_min_cell_size: float;
        sdfgi_cascade0_distance: float;
        sdfgi_max_distance: float;
        sdfgi_y_scale: int;
        sdfgi_energy: float;
        sdfgi_normal_bias: float;
        sdfgi_probe_bias: float;
        glow_enabled: bool;
        glow_normalized: bool;
        glow_intensity: float;
        glow_strength: float;
        glow_mix: float;
        glow_bloom: float;
        glow_blend_mode: int;
        glow_hdr_threshold: float;
        glow_hdr_scale: float;
        glow_hdr_luminance_cap: float;
        glow_map_strength: float;
        glow_map: Texture2D;
        fog_enabled: bool;
        fog_mode: int;
        fog_light_color: Color;
        fog_light_energy: float;
        fog_sun_scatter: float;
        fog_density: float;
        fog_aerial_perspective: float;
        fog_sky_affect: float;
        fog_height: float;
        fog_height_density: float;
        fog_depth_curve: float;
        fog_depth_begin: float;
        fog_depth_end: float;
        volumetric_fog_enabled: bool;
        volumetric_fog_density: float;
        volumetric_fog_albedo: Color;
        volumetric_fog_emission: Color;
        volumetric_fog_emission_energy: float;
        volumetric_fog_gi_inject: float;
        volumetric_fog_anisotropy: float;
        volumetric_fog_length: float;
        volumetric_fog_detail_spread: float;
        volumetric_fog_ambient_inject: float;
        volumetric_fog_sky_affect: float;
        volumetric_fog_temporal_reprojection_enabled: bool;
        volumetric_fog_temporal_reprojection_amount: float;
        adjustment_enabled: bool;
        adjustment_brightness: float;
        adjustment_contrast: float;
        adjustment_saturation: float;
        adjustment_color_correction: Texture2D,Texture3D;
    }

    Expression :: struct {    // 247

        #as using base: RefCounted;
    }

    FBXDocument :: struct {    // 248

        #as using base: GLTFDocument;
    }

    FBXState :: struct {    // 249

        #as using base: GLTFState;

        allow_geometry_helper_nodes: bool;
    }

    FastNoiseLite :: struct {    // 250

        #as using base: Noise;

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

        noise_type: int;
        seed: int;
        frequency: float;
        offset: Vector3;
        fractal_type: int;
        fractal_octaves: int;
        fractal_lacunarity: float;
        fractal_gain: float;
        fractal_weighted_strength: float;
        fractal_ping_pong_strength: float;
        cellular_distance_function: int;
        cellular_jitter: float;
        cellular_return_type: int;
        domain_warp_enabled: bool;
        domain_warp_type: int;
        domain_warp_amplitude: float;
        domain_warp_frequency: float;
        domain_warp_fractal_type: int;
        domain_warp_fractal_octaves: int;
        domain_warp_fractal_lacunarity: float;
        domain_warp_fractal_gain: float;
    }

    FileAccess :: struct {    // 251

        #as using base: RefCounted;

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

        big_endian: bool;
    }

    FileDialog :: struct {    // 252

        #as using base: ConfirmationDialog;

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

        mode_overrides_title: bool;
        file_mode: int;
        access: int;
        root_subfolder: String;
        filters: PackedStringArray;
        option_count: int;
        show_hidden_files: bool;
        use_native_dialog: bool;
        current_dir: String;
        current_file: String;
        current_path: String;
    }

    FileSystemDock :: struct {    // 253

        #as using base: VBoxContainer;
    }

    FlowContainer :: struct {    // 254

        #as using base: Container;

        AlignmentMode :: enum s32 {
            ALIGNMENT_BEGIN :: 0;
            ALIGNMENT_CENTER :: 1;
            ALIGNMENT_END :: 2;
        }

        alignment: int;
        vertical: bool;
        reverse_fill: bool;
    }

    FogMaterial :: struct {    // 255

        #as using base: Material;

        density: float;
        albedo: Color;
        emission: Color;
        height_falloff: float;
        edge_fade: float;
        density_texture: Texture3D;
    }

    FogVolume :: struct {    // 256

        #as using base: VisualInstance3D;

        size: Vector3;
        shape: int;
        material: FogMaterial,ShaderMaterial;
    }

    Font :: struct {    // 257

        #as using base: Resource;

        fallbacks: typedarray::24/17:Font;
    }

    FontFile :: struct {    // 258

        #as using base: Font;

        data: PackedByteArray;
        generate_mipmaps: bool;
        disable_embedded_bitmaps: bool;
        antialiasing: int;
        font_name: String;
        style_name: String;
        font_style: int;
        font_weight: int;
        font_stretch: int;
        subpixel_positioning: int;
        multichannel_signed_distance_field: bool;
        msdf_pixel_range: int;
        msdf_size: int;
        allow_system_fallback: bool;
        force_autohinter: bool;
        hinting: int;
        oversampling: float;
        fixed_size: int;
        fixed_size_scale_mode: int;
        opentype_feature_overrides: Dictionary;
    }

    FontVariation :: struct {    // 259

        #as using base: Font;

        base_font: Font;
        variation_opentype: Dictionary;
        variation_face_index: int;
        variation_embolden: float;
        variation_transform: Transform2D;
        opentype_features: Dictionary;
        spacing_glyph: int;
        spacing_space: int;
        spacing_top: int;
        spacing_bottom: int;
        baseline_offset: float;
    }

    FramebufferCacheRD :: struct {    // 260

        #as using base: Object;
    }

    GDExtension :: struct {    // 261

        #as using base: Resource;

        InitializationLevel :: enum s32 {
            INITIALIZATION_LEVEL_CORE :: 0;
            INITIALIZATION_LEVEL_SERVERS :: 1;
            INITIALIZATION_LEVEL_SCENE :: 2;
            INITIALIZATION_LEVEL_EDITOR :: 3;
        }
    }

    GDExtensionManager :: struct {    // 262

        #as using base: Object;

        LoadStatus :: enum s32 {
            LOAD_STATUS_OK :: 0;
            LOAD_STATUS_FAILED :: 1;
            LOAD_STATUS_ALREADY_LOADED :: 2;
            LOAD_STATUS_NOT_LOADED :: 3;
            LOAD_STATUS_NEEDS_RESTART :: 4;
        }
    }

    GDScript :: struct {    // 263

        #as using base: Script;
    }

    GLTFAccessor :: struct {    // 264

        #as using base: Resource;

        buffer_view: int;
        byte_offset: int;
        component_type: int;
        normalized: bool;
        count: int;
        type: int;
        min: PackedFloat64Array;
        max: PackedFloat64Array;
        sparse_count: int;
        sparse_indices_buffer_view: int;
        sparse_indices_byte_offset: int;
        sparse_indices_component_type: int;
        sparse_values_buffer_view: int;
        sparse_values_byte_offset: int;
    }

    GLTFAnimation :: struct {    // 265

        #as using base: Resource;

        original_name: String;
        loop: bool;
    }

    GLTFBufferView :: struct {    // 266

        #as using base: Resource;

        buffer: int;
        byte_offset: int;
        byte_length: int;
        byte_stride: int;
        indices: bool;
        vertex_attributes: bool;
    }

    GLTFCamera :: struct {    // 267

        #as using base: Resource;

        perspective: bool;
        fov: float;
        size_mag: float;
        depth_far: float;
        depth_near: float;
    }

    GLTFDocument :: struct {    // 268

        #as using base: Resource;

        RootNodeMode :: enum s32 {
            ROOT_NODE_MODE_SINGLE_ROOT :: 0;
            ROOT_NODE_MODE_KEEP_ROOT :: 1;
            ROOT_NODE_MODE_MULTI_ROOT :: 2;
        }

        image_format: String;
        lossy_quality: float;
        root_node_mode: int;
    }

    GLTFDocumentExtension :: struct {    // 269

        #as using base: Resource;
    }

    GLTFDocumentExtensionConvertImporterMesh :: struct {    // 270

        #as using base: GLTFDocumentExtension;
    }

    GLTFLight :: struct {    // 271

        #as using base: Resource;

        color: Color;
        intensity: float;
        light_type: String;
        range: float;
        inner_cone_angle: float;
        outer_cone_angle: float;
    }

    GLTFMesh :: struct {    // 272

        #as using base: Resource;

        original_name: String;
        mesh: Object;
        blend_weights: PackedFloat32Array;
        instance_materials: Array;
    }

    GLTFNode :: struct {    // 273

        #as using base: Resource;

        original_name: String;
        parent: int;
        height: int;
        xform: Transform3D;
        mesh: int;
        camera: int;
        skin: int;
        skeleton: int;
        position: Vector3;
        rotation: Quaternion;
        scale: Vector3;
        children: PackedInt32Array;
        light: int;
    }

    GLTFPhysicsBody :: struct {    // 274

        #as using base: Resource;

        body_type: String;
        mass: float;
        linear_velocity: Vector3;
        angular_velocity: Vector3;
        center_of_mass: Vector3;
        inertia_diagonal: Vector3;
        inertia_orientation: Quaternion;
        inertia_tensor: Basis;
    }

    GLTFPhysicsShape :: struct {    // 275

        #as using base: Resource;

        shape_type: String;
        size: Vector3;
        radius: float;
        height: float;
        is_trigger: bool;
        mesh_index: int;
        importer_mesh: ImporterMesh;
    }

    GLTFSkeleton :: struct {    // 276

        #as using base: Resource;

        joints: PackedInt32Array;
        roots: PackedInt32Array;
        unique_names: Array;
        godot_bone_node: Dictionary;
    }

    GLTFSkin :: struct {    // 277

        #as using base: Resource;

        skin_root: int;
        joints_original: PackedInt32Array;
        inverse_binds: Array;
        joints: PackedInt32Array;
        non_joints: PackedInt32Array;
        roots: PackedInt32Array;
        skeleton: int;
        joint_i_to_bone_i: Dictionary;
        joint_i_to_name: Dictionary;
        godot_skin: Skin;
    }

    GLTFSpecGloss :: struct {    // 278

        #as using base: Resource;

        diffuse_img: Object;
        diffuse_factor: Color;
        gloss_factor: float;
        specular_factor: Color;
        spec_gloss_img: Object;
    }

    GLTFState :: struct {    // 279

        #as using base: Resource;

        HANDLE_BINARY_DISCARD_TEXTURES :: 0;
        HANDLE_BINARY_EXTRACT_TEXTURES :: 1;
        HANDLE_BINARY_EMBED_AS_BASISU :: 2;
        HANDLE_BINARY_EMBED_AS_UNCOMPRESSED :: 3;
        json: Dictionary;
        major_version: int;
        minor_version: int;
        copyright: String;
        glb_data: PackedByteArray;
        use_named_skin_binds: bool;
        nodes: Array;
        buffers: Array;
        buffer_views: Array;
        accessors: Array;
        meshes: Array;
        materials: Array;
        scene_name: String;
        base_path: String;
        filename: String;
        root_nodes: PackedInt32Array;
        textures: Array;
        texture_samplers: Array;
        images: Array;
        skins: Array;
        cameras: Array;
        lights: Array;
        unique_names: Array;
        unique_animation_names: Array;
        skeletons: Array;
        create_animations: bool;
        import_as_skeleton_bones: bool;
        animations: Array;
        handle_binary_image: int;
    }

    GLTFTexture :: struct {    // 280

        #as using base: Resource;

        src_image: int;
        sampler: int;
    }

    GLTFTextureSampler :: struct {    // 281

        #as using base: Resource;

        mag_filter: int;
        min_filter: int;
        wrap_s: int;
        wrap_t: int;
    }

    GPUParticles2D :: struct {    // 282

        #as using base: Node2D;

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

        emitting: bool;
        amount: int;
        amount_ratio: float;
        sub_emitter: NodePath;
        process_material: ParticleProcessMaterial,ShaderMaterial;
        texture: Texture2D;
        lifetime: float;
        one_shot: bool;
        preprocess: float;
        speed_scale: float;
        explosiveness: float;
        randomness: float;
        fixed_fps: int;
        interpolate: bool;
        fract_delta: bool;
        interp_to_end: float;
        collision_base_size: float;
        visibility_rect: Rect2;
        local_coords: bool;
        draw_order: int;
        trail_enabled: bool;
        trail_lifetime: float;
        trail_sections: int;
        trail_section_subdivisions: int;
    }

    GPUParticles3D :: struct {    // 283

        #as using base: GeometryInstance3D;

        MAX_DRAW_PASSES :: 4;


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

        emitting: bool;
        amount: int;
        amount_ratio: float;
        sub_emitter: NodePath;
        lifetime: float;
        interp_to_end: float;
        one_shot: bool;
        preprocess: float;
        speed_scale: float;
        explosiveness: float;
        randomness: float;
        fixed_fps: int;
        interpolate: bool;
        fract_delta: bool;
        collision_base_size: float;
        visibility_aabb: AABB;
        local_coords: bool;
        draw_order: int;
        transform_align: int;
        trail_enabled: bool;
        trail_lifetime: float;
        process_material: ParticleProcessMaterial,ShaderMaterial;
        draw_passes: int;
        draw_pass_1: Mesh;
        draw_pass_2: Mesh;
        draw_pass_3: Mesh;
        draw_pass_4: Mesh;
        draw_skin: Skin;
    }

    GPUParticlesAttractor3D :: struct {    // 284

        #as using base: VisualInstance3D;

        strength: float;
        attenuation: float;
        directionality: float;
        cull_mask: int;
    }

    GPUParticlesAttractorBox3D :: struct {    // 285

        #as using base: GPUParticlesAttractor3D;

        size: Vector3;
    }

    GPUParticlesAttractorSphere3D :: struct {    // 286

        #as using base: GPUParticlesAttractor3D;

        radius: float;
    }

    GPUParticlesAttractorVectorField3D :: struct {    // 287

        #as using base: GPUParticlesAttractor3D;

        size: Vector3;
        texture: Texture3D;
    }

    GPUParticlesCollision3D :: struct {    // 288

        #as using base: VisualInstance3D;

        cull_mask: int;
    }

    GPUParticlesCollisionBox3D :: struct {    // 289

        #as using base: GPUParticlesCollision3D;

        size: Vector3;
    }

    GPUParticlesCollisionHeightField3D :: struct {    // 290

        #as using base: GPUParticlesCollision3D;

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

        size: Vector3;
        resolution: int;
        update_mode: int;
        follow_camera_enabled: bool;
    }

    GPUParticlesCollisionSDF3D :: struct {    // 291

        #as using base: GPUParticlesCollision3D;

        Resolution :: enum s32 {
            RESOLUTION_16 :: 0;
            RESOLUTION_32 :: 1;
            RESOLUTION_64 :: 2;
            RESOLUTION_128 :: 3;
            RESOLUTION_256 :: 4;
            RESOLUTION_512 :: 5;
            RESOLUTION_MAX :: 6;
        }

        size: Vector3;
        resolution: int;
        thickness: float;
        bake_mask: int;
        texture: Texture3D;
    }

    GPUParticlesCollisionSphere3D :: struct {    // 292

        #as using base: GPUParticlesCollision3D;

        radius: float;
    }

    Generic6DOFJoint3D :: struct {    // 293

        #as using base: Joint3D;

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

        #as using base: Object;

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

    Geometry3D :: struct {    // 295

        #as using base: Object;
    }

    GeometryInstance3D :: struct {    // 296

        #as using base: VisualInstance3D;

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

        material_override: BaseMaterial3D,ShaderMaterial;
        material_overlay: BaseMaterial3D,ShaderMaterial;
        transparency: float;
        cast_shadow: int;
        extra_cull_margin: float;
        custom_aabb: AABB;
        lod_bias: float;
        ignore_occlusion_culling: bool;
        gi_mode: int;
        gi_lightmap_scale: int;
        visibility_range_begin: float;
        visibility_range_begin_margin: float;
        visibility_range_end: float;
        visibility_range_end_margin: float;
        visibility_range_fade_mode: int;
    }

    Gradient :: struct {    // 297

        #as using base: Resource;

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

        interpolation_mode: int;
        interpolation_color_space: int;
        offsets: PackedFloat32Array;
        colors: PackedColorArray;
    }

    GradientTexture1D :: struct {    // 298

        #as using base: Texture2D;

        gradient: Gradient;
        width: int;
        use_hdr: bool;
    }

    GradientTexture2D :: struct {    // 299

        #as using base: Texture2D;

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

        gradient: Gradient;
        width: int;
        height: int;
        use_hdr: bool;
        fill: int;
        fill_from: Vector2;
        fill_to: Vector2;
        repeat: int;
    }

    GraphEdit :: struct {    // 300

        #as using base: Control;

        PanningScheme :: enum s32 {
            SCROLL_ZOOMS :: 0;
            SCROLL_PANS :: 1;
        }

        GridPattern :: enum s32 {
            GRID_PATTERN_LINES :: 0;
            GRID_PATTERN_DOTS :: 1;
        }

        scroll_offset: Vector2;
        show_grid: bool;
        grid_pattern: int;
        snapping_enabled: bool;
        snapping_distance: int;
        panning_scheme: int;
        right_disconnects: bool;
        connection_lines_curvature: float;
        connection_lines_thickness: float;
        connection_lines_antialiased: bool;
        zoom: float;
        zoom_min: float;
        zoom_max: float;
        zoom_step: float;
        minimap_enabled: bool;
        minimap_size: Vector2;
        minimap_opacity: float;
        show_menu: bool;
        show_zoom_label: bool;
        show_zoom_buttons: bool;
        show_grid_buttons: bool;
        show_minimap_button: bool;
        show_arrange_button: bool;
    }

    GraphElement :: struct {    // 301

        #as using base: Container;

        position_offset: Vector2;
        resizable: bool;
        draggable: bool;
        selectable: bool;
        selected: bool;
    }

    GraphNode :: struct {    // 302

        #as using base: GraphElement;

        title: String;
    }

    GridContainer :: struct {    // 303

        #as using base: Container;

        columns: int;
    }

    GridMap :: struct {    // 304

        #as using base: Node3D;

        INVALID_CELL_ITEM :: -1;
        mesh_library: MeshLibrary;
        physics_material: PhysicsMaterial;
        cell_size: Vector3;
        cell_octant_size: int;
        cell_center_x: bool;
        cell_center_y: bool;
        cell_center_z: bool;
        cell_scale: float;
        collision_layer: int;
        collision_mask: int;
        collision_priority: float;
        bake_navigation: bool;
    }

    GrooveJoint2D :: struct {    // 305

        #as using base: Joint2D;

        length: float;
        initial_offset: float;
    }

    HBoxContainer :: struct {    // 306

        #as using base: BoxContainer;
    }

    HFlowContainer :: struct {    // 307

        #as using base: FlowContainer;
    }

    HMACContext :: struct {    // 308

        #as using base: RefCounted;
    }

    HScrollBar :: struct {    // 309

        #as using base: ScrollBar;
    }

    HSeparator :: struct {    // 310

        #as using base: Separator;
    }

    HSlider :: struct {    // 311

        #as using base: Slider;
    }

    HSplitContainer :: struct {    // 312

        #as using base: SplitContainer;
    }

    HTTPClient :: struct {    // 313

        #as using base: RefCounted;

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

        blocking_mode_enabled: bool;
        connection: StreamPeer;
        read_chunk_size: int;
    }

    HTTPRequest :: struct {    // 314

        #as using base: Node;

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

        download_file: String;
        download_chunk_size: int;
        use_threads: bool;
        accept_gzip: bool;
        body_size_limit: int;
        max_redirects: int;
        timeout: float;
    }

    HashingContext :: struct {    // 315

        #as using base: RefCounted;

        HashType :: enum s32 {
            HASH_MD5 :: 0;
            HASH_SHA1 :: 1;
            HASH_SHA256 :: 2;
        }
    }

    HeightMapShape3D :: struct {    // 316

        #as using base: Shape3D;

        map_width: int;
        map_depth: int;
        map_data: PackedFloat32Array;
    }

    HingeJoint3D :: struct {    // 317

        #as using base: Joint3D;

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

        #as using base: Object;

        RESOLVER_MAX_QUERIES :: 256;
        RESOLVER_INVALID_ID :: -1;


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

        #as using base: Resource;

        MAX_WIDTH :: 16777216;
        MAX_HEIGHT :: 16777216;


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

        data: Dictionary;
    }

    ImageFormatLoader :: struct {    // 320

        #as using base: RefCounted;

        LoaderFlags :: enum u64 {
            FLAG_NONE :: 0;
            FLAG_FORCE_LINEAR :: 1;
            FLAG_CONVERT_COLORS :: 2;
        } @bitfield
    }

    ImageFormatLoaderExtension :: struct {    // 321

        #as using base: ImageFormatLoader;
    }

    ImageTexture :: struct {    // 322

        #as using base: Texture2D;
    }

    ImageTexture3D :: struct {    // 323

        #as using base: Texture3D;
    }

    ImageTextureLayered :: struct {    // 324

        #as using base: TextureLayered;
    }

    ImmediateMesh :: struct {    // 325

        #as using base: Mesh;
    }

    ImporterMesh :: struct {    // 326

        #as using base: Resource;
    }

    ImporterMeshInstance3D :: struct {    // 327

        #as using base: Node3D;

        mesh: ImporterMesh;
        skin: Skin;
        skeleton_path: NodePath;
        layer_mask: int;
        cast_shadow: int;
        visibility_range_begin: float;
        visibility_range_begin_margin: float;
        visibility_range_end: float;
        visibility_range_end_margin: float;
        visibility_range_fade_mode: int;
    }

    Input :: struct {    // 328

        #as using base: Object;

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

        mouse_mode: int;
        use_accumulated_input: bool;
        emulate_mouse_from_touch: bool;
        emulate_touch_from_mouse: bool;
    }

    InputEvent :: struct {    // 329

        #as using base: Resource;

        device: int;
    }

    InputEventAction :: struct {    // 330

        #as using base: InputEvent;

        action: StringName;
        pressed: bool;
        strength: float;
    }

    InputEventFromWindow :: struct {    // 331

        #as using base: InputEvent;

        window_id: int;
    }

    InputEventGesture :: struct {    // 332

        #as using base: InputEventWithModifiers;

        position: Vector2;
    }

    InputEventJoypadButton :: struct {    // 333

        #as using base: InputEvent;

        button_index: int;
        pressure: float;
        pressed: bool;
    }

    InputEventJoypadMotion :: struct {    // 334

        #as using base: InputEvent;

        axis: int;
        axis_value: float;
    }

    InputEventKey :: struct {    // 335

        #as using base: InputEventWithModifiers;

        pressed: bool;
        keycode: int;
        physical_keycode: int;
        key_label: int;
        unicode: int;
        location: int;
        echo: bool;
    }

    InputEventMIDI :: struct {    // 336

        #as using base: InputEvent;

        channel: int;
        message: int;
        pitch: int;
        velocity: int;
        instrument: int;
        pressure: int;
        controller_number: int;
        controller_value: int;
    }

    InputEventMagnifyGesture :: struct {    // 337

        #as using base: InputEventGesture;

        factor: float;
    }

    InputEventMouse :: struct {    // 338

        #as using base: InputEventWithModifiers;

        button_mask: int;
        position: Vector2;
        global_position: Vector2;
    }

    InputEventMouseButton :: struct {    // 339

        #as using base: InputEventMouse;

        factor: float;
        button_index: int;
        canceled: bool;
        pressed: bool;
        double_click: bool;
    }

    InputEventMouseMotion :: struct {    // 340

        #as using base: InputEventMouse;

        tilt: Vector2;
        pressure: float;
        pen_inverted: bool;
        relative: Vector2;
        screen_relative: Vector2;
        velocity: Vector2;
        screen_velocity: Vector2;
    }

    InputEventPanGesture :: struct {    // 341

        #as using base: InputEventGesture;

        delta: Vector2;
    }

    InputEventScreenDrag :: struct {    // 342

        #as using base: InputEventFromWindow;

        index: int;
        tilt: Vector2;
        pressure: float;
        pen_inverted: bool;
        position: Vector2;
        relative: Vector2;
        screen_relative: Vector2;
        velocity: Vector2;
        screen_velocity: Vector2;
    }

    InputEventScreenTouch :: struct {    // 343

        #as using base: InputEventFromWindow;

        index: int;
        position: Vector2;
        canceled: bool;
        pressed: bool;
        double_tap: bool;
    }

    InputEventShortcut :: struct {    // 344

        #as using base: InputEvent;

        shortcut: Shortcut;
    }

    InputEventWithModifiers :: struct {    // 345

        #as using base: InputEventFromWindow;

        command_or_control_autoremap: bool;
        alt_pressed: bool;
        shift_pressed: bool;
        ctrl_pressed: bool;
        meta_pressed: bool;
    }

    InputMap :: struct {    // 346

        #as using base: Object;
    }

    InstancePlaceholder :: struct {    // 347

        #as using base: Node;
    }

    IntervalTweener :: struct {    // 348

        #as using base: Tweener;
    }

    ItemList :: struct {    // 349

        #as using base: Control;

        IconMode :: enum s32 {
            ICON_MODE_TOP :: 0;
            ICON_MODE_LEFT :: 1;
        }

        SelectMode :: enum s32 {
            SELECT_SINGLE :: 0;
            SELECT_MULTI :: 1;
        }

        select_mode: int;
        allow_reselect: bool;
        allow_rmb_select: bool;
        allow_search: bool;
        max_text_lines: int;
        auto_height: bool;
        text_overrun_behavior: int;
        item_count: int;
        max_columns: int;
        same_column_width: bool;
        fixed_column_width: int;
        icon_mode: int;
        icon_scale: float;
        fixed_icon_size: Vector2i;
    }

    JNISingleton :: struct {    // 350

        #as using base: Object;
    }

    JSON :: struct {    // 351

        #as using base: Resource;

        data: Variant;
    }

    JSONRPC :: struct {    // 352

        #as using base: Object;

        ErrorCode :: enum s32 {
            PARSE_ERROR :: -32700;
            INVALID_REQUEST :: -32600;
            METHOD_NOT_FOUND :: -32601;
            INVALID_PARAMS :: -32602;
            INTERNAL_ERROR :: -32603;
        }
    }

    JavaClass :: struct {    // 353

        #as using base: RefCounted;
    }

    JavaClassWrapper :: struct {    // 354

        #as using base: Object;
    }

    JavaScriptBridge :: struct {    // 355

        #as using base: Object;
    }

    JavaScriptObject :: struct {    // 356

        #as using base: RefCounted;
    }

    Joint2D :: struct {    // 357

        #as using base: Node2D;

        node_a: NodePath;
        node_b: NodePath;
        bias: float;
        disable_collision: bool;
    }

    Joint3D :: struct {    // 358

        #as using base: Node3D;

        node_a: NodePath;
        node_b: NodePath;
        solver_priority: int;
        exclude_nodes_from_collision: bool;
    }

    KinematicCollision2D :: struct {    // 359

        #as using base: RefCounted;
    }

    KinematicCollision3D :: struct {    // 360

        #as using base: RefCounted;
    }

    Label :: struct {    // 361

        #as using base: Control;

        text: String;
        label_settings: LabelSettings;
        horizontal_alignment: int;
        vertical_alignment: int;
        autowrap_mode: int;
        justification_flags: int;
        clip_text: bool;
        text_overrun_behavior: int;
        ellipsis_char: String;
        uppercase: bool;
        tab_stops: PackedFloat32Array;
        lines_skipped: int;
        max_lines_visible: int;
        visible_characters: int;
        visible_characters_behavior: int;
        visible_ratio: float;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    Label3D :: struct {    // 362

        #as using base: GeometryInstance3D;

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

        pixel_size: float;
        offset: Vector2;
        billboard: int;
        shaded: bool;
        double_sided: bool;
        no_depth_test: bool;
        fixed_size: bool;
        alpha_cut: int;
        alpha_scissor_threshold: float;
        alpha_hash_scale: float;
        alpha_antialiasing_mode: int;
        alpha_antialiasing_edge: float;
        texture_filter: int;
        render_priority: int;
        outline_render_priority: int;
        modulate: Color;
        outline_modulate: Color;
        text: String;
        font: Font;
        font_size: int;
        outline_size: int;
        horizontal_alignment: int;
        vertical_alignment: int;
        uppercase: bool;
        line_spacing: float;
        autowrap_mode: int;
        justification_flags: int;
        width: float;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    LabelSettings :: struct {    // 363

        #as using base: Resource;

        line_spacing: float;
        font: Font;
        font_size: int;
        font_color: Color;
        outline_size: int;
        outline_color: Color;
        shadow_size: int;
        shadow_color: Color;
        shadow_offset: Vector2;
    }

    Light2D :: struct {    // 364

        #as using base: Node2D;

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

        enabled: bool;
        editor_only: bool;
        color: Color;
        energy: float;
        blend_mode: int;
        range_z_min: int;
        range_z_max: int;
        range_layer_min: int;
        range_layer_max: int;
        range_item_cull_mask: int;
        shadow_enabled: bool;
        shadow_color: Color;
        shadow_filter: int;
        shadow_filter_smooth: float;
        shadow_item_cull_mask: int;
    }

    Light3D :: struct {    // 365

        #as using base: VisualInstance3D;

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

        light_intensity_lumens: float;
        light_intensity_lux: float;
        light_temperature: float;
        light_color: Color;
        light_energy: float;
        light_indirect_energy: float;
        light_volumetric_fog_energy: float;
        light_projector: Texture2D;
        light_size: float;
        light_angular_distance: float;
        light_negative: bool;
        light_specular: float;
        light_bake_mode: int;
        light_cull_mask: int;
        shadow_enabled: bool;
        shadow_bias: float;
        shadow_normal_bias: float;
        shadow_reverse_cull_face: bool;
        shadow_transmittance_bias: float;
        shadow_opacity: float;
        shadow_blur: float;
        distance_fade_enabled: bool;
        distance_fade_begin: float;
        distance_fade_shadow: float;
        distance_fade_length: float;
        editor_only: bool;
    }

    LightOccluder2D :: struct {    // 366

        #as using base: Node2D;

        occluder: OccluderPolygon2D;
        sdf_collision: bool;
        occluder_light_mask: int;
    }

    LightmapGI :: struct {    // 367

        #as using base: VisualInstance3D;

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

        quality: int;
        bounces: int;
        bounce_indirect_energy: float;
        directional: bool;
        use_texture_for_bounces: bool;
        interior: bool;
        use_denoiser: bool;
        denoiser_strength: float;
        bias: float;
        texel_scale: float;
        max_texture_size: int;
        environment_mode: int;
        environment_custom_sky: Sky;
        environment_custom_color: Color;
        environment_custom_energy: float;
        camera_attributes: CameraAttributesPractical,CameraAttributesPhysical;
        generate_probes_subdiv: int;
        light_data: LightmapGIData;
    }

    LightmapGIData :: struct {    // 368

        #as using base: Resource;

        lightmap_textures: typedarray::TextureLayered;
        uses_spherical_harmonics: bool;
        user_data: Array;
        probe_data: Dictionary;
        light_texture: TextureLayered;
        light_textures: Array;
    }

    LightmapProbe :: struct {    // 369

        #as using base: Node3D;
    }

    Lightmapper :: struct {    // 370

        #as using base: RefCounted;
    }

    LightmapperRD :: struct {    // 371

        #as using base: Lightmapper;
    }

    Line2D :: struct {    // 372

        #as using base: Node2D;

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

        points: PackedVector2Array;
        closed: bool;
        width: float;
        width_curve: Curve;
        default_color: Color;
        gradient: Gradient;
        texture: Texture2D;
        texture_mode: int;
        joint_mode: int;
        begin_cap_mode: int;
        end_cap_mode: int;
        sharp_limit: float;
        round_precision: int;
        antialiased: bool;
    }

    LineEdit :: struct {    // 373

        #as using base: Control;

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

        text: String;
        placeholder_text: String;
        alignment: int;
        max_length: int;
        editable: bool;
        expand_to_text_length: bool;
        context_menu_enabled: bool;
        virtual_keyboard_enabled: bool;
        virtual_keyboard_type: int;
        clear_button_enabled: bool;
        shortcut_keys_enabled: bool;
        middle_mouse_paste_enabled: bool;
        selecting_enabled: bool;
        deselect_on_focus_loss_enabled: bool;
        drag_and_drop_selection_enabled: bool;
        right_icon: Texture2D;
        flat: bool;
        draw_control_chars: bool;
        select_all_on_focus: bool;
        caret_blink: bool;
        caret_blink_interval: float;
        caret_column: int;
        caret_force_displayed: bool;
        caret_mid_grapheme: bool;
        secret: bool;
        secret_character: String;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    LinkButton :: struct {    // 374

        #as using base: BaseButton;

        UnderlineMode :: enum s32 {
            UNDERLINE_MODE_ALWAYS :: 0;
            UNDERLINE_MODE_ON_HOVER :: 1;
            UNDERLINE_MODE_NEVER :: 2;
        }

        text: String;
        underline: int;
        uri: String;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    MainLoop :: struct {    // 375

        #as using base: Object;

        NOTIFICATION_OS_MEMORY_WARNING :: 2009;
        NOTIFICATION_TRANSLATION_CHANGED :: 2010;
        NOTIFICATION_WM_ABOUT :: 2011;
        NOTIFICATION_CRASH :: 2012;
        NOTIFICATION_OS_IME_UPDATE :: 2013;
        NOTIFICATION_APPLICATION_RESUMED :: 2014;
        NOTIFICATION_APPLICATION_PAUSED :: 2015;
        NOTIFICATION_APPLICATION_FOCUS_IN :: 2016;
        NOTIFICATION_APPLICATION_FOCUS_OUT :: 2017;
        NOTIFICATION_TEXT_SERVER_CHANGED :: 2018;

    }

    MarginContainer :: struct {    // 376

        #as using base: Container;
    }

    Marker2D :: struct {    // 377

        #as using base: Node2D;

        gizmo_extents: float;
    }

    Marker3D :: struct {    // 378

        #as using base: Node3D;

        gizmo_extents: float;
    }

    Marshalls :: struct {    // 379

        #as using base: Object;
    }

    Material :: struct {    // 380

        #as using base: Resource;

        RENDER_PRIORITY_MAX :: 127;
        RENDER_PRIORITY_MIN :: -128;
        render_priority: int;
        next_pass: Material;
    }

    MenuBar :: struct {    // 381

        #as using base: Control;

        flat: bool;
        start_index: int;
        switch_on_hover: bool;
        prefer_global_menu: bool;
        text_direction: int;
        language: String;
    }

    MenuButton :: struct {    // 382

        #as using base: Button;

        switch_on_hover: bool;
        item_count: int;
    }

    Mesh :: struct {    // 383

        #as using base: Resource;

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

        lightmap_size_hint: Vector2i;
    }

    MeshConvexDecompositionSettings :: struct {    // 384

        #as using base: RefCounted;

        Mode :: enum s32 {
            CONVEX_DECOMPOSITION_MODE_VOXEL :: 0;
            CONVEX_DECOMPOSITION_MODE_TETRAHEDRON :: 1;
        }

        max_concavity: float;
        symmetry_planes_clipping_bias: float;
        revolution_axes_clipping_bias: float;
        min_volume_per_convex_hull: float;
        resolution: int;
        max_num_vertices_per_convex_hull: int;
        plane_downsampling: int;
        convex_hull_downsampling: int;
        normalize_mesh: bool;
        mode: int;
        convex_hull_approximation: bool;
        max_convex_hulls: int;
        project_hull_vertices: bool;
    }

    MeshDataTool :: struct {    // 385

        #as using base: RefCounted;
    }

    MeshInstance2D :: struct {    // 386

        #as using base: Node2D;

        mesh: Mesh;
        texture: Texture2D;
    }

    MeshInstance3D :: struct {    // 387

        #as using base: GeometryInstance3D;

        mesh: Mesh;
        skin: Skin;
        skeleton: NodePath;
    }

    MeshLibrary :: struct {    // 388

        #as using base: Resource;
    }

    MeshTexture :: struct {    // 389

        #as using base: Texture2D;

        mesh: Mesh;
        base_texture: Texture2D;
        image_size: Vector2;
    }

    MethodTweener :: struct {    // 390

        #as using base: Tweener;
    }

    MissingNode :: struct {    // 391

        #as using base: Node;

        original_class: String;
        original_scene: String;
        recording_properties: bool;
    }

    MissingResource :: struct {    // 392

        #as using base: Resource;

        original_class: String;
        recording_properties: bool;
    }

    MobileVRInterface :: struct {    // 393

        #as using base: XRInterface;

        eye_height: float;
        iod: float;
        display_width: float;
        display_to_lens: float;
        oversample: float;
        k1: float;
        k2: float;
    }

    MovieWriter :: struct {    // 394

        #as using base: Object;
    }

    MultiMesh :: struct {    // 395

        #as using base: Resource;

        TransformFormat :: enum s32 {
            TRANSFORM_2D :: 0;
            TRANSFORM_3D :: 1;
        }

        transform_format: int;
        use_colors: bool;
        use_custom_data: bool;
        custom_aabb: AABB;
        instance_count: int;
        visible_instance_count: int;
        mesh: Mesh;
        buffer: PackedFloat32Array;
        transform_array: PackedVector3Array;
        transform_2d_array: PackedVector2Array;
        color_array: PackedColorArray;
        custom_data_array: PackedColorArray;
    }

    MultiMeshInstance2D :: struct {    // 396

        #as using base: Node2D;

        multimesh: MultiMesh;
        texture: Texture2D;
    }

    MultiMeshInstance3D :: struct {    // 397

        #as using base: GeometryInstance3D;

        multimesh: MultiMesh;
    }

    MultiplayerAPI :: struct {    // 398

        #as using base: RefCounted;

        RPCMode :: enum s32 {
            RPC_MODE_DISABLED :: 0;
            RPC_MODE_ANY_PEER :: 1;
            RPC_MODE_AUTHORITY :: 2;
        }

        multiplayer_peer: MultiplayerPeer;
    }

    MultiplayerAPIExtension :: struct {    // 399

        #as using base: MultiplayerAPI;
    }

    MultiplayerPeer :: struct {    // 400

        #as using base: PacketPeer;

        TARGET_PEER_BROADCAST :: 0;
        TARGET_PEER_SERVER :: 1;


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

        refuse_new_connections: bool;
        transfer_mode: int;
        transfer_channel: int;
    }

    MultiplayerPeerExtension :: struct {    // 401

        #as using base: MultiplayerPeer;
    }

    MultiplayerSpawner :: struct {    // 402

        #as using base: Node;

        spawn_path: NodePath;
        spawn_limit: int;
        spawn_function: Callable;
    }

    MultiplayerSynchronizer :: struct {    // 403

        #as using base: Node;

        VisibilityUpdateMode :: enum s32 {
            VISIBILITY_PROCESS_IDLE :: 0;
            VISIBILITY_PROCESS_PHYSICS :: 1;
            VISIBILITY_PROCESS_NONE :: 2;
        }

        root_path: NodePath;
        replication_interval: float;
        delta_interval: float;
        replication_config: SceneReplicationConfig;
        visibility_update_mode: int;
        public_visibility: bool;
    }

    Mutex :: struct {    // 404

        #as using base: RefCounted;
    }

    NativeMenu :: struct {    // 405

        #as using base: Object;

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

    NavigationAgent2D :: struct {    // 406

        #as using base: Node;

        target_position: Vector2;
        path_desired_distance: float;
        target_desired_distance: float;
        path_max_distance: float;
        navigation_layers: int;
        pathfinding_algorithm: int;
        path_postprocessing: int;
        path_metadata_flags: int;
        avoidance_enabled: bool;
        velocity: Vector2;
        radius: float;
        neighbor_distance: float;
        max_neighbors: int;
        time_horizon_agents: float;
        time_horizon_obstacles: float;
        max_speed: float;
        avoidance_layers: int;
        avoidance_mask: int;
        avoidance_priority: float;
        debug_enabled: bool;
        debug_use_custom: bool;
        debug_path_custom_color: Color;
        debug_path_custom_point_size: float;
        debug_path_custom_line_width: float;
    }

    NavigationAgent3D :: struct {    // 407

        #as using base: Node;

        target_position: Vector3;
        path_desired_distance: float;
        target_desired_distance: float;
        path_height_offset: float;
        path_max_distance: float;
        navigation_layers: int;
        pathfinding_algorithm: int;
        path_postprocessing: int;
        path_metadata_flags: int;
        avoidance_enabled: bool;
        velocity: Vector3;
        height: float;
        radius: float;
        neighbor_distance: float;
        max_neighbors: int;
        time_horizon_agents: float;
        time_horizon_obstacles: float;
        max_speed: float;
        use_3d_avoidance: bool;
        keep_y_velocity: bool;
        avoidance_layers: int;
        avoidance_mask: int;
        avoidance_priority: float;
        debug_enabled: bool;
        debug_use_custom: bool;
        debug_path_custom_color: Color;
        debug_path_custom_point_size: float;
    }

    NavigationLink2D :: struct {    // 408

        #as using base: Node2D;

        enabled: bool;
        bidirectional: bool;
        navigation_layers: int;
        start_position: Vector2;
        end_position: Vector2;
        enter_cost: float;
        travel_cost: float;
    }

    NavigationLink3D :: struct {    // 409

        #as using base: Node3D;

        enabled: bool;
        bidirectional: bool;
        navigation_layers: int;
        start_position: Vector3;
        end_position: Vector3;
        enter_cost: float;
        travel_cost: float;
    }

    NavigationMesh :: struct {    // 410

        #as using base: Resource;

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

        vertices: PackedVector3Array;
        polygons: Array;
        sample_partition_type: int;
        geometry_parsed_geometry_type: int;
        geometry_collision_mask: int;
        geometry_source_geometry_mode: int;
        geometry_source_group_name: String;
        cell_size: float;
        cell_height: float;
        border_size: float;
        agent_height: float;
        agent_radius: float;
        agent_max_climb: float;
        agent_max_slope: float;
        region_min_size: float;
        region_merge_size: float;
        edge_max_length: float;
        edge_max_error: float;
        vertices_per_polygon: float;
        detail_sample_distance: float;
        detail_sample_max_error: float;
        filter_low_hanging_obstacles: bool;
        filter_ledge_spans: bool;
        filter_walkable_low_height_spans: bool;
        filter_baking_aabb: AABB;
        filter_baking_aabb_offset: Vector3;
    }

    NavigationMeshGenerator :: struct {    // 411

        #as using base: Object;
    }

    NavigationMeshSourceGeometryData2D :: struct {    // 412

        #as using base: Resource;

        traversable_outlines: Array;
        obstruction_outlines: Array;
        projected_obstructions: Array;
    }

    NavigationMeshSourceGeometryData3D :: struct {    // 413

        #as using base: Resource;

        vertices: PackedVector3Array;
        indices: PackedInt32Array;
        projected_obstructions: Array;
    }

    NavigationObstacle2D :: struct {    // 414

        #as using base: Node2D;

        radius: float;
        vertices: PackedVector2Array;
        affect_navigation_mesh: bool;
        carve_navigation_mesh: bool;
        avoidance_enabled: bool;
        velocity: Vector2;
        avoidance_layers: int;
    }

    NavigationObstacle3D :: struct {    // 415

        #as using base: Node3D;

        radius: float;
        height: float;
        vertices: PackedVector3Array;
        affect_navigation_mesh: bool;
        carve_navigation_mesh: bool;
        avoidance_enabled: bool;
        velocity: Vector3;
        avoidance_layers: int;
        use_3d_avoidance: bool;
    }

    NavigationPathQueryParameters2D :: struct {    // 416

        #as using base: RefCounted;

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

        map: RID;
        start_position: Vector2;
        target_position: Vector2;
        navigation_layers: int;
        pathfinding_algorithm: int;
        path_postprocessing: int;
        metadata_flags: int;
    }

    NavigationPathQueryParameters3D :: struct {    // 417

        #as using base: RefCounted;

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

        map: RID;
        start_position: Vector3;
        target_position: Vector3;
        navigation_layers: int;
        pathfinding_algorithm: int;
        path_postprocessing: int;
        metadata_flags: int;
    }

    NavigationPathQueryResult2D :: struct {    // 418

        #as using base: RefCounted;

        PathSegmentType :: enum s32 {
            PATH_SEGMENT_TYPE_REGION :: 0;
            PATH_SEGMENT_TYPE_LINK :: 1;
        }

        path: PackedVector2Array;
        path_types: PackedInt32Array;
        path_rids: typedarray::RID;
        path_owner_ids: PackedInt64Array;
    }

    NavigationPathQueryResult3D :: struct {    // 419

        #as using base: RefCounted;

        PathSegmentType :: enum s32 {
            PATH_SEGMENT_TYPE_REGION :: 0;
            PATH_SEGMENT_TYPE_LINK :: 1;
        }

        path: PackedVector3Array;
        path_types: PackedInt32Array;
        path_rids: typedarray::RID;
        path_owner_ids: PackedInt64Array;
    }

    NavigationPolygon :: struct {    // 420

        #as using base: Resource;

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

        vertices: PackedVector2Array;
        polygons: Array;
        outlines: Array;
        parsed_geometry_type: int;
        parsed_collision_mask: int;
        source_geometry_mode: int;
        source_geometry_group_name: String;
        cell_size: float;
        border_size: float;
        agent_radius: float;
        baking_rect: Rect2;
        baking_rect_offset: Vector2;
    }

    NavigationRegion2D :: struct {    // 421

        #as using base: Node2D;

        navigation_polygon: NavigationPolygon;
        enabled: bool;
        use_edge_connections: bool;
        navigation_layers: int;
        enter_cost: float;
        travel_cost: float;
        constrain_avoidance: bool;
        avoidance_layers: int;
    }

    NavigationRegion3D :: struct {    // 422

        #as using base: Node3D;

        navigation_mesh: NavigationMesh;
        enabled: bool;
        use_edge_connections: bool;
        navigation_layers: int;
        enter_cost: float;
        travel_cost: float;
    }

    NavigationServer2D :: struct {    // 423

        #as using base: Object;
    }

    NavigationServer3D :: struct {    // 424

        #as using base: Object;

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

        #as using base: Control;

        AxisStretchMode :: enum s32 {
            AXIS_STRETCH_MODE_STRETCH :: 0;
            AXIS_STRETCH_MODE_TILE :: 1;
            AXIS_STRETCH_MODE_TILE_FIT :: 2;
        }

        texture: Texture2D;
        draw_center: bool;
        region_rect: Rect2;
        patch_margin_left: int;
        patch_margin_top: int;
        patch_margin_right: int;
        patch_margin_bottom: int;
        axis_stretch_horizontal: int;
        axis_stretch_vertical: int;
    }

    Node :: struct {    // 426

        #as using base: Object;

        NOTIFICATION_ENTER_TREE :: 10;
        NOTIFICATION_EXIT_TREE :: 11;
        NOTIFICATION_MOVED_IN_PARENT :: 12;
        NOTIFICATION_READY :: 13;
        NOTIFICATION_PAUSED :: 14;
        NOTIFICATION_UNPAUSED :: 15;
        NOTIFICATION_PHYSICS_PROCESS :: 16;
        NOTIFICATION_PROCESS :: 17;
        NOTIFICATION_PARENTED :: 18;
        NOTIFICATION_UNPARENTED :: 19;
        NOTIFICATION_SCENE_INSTANTIATED :: 20;
        NOTIFICATION_DRAG_BEGIN :: 21;
        NOTIFICATION_DRAG_END :: 22;
        NOTIFICATION_PATH_RENAMED :: 23;
        NOTIFICATION_CHILD_ORDER_CHANGED :: 24;
        NOTIFICATION_INTERNAL_PROCESS :: 25;
        NOTIFICATION_INTERNAL_PHYSICS_PROCESS :: 26;
        NOTIFICATION_POST_ENTER_TREE :: 27;
        NOTIFICATION_DISABLED :: 28;
        NOTIFICATION_ENABLED :: 29;
        NOTIFICATION_EDITOR_PRE_SAVE :: 9001;
        NOTIFICATION_EDITOR_POST_SAVE :: 9002;
        NOTIFICATION_WM_MOUSE_ENTER :: 1002;
        NOTIFICATION_WM_MOUSE_EXIT :: 1003;
        NOTIFICATION_WM_WINDOW_FOCUS_IN :: 1004;
        NOTIFICATION_WM_WINDOW_FOCUS_OUT :: 1005;
        NOTIFICATION_WM_CLOSE_REQUEST :: 1006;
        NOTIFICATION_WM_GO_BACK_REQUEST :: 1007;
        NOTIFICATION_WM_SIZE_CHANGED :: 1008;
        NOTIFICATION_WM_DPI_CHANGE :: 1009;
        NOTIFICATION_VP_MOUSE_ENTER :: 1010;
        NOTIFICATION_VP_MOUSE_EXIT :: 1011;
        NOTIFICATION_OS_MEMORY_WARNING :: 2009;
        NOTIFICATION_TRANSLATION_CHANGED :: 2010;
        NOTIFICATION_WM_ABOUT :: 2011;
        NOTIFICATION_CRASH :: 2012;
        NOTIFICATION_OS_IME_UPDATE :: 2013;
        NOTIFICATION_APPLICATION_RESUMED :: 2014;
        NOTIFICATION_APPLICATION_PAUSED :: 2015;
        NOTIFICATION_APPLICATION_FOCUS_IN :: 2016;
        NOTIFICATION_APPLICATION_FOCUS_OUT :: 2017;
        NOTIFICATION_TEXT_SERVER_CHANGED :: 2018;


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

        name: StringName;
        unique_name_in_owner: bool;
        scene_file_path: String;
        owner: Node;
        multiplayer: MultiplayerAPI;
        process_mode: int;
        process_priority: int;
        process_physics_priority: int;
        process_thread_group: int;
        process_thread_group_order: int;
        process_thread_messages: int;
        auto_translate_mode: int;
        editor_description: String;
    }

    Node2D :: struct {    // 427

        #as using base: CanvasItem;

        position: Vector2;
        rotation: float;
        rotation_degrees: float;
        scale: Vector2;
        skew: float;
        transform: Transform2D;
        global_position: Vector2;
        global_rotation: float;
        global_rotation_degrees: float;
        global_scale: Vector2;
        global_skew: float;
        global_transform: Transform2D;
    }

    Node3D :: struct {    // 428

        #as using base: Node;

        NOTIFICATION_TRANSFORM_CHANGED :: 2000;
        NOTIFICATION_ENTER_WORLD :: 41;
        NOTIFICATION_EXIT_WORLD :: 42;
        NOTIFICATION_VISIBILITY_CHANGED :: 43;
        NOTIFICATION_LOCAL_TRANSFORM_CHANGED :: 44;


        RotationEditMode :: enum s32 {
            ROTATION_EDIT_MODE_EULER :: 0;
            ROTATION_EDIT_MODE_QUATERNION :: 1;
            ROTATION_EDIT_MODE_BASIS :: 2;
        }

        transform: Transform3D;
        global_transform: Transform3D;
        position: Vector3;
        rotation: Vector3;
        rotation_degrees: Vector3;
        quaternion: Quaternion;
        basis: Basis;
        scale: Vector3;
        rotation_edit_mode: int;
        rotation_order: int;
        top_level: bool;
        global_position: Vector3;
        global_basis: Basis;
        global_rotation: Vector3;
        global_rotation_degrees: Vector3;
        visible: bool;
        visibility_parent: NodePath;
    }

    Node3DGizmo :: struct {    // 429

        #as using base: RefCounted;
    }

    Noise :: struct {    // 430

        #as using base: Resource;
    }

    NoiseTexture2D :: struct {    // 431

        #as using base: Texture2D;

        width: int;
        height: int;
        invert: bool;
        in_3d_space: bool;
        generate_mipmaps: bool;
        seamless: bool;
        seamless_blend_skirt: float;
        as_normal_map: bool;
        bump_strength: float;
        normalize: bool;
        color_ramp: Gradient;
        noise: Noise;
    }

    NoiseTexture3D :: struct {    // 432

        #as using base: Texture3D;

        width: int;
        height: int;
        depth: int;
        invert: bool;
        seamless: bool;
        seamless_blend_skirt: float;
        normalize: bool;
        color_ramp: Gradient;
        noise: Noise;
    }

    ORMMaterial3D :: struct {    // 433

        #as using base: BaseMaterial3D;
    }

    OS :: struct {    // 434

        #as using base: Object;

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

        low_processor_usage_mode: bool;
        low_processor_usage_mode_sleep_usec: int;
        delta_smoothing: bool;
    }

    Object :: struct {    // 435

        NOTIFICATION_POSTINITIALIZE :: 0;
        NOTIFICATION_PREDELETE :: 1;
        NOTIFICATION_EXTENSION_RELOADED :: 2;


        ConnectFlags :: enum s32 {
            CONNECT_DEFERRED :: 1;
            CONNECT_PERSIST :: 2;
            CONNECT_ONE_SHOT :: 4;
            CONNECT_REFERENCE_COUNTED :: 8;
        }
    }

    Occluder3D :: struct {    // 436

        #as using base: Resource;
    }

    OccluderInstance3D :: struct {    // 437

        #as using base: Node3D;

        occluder: Occluder3D;
        bake_mask: int;
        bake_simplification_distance: float;
    }

    OccluderPolygon2D :: struct {    // 438

        #as using base: Resource;

        CullMode :: enum s32 {
            CULL_DISABLED :: 0;
            CULL_CLOCKWISE :: 1;
            CULL_COUNTER_CLOCKWISE :: 2;
        }

        closed: bool;
        cull_mode: int;
        polygon: PackedVector2Array;
    }

    OfflineMultiplayerPeer :: struct {    // 439

        #as using base: MultiplayerPeer;
    }

    OggPacketSequence :: struct {    // 440

        #as using base: Resource;

        packet_data: typedarray::PackedByteArray;
        granule_positions: PackedInt64Array;
        sampling_rate: float;
    }

    OggPacketSequencePlayback :: struct {    // 441

        #as using base: RefCounted;
    }

    OmniLight3D :: struct {    // 442

        #as using base: Light3D;

        ShadowMode :: enum s32 {
            SHADOW_DUAL_PARABOLOID :: 0;
            SHADOW_CUBE :: 1;
        }

        omni_range: float;
        omni_attenuation: float;
        omni_shadow_mode: int;
    }

    OpenXRAPIExtension :: struct {    // 443

        #as using base: RefCounted;

        OpenXRAlphaBlendModeSupport :: enum s32 {
            OPENXR_ALPHA_BLEND_MODE_SUPPORT_NONE :: 0;
            OPENXR_ALPHA_BLEND_MODE_SUPPORT_REAL :: 1;
            OPENXR_ALPHA_BLEND_MODE_SUPPORT_EMULATING :: 2;
        }
    }

    OpenXRAction :: struct {    // 444

        #as using base: Resource;

        ActionType :: enum s32 {
            OPENXR_ACTION_BOOL :: 0;
            OPENXR_ACTION_FLOAT :: 1;
            OPENXR_ACTION_VECTOR2 :: 2;
            OPENXR_ACTION_POSE :: 3;
        }

        localized_name: String;
        action_type: int;
        toplevel_paths: PackedStringArray;
    }

    OpenXRActionMap :: struct {    // 445

        #as using base: Resource;

        action_sets: OpenXRActionSet;
        interaction_profiles: OpenXRInteractionProfile;
    }

    OpenXRActionSet :: struct {    // 446

        #as using base: Resource;

        localized_name: String;
        priority: int;
        actions: OpenXRAction;
    }

    OpenXRExtensionWrapperExtension :: struct {    // 447

        #as using base: Object;
    }

    OpenXRHand :: struct {    // 448

        #as using base: Node3D;

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

        hand: int;
        motion_range: int;
        hand_skeleton: NodePath;
        skeleton_rig: int;
        bone_update: int;
    }

    OpenXRIPBinding :: struct {    // 449

        #as using base: Resource;

        action: OpenXRAction;
        paths: PackedStringArray;
    }

    OpenXRInteractionProfile :: struct {    // 450

        #as using base: Resource;

        interaction_profile_path: String;
        bindings: OpenXRIPBinding;
    }

    OpenXRInteractionProfileMetadata :: struct {    // 451

        #as using base: Object;
    }

    OpenXRInterface :: struct {    // 452

        #as using base: XRInterface;

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

        display_refresh_rate: float;
        render_target_size_multiplier: float;
        foveation_level: int;
        foveation_dynamic: bool;
    }

    OptimizedTranslation :: struct {    // 453

        #as using base: Translation;
    }

    OptionButton :: struct {    // 454

        #as using base: Button;

        selected: int;
        fit_to_longest_item: bool;
        allow_reselect: bool;
        item_count: int;
    }

    PCKPacker :: struct {    // 455

        #as using base: RefCounted;
    }

    PackedDataContainer :: struct {    // 456

        #as using base: Resource;
    }

    PackedDataContainerRef :: struct {    // 457

        #as using base: RefCounted;
    }

    PackedScene :: struct {    // 458

        #as using base: Resource;

        GenEditState :: enum s32 {
            GEN_EDIT_STATE_DISABLED :: 0;
            GEN_EDIT_STATE_INSTANCE :: 1;
            GEN_EDIT_STATE_MAIN :: 2;
            GEN_EDIT_STATE_MAIN_INHERITED :: 3;
        }
    }

    PacketPeer :: struct {    // 459

        #as using base: RefCounted;

        encode_buffer_max_size: int;
    }

    PacketPeerDTLS :: struct {    // 460

        #as using base: PacketPeer;

        Status :: enum s32 {
            STATUS_DISCONNECTED :: 0;
            STATUS_HANDSHAKING :: 1;
            STATUS_CONNECTED :: 2;
            STATUS_ERROR :: 3;
            STATUS_ERROR_HOSTNAME_MISMATCH :: 4;
        }
    }

    PacketPeerExtension :: struct {    // 461

        #as using base: PacketPeer;
    }

    PacketPeerStream :: struct {    // 462

        #as using base: PacketPeer;

        input_buffer_max_size: int;
        output_buffer_max_size: int;
        stream_peer: StreamPeer;
    }

    PacketPeerUDP :: struct {    // 463

        #as using base: PacketPeer;
    }

    Panel :: struct {    // 464

        #as using base: Control;
    }

    PanelContainer :: struct {    // 465

        #as using base: Container;
    }

    PanoramaSkyMaterial :: struct {    // 466

        #as using base: Material;

        panorama: Texture2D;
        filter: bool;
        energy_multiplier: float;
    }

    Parallax2D :: struct {    // 467

        #as using base: Node2D;

        scroll_scale: Vector2;
        scroll_offset: Vector2;
        repeat_size: Vector2;
        autoscroll: Vector2;
        repeat_times: int;
        limit_begin: Vector2;
        limit_end: Vector2;
        follow_viewport: bool;
        ignore_camera_scroll: bool;
        screen_offset: Vector2;
    }

    ParallaxBackground :: struct {    // 468

        #as using base: CanvasLayer;

        scroll_offset: Vector2;
        scroll_base_offset: Vector2;
        scroll_base_scale: Vector2;
        scroll_limit_begin: Vector2;
        scroll_limit_end: Vector2;
        scroll_ignore_camera_zoom: bool;
    }

    ParallaxLayer :: struct {    // 469

        #as using base: Node2D;

        motion_scale: Vector2;
        motion_offset: Vector2;
        motion_mirroring: Vector2;
    }

    ParticleProcessMaterial :: struct {    // 470

        #as using base: Material;

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

        lifetime_randomness: float;
        particle_flag_align_y: bool;
        particle_flag_rotate_y: bool;
        particle_flag_disable_z: bool;
        particle_flag_damping_as_friction: bool;
        emission_shape_offset: Vector3;
        emission_shape_scale: Vector3;
        emission_shape: int;
        emission_sphere_radius: float;
        emission_box_extents: Vector3;
        emission_point_texture: Texture2D;
        emission_normal_texture: Texture2D;
        emission_color_texture: Texture2D;
        emission_point_count: int;
        emission_ring_axis: Vector3;
        emission_ring_height: float;
        emission_ring_radius: float;
        emission_ring_inner_radius: float;
        angle: Vector2;
        angle_min: float;
        angle_max: float;
        angle_curve: CurveTexture;
        inherit_velocity_ratio: float;
        velocity_pivot: Vector3;
        direction: Vector3;
        spread: float;
        flatness: float;
        initial_velocity: Vector2;
        initial_velocity_min: float;
        initial_velocity_max: float;
        angular_velocity: Vector2;
        angular_velocity_min: float;
        angular_velocity_max: float;
        angular_velocity_curve: CurveTexture;
        directional_velocity: Vector2;
        directional_velocity_min: float;
        directional_velocity_max: float;
        directional_velocity_curve: CurveXYZTexture;
        orbit_velocity: Vector2;
        orbit_velocity_min: float;
        orbit_velocity_max: float;
        orbit_velocity_curve: CurveTexture,CurveXYZTexture;
        radial_velocity: Vector2;
        radial_velocity_min: float;
        radial_velocity_max: float;
        radial_velocity_curve: CurveTexture;
        velocity_limit_curve: CurveTexture;
        gravity: Vector3;
        linear_accel: Vector2;
        linear_accel_min: float;
        linear_accel_max: float;
        linear_accel_curve: CurveTexture;
        radial_accel: Vector2;
        radial_accel_min: float;
        radial_accel_max: float;
        radial_accel_curve: CurveTexture;
        tangential_accel: Vector2;
        tangential_accel_min: float;
        tangential_accel_max: float;
        tangential_accel_curve: CurveTexture;
        damping: Vector2;
        damping_min: float;
        damping_max: float;
        damping_curve: CurveTexture;
        attractor_interaction_enabled: bool;
        scale: Vector2;
        scale_min: float;
        scale_max: float;
        scale_curve: CurveTexture,CurveXYZTexture;
        scale_over_velocity: Vector2;
        scale_over_velocity_min: float;
        scale_over_velocity_max: float;
        scale_over_velocity_curve: CurveTexture,CurveXYZTexture;
        color: Color;
        color_ramp: GradientTexture1D;
        color_initial_ramp: GradientTexture1D;
        alpha_curve: CurveTexture;
        emission_curve: CurveTexture;
        hue_variation: Vector2;
        hue_variation_min: float;
        hue_variation_max: float;
        hue_variation_curve: CurveTexture;
        anim_speed: Vector2;
        anim_speed_min: float;
        anim_speed_max: float;
        anim_speed_curve: CurveTexture;
        anim_offset: Vector2;
        anim_offset_min: float;
        anim_offset_max: float;
        anim_offset_curve: CurveTexture;
        turbulence_enabled: bool;
        turbulence_noise_strength: float;
        turbulence_noise_scale: float;
        turbulence_noise_speed: Vector3;
        turbulence_noise_speed_random: float;
        turbulence_influence: Vector2;
        turbulence_influence_min: float;
        turbulence_influence_max: float;
        turbulence_initial_displacement: Vector2;
        turbulence_initial_displacement_min: float;
        turbulence_initial_displacement_max: float;
        turbulence_influence_over_life: CurveTexture;
        collision_mode: int;
        collision_friction: float;
        collision_bounce: float;
        collision_use_scale: bool;
        sub_emitter_mode: int;
        sub_emitter_frequency: float;
        sub_emitter_amount_at_end: int;
        sub_emitter_amount_at_collision: int;
        sub_emitter_keep_velocity: bool;
    }

    Path2D :: struct {    // 471

        #as using base: Node2D;

        curve: Curve2D;
    }

    Path3D :: struct {    // 472

        #as using base: Node3D;

        curve: Curve3D;
    }

    PathFollow2D :: struct {    // 473

        #as using base: Node2D;

        progress: float;
        progress_ratio: float;
        h_offset: float;
        v_offset: float;
        rotates: bool;
        cubic_interp: bool;
        loop: bool;
    }

    PathFollow3D :: struct {    // 474

        #as using base: Node3D;

        RotationMode :: enum s32 {
            ROTATION_NONE :: 0;
            ROTATION_Y :: 1;
            ROTATION_XY :: 2;
            ROTATION_XYZ :: 3;
            ROTATION_ORIENTED :: 4;
        }

        progress: float;
        progress_ratio: float;
        h_offset: float;
        v_offset: float;
        rotation_mode: int;
        use_model_front: bool;
        cubic_interp: bool;
        loop: bool;
        tilt_enabled: bool;
    }

    Performance :: struct {    // 475

        #as using base: Object;

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

    PhysicalBone2D :: struct {    // 476

        #as using base: RigidBody2D;

        bone2d_nodepath: NodePath;
        bone2d_index: int;
        auto_configure_joint: bool;
        simulate_physics: bool;
        follow_bone_when_simulating: bool;
    }

    PhysicalBone3D :: struct {    // 477

        #as using base: PhysicsBody3D;

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

        joint_type: int;
        joint_offset: Transform3D;
        joint_rotation: Vector3;
        body_offset: Transform3D;
        mass: float;
        friction: float;
        bounce: float;
        gravity_scale: float;
        custom_integrator: bool;
        linear_damp_mode: int;
        linear_damp: float;
        angular_damp_mode: int;
        angular_damp: float;
        linear_velocity: Vector3;
        angular_velocity: Vector3;
        can_sleep: bool;
    }

    PhysicalSkyMaterial :: struct {    // 478

        #as using base: Material;

        rayleigh_coefficient: float;
        rayleigh_color: Color;
        mie_coefficient: float;
        mie_eccentricity: float;
        mie_color: Color;
        turbidity: float;
        sun_disk_scale: float;
        ground_color: Color;
        energy_multiplier: float;
        use_debanding: bool;
        night_sky: Texture2D;
    }

    PhysicsBody2D :: struct {    // 479

        #as using base: CollisionObject2D;
    }

    PhysicsBody3D :: struct {    // 480

        #as using base: CollisionObject3D;

        axis_lock_linear_x: bool;
        axis_lock_linear_y: bool;
        axis_lock_linear_z: bool;
        axis_lock_angular_x: bool;
        axis_lock_angular_y: bool;
        axis_lock_angular_z: bool;
    }

    PhysicsDirectBodyState2D :: struct {    // 481

        #as using base: Object;

        step: float;
        inverse_mass: float;
        inverse_inertia: float;
        total_angular_damp: float;
        total_linear_damp: float;
        total_gravity: Vector2;
        center_of_mass: Vector2;
        center_of_mass_local: Vector2;
        angular_velocity: float;
        linear_velocity: Vector2;
        sleeping: bool;
        transform: Transform2D;
    }

    PhysicsDirectBodyState2DExtension :: struct {    // 482

        #as using base: PhysicsDirectBodyState2D;
    }

    PhysicsDirectBodyState3D :: struct {    // 483

        #as using base: Object;

        step: float;
        inverse_mass: float;
        total_angular_damp: float;
        total_linear_damp: float;
        inverse_inertia: Vector3;
        inverse_inertia_tensor: Basis;
        total_gravity: Vector3;
        center_of_mass: Vector3;
        center_of_mass_local: Vector3;
        principal_inertia_axes: Basis;
        angular_velocity: Vector3;
        linear_velocity: Vector3;
        sleeping: bool;
        transform: Transform3D;
    }

    PhysicsDirectBodyState3DExtension :: struct {    // 484

        #as using base: PhysicsDirectBodyState3D;
    }

    PhysicsDirectSpaceState2D :: struct {    // 485

        #as using base: Object;
    }

    PhysicsDirectSpaceState2DExtension :: struct {    // 486

        #as using base: PhysicsDirectSpaceState2D;
    }

    PhysicsDirectSpaceState3D :: struct {    // 487

        #as using base: Object;
    }

    PhysicsDirectSpaceState3DExtension :: struct {    // 488

        #as using base: PhysicsDirectSpaceState3D;
    }

    PhysicsMaterial :: struct {    // 489

        #as using base: Resource;

        friction: float;
        rough: bool;
        bounce: float;
        absorbent: bool;
    }

    PhysicsPointQueryParameters2D :: struct {    // 490

        #as using base: RefCounted;

        position: Vector2;
        canvas_instance_id: int;
        collision_mask: int;
        exclude: typedarray::RID;
        collide_with_bodies: bool;
        collide_with_areas: bool;
    }

    PhysicsPointQueryParameters3D :: struct {    // 491

        #as using base: RefCounted;

        position: Vector3;
        collision_mask: int;
        exclude: typedarray::RID;
        collide_with_bodies: bool;
        collide_with_areas: bool;
    }

    PhysicsRayQueryParameters2D :: struct {    // 492

        #as using base: RefCounted;

        from: Vector2;
        to: Vector2;
        collision_mask: int;
        exclude: typedarray::RID;
        collide_with_bodies: bool;
        collide_with_areas: bool;
        hit_from_inside: bool;
    }

    PhysicsRayQueryParameters3D :: struct {    // 493

        #as using base: RefCounted;

        from: Vector3;
        to: Vector3;
        collision_mask: int;
        exclude: typedarray::RID;
        collide_with_bodies: bool;
        collide_with_areas: bool;
        hit_from_inside: bool;
        hit_back_faces: bool;
    }

    PhysicsServer2D :: struct {    // 494

        #as using base: Object;

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

    PhysicsServer2DExtension :: struct {    // 495

        #as using base: PhysicsServer2D;
    }

    PhysicsServer2DManager :: struct {    // 496

        #as using base: Object;
    }

    PhysicsServer3D :: struct {    // 497

        #as using base: Object;

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

    PhysicsServer3DExtension :: struct {    // 498

        #as using base: PhysicsServer3D;
    }

    PhysicsServer3DManager :: struct {    // 499

        #as using base: Object;
    }

    PhysicsServer3DRenderingServerHandler :: struct {    // 500

        #as using base: Object;
    }

    PhysicsShapeQueryParameters2D :: struct {    // 501

        #as using base: RefCounted;

        collision_mask: int;
        exclude: typedarray::RID;
        margin: float;
        motion: Vector2;
        shape: Shape2D;
        shape_rid: RID;
        transform: Transform2D;
        collide_with_bodies: bool;
        collide_with_areas: bool;
    }

    PhysicsShapeQueryParameters3D :: struct {    // 502

        #as using base: RefCounted;

        collision_mask: int;
        exclude: typedarray::RID;
        margin: float;
        motion: Vector3;
        shape: Shape3D;
        shape_rid: RID;
        transform: Transform3D;
        collide_with_bodies: bool;
        collide_with_areas: bool;
    }

    PhysicsTestMotionParameters2D :: struct {    // 503

        #as using base: RefCounted;

        from: Transform2D;
        motion: Vector2;
        margin: float;
        collide_separation_ray: bool;
        exclude_bodies: typedarray::RID;
        exclude_objects: Array;
        recovery_as_collision: bool;
    }

    PhysicsTestMotionParameters3D :: struct {    // 504

        #as using base: RefCounted;

        from: Transform3D;
        motion: Vector3;
        margin: float;
        max_collisions: int;
        collide_separation_ray: bool;
        exclude_bodies: typedarray::RID;
        exclude_objects: Array;
        recovery_as_collision: bool;
    }

    PhysicsTestMotionResult2D :: struct {    // 505

        #as using base: RefCounted;
    }

    PhysicsTestMotionResult3D :: struct {    // 506

        #as using base: RefCounted;
    }

    PinJoint2D :: struct {    // 507

        #as using base: Joint2D;

        softness: float;
        angular_limit_enabled: bool;
        angular_limit_lower: float;
        angular_limit_upper: float;
        motor_enabled: bool;
        motor_target_velocity: float;
    }

    PinJoint3D :: struct {    // 508

        #as using base: Joint3D;

        Param :: enum s32 {
            PARAM_BIAS :: 0;
            PARAM_DAMPING :: 1;
            PARAM_IMPULSE_CLAMP :: 2;
        }
    }

    PlaceholderCubemap :: struct {    // 509

        #as using base: PlaceholderTextureLayered;
    }

    PlaceholderCubemapArray :: struct {    // 510

        #as using base: PlaceholderTextureLayered;
    }

    PlaceholderMaterial :: struct {    // 511

        #as using base: Material;
    }

    PlaceholderMesh :: struct {    // 512

        #as using base: Mesh;

        aabb: AABB;
    }

    PlaceholderTexture2D :: struct {    // 513

        #as using base: Texture2D;

        size: Vector2;
    }

    PlaceholderTexture2DArray :: struct {    // 514

        #as using base: PlaceholderTextureLayered;
    }

    PlaceholderTexture3D :: struct {    // 515

        #as using base: Texture3D;

        size: Vector3i;
    }

    PlaceholderTextureLayered :: struct {    // 516

        #as using base: TextureLayered;

        size: Vector2i;
        layers: int;
    }

    PlaneMesh :: struct {    // 517

        #as using base: PrimitiveMesh;

        Orientation :: enum s32 {
            FACE_X :: 0;
            FACE_Y :: 1;
            FACE_Z :: 2;
        }

        size: Vector2;
        subdivide_width: int;
        subdivide_depth: int;
        center_offset: Vector3;
        orientation: int;
    }

    PointLight2D :: struct {    // 518

        #as using base: Light2D;

        texture: Texture2D;
        offset: Vector2;
        texture_scale: float;
        height: float;
    }

    PointMesh :: struct {    // 519

        #as using base: PrimitiveMesh;
    }

    Polygon2D :: struct {    // 520

        #as using base: Node2D;

        color: Color;
        offset: Vector2;
        antialiased: bool;
        texture: Texture2D;
        texture_offset: Vector2;
        texture_scale: Vector2;
        texture_rotation: float;
        skeleton: NodePath;
        invert_enabled: bool;
        invert_border: float;
        polygon: PackedVector2Array;
        uv: PackedVector2Array;
        vertex_colors: PackedColorArray;
        polygons: Array;
        bones: Array;
        internal_vertex_count: int;
    }

    PolygonOccluder3D :: struct {    // 521

        #as using base: Occluder3D;

        polygon: PackedVector2Array;
    }

    PolygonPathFinder :: struct {    // 522

        #as using base: Resource;

        data: Dictionary;
    }

    Popup :: struct {    // 523

        #as using base: Window;
    }

    PopupMenu :: struct {    // 524

        #as using base: Popup;

        hide_on_item_selection: bool;
        hide_on_checkable_item_selection: bool;
        hide_on_state_item_selection: bool;
        submenu_popup_delay: float;
        allow_search: bool;
        system_menu_id: int;
        prefer_native_menu: bool;
        item_count: int;
    }

    PopupPanel :: struct {    // 525

        #as using base: Popup;
    }

    PortableCompressedTexture2D :: struct {    // 526

        #as using base: Texture2D;

        CompressionMode :: enum s32 {
            COMPRESSION_MODE_LOSSLESS :: 0;
            COMPRESSION_MODE_LOSSY :: 1;
            COMPRESSION_MODE_BASIS_UNIVERSAL :: 2;
            COMPRESSION_MODE_S3TC :: 3;
            COMPRESSION_MODE_ETC2 :: 4;
            COMPRESSION_MODE_BPTC :: 5;
        }

        size_override: Vector2;
        keep_compressed_buffer: bool;
    }

    PrimitiveMesh :: struct {    // 527

        #as using base: Mesh;

        material: BaseMaterial3D,ShaderMaterial;
        custom_aabb: AABB;
        flip_faces: bool;
        add_uv2: bool;
        uv2_padding: float;
    }

    PrismMesh :: struct {    // 528

        #as using base: PrimitiveMesh;

        left_to_right: float;
        size: Vector3;
        subdivide_width: int;
        subdivide_height: int;
        subdivide_depth: int;
    }

    ProceduralSkyMaterial :: struct {    // 529

        #as using base: Material;

        sky_top_color: Color;
        sky_horizon_color: Color;
        sky_curve: float;
        sky_energy_multiplier: float;
        sky_cover: Texture2D;
        sky_cover_modulate: Color;
        ground_bottom_color: Color;
        ground_horizon_color: Color;
        ground_curve: float;
        ground_energy_multiplier: float;
        sun_angle_max: float;
        sun_curve: float;
        use_debanding: bool;
        energy_multiplier: float;
    }

    ProgressBar :: struct {    // 530

        #as using base: Range;

        FillMode :: enum s32 {
            FILL_BEGIN_TO_END :: 0;
            FILL_END_TO_BEGIN :: 1;
            FILL_TOP_TO_BOTTOM :: 2;
            FILL_BOTTOM_TO_TOP :: 3;
        }

        fill_mode: int;
        show_percentage: bool;
        indeterminate: bool;
        editor_preview_indeterminate: bool;
    }

    ProjectSettings :: struct {    // 531

        #as using base: Object;
    }

    PropertyTweener :: struct {    // 532

        #as using base: Tweener;
    }

    QuadMesh :: struct {    // 533

        #as using base: PlaneMesh;
    }

    QuadOccluder3D :: struct {    // 534

        #as using base: Occluder3D;

        size: Vector2;
    }

    RDAttachmentFormat :: struct {    // 535

        #as using base: RefCounted;

        format: int;
        samples: int;
        usage_flags: int;
    }

    RDFramebufferPass :: struct {    // 536

        #as using base: RefCounted;

        ATTACHMENT_UNUSED :: -1;
        color_attachments: PackedInt32Array;
        input_attachments: PackedInt32Array;
        resolve_attachments: PackedInt32Array;
        preserve_attachments: PackedInt32Array;
        depth_attachment: int;
    }

    RDPipelineColorBlendState :: struct {    // 537

        #as using base: RefCounted;

        enable_logic_op: bool;
        logic_op: int;
        blend_constant: Color;
        attachments: typedarray::RDPipelineColorBlendStateAttachment;
    }

    RDPipelineColorBlendStateAttachment :: struct {    // 538

        #as using base: RefCounted;

        enable_blend: bool;
        src_color_blend_factor: int;
        dst_color_blend_factor: int;
        color_blend_op: int;
        src_alpha_blend_factor: int;
        dst_alpha_blend_factor: int;
        alpha_blend_op: int;
        write_r: bool;
        write_g: bool;
        write_b: bool;
        write_a: bool;
    }

    RDPipelineDepthStencilState :: struct {    // 539

        #as using base: RefCounted;

        enable_depth_test: bool;
        enable_depth_write: bool;
        depth_compare_operator: int;
        enable_depth_range: bool;
        depth_range_min: float;
        depth_range_max: float;
        enable_stencil: bool;
        front_op_fail: int;
        front_op_pass: int;
        front_op_depth_fail: int;
        front_op_compare: int;
        front_op_compare_mask: int;
        front_op_write_mask: int;
        front_op_reference: int;
        back_op_fail: int;
        back_op_pass: int;
        back_op_depth_fail: int;
        back_op_compare: int;
        back_op_compare_mask: int;
        back_op_write_mask: int;
        back_op_reference: int;
    }

    RDPipelineMultisampleState :: struct {    // 540

        #as using base: RefCounted;

        sample_count: int;
        enable_sample_shading: bool;
        min_sample_shading: float;
        enable_alpha_to_coverage: bool;
        enable_alpha_to_one: bool;
        sample_masks: typedarray::int;
    }

    RDPipelineRasterizationState :: struct {    // 541

        #as using base: RefCounted;

        enable_depth_clamp: bool;
        discard_primitives: bool;
        wireframe: bool;
        cull_mode: int;
        front_face: int;
        depth_bias_enabled: bool;
        depth_bias_constant_factor: float;
        depth_bias_clamp: float;
        depth_bias_slope_factor: float;
        line_width: float;
        patch_control_points: int;
    }

    RDPipelineSpecializationConstant :: struct {    // 542

        #as using base: RefCounted;

        value: Variant;
        constant_id: int;
    }

    RDSamplerState :: struct {    // 543

        #as using base: RefCounted;

        mag_filter: int;
        min_filter: int;
        mip_filter: int;
        repeat_u: int;
        repeat_v: int;
        repeat_w: int;
        lod_bias: float;
        use_anisotropy: bool;
        anisotropy_max: float;
        enable_compare: bool;
        compare_op: int;
        min_lod: float;
        max_lod: float;
        border_color: int;
        unnormalized_uvw: bool;
    }

    RDShaderFile :: struct {    // 544

        #as using base: Resource;

        base_error: String;
    }

    RDShaderSPIRV :: struct {    // 545

        #as using base: Resource;

        bytecode_vertex: PackedByteArray;
        bytecode_fragment: PackedByteArray;
        bytecode_tesselation_control: PackedByteArray;
        bytecode_tesselation_evaluation: PackedByteArray;
        bytecode_compute: PackedByteArray;
        compile_error_vertex: String;
        compile_error_fragment: String;
        compile_error_tesselation_control: String;
        compile_error_tesselation_evaluation: String;
        compile_error_compute: String;
    }

    RDShaderSource :: struct {    // 546

        #as using base: RefCounted;

        source_vertex: String;
        source_fragment: String;
        source_tesselation_control: String;
        source_tesselation_evaluation: String;
        source_compute: String;
        language: int;
    }

    RDTextureFormat :: struct {    // 547

        #as using base: RefCounted;

        format: int;
        width: int;
        height: int;
        depth: int;
        array_layers: int;
        mipmaps: int;
        texture_type: int;
        samples: int;
        usage_bits: int;
    }

    RDTextureView :: struct {    // 548

        #as using base: RefCounted;

        format_override: int;
        swizzle_r: int;
        swizzle_g: int;
        swizzle_b: int;
        swizzle_a: int;
    }

    RDUniform :: struct {    // 549

        #as using base: RefCounted;

        uniform_type: int;
        binding: int;
    }

    RDVertexAttribute :: struct {    // 550

        #as using base: RefCounted;

        location: int;
        offset: int;
        format: int;
        stride: int;
        frequency: int;
    }

    RandomNumberGenerator :: struct {    // 551

        #as using base: RefCounted;

        seed: int;
        state: int;
    }

    Range :: struct {    // 552

        #as using base: Control;

        min_value: float;
        max_value: float;
        step: float;
        page: float;
        value: float;
        ratio: float;
        exp_edit: bool;
        rounded: bool;
        allow_greater: bool;
        allow_lesser: bool;
    }

    RayCast2D :: struct {    // 553

        #as using base: Node2D;

        enabled: bool;
        exclude_parent: bool;
        target_position: Vector2;
        collision_mask: int;
        hit_from_inside: bool;
        collide_with_areas: bool;
        collide_with_bodies: bool;
    }

    RayCast3D :: struct {    // 554

        #as using base: Node3D;

        enabled: bool;
        exclude_parent: bool;
        target_position: Vector3;
        collision_mask: int;
        hit_from_inside: bool;
        hit_back_faces: bool;
        collide_with_areas: bool;
        collide_with_bodies: bool;
        debug_shape_custom_color: Color;
        debug_shape_thickness: int;
    }

    RectangleShape2D :: struct {    // 555

        #as using base: Shape2D;

        size: Vector2;
    }

    RefCounted :: struct {    // 556

        #as using base: Object;
    }

    ReferenceRect :: struct {    // 557

        #as using base: Control;

        border_color: Color;
        border_width: float;
        editor_only: bool;
    }

    ReflectionProbe :: struct {    // 558

        #as using base: VisualInstance3D;

        UpdateMode :: enum s32 {
            UPDATE_ONCE :: 0;
            UPDATE_ALWAYS :: 1;
        }

        AmbientMode :: enum s32 {
            AMBIENT_DISABLED :: 0;
            AMBIENT_ENVIRONMENT :: 1;
            AMBIENT_COLOR :: 2;
        }

        update_mode: int;
        intensity: float;
        max_distance: float;
        size: Vector3;
        origin_offset: Vector3;
        box_projection: bool;
        interior: bool;
        enable_shadows: bool;
        cull_mask: int;
        reflection_mask: int;
        mesh_lod_threshold: float;
        ambient_mode: int;
        ambient_color: Color;
        ambient_color_energy: float;
    }

    RegEx :: struct {    // 559

        #as using base: RefCounted;
    }

    RegExMatch :: struct {    // 560

        #as using base: RefCounted;

        subject: String;
        names: Dictionary;
        strings: Array;
    }

    RemoteTransform2D :: struct {    // 561

        #as using base: Node2D;

        remote_path: NodePath;
        use_global_coordinates: bool;
        update_position: bool;
        update_rotation: bool;
        update_scale: bool;
    }

    RemoteTransform3D :: struct {    // 562

        #as using base: Node3D;

        remote_path: NodePath;
        use_global_coordinates: bool;
        update_position: bool;
        update_rotation: bool;
        update_scale: bool;
    }

    RenderData :: struct {    // 563

        #as using base: Object;
    }

    RenderDataExtension :: struct {    // 564

        #as using base: RenderData;
    }

    RenderDataRD :: struct {    // 565

        #as using base: RenderData;
    }

    RenderSceneBuffers :: struct {    // 566

        #as using base: RefCounted;
    }

    RenderSceneBuffersConfiguration :: struct {    // 567

        #as using base: RefCounted;

        render_target: RID;
        internal_size: Vector2i;
        target_size: Vector2i;
        view_count: int;
        scaling_3d_mode: int;
        msaa_3d: int;
        screen_space_aa: int;
        fsr_sharpness: bool;
        texture_mipmap_bias: bool;
    }

    RenderSceneBuffersExtension :: struct {    // 568

        #as using base: RenderSceneBuffers;
    }

    RenderSceneBuffersRD :: struct {    // 569

        #as using base: RenderSceneBuffers;
    }

    RenderSceneData :: struct {    // 570

        #as using base: Object;
    }

    RenderSceneDataExtension :: struct {    // 571

        #as using base: RenderSceneData;
    }

    RenderSceneDataRD :: struct {    // 572

        #as using base: RenderSceneData;
    }

    RenderingDevice :: struct {    // 573

        #as using base: Object;

        INVALID_ID :: -1;
        INVALID_FORMAT_ID :: -1;


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

        #as using base: Object;

        NO_INDEX_ARRAY :: -1;
        ARRAY_WEIGHTS_SIZE :: 4;
        CANVAS_ITEM_Z_MIN :: -4096;
        CANVAS_ITEM_Z_MAX :: 4096;
        MAX_GLOW_LEVELS :: 7;
        MAX_CURSORS :: 8;
        MAX_2D_DIRECTIONAL_LIGHTS :: 8;
        MATERIAL_RENDER_PRIORITY_MIN :: -128;
        MATERIAL_RENDER_PRIORITY_MAX :: 127;
        ARRAY_CUSTOM_COUNT :: 4;
        PARTICLES_EMIT_FLAG_POSITION :: 1;
        PARTICLES_EMIT_FLAG_ROTATION_SCALE :: 2;
        PARTICLES_EMIT_FLAG_VELOCITY :: 4;
        PARTICLES_EMIT_FLAG_COLOR :: 8;
        PARTICLES_EMIT_FLAG_CUSTOM :: 16;


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

        render_loop_enabled: bool;
    }

    Resource :: struct {    // 575

        #as using base: RefCounted;

        resource_local_to_scene: bool;
        resource_path: String;
        resource_name: String;
        resource_scene_unique_id: String;
    }

    ResourceFormatLoader :: struct {    // 576

        #as using base: RefCounted;

        CacheMode :: enum s32 {
            CACHE_MODE_IGNORE :: 0;
            CACHE_MODE_REUSE :: 1;
            CACHE_MODE_REPLACE :: 2;
            CACHE_MODE_IGNORE_DEEP :: 3;
            CACHE_MODE_REPLACE_DEEP :: 4;
        }
    }

    ResourceFormatSaver :: struct {    // 577

        #as using base: RefCounted;
    }

    ResourceImporter :: struct {    // 578

        #as using base: RefCounted;

        ImportOrder :: enum s32 {
            IMPORT_ORDER_DEFAULT :: 0;
            IMPORT_ORDER_SCENE :: 100;
        }
    }

    ResourceImporterBMFont :: struct {    // 579

        #as using base: ResourceImporter;
    }

    ResourceImporterBitMap :: struct {    // 580

        #as using base: ResourceImporter;
    }

    ResourceImporterCSVTranslation :: struct {    // 581

        #as using base: ResourceImporter;
    }

    ResourceImporterDynamicFont :: struct {    // 582

        #as using base: ResourceImporter;
    }

    ResourceImporterImage :: struct {    // 583

        #as using base: ResourceImporter;
    }

    ResourceImporterImageFont :: struct {    // 584

        #as using base: ResourceImporter;
    }

    ResourceImporterLayeredTexture :: struct {    // 585

        #as using base: ResourceImporter;
    }

    ResourceImporterMP3 :: struct {    // 586

        #as using base: ResourceImporter;
    }

    ResourceImporterOBJ :: struct {    // 587

        #as using base: ResourceImporter;
    }

    ResourceImporterOggVorbis :: struct {    // 588

        #as using base: ResourceImporter;
    }

    ResourceImporterScene :: struct {    // 589

        #as using base: ResourceImporter;
    }

    ResourceImporterShaderFile :: struct {    // 590

        #as using base: ResourceImporter;
    }

    ResourceImporterTexture :: struct {    // 591

        #as using base: ResourceImporter;
    }

    ResourceImporterTextureAtlas :: struct {    // 592

        #as using base: ResourceImporter;
    }

    ResourceImporterWAV :: struct {    // 593

        #as using base: ResourceImporter;
    }

    ResourceLoader :: struct {    // 594

        #as using base: Object;

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

    ResourcePreloader :: struct {    // 595

        #as using base: Node;

        resources: Array;
    }

    ResourceSaver :: struct {    // 596

        #as using base: Object;

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

    ResourceUID :: struct {    // 597

        #as using base: Object;

        INVALID_ID :: -1;

    }

    RibbonTrailMesh :: struct {    // 598

        #as using base: PrimitiveMesh;

        Shape :: enum s32 {
            SHAPE_FLAT :: 0;
            SHAPE_CROSS :: 1;
        }

        shape: int;
        size: float;
        sections: int;
        section_length: float;
        section_segments: int;
        curve: Curve;
    }

    RichTextEffect :: struct {    // 599

        #as using base: Resource;
    }

    RichTextLabel :: struct {    // 600

        #as using base: Control;

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

        bbcode_enabled: bool;
        text: String;
        fit_content: bool;
        scroll_active: bool;
        scroll_following: bool;
        autowrap_mode: int;
        tab_size: int;
        context_menu_enabled: bool;
        shortcut_keys_enabled: bool;
        custom_effects: typedarray::24/17:RichTextEffect;
        meta_underlined: bool;
        hint_underlined: bool;
        threaded: bool;
        progress_bar_delay: int;
        selection_enabled: bool;
        deselect_on_focus_loss_enabled: bool;
        drag_and_drop_selection_enabled: bool;
        visible_characters: int;
        visible_characters_behavior: int;
        visible_ratio: float;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    RigidBody2D :: struct {    // 601

        #as using base: PhysicsBody2D;

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

        mass: float;
        physics_material_override: PhysicsMaterial;
        gravity_scale: float;
        center_of_mass_mode: int;
        center_of_mass: Vector2;
        inertia: float;
        sleeping: bool;
        can_sleep: bool;
        lock_rotation: bool;
        freeze: bool;
        freeze_mode: int;
        custom_integrator: bool;
        continuous_cd: int;
        contact_monitor: bool;
        max_contacts_reported: int;
        linear_velocity: Vector2;
        linear_damp_mode: int;
        linear_damp: float;
        angular_velocity: float;
        angular_damp_mode: int;
        angular_damp: float;
        constant_force: Vector2;
        constant_torque: float;
    }

    RigidBody3D :: struct {    // 602

        #as using base: PhysicsBody3D;

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

        mass: float;
        physics_material_override: PhysicsMaterial;
        gravity_scale: float;
        center_of_mass_mode: int;
        center_of_mass: Vector3;
        inertia: Vector3;
        sleeping: bool;
        can_sleep: bool;
        lock_rotation: bool;
        freeze: bool;
        freeze_mode: int;
        custom_integrator: bool;
        continuous_cd: bool;
        contact_monitor: bool;
        max_contacts_reported: int;
        linear_velocity: Vector3;
        linear_damp_mode: int;
        linear_damp: float;
        angular_velocity: Vector3;
        angular_damp_mode: int;
        angular_damp: float;
        constant_force: Vector3;
        constant_torque: Vector3;
    }

    RootMotionView :: struct {    // 603

        #as using base: VisualInstance3D;

        animation_path: NodePath;
        color: Color;
        cell_size: float;
        radius: float;
        zero_y: bool;
    }

    SceneMultiplayer :: struct {    // 604

        #as using base: MultiplayerAPI;

        root_path: NodePath;
        auth_callback: Callable;
        auth_timeout: float;
        allow_object_decoding: bool;
        refuse_new_connections: bool;
        server_relay: bool;
        max_sync_packet_size: int;
        max_delta_packet_size: int;
    }

    SceneReplicationConfig :: struct {    // 605

        #as using base: Resource;

        ReplicationMode :: enum s32 {
            REPLICATION_MODE_NEVER :: 0;
            REPLICATION_MODE_ALWAYS :: 1;
            REPLICATION_MODE_ON_CHANGE :: 2;
        }
    }

    SceneState :: struct {    // 606

        #as using base: RefCounted;

        GenEditState :: enum s32 {
            GEN_EDIT_STATE_DISABLED :: 0;
            GEN_EDIT_STATE_INSTANCE :: 1;
            GEN_EDIT_STATE_MAIN :: 2;
            GEN_EDIT_STATE_MAIN_INHERITED :: 3;
        }
    }

    SceneTree :: struct {    // 607

        #as using base: MainLoop;

        GroupCallFlags :: enum s32 {
            GROUP_CALL_DEFAULT :: 0;
            GROUP_CALL_REVERSE :: 1;
            GROUP_CALL_DEFERRED :: 2;
            GROUP_CALL_UNIQUE :: 4;
        }

        auto_accept_quit: bool;
        quit_on_go_back: bool;
        debug_collisions_hint: bool;
        debug_paths_hint: bool;
        debug_navigation_hint: bool;
        paused: bool;
        edited_scene_root: Node;
        current_scene: Node;
        root: Node;
        multiplayer_poll: bool;
    }

    SceneTreeTimer :: struct {    // 608

        #as using base: RefCounted;

        time_left: float;
    }

    Script :: struct {    // 609

        #as using base: Resource;

        source_code: String;
    }

    ScriptCreateDialog :: struct {    // 610

        #as using base: ConfirmationDialog;
    }

    ScriptEditor :: struct {    // 611

        #as using base: PanelContainer;
    }

    ScriptEditorBase :: struct {    // 612

        #as using base: VBoxContainer;
    }

    ScriptExtension :: struct {    // 613

        #as using base: Script;
    }

    ScriptLanguage :: struct {    // 614

        #as using base: Object;

        ScriptNameCasing :: enum s32 {
            SCRIPT_NAME_CASING_AUTO :: 0;
            SCRIPT_NAME_CASING_PASCAL_CASE :: 1;
            SCRIPT_NAME_CASING_SNAKE_CASE :: 2;
            SCRIPT_NAME_CASING_KEBAB_CASE :: 3;
        }
    }

    ScriptLanguageExtension :: struct {    // 615

        #as using base: ScriptLanguage;

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

    ScrollBar :: struct {    // 616

        #as using base: Range;

        custom_step: float;
    }

    ScrollContainer :: struct {    // 617

        #as using base: Container;

        ScrollMode :: enum s32 {
            SCROLL_MODE_DISABLED :: 0;
            SCROLL_MODE_AUTO :: 1;
            SCROLL_MODE_SHOW_ALWAYS :: 2;
            SCROLL_MODE_SHOW_NEVER :: 3;
        }

        follow_focus: bool;
        scroll_horizontal: int;
        scroll_vertical: int;
        scroll_horizontal_custom_step: float;
        scroll_vertical_custom_step: float;
        horizontal_scroll_mode: int;
        vertical_scroll_mode: int;
        scroll_deadzone: int;
    }

    SegmentShape2D :: struct {    // 618

        #as using base: Shape2D;

        a: Vector2;
        b: Vector2;
    }

    Semaphore :: struct {    // 619

        #as using base: RefCounted;
    }

    SeparationRayShape2D :: struct {    // 620

        #as using base: Shape2D;

        length: float;
        slide_on_slope: bool;
    }

    SeparationRayShape3D :: struct {    // 621

        #as using base: Shape3D;

        length: float;
        slide_on_slope: bool;
    }

    Separator :: struct {    // 622

        #as using base: Control;
    }

    Shader :: struct {    // 623

        #as using base: Resource;

        Mode :: enum s32 {
            MODE_SPATIAL :: 0;
            MODE_CANVAS_ITEM :: 1;
            MODE_PARTICLES :: 2;
            MODE_SKY :: 3;
            MODE_FOG :: 4;
        }

        code: String;
    }

    ShaderGlobalsOverride :: struct {    // 624

        #as using base: Node;
    }

    ShaderInclude :: struct {    // 625

        #as using base: Resource;

        code: String;
    }

    ShaderMaterial :: struct {    // 626

        #as using base: Material;

        shader: Shader;
    }

    Shape2D :: struct {    // 627

        #as using base: Resource;

        custom_solver_bias: float;
    }

    Shape3D :: struct {    // 628

        #as using base: Resource;

        custom_solver_bias: float;
        margin: float;
    }

    ShapeCast2D :: struct {    // 629

        #as using base: Node2D;

        enabled: bool;
        shape: Shape2D;
        exclude_parent: bool;
        target_position: Vector2;
        margin: float;
        max_results: int;
        collision_mask: int;
        collision_result: Array;
        collide_with_areas: bool;
        collide_with_bodies: bool;
    }

    ShapeCast3D :: struct {    // 630

        #as using base: Node3D;

        enabled: bool;
        shape: Shape3D;
        exclude_parent: bool;
        target_position: Vector3;
        margin: float;
        max_results: int;
        collision_mask: int;
        collision_result: Array;
        collide_with_areas: bool;
        collide_with_bodies: bool;
        debug_shape_custom_color: Color;
    }

    Shortcut :: struct {    // 631

        #as using base: Resource;

        events: typedarray::24/17:InputEvent;
    }

    Skeleton2D :: struct {    // 632

        #as using base: Node2D;
    }

    Skeleton3D :: struct {    // 633

        #as using base: Node3D;

        NOTIFICATION_UPDATE_SKELETON :: 50;
        motion_scale: float;
        show_rest_only: bool;
        animate_physical_bones: bool;
    }

    SkeletonIK3D :: struct {    // 634

        #as using base: Node;

        root_bone: StringName;
        tip_bone: StringName;
        interpolation: float;
        target: Transform3D;
        override_tip_basis: bool;
        use_magnet: bool;
        magnet: Vector3;
        target_node: NodePath;
        min_distance: float;
        max_iterations: int;
    }

    SkeletonModification2D :: struct {    // 635

        #as using base: Resource;

        enabled: bool;
        execution_mode: int;
    }

    SkeletonModification2DCCDIK :: struct {    // 636

        #as using base: SkeletonModification2D;

        target_nodepath: NodePath;
        tip_nodepath: NodePath;
        ccdik_data_chain_length: int;
    }

    SkeletonModification2DFABRIK :: struct {    // 637

        #as using base: SkeletonModification2D;

        target_nodepath: NodePath;
        fabrik_data_chain_length: int;
    }

    SkeletonModification2DJiggle :: struct {    // 638

        #as using base: SkeletonModification2D;

        target_nodepath: NodePath;
        jiggle_data_chain_length: int;
        stiffness: float;
        mass: float;
        damping: float;
        use_gravity: bool;
        gravity: Vector2;
    }

    SkeletonModification2DLookAt :: struct {    // 639

        #as using base: SkeletonModification2D;

        bone_index: int;
        bone2d_node: NodePath;
        target_nodepath: NodePath;
    }

    SkeletonModification2DPhysicalBones :: struct {    // 640

        #as using base: SkeletonModification2D;

        physical_bone_chain_length: int;
    }

    SkeletonModification2DStackHolder :: struct {    // 641

        #as using base: SkeletonModification2D;
    }

    SkeletonModification2DTwoBoneIK :: struct {    // 642

        #as using base: SkeletonModification2D;

        target_nodepath: NodePath;
        target_minimum_distance: float;
        target_maximum_distance: float;
        flip_bend_direction: bool;
    }

    SkeletonModificationStack2D :: struct {    // 643

        #as using base: Resource;

        enabled: bool;
        strength: float;
        modification_count: int;
    }

    SkeletonProfile :: struct {    // 644

        #as using base: Resource;

        TailDirection :: enum s32 {
            TAIL_DIRECTION_AVERAGE_CHILDREN :: 0;
            TAIL_DIRECTION_SPECIFIC_CHILD :: 1;
            TAIL_DIRECTION_END :: 2;
        }

        root_bone: StringName;
        scale_base_bone: StringName;
        group_size: int;
        bone_size: int;
    }

    SkeletonProfileHumanoid :: struct {    // 645

        #as using base: SkeletonProfile;
    }

    Skin :: struct {    // 646

        #as using base: Resource;
    }

    SkinReference :: struct {    // 647

        #as using base: RefCounted;
    }

    Sky :: struct {    // 648

        #as using base: Resource;

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

        sky_material: PanoramaSkyMaterial,ProceduralSkyMaterial,PhysicalSkyMaterial,ShaderMaterial;
        process_mode: int;
        radiance_size: int;
    }

    Slider :: struct {    // 649

        #as using base: Range;

        editable: bool;
        scrollable: bool;
        tick_count: int;
        ticks_on_borders: bool;
    }

    SliderJoint3D :: struct {    // 650

        #as using base: Joint3D;

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

        #as using base: MeshInstance3D;

        DisableMode :: enum s32 {
            DISABLE_MODE_REMOVE :: 0;
            DISABLE_MODE_KEEP_ACTIVE :: 1;
        }

        collision_layer: int;
        collision_mask: int;
        parent_collision_ignore: NodePath;
        simulation_precision: int;
        total_mass: float;
        linear_stiffness: float;
        pressure_coefficient: float;
        damping_coefficient: float;
        drag_coefficient: float;
        ray_pickable: bool;
        disable_mode: int;
    }

    SphereMesh :: struct {    // 652

        #as using base: PrimitiveMesh;

        radius: float;
        height: float;
        radial_segments: int;
        rings: int;
        is_hemisphere: bool;
    }

    SphereOccluder3D :: struct {    // 653

        #as using base: Occluder3D;

        radius: float;
    }

    SphereShape3D :: struct {    // 654

        #as using base: Shape3D;

        radius: float;
    }

    SpinBox :: struct {    // 655

        #as using base: Range;

        alignment: int;
        editable: bool;
        update_on_text_changed: bool;
        prefix: String;
        suffix: String;
        custom_arrow_step: float;
        select_all_on_focus: bool;
    }

    SplitContainer :: struct {    // 656

        #as using base: Container;

        DraggerVisibility :: enum s32 {
            DRAGGER_VISIBLE :: 0;
            DRAGGER_HIDDEN :: 1;
            DRAGGER_HIDDEN_COLLAPSED :: 2;
        }

        split_offset: int;
        collapsed: bool;
        dragger_visibility: int;
        vertical: bool;
    }

    SpotLight3D :: struct {    // 657

        #as using base: Light3D;

        spot_range: float;
        spot_attenuation: float;
        spot_angle: float;
        spot_angle_attenuation: float;
    }

    SpringArm3D :: struct {    // 658

        #as using base: Node3D;

        collision_mask: int;
        shape: Shape3D;
        spring_length: float;
        margin: float;
    }

    Sprite2D :: struct {    // 659

        #as using base: Node2D;

        texture: Texture2D;
        centered: bool;
        offset: Vector2;
        flip_h: bool;
        flip_v: bool;
        hframes: int;
        vframes: int;
        frame: int;
        frame_coords: Vector2i;
        region_enabled: bool;
        region_rect: Rect2;
        region_filter_clip_enabled: bool;
    }

    Sprite3D :: struct {    // 660

        #as using base: SpriteBase3D;

        texture: Texture2D;
        hframes: int;
        vframes: int;
        frame: int;
        frame_coords: Vector2;
        region_enabled: bool;
        region_rect: Rect2;
    }

    SpriteBase3D :: struct {    // 661

        #as using base: GeometryInstance3D;

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

        centered: bool;
        offset: Vector2;
        flip_h: bool;
        flip_v: bool;
        modulate: Color;
        pixel_size: float;
        axis: int;
        billboard: int;
        transparent: bool;
        shaded: bool;
        double_sided: bool;
        no_depth_test: bool;
        fixed_size: bool;
        alpha_cut: int;
        alpha_scissor_threshold: float;
        alpha_hash_scale: float;
        alpha_antialiasing_mode: int;
        alpha_antialiasing_edge: float;
        texture_filter: int;
        render_priority: int;
    }

    SpriteFrames :: struct {    // 662

        #as using base: Resource;

        animations: Array;
    }

    StandardMaterial3D :: struct {    // 663

        #as using base: BaseMaterial3D;
    }

    StaticBody2D :: struct {    // 664

        #as using base: PhysicsBody2D;

        physics_material_override: PhysicsMaterial;
        constant_linear_velocity: Vector2;
        constant_angular_velocity: float;
    }

    StaticBody3D :: struct {    // 665

        #as using base: PhysicsBody3D;

        physics_material_override: PhysicsMaterial;
        constant_linear_velocity: Vector3;
        constant_angular_velocity: Vector3;
    }

    StatusIndicator :: struct {    // 666

        #as using base: Node;

        tooltip: String;
        icon: Image;
        visible: bool;
    }

    StreamPeer :: struct {    // 667

        #as using base: RefCounted;

        big_endian: bool;
    }

    StreamPeerBuffer :: struct {    // 668

        #as using base: StreamPeer;

        data_array: PackedByteArray;
    }

    StreamPeerExtension :: struct {    // 669

        #as using base: StreamPeer;
    }

    StreamPeerGZIP :: struct {    // 670

        #as using base: StreamPeer;
    }

    StreamPeerTCP :: struct {    // 671

        #as using base: StreamPeer;

        Status :: enum s32 {
            STATUS_NONE :: 0;
            STATUS_CONNECTING :: 1;
            STATUS_CONNECTED :: 2;
            STATUS_ERROR :: 3;
        }
    }

    StreamPeerTLS :: struct {    // 672

        #as using base: StreamPeer;

        Status :: enum s32 {
            STATUS_DISCONNECTED :: 0;
            STATUS_HANDSHAKING :: 1;
            STATUS_CONNECTED :: 2;
            STATUS_ERROR :: 3;
            STATUS_ERROR_HOSTNAME_MISMATCH :: 4;
        }
    }

    StyleBox :: struct {    // 673

        #as using base: Resource;

        content_margin_left: float;
        content_margin_top: float;
        content_margin_right: float;
        content_margin_bottom: float;
    }

    StyleBoxEmpty :: struct {    // 674

        #as using base: StyleBox;
    }

    StyleBoxFlat :: struct {    // 675

        #as using base: StyleBox;

        bg_color: Color;
        draw_center: bool;
        skew: Vector2;
        border_width_left: int;
        border_width_top: int;
        border_width_right: int;
        border_width_bottom: int;
        border_color: Color;
        border_blend: bool;
        corner_radius_top_left: int;
        corner_radius_top_right: int;
        corner_radius_bottom_right: int;
        corner_radius_bottom_left: int;
        corner_detail: int;
        expand_margin_left: float;
        expand_margin_top: float;
        expand_margin_right: float;
        expand_margin_bottom: float;
        shadow_color: Color;
        shadow_size: int;
        shadow_offset: Vector2;
        anti_aliasing: bool;
        anti_aliasing_size: float;
    }

    StyleBoxLine :: struct {    // 676

        #as using base: StyleBox;

        color: Color;
        grow_begin: float;
        grow_end: float;
        thickness: int;
        vertical: bool;
    }

    StyleBoxTexture :: struct {    // 677

        #as using base: StyleBox;

        AxisStretchMode :: enum s32 {
            AXIS_STRETCH_MODE_STRETCH :: 0;
            AXIS_STRETCH_MODE_TILE :: 1;
            AXIS_STRETCH_MODE_TILE_FIT :: 2;
        }

        texture: Texture2D;
        texture_margin_left: float;
        texture_margin_top: float;
        texture_margin_right: float;
        texture_margin_bottom: float;
        expand_margin_left: float;
        expand_margin_top: float;
        expand_margin_right: float;
        expand_margin_bottom: float;
        axis_stretch_horizontal: int;
        axis_stretch_vertical: int;
        region_rect: Rect2;
        modulate_color: Color;
        draw_center: bool;
    }

    SubViewport :: struct {    // 678

        #as using base: Viewport;

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

        size: Vector2i;
        size_2d_override: Vector2i;
        size_2d_override_stretch: bool;
        render_target_clear_mode: int;
        render_target_update_mode: int;
    }

    SubViewportContainer :: struct {    // 679

        #as using base: Container;

        stretch: bool;
        stretch_shrink: int;
    }

    SurfaceTool :: struct {    // 680

        #as using base: RefCounted;

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

    SyntaxHighlighter :: struct {    // 681

        #as using base: Resource;
    }

    SystemFont :: struct {    // 682

        #as using base: Font;

        font_names: PackedStringArray;
        font_italic: bool;
        font_weight: int;
        font_stretch: int;
        antialiasing: int;
        generate_mipmaps: bool;
        disable_embedded_bitmaps: bool;
        allow_system_fallback: bool;
        force_autohinter: bool;
        hinting: int;
        subpixel_positioning: int;
        multichannel_signed_distance_field: bool;
        msdf_pixel_range: int;
        msdf_size: int;
        oversampling: float;
    }

    TCPServer :: struct {    // 683

        #as using base: RefCounted;
    }

    TLSOptions :: struct {    // 684

        #as using base: RefCounted;
    }

    TabBar :: struct {    // 685

        #as using base: Control;

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

        current_tab: int;
        tab_alignment: int;
        clip_tabs: bool;
        tab_close_display_policy: int;
        max_tab_width: int;
        scrolling_enabled: bool;
        drag_to_rearrange_enabled: bool;
        tabs_rearrange_group: int;
        scroll_to_selected: bool;
        select_with_rmb: bool;
        deselect_enabled: bool;
        tab_count: int;
    }

    TabContainer :: struct {    // 686

        #as using base: Container;

        TabPosition :: enum s32 {
            POSITION_TOP :: 0;
            POSITION_BOTTOM :: 1;
            POSITION_MAX :: 2;
        }

        tab_alignment: int;
        current_tab: int;
        tabs_position: int;
        clip_tabs: bool;
        tabs_visible: bool;
        all_tabs_in_front: bool;
        drag_to_rearrange_enabled: bool;
        tabs_rearrange_group: int;
        use_hidden_tabs_for_min_size: bool;
        tab_focus_mode: int;
        deselect_enabled: bool;
    }

    TextEdit :: struct {    // 687

        #as using base: Control;

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

        text: String;
        placeholder_text: String;
        editable: bool;
        context_menu_enabled: bool;
        shortcut_keys_enabled: bool;
        selecting_enabled: bool;
        deselect_on_focus_loss_enabled: bool;
        drag_and_drop_selection_enabled: bool;
        virtual_keyboard_enabled: bool;
        middle_mouse_paste_enabled: bool;
        wrap_mode: int;
        autowrap_mode: int;
        indent_wrapped_lines: bool;
        scroll_smooth: bool;
        scroll_v_scroll_speed: float;
        scroll_past_end_of_file: bool;
        scroll_vertical: float;
        scroll_horizontal: int;
        scroll_fit_content_height: bool;
        minimap_draw: bool;
        minimap_width: int;
        caret_type: int;
        caret_blink: bool;
        caret_blink_interval: float;
        caret_draw_when_editable_disabled: bool;
        caret_move_on_right_click: bool;
        caret_mid_grapheme: bool;
        caret_multiple: bool;
        syntax_highlighter: SyntaxHighlighter;
        highlight_all_occurrences: bool;
        highlight_current_line: bool;
        draw_control_chars: bool;
        draw_tabs: bool;
        draw_spaces: bool;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    TextLine :: struct {    // 688

        #as using base: RefCounted;

        direction: int;
        orientation: int;
        preserve_invalid: bool;
        preserve_control: bool;
        width: float;
        alignment: int;
        flags: int;
        text_overrun_behavior: int;
        ellipsis_char: String;
    }

    TextMesh :: struct {    // 689

        #as using base: PrimitiveMesh;

        text: String;
        font: Font;
        font_size: int;
        horizontal_alignment: int;
        vertical_alignment: int;
        uppercase: bool;
        line_spacing: float;
        autowrap_mode: int;
        justification_flags: int;
        pixel_size: float;
        curve_step: float;
        depth: float;
        width: float;
        offset: Vector2;
        text_direction: int;
        language: String;
        structured_text_bidi_override: int;
        structured_text_bidi_override_options: Array;
    }

    TextParagraph :: struct {    // 690

        #as using base: RefCounted;

        direction: int;
        custom_punctuation: String;
        orientation: int;
        preserve_invalid: bool;
        preserve_control: bool;
        alignment: int;
        break_flags: int;
        justification_flags: int;
        text_overrun_behavior: int;
        ellipsis_char: String;
        width: float;
        max_lines_visible: int;
    }

    TextServer :: struct {    // 691

        #as using base: RefCounted;

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

    TextServerAdvanced :: struct {    // 692

        #as using base: TextServerExtension;
    }

    TextServerDummy :: struct {    // 693

        #as using base: TextServerExtension;
    }

    TextServerExtension :: struct {    // 694

        #as using base: TextServer;
    }

    TextServerManager :: struct {    // 695

        #as using base: Object;
    }

    Texture :: struct {    // 696

        #as using base: Resource;
    }

    Texture2D :: struct {    // 697

        #as using base: Texture;
    }

    Texture2DArray :: struct {    // 698

        #as using base: ImageTextureLayered;
    }

    Texture2DArrayRD :: struct {    // 699

        #as using base: TextureLayeredRD;
    }

    Texture2DRD :: struct {    // 700

        #as using base: Texture2D;

        texture_rd_rid: RID;
    }

    Texture3D :: struct {    // 701

        #as using base: Texture;
    }

    Texture3DRD :: struct {    // 702

        #as using base: Texture3D;

        texture_rd_rid: RID;
    }

    TextureButton :: struct {    // 703

        #as using base: BaseButton;

        StretchMode :: enum s32 {
            STRETCH_SCALE :: 0;
            STRETCH_TILE :: 1;
            STRETCH_KEEP :: 2;
            STRETCH_KEEP_CENTERED :: 3;
            STRETCH_KEEP_ASPECT :: 4;
            STRETCH_KEEP_ASPECT_CENTERED :: 5;
            STRETCH_KEEP_ASPECT_COVERED :: 6;
        }

        texture_normal: Texture2D;
        texture_pressed: Texture2D;
        texture_hover: Texture2D;
        texture_disabled: Texture2D;
        texture_focused: Texture2D;
        texture_click_mask: BitMap;
        ignore_texture_size: bool;
        stretch_mode: int;
        flip_h: bool;
        flip_v: bool;
    }

    TextureCubemapArrayRD :: struct {    // 704

        #as using base: TextureLayeredRD;
    }

    TextureCubemapRD :: struct {    // 705

        #as using base: TextureLayeredRD;
    }

    TextureLayered :: struct {    // 706

        #as using base: Texture;

        LayeredType :: enum s32 {
            LAYERED_TYPE_2D_ARRAY :: 0;
            LAYERED_TYPE_CUBEMAP :: 1;
            LAYERED_TYPE_CUBEMAP_ARRAY :: 2;
        }
    }

    TextureLayeredRD :: struct {    // 707

        #as using base: TextureLayered;

        texture_rd_rid: RID;
    }

    TextureProgressBar :: struct {    // 708

        #as using base: Range;

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

        fill_mode: int;
        radial_initial_angle: float;
        radial_fill_degrees: float;
        radial_center_offset: Vector2;
        nine_patch_stretch: bool;
        stretch_margin_left: int;
        stretch_margin_top: int;
        stretch_margin_right: int;
        stretch_margin_bottom: int;
        texture_under: Texture2D;
        texture_over: Texture2D;
        texture_progress: Texture2D;
        texture_progress_offset: Vector2;
        tint_under: Color;
        tint_over: Color;
        tint_progress: Color;
    }

    TextureRect :: struct {    // 709

        #as using base: Control;

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

        texture: Texture2D;
        expand_mode: int;
        stretch_mode: int;
        flip_h: bool;
        flip_v: bool;
    }

    Theme :: struct {    // 710

        #as using base: Resource;

        DataType :: enum s32 {
            DATA_TYPE_COLOR :: 0;
            DATA_TYPE_CONSTANT :: 1;
            DATA_TYPE_FONT :: 2;
            DATA_TYPE_FONT_SIZE :: 3;
            DATA_TYPE_ICON :: 4;
            DATA_TYPE_STYLEBOX :: 5;
            DATA_TYPE_MAX :: 6;
        }

        default_base_scale: float;
        default_font: Font;
        default_font_size: int;
    }

    ThemeDB :: struct {    // 711

        #as using base: Object;

        fallback_base_scale: float;
        fallback_font: Font;
        fallback_font_size: int;
        fallback_icon: Texture2D;
        fallback_stylebox: StyleBox;
    }

    Thread :: struct {    // 712

        #as using base: RefCounted;

        Priority :: enum s32 {
            PRIORITY_LOW :: 0;
            PRIORITY_NORMAL :: 1;
            PRIORITY_HIGH :: 2;
        }
    }

    TileData :: struct {    // 713

        #as using base: Object;

        flip_h: bool;
        flip_v: bool;
        transpose: bool;
        texture_origin: Vector2i;
        modulate: Color;
        material: CanvasItemMaterial,ShaderMaterial;
        z_index: int;
        y_sort_origin: int;
        terrain_set: int;
        terrain: int;
        probability: float;
    }

    TileMap :: struct {    // 714

        #as using base: TileMapLayerGroup;

        VisibilityMode :: enum s32 {
            VISIBILITY_MODE_DEFAULT :: 0;
            VISIBILITY_MODE_FORCE_HIDE :: 2;
            VISIBILITY_MODE_FORCE_SHOW :: 1;
        }

        rendering_quadrant_size: int;
        collision_animatable: bool;
        collision_visibility_mode: int;
        navigation_visibility_mode: int;
    }

    TileMapLayerGroup :: struct {    // 715

        #as using base: Node2D;

        tile_set: TileSet;
    }

    TileMapPattern :: struct {    // 716

        #as using base: Resource;
    }

    TileSet :: struct {    // 717

        #as using base: Resource;

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

        tile_shape: int;
        tile_layout: int;
        tile_offset_axis: int;
        tile_size: Vector2i;
        uv_clipping: bool;
    }

    TileSetAtlasSource :: struct {    // 718

        #as using base: TileSetSource;

        TRANSFORM_FLIP_H :: 4096;
        TRANSFORM_FLIP_V :: 8192;
        TRANSFORM_TRANSPOSE :: 16384;


        TileAnimationMode :: enum s32 {
            TILE_ANIMATION_MODE_DEFAULT :: 0;
            TILE_ANIMATION_MODE_RANDOM_START_TIMES :: 1;
            TILE_ANIMATION_MODE_MAX :: 2;
        }

        texture: Texture2D;
        margins: Vector2i;
        separation: Vector2i;
        texture_region_size: Vector2i;
        use_texture_padding: bool;
    }

    TileSetScenesCollectionSource :: struct {    // 719

        #as using base: TileSetSource;
    }

    TileSetSource :: struct {    // 720

        #as using base: Resource;
    }

    Time :: struct {    // 721

        #as using base: Object;

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

        #as using base: Node;

        TimerProcessCallback :: enum s32 {
            TIMER_PROCESS_PHYSICS :: 0;
            TIMER_PROCESS_IDLE :: 1;
        }

        process_callback: int;
        wait_time: float;
        one_shot: bool;
        autostart: bool;
        paused: bool;
        time_left: float;
    }

    TorusMesh :: struct {    // 723

        #as using base: PrimitiveMesh;

        inner_radius: float;
        outer_radius: float;
        rings: int;
        ring_segments: int;
    }

    TouchScreenButton :: struct {    // 724

        #as using base: Node2D;

        VisibilityMode :: enum s32 {
            VISIBILITY_ALWAYS :: 0;
            VISIBILITY_TOUCHSCREEN_ONLY :: 1;
        }

        texture_normal: Texture2D;
        texture_pressed: Texture2D;
        bitmask: BitMap;
        shape: Shape2D;
        shape_centered: bool;
        shape_visible: bool;
        passby_press: bool;
        action: StringName;
        visibility_mode: int;
    }

    Translation :: struct {    // 725

        #as using base: Resource;

        messages: Dictionary;
        locale: String;
    }

    TranslationServer :: struct {    // 726

        #as using base: Object;

        pseudolocalization_enabled: bool;
    }

    Tree :: struct {    // 727

        #as using base: Control;

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

        columns: int;
        column_titles_visible: bool;
        allow_reselect: bool;
        allow_rmb_select: bool;
        allow_search: bool;
        hide_folding: bool;
        enable_recursive_folding: bool;
        hide_root: bool;
        drop_mode_flags: int;
        select_mode: int;
        scroll_horizontal_enabled: bool;
        scroll_vertical_enabled: bool;
    }

    TreeItem :: struct {    // 728

        #as using base: Object;

        TreeCellMode :: enum s32 {
            CELL_MODE_STRING :: 0;
            CELL_MODE_CHECK :: 1;
            CELL_MODE_RANGE :: 2;
            CELL_MODE_ICON :: 3;
            CELL_MODE_CUSTOM :: 4;
        }

        collapsed: bool;
        visible: bool;
        disable_folding: bool;
        custom_minimum_height: int;
    }

    TriangleMesh :: struct {    // 729

        #as using base: RefCounted;
    }

    TubeTrailMesh :: struct {    // 730

        #as using base: PrimitiveMesh;

        radius: float;
        radial_steps: int;
        sections: int;
        section_length: float;
        section_rings: int;
        cap_top: bool;
        cap_bottom: bool;
        curve: Curve;
    }

    Tween :: struct {    // 731

        #as using base: RefCounted;

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

    Tweener :: struct {    // 732

        #as using base: RefCounted;
    }

    UDPServer :: struct {    // 733

        #as using base: RefCounted;

        max_pending_connections: int;
    }

    UPNP :: struct {    // 734

        #as using base: RefCounted;

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

        discover_multicast_if: String;
        discover_local_port: int;
        discover_ipv6: bool;
    }

    UPNPDevice :: struct {    // 735

        #as using base: RefCounted;

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

        description_url: String;
        service_type: String;
        igd_control_url: String;
        igd_service_type: String;
        igd_our_addr: String;
        igd_status: int;
    }

    UndoRedo :: struct {    // 736

        #as using base: Object;

        MergeMode :: enum s32 {
            MERGE_DISABLE :: 0;
            MERGE_ENDS :: 1;
            MERGE_ALL :: 2;
        }

        max_steps: int;
    }

    UniformSetCacheRD :: struct {    // 737

        #as using base: Object;
    }

    VBoxContainer :: struct {    // 738

        #as using base: BoxContainer;
    }

    VFlowContainer :: struct {    // 739

        #as using base: FlowContainer;
    }

    VScrollBar :: struct {    // 740

        #as using base: ScrollBar;
    }

    VSeparator :: struct {    // 741

        #as using base: Separator;
    }

    VSlider :: struct {    // 742

        #as using base: Slider;
    }

    VSplitContainer :: struct {    // 743

        #as using base: SplitContainer;
    }

    VehicleBody3D :: struct {    // 744

        #as using base: RigidBody3D;

        engine_force: float;
        brake: float;
        steering: float;
    }

    VehicleWheel3D :: struct {    // 745

        #as using base: Node3D;

        engine_force: float;
        brake: float;
        steering: float;
        use_as_traction: bool;
        use_as_steering: bool;
        wheel_roll_influence: float;
        wheel_radius: float;
        wheel_rest_length: float;
        wheel_friction_slip: float;
        suspension_travel: float;
        suspension_stiffness: float;
        suspension_max_force: float;
        damping_compression: float;
        damping_relaxation: float;
    }

    VideoStream :: struct {    // 746

        #as using base: Resource;

        file: String;
    }

    VideoStreamPlayback :: struct {    // 747

        #as using base: Resource;
    }

    VideoStreamPlayer :: struct {    // 748

        #as using base: Control;

        audio_track: int;
        stream: VideoStream;
        volume_db: float;
        volume: float;
        autoplay: bool;
        paused: bool;
        expand: bool;
        loop: bool;
        buffering_msec: int;
        stream_position: float;
        bus: StringName;
    }

    VideoStreamTheora :: struct {    // 749

        #as using base: VideoStream;
    }

    Viewport :: struct {    // 750

        #as using base: Node;

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

        disable_3d: bool;
        use_xr: bool;
        own_world_3d: bool;
        world_3d: World3D;
        world_2d: World2D;
        transparent_bg: bool;
        handle_input_locally: bool;
        snap_2d_transforms_to_pixel: bool;
        snap_2d_vertices_to_pixel: bool;
        msaa_2d: int;
        msaa_3d: int;
        screen_space_aa: int;
        use_taa: bool;
        use_debanding: bool;
        use_occlusion_culling: bool;
        mesh_lod_threshold: float;
        debug_draw: int;
        use_hdr_2d: bool;
        scaling_3d_mode: int;
        scaling_3d_scale: float;
        texture_mipmap_bias: float;
        fsr_sharpness: float;
        vrs_mode: int;
        vrs_texture: Texture2D;
        canvas_item_default_texture_filter: int;
        canvas_item_default_texture_repeat: int;
        audio_listener_enable_2d: bool;
        audio_listener_enable_3d: bool;
        physics_object_picking: bool;
        physics_object_picking_sort: bool;
        physics_object_picking_first_only: bool;
        gui_disable_input: bool;
        gui_snap_controls_to_pixels: bool;
        gui_embed_subwindows: bool;
        sdf_oversize: int;
        sdf_scale: int;
        positional_shadow_atlas_size: int;
        positional_shadow_atlas_16_bits: bool;
        positional_shadow_atlas_quad_0: int;
        positional_shadow_atlas_quad_1: int;
        positional_shadow_atlas_quad_2: int;
        positional_shadow_atlas_quad_3: int;
        canvas_transform: Transform2D;
        global_canvas_transform: Transform2D;
        canvas_cull_mask: int;
    }

    ViewportTexture :: struct {    // 751

        #as using base: Texture2D;

        viewport_path: NodePath;
    }

    VisibleOnScreenEnabler2D :: struct {    // 752

        #as using base: VisibleOnScreenNotifier2D;

        EnableMode :: enum s32 {
            ENABLE_MODE_INHERIT :: 0;
            ENABLE_MODE_ALWAYS :: 1;
            ENABLE_MODE_WHEN_PAUSED :: 2;
        }

        enable_mode: int;
        enable_node_path: NodePath;
    }

    VisibleOnScreenEnabler3D :: struct {    // 753

        #as using base: VisibleOnScreenNotifier3D;

        EnableMode :: enum s32 {
            ENABLE_MODE_INHERIT :: 0;
            ENABLE_MODE_ALWAYS :: 1;
            ENABLE_MODE_WHEN_PAUSED :: 2;
        }

        enable_mode: int;
        enable_node_path: NodePath;
    }

    VisibleOnScreenNotifier2D :: struct {    // 754

        #as using base: Node2D;

        rect: Rect2;
    }

    VisibleOnScreenNotifier3D :: struct {    // 755

        #as using base: VisualInstance3D;

        aabb: AABB;
    }

    VisualInstance3D :: struct {    // 756

        #as using base: Node3D;

        layers: int;
        sorting_offset: float;
        sorting_use_aabb_center: bool;
    }

    VisualShader :: struct {    // 757

        #as using base: Shader;

        NODE_ID_INVALID :: -1;
        NODE_ID_OUTPUT :: 0;


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

        graph_offset: Vector2;
    }

    VisualShaderNode :: struct {    // 758

        #as using base: Resource;

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

        output_port_for_preview: int;
        default_input_values: Array;
        expanded_output_ports: Array;
    }

    VisualShaderNodeBillboard :: struct {    // 759

        #as using base: VisualShaderNode;

        BillboardType :: enum s32 {
            BILLBOARD_TYPE_DISABLED :: 0;
            BILLBOARD_TYPE_ENABLED :: 1;
            BILLBOARD_TYPE_FIXED_Y :: 2;
            BILLBOARD_TYPE_PARTICLES :: 3;
            BILLBOARD_TYPE_MAX :: 4;
        }

        billboard_type: int;
        keep_scale: bool;
    }

    VisualShaderNodeBooleanConstant :: struct {    // 760

        #as using base: VisualShaderNodeConstant;

        constant: bool;
    }

    VisualShaderNodeBooleanParameter :: struct {    // 761

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: bool;
    }

    VisualShaderNodeClamp :: struct {    // 762

        #as using base: VisualShaderNode;

        OpType :: enum s32 {
            OP_TYPE_FLOAT :: 0;
            OP_TYPE_INT :: 1;
            OP_TYPE_UINT :: 2;
            OP_TYPE_VECTOR_2D :: 3;
            OP_TYPE_VECTOR_3D :: 4;
            OP_TYPE_VECTOR_4D :: 5;
            OP_TYPE_MAX :: 6;
        }

        op_type: int;
    }

    VisualShaderNodeColorConstant :: struct {    // 763

        #as using base: VisualShaderNodeConstant;

        constant: Color;
    }

    VisualShaderNodeColorFunc :: struct {    // 764

        #as using base: VisualShaderNode;

        Function :: enum s32 {
            FUNC_GRAYSCALE :: 0;
            FUNC_HSV2RGB :: 1;
            FUNC_RGB2HSV :: 2;
            FUNC_SEPIA :: 3;
            FUNC_MAX :: 4;
        }

        function: int;
    }

    VisualShaderNodeColorOp :: struct {    // 765

        #as using base: VisualShaderNode;

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

        operator: int;
    }

    VisualShaderNodeColorParameter :: struct {    // 766

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: Color;
    }

    VisualShaderNodeComment :: struct {    // 767

        #as using base: VisualShaderNodeResizableBase;

        title: String;
        description: String;
    }

    VisualShaderNodeCompare :: struct {    // 768

        #as using base: VisualShaderNode;

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

        type: int;
        function: int;
        condition: int;
    }

    VisualShaderNodeConstant :: struct {    // 769

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeCubemap :: struct {    // 770

        #as using base: VisualShaderNode;

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

        source: int;
        cube_map: Cubemap;
        texture_type: int;
    }

    VisualShaderNodeCubemapParameter :: struct {    // 771

        #as using base: VisualShaderNodeTextureParameter;
    }

    VisualShaderNodeCurveTexture :: struct {    // 772

        #as using base: VisualShaderNodeResizableBase;

        texture: CurveTexture;
    }

    VisualShaderNodeCurveXYZTexture :: struct {    // 773

        #as using base: VisualShaderNodeResizableBase;

        texture: CurveXYZTexture;
    }

    VisualShaderNodeCustom :: struct {    // 774

        #as using base: VisualShaderNode;

        initialized: bool;
        properties: String;
    }

    VisualShaderNodeDerivativeFunc :: struct {    // 775

        #as using base: VisualShaderNode;

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

        op_type: int;
        function: int;
        precision: int;
    }

    VisualShaderNodeDeterminant :: struct {    // 776

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeDistanceFade :: struct {    // 777

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeDotProduct :: struct {    // 778

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeExpression :: struct {    // 779

        #as using base: VisualShaderNodeGroupBase;

        expression: String;
    }

    VisualShaderNodeFaceForward :: struct {    // 780

        #as using base: VisualShaderNodeVectorBase;
    }

    VisualShaderNodeFloatConstant :: struct {    // 781

        #as using base: VisualShaderNodeConstant;

        constant: float;
    }

    VisualShaderNodeFloatFunc :: struct {    // 782

        #as using base: VisualShaderNode;

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

        function: int;
    }

    VisualShaderNodeFloatOp :: struct {    // 783

        #as using base: VisualShaderNode;

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

        operator: int;
    }

    VisualShaderNodeFloatParameter :: struct {    // 784

        #as using base: VisualShaderNodeParameter;

        Hint :: enum s32 {
            HINT_NONE :: 0;
            HINT_RANGE :: 1;
            HINT_RANGE_STEP :: 2;
            HINT_MAX :: 3;
        }

        hint: int;
        min: float;
        max: float;
        step: float;
        default_value_enabled: bool;
        default_value: float;
    }

    VisualShaderNodeFresnel :: struct {    // 785

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeGlobalExpression :: struct {    // 786

        #as using base: VisualShaderNodeExpression;
    }

    VisualShaderNodeGroupBase :: struct {    // 787

        #as using base: VisualShaderNodeResizableBase;
    }

    VisualShaderNodeIf :: struct {    // 788

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeInput :: struct {    // 789

        #as using base: VisualShaderNode;

        input_name: StringName;
    }

    VisualShaderNodeIntConstant :: struct {    // 790

        #as using base: VisualShaderNodeConstant;

        constant: int;
    }

    VisualShaderNodeIntFunc :: struct {    // 791

        #as using base: VisualShaderNode;

        Function :: enum s32 {
            FUNC_ABS :: 0;
            FUNC_NEGATE :: 1;
            FUNC_SIGN :: 2;
            FUNC_BITWISE_NOT :: 3;
            FUNC_MAX :: 4;
        }

        function: int;
    }

    VisualShaderNodeIntOp :: struct {    // 792

        #as using base: VisualShaderNode;

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

        operator: int;
    }

    VisualShaderNodeIntParameter :: struct {    // 793

        #as using base: VisualShaderNodeParameter;

        Hint :: enum s32 {
            HINT_NONE :: 0;
            HINT_RANGE :: 1;
            HINT_RANGE_STEP :: 2;
            HINT_MAX :: 3;
        }

        hint: int;
        min: int;
        max: int;
        step: int;
        default_value_enabled: bool;
        default_value: int;
    }

    VisualShaderNodeIs :: struct {    // 794

        #as using base: VisualShaderNode;

        Function :: enum s32 {
            FUNC_IS_INF :: 0;
            FUNC_IS_NAN :: 1;
            FUNC_MAX :: 2;
        }

        function: int;
    }

    VisualShaderNodeLinearSceneDepth :: struct {    // 795

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeMix :: struct {    // 796

        #as using base: VisualShaderNode;

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

        op_type: int;
    }

    VisualShaderNodeMultiplyAdd :: struct {    // 797

        #as using base: VisualShaderNode;

        OpType :: enum s32 {
            OP_TYPE_SCALAR :: 0;
            OP_TYPE_VECTOR_2D :: 1;
            OP_TYPE_VECTOR_3D :: 2;
            OP_TYPE_VECTOR_4D :: 3;
            OP_TYPE_MAX :: 4;
        }

        op_type: int;
    }

    VisualShaderNodeOuterProduct :: struct {    // 798

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeOutput :: struct {    // 799

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeParameter :: struct {    // 800

        #as using base: VisualShaderNode;

        Qualifier :: enum s32 {
            QUAL_NONE :: 0;
            QUAL_GLOBAL :: 1;
            QUAL_INSTANCE :: 2;
            QUAL_MAX :: 3;
        }

        parameter_name: StringName;
        qualifier: int;
    }

    VisualShaderNodeParameterRef :: struct {    // 801

        #as using base: VisualShaderNode;

        parameter_name: StringName;
        param_type: int;
    }

    VisualShaderNodeParticleAccelerator :: struct {    // 802

        #as using base: VisualShaderNode;

        Mode :: enum s32 {
            MODE_LINEAR :: 0;
            MODE_RADIAL :: 1;
            MODE_TANGENTIAL :: 2;
            MODE_MAX :: 3;
        }

        mode: int;
    }

    VisualShaderNodeParticleBoxEmitter :: struct {    // 803

        #as using base: VisualShaderNodeParticleEmitter;
    }

    VisualShaderNodeParticleConeVelocity :: struct {    // 804

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeParticleEmit :: struct {    // 805

        #as using base: VisualShaderNode;

        EmitFlags :: enum s32 {
            EMIT_FLAG_POSITION :: 1;
            EMIT_FLAG_ROT_SCALE :: 2;
            EMIT_FLAG_VELOCITY :: 4;
            EMIT_FLAG_COLOR :: 8;
            EMIT_FLAG_CUSTOM :: 16;
        }

        flags: int;
    }

    VisualShaderNodeParticleEmitter :: struct {    // 806

        #as using base: VisualShaderNode;

        mode_2d: bool;
    }

    VisualShaderNodeParticleMeshEmitter :: struct {    // 807

        #as using base: VisualShaderNodeParticleEmitter;

        mesh: Mesh;
        use_all_surfaces: bool;
        surface_index: int;
    }

    VisualShaderNodeParticleMultiplyByAxisAngle :: struct {    // 808

        #as using base: VisualShaderNode;

        degrees_mode: bool;
    }

    VisualShaderNodeParticleOutput :: struct {    // 809

        #as using base: VisualShaderNodeOutput;
    }

    VisualShaderNodeParticleRandomness :: struct {    // 810

        #as using base: VisualShaderNode;

        OpType :: enum s32 {
            OP_TYPE_SCALAR :: 0;
            OP_TYPE_VECTOR_2D :: 1;
            OP_TYPE_VECTOR_3D :: 2;
            OP_TYPE_VECTOR_4D :: 3;
            OP_TYPE_MAX :: 4;
        }

        op_type: int;
    }

    VisualShaderNodeParticleRingEmitter :: struct {    // 811

        #as using base: VisualShaderNodeParticleEmitter;
    }

    VisualShaderNodeParticleSphereEmitter :: struct {    // 812

        #as using base: VisualShaderNodeParticleEmitter;
    }

    VisualShaderNodeProximityFade :: struct {    // 813

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeRandomRange :: struct {    // 814

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeRemap :: struct {    // 815

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeResizableBase :: struct {    // 816

        #as using base: VisualShaderNode;

        size: Vector2;
    }

    VisualShaderNodeRotationByAxis :: struct {    // 817

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeSDFRaymarch :: struct {    // 818

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeSDFToScreenUV :: struct {    // 819

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeSample3D :: struct {    // 820

        #as using base: VisualShaderNode;

        Source :: enum s32 {
            SOURCE_TEXTURE :: 0;
            SOURCE_PORT :: 1;
            SOURCE_MAX :: 2;
        }

        source: int;
    }

    VisualShaderNodeScreenNormalWorldSpace :: struct {    // 821

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeScreenUVToSDF :: struct {    // 822

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeSmoothStep :: struct {    // 823

        #as using base: VisualShaderNode;

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

        op_type: int;
    }

    VisualShaderNodeStep :: struct {    // 824

        #as using base: VisualShaderNode;

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

        op_type: int;
    }

    VisualShaderNodeSwitch :: struct {    // 825

        #as using base: VisualShaderNode;

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

        op_type: int;
    }

    VisualShaderNodeTexture :: struct {    // 826

        #as using base: VisualShaderNode;

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

        source: int;
        texture: Texture2D;
        texture_type: int;
    }

    VisualShaderNodeTexture2DArray :: struct {    // 827

        #as using base: VisualShaderNodeSample3D;

        texture_array: Texture2DArray;
    }

    VisualShaderNodeTexture2DArrayParameter :: struct {    // 828

        #as using base: VisualShaderNodeTextureParameter;
    }

    VisualShaderNodeTexture2DParameter :: struct {    // 829

        #as using base: VisualShaderNodeTextureParameter;
    }

    VisualShaderNodeTexture3D :: struct {    // 830

        #as using base: VisualShaderNodeSample3D;

        texture: Texture3D;
    }

    VisualShaderNodeTexture3DParameter :: struct {    // 831

        #as using base: VisualShaderNodeTextureParameter;
    }

    VisualShaderNodeTextureParameter :: struct {    // 832

        #as using base: VisualShaderNodeParameter;

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

        texture_type: int;
        color_default: int;
        texture_filter: int;
        texture_repeat: int;
        texture_source: int;
    }

    VisualShaderNodeTextureParameterTriplanar :: struct {    // 833

        #as using base: VisualShaderNodeTextureParameter;
    }

    VisualShaderNodeTextureSDF :: struct {    // 834

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeTextureSDFNormal :: struct {    // 835

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeTransformCompose :: struct {    // 836

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeTransformConstant :: struct {    // 837

        #as using base: VisualShaderNodeConstant;

        constant: Transform3D;
    }

    VisualShaderNodeTransformDecompose :: struct {    // 838

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeTransformFunc :: struct {    // 839

        #as using base: VisualShaderNode;

        Function :: enum s32 {
            FUNC_INVERSE :: 0;
            FUNC_TRANSPOSE :: 1;
            FUNC_MAX :: 2;
        }

        function: int;
    }

    VisualShaderNodeTransformOp :: struct {    // 840

        #as using base: VisualShaderNode;

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

        operator: int;
    }

    VisualShaderNodeTransformParameter :: struct {    // 841

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: Transform3D;
    }

    VisualShaderNodeTransformVecMult :: struct {    // 842

        #as using base: VisualShaderNode;

        Operator :: enum s32 {
            OP_AxB :: 0;
            OP_BxA :: 1;
            OP_3x3_AxB :: 2;
            OP_3x3_BxA :: 3;
            OP_MAX :: 4;
        }

        operator: int;
    }

    VisualShaderNodeUIntConstant :: struct {    // 843

        #as using base: VisualShaderNodeConstant;

        constant: int;
    }

    VisualShaderNodeUIntFunc :: struct {    // 844

        #as using base: VisualShaderNode;

        Function :: enum s32 {
            FUNC_NEGATE :: 0;
            FUNC_BITWISE_NOT :: 1;
            FUNC_MAX :: 2;
        }

        function: int;
    }

    VisualShaderNodeUIntOp :: struct {    // 845

        #as using base: VisualShaderNode;

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

        operator: int;
    }

    VisualShaderNodeUIntParameter :: struct {    // 846

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: int;
    }

    VisualShaderNodeUVFunc :: struct {    // 847

        #as using base: VisualShaderNode;

        Function :: enum s32 {
            FUNC_PANNING :: 0;
            FUNC_SCALING :: 1;
            FUNC_MAX :: 2;
        }

        function: int;
    }

    VisualShaderNodeUVPolarCoord :: struct {    // 848

        #as using base: VisualShaderNode;
    }

    VisualShaderNodeVarying :: struct {    // 849

        #as using base: VisualShaderNode;

        varying_name: StringName;
        varying_type: int;
    }

    VisualShaderNodeVaryingGetter :: struct {    // 850

        #as using base: VisualShaderNodeVarying;
    }

    VisualShaderNodeVaryingSetter :: struct {    // 851

        #as using base: VisualShaderNodeVarying;
    }

    VisualShaderNodeVec2Constant :: struct {    // 852

        #as using base: VisualShaderNodeConstant;

        constant: Vector2;
    }

    VisualShaderNodeVec2Parameter :: struct {    // 853

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: Vector2;
    }

    VisualShaderNodeVec3Constant :: struct {    // 854

        #as using base: VisualShaderNodeConstant;

        constant: Vector3;
    }

    VisualShaderNodeVec3Parameter :: struct {    // 855

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: Vector3;
    }

    VisualShaderNodeVec4Constant :: struct {    // 856

        #as using base: VisualShaderNodeConstant;

        constant: Quaternion;
    }

    VisualShaderNodeVec4Parameter :: struct {    // 857

        #as using base: VisualShaderNodeParameter;

        default_value_enabled: bool;
        default_value: Vector4;
    }

    VisualShaderNodeVectorBase :: struct {    // 858

        #as using base: VisualShaderNode;

        OpType :: enum s32 {
            OP_TYPE_VECTOR_2D :: 0;
            OP_TYPE_VECTOR_3D :: 1;
            OP_TYPE_VECTOR_4D :: 2;
            OP_TYPE_MAX :: 3;
        }

        op_type: int;
    }

    VisualShaderNodeVectorCompose :: struct {    // 859

        #as using base: VisualShaderNodeVectorBase;
    }

    VisualShaderNodeVectorDecompose :: struct {    // 860

        #as using base: VisualShaderNodeVectorBase;
    }

    VisualShaderNodeVectorDistance :: struct {    // 861

        #as using base: VisualShaderNodeVectorBase;
    }

    VisualShaderNodeVectorFunc :: struct {    // 862

        #as using base: VisualShaderNodeVectorBase;

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

        function: int;
    }

    VisualShaderNodeVectorLen :: struct {    // 863

        #as using base: VisualShaderNodeVectorBase;
    }

    VisualShaderNodeVectorOp :: struct {    // 864

        #as using base: VisualShaderNodeVectorBase;

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

        operator: int;
    }

    VisualShaderNodeVectorRefract :: struct {    // 865

        #as using base: VisualShaderNodeVectorBase;
    }

    VisualShaderNodeWorldPositionFromDepth :: struct {    // 866

        #as using base: VisualShaderNode;
    }

    VoxelGI :: struct {    // 867

        #as using base: VisualInstance3D;

        Subdiv :: enum s32 {
            SUBDIV_64 :: 0;
            SUBDIV_128 :: 1;
            SUBDIV_256 :: 2;
            SUBDIV_512 :: 3;
            SUBDIV_MAX :: 4;
        }

        subdiv: int;
        size: Vector3;
        camera_attributes: CameraAttributesPractical,CameraAttributesPhysical;
        data: VoxelGIData;
    }

    VoxelGIData :: struct {    // 868

        #as using base: Resource;

        dynamic_range: float;
        energy: float;
        bias: float;
        normal_bias: float;
        propagation: float;
        use_two_bounces: bool;
        interior: bool;
    }

    WeakRef :: struct {    // 869

        #as using base: RefCounted;
    }

    WebRTCDataChannel :: struct {    // 870

        #as using base: PacketPeer;

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

        write_mode: int;
    }

    WebRTCDataChannelExtension :: struct {    // 871

        #as using base: WebRTCDataChannel;
    }

    WebRTCMultiplayerPeer :: struct {    // 872

        #as using base: MultiplayerPeer;
    }

    WebRTCPeerConnection :: struct {    // 873

        #as using base: RefCounted;

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

    WebRTCPeerConnectionExtension :: struct {    // 874

        #as using base: WebRTCPeerConnection;
    }

    WebSocketMultiplayerPeer :: struct {    // 875

        #as using base: MultiplayerPeer;

        supported_protocols: PackedStringArray;
        handshake_headers: PackedStringArray;
        inbound_buffer_size: int;
        outbound_buffer_size: int;
        handshake_timeout: float;
        max_queued_packets: int;
    }

    WebSocketPeer :: struct {    // 876

        #as using base: PacketPeer;

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

        supported_protocols: PackedStringArray;
        handshake_headers: PackedStringArray;
        inbound_buffer_size: int;
        outbound_buffer_size: int;
        max_queued_packets: int;
    }

    WebXRInterface :: struct {    // 877

        #as using base: XRInterface;

        TargetRayMode :: enum s32 {
            TARGET_RAY_MODE_UNKNOWN :: 0;
            TARGET_RAY_MODE_GAZE :: 1;
            TARGET_RAY_MODE_TRACKED_POINTER :: 2;
            TARGET_RAY_MODE_SCREEN :: 3;
        }

        session_mode: String;
        required_features: String;
        optional_features: String;
        requested_reference_space_types: String;
        reference_space_type: String;
        enabled_features: String;
        visibility_state: String;
    }

    Window :: struct {    // 878

        #as using base: Viewport;

        NOTIFICATION_VISIBILITY_CHANGED :: 30;
        NOTIFICATION_THEME_CHANGED :: 32;


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

        mode: int;
        title: String;
        initial_position: int;
        position: Vector2i;
        size: Vector2i;
        current_screen: int;
        mouse_passthrough_polygon: PackedVector2Array;
        visible: bool;
        wrap_controls: bool;
        transient: bool;
        transient_to_focused: bool;
        exclusive: bool;
        unresizable: bool;
        borderless: bool;
        always_on_top: bool;
        transparent: bool;
        unfocusable: bool;
        popup_window: bool;
        extend_to_title: bool;
        mouse_passthrough: bool;
        force_native: bool;
        min_size: Vector2i;
        max_size: Vector2i;
        keep_title_visible: bool;
        content_scale_size: Vector2i;
        content_scale_mode: int;
        content_scale_aspect: int;
        content_scale_stretch: int;
        content_scale_factor: float;
        auto_translate: bool;
        theme: Theme;
        theme_type_variation: String;
    }

    WorkerThreadPool :: struct {    // 879

        #as using base: Object;
    }

    World2D :: struct {    // 880

        #as using base: Resource;

        canvas: RID;
        space: RID;
        navigation_map: RID;
        direct_space_state: PhysicsDirectSpaceState2D;
    }

    World3D :: struct {    // 881

        #as using base: Resource;

        environment: Environment;
        fallback_environment: Environment;
        camera_attributes: CameraAttributesPractical,CameraAttributesPhysical;
        space: RID;
        navigation_map: RID;
        scenario: RID;
        direct_space_state: PhysicsDirectSpaceState3D;
    }

    WorldBoundaryShape2D :: struct {    // 882

        #as using base: Shape2D;

        normal: Vector2;
        distance: float;
    }

    WorldBoundaryShape3D :: struct {    // 883

        #as using base: Shape3D;

        plane: Plane;
    }

    WorldEnvironment :: struct {    // 884

        #as using base: Node;

        environment: Environment;
        camera_attributes: CameraAttributesPractical,CameraAttributesPhysical;
        compositor: Compositor;
    }

    X509Certificate :: struct {    // 885

        #as using base: Resource;
    }

    XMLParser :: struct {    // 886

        #as using base: RefCounted;

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

    XRAnchor3D :: struct {    // 887

        #as using base: XRNode3D;
    }

    XRBodyModifier3D :: struct {    // 888

        #as using base: Node3D;

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

        body_tracker: String;
        target: NodePath;
        body_update: int;
        bone_update: int;
        show_when_tracked: bool;
    }

    XRBodyTracker :: struct {    // 889

        #as using base: RefCounted;

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

        has_tracking_data: bool;
        body_flags: int;
    }

    XRCamera3D :: struct {    // 890

        #as using base: Camera3D;
    }

    XRController3D :: struct {    // 891

        #as using base: XRNode3D;
    }

    XRFaceModifier3D :: struct {    // 892

        #as using base: Node3D;

        face_tracker: String;
        target: NodePath;
    }

    XRFaceTracker :: struct {    // 893

        #as using base: RefCounted;

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

        blend_shapes: PackedFloat32Array;
    }

    XRHandModifier3D :: struct {    // 894

        #as using base: Node3D;

        BoneUpdate :: enum s32 {
            BONE_UPDATE_FULL :: 0;
            BONE_UPDATE_ROTATION_ONLY :: 1;
            BONE_UPDATE_MAX :: 2;
        }

        hand_tracker: String;
        target: NodePath;
        bone_update: int;
    }

    XRHandTracker :: struct {    // 895

        #as using base: RefCounted;

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

        hand: int;
        has_tracking_data: bool;
        hand_tracking_source: int;
    }

    XRInterface :: struct {    // 896

        #as using base: RefCounted;

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

        interface_is_primary: bool;
        xr_play_area_mode: int;
        environment_blend_mode: int;
        ar_is_anchor_detection_enabled: bool;
    }

    XRInterfaceExtension :: struct {    // 897

        #as using base: XRInterface;
    }

    XRNode3D :: struct {    // 898

        #as using base: Node3D;

        tracker: String;
        pose: String;
    }

    XROrigin3D :: struct {    // 899

        #as using base: Node3D;

        world_scale: float;
        current: bool;
    }

    XRPose :: struct {    // 900

        #as using base: RefCounted;

        TrackingConfidence :: enum s32 {
            XR_TRACKING_CONFIDENCE_NONE :: 0;
            XR_TRACKING_CONFIDENCE_LOW :: 1;
            XR_TRACKING_CONFIDENCE_HIGH :: 2;
        }

        has_tracking_data: bool;
        name: String;
        transform: String;
        linear_velocity: String;
        angular_velocity: String;
        tracking_confidence: int;
    }

    XRPositionalTracker :: struct {    // 901

        #as using base: RefCounted;

        TrackerHand :: enum s32 {
            TRACKER_HAND_UNKNOWN :: 0;
            TRACKER_HAND_LEFT :: 1;
            TRACKER_HAND_RIGHT :: 2;
        }

        type: int;
        name: String;
        description: String;
        profile: String;
        hand: int;
    }

    XRServer :: struct {    // 902

        #as using base: Object;

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

        world_scale: float;
        world_origin: Vector3;
        primary_interface: Object;
    }

    ZIPPacker :: struct {    // 903

        #as using base: RefCounted;

        ZipAppend :: enum s32 {
            APPEND_CREATE :: 0;
            APPEND_CREATEAFTER :: 1;
            APPEND_ADDINZIP :: 2;
        }
    }

    ZIPReader :: struct {    // 904

        #as using base: RefCounted;
    }
}


#run {

    assert(size_of(gdt.Nil) == 0);
    assert(size_of(gdt.Vector2) == 8);
    assert(size_of(gdt.Vector2i) == 8);
    assert(size_of(gdt.Rect2) == 16);
    assert(size_of(gdt.Rect2i) == 16);
    assert(size_of(gdt.Vector3) == 12);
    assert(size_of(gdt.Vector3i) == 12);
    assert(size_of(gdt.Transform2D) == 24);
    assert(size_of(gdt.Vector4) == 16);
    assert(size_of(gdt.Vector4i) == 16);
    assert(size_of(gdt.Plane) == 16);
    assert(size_of(gdt.Quaternion) == 16);
    assert(size_of(gdt.AABB) == 24);
    assert(size_of(gdt.Basis) == 36);
    assert(size_of(gdt.Transform3D) == 48);
    assert(size_of(gdt.Projection) == 64);
    assert(size_of(gdt.Color) == 16);
    assert(size_of(gdt.StringName) == 4);
    assert(size_of(gdt.NodePath) == 4);
    assert(size_of(gdt.RID) == 8);
    assert(size_of(gdt.Callable) == 16);
    assert(size_of(gdt.Signal) == 16);
    assert(size_of(gdt.Dictionary) == 4);
    assert(size_of(gdt.Array) == 4);
    assert(size_of(gdt.PackedByteArray) == 8);
    assert(size_of(gdt.PackedInt32Array) == 8);
    assert(size_of(gdt.PackedInt64Array) == 8);
    assert(size_of(gdt.PackedFloat32Array) == 8);
    assert(size_of(gdt.PackedFloat64Array) == 8);
    assert(size_of(gdt.PackedStringArray) == 8);
    assert(size_of(gdt.PackedVector2Array) == 8);
    assert(size_of(gdt.PackedVector3Array) == 8);
    assert(size_of(gdt.PackedColorArray) == 8);
    assert(size_of(gdt.Variant) == 24);
}

#scope_file

Math :: #import "Math";
