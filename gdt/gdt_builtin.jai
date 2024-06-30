//  -------------------
// | JODOT GDT BUILTIN |
//  -------------------

Nil :: void;

// bool, int and float (float64) match native

gstring :: [4] u8; // ??

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
StringName :: #type,distinct [4] u8; // ??
NodePath :: #type,distinct [4] u8;
RID :: #type,distinct [8] u8;
// Object :: u32;
Callable :: #type,distinct [16] u8;
Signal :: #type,distinct [16] u8;
Dictionary :: #type,distinct [4] u8;
Array :: #type,distinct [4] u8;
PackedByteArray :: #type,distinct [8] u8;
PackedInt32Array :: #type,distinct [8] u8;
PackedInt64Array :: #type,distinct [8] u8;
PackedFloat32Array :: #type,distinct [8] u8;
PackedFloat64Array :: #type,distinct [8] u8;
PackedStringArray :: #type,distinct [8] u8;
PackedVector2Array :: #type,distinct [8] u8;
PackedVector3Array :: #type,distinct [8] u8;
PackedColorArray :: #type,distinct [8] u8;
Variant :: [24] u8;

#scope_file

Math :: #import "Math";
