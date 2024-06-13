// TODO: generate these bindings programmatically from API JSON

gdt :: struct {

    builtin :: struct {

        // ------------------------------
        // BUILTIN TYPES (FLOAT32 CONFIG)
        // ------------------------------

        Nil :: void;

        gbool :: u8; //bool

        gint :: int;

        gfloat :: float64;

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

        StringName :: struct {
        }

        NodePath :: struct {
        }

        RID :: struct {
        }

        Callable :: struct {
        }

        Signal :: struct {
        }

        Dictionary :: struct {
        }

        Array :: struct {
        }

        PackedByteArray :: struct {
        }

        PackedInt32Array :: struct {
        }

        PackedInt64Array :: struct {
        }

        PackedFloat32Array :: struct {
        }

        PackedFloat64Array :: struct {
        }

        PackedStringArray :: struct {
        }

        PackedVector2Array :: struct {
        }

        PackedVector3Array :: struct {
        }

        PackedColorArray :: struct {
        }

    }

    // Do we need to declare all of godot's classes natively like so? Not sure.
    Object :: struct {
        is_refcounted : u8 = 0;
        is_instantiable : u8 = 1;
        // constants
        NOTIFICATION_POSTINITIALIZE: u8 = 0;
        NOTIFICATION_PREDELETE: u8 = 1;
        NOTIFICATION_EXTENSION_RELOADED: u8 = 2;

        // enums
        ConnectFlags :: enum u8 {
            CONNECT_DEFERRED :: 1;
            CONNECT_PERSIST :: 2;
            CONNECT_ONE_SHOT :: 4;
            CONNECT_REFERENCE_COUNTED :: 8;
        }
        // methods? no
        // signals?
    }
}

#run {

    using gdt.builtin;

    // ---- BUILTIN TYPE SIZES (FLOAT32 CONFIG) ----
    // TODO: should be able to auto-generate from JSON
    // assert(size_of(GString) == 4, "GString has size % instead of 4", size_of(GString));
    assert(size_of(Vector2) == 8, "Vector2 has size % instead of 8", size_of(Vector2));
    assert(size_of(Vector2i) == 8, "Vector2i has size % instead of 8", size_of(Vector2i));
    assert(size_of(Rect2) == 16, "Rect2 has size % instead of 16", size_of(Rect2));
    assert(size_of(Rect2i) == 16, "Rect2i has size % instead of 16", size_of(Rect2i));
    assert(size_of(Vector3) == 12, "Vector3 has size % instead of 12", size_of(Vector3));
    assert(size_of(Vector3i) == 12, "Vector3i has size % instead of 12", size_of(Vector3i));
    assert(size_of(Transform2D) == 24, "Transform2D has size % instead of 24", size_of(Transform2D));
    assert(size_of(Vector4) == 16, "Vector4 has size % instead of 16", size_of(Vector4));
    assert(size_of(Vector4i) == 16, "Vector4i has size % instead of 16", size_of(Vector4i));
    assert(size_of(Plane) == 16, "Plane has size % instead of 16", size_of(Plane));
    assert(size_of(Quaternion) == 16, "Quaternion has size % instead of 16", size_of(Quaternion));
    assert(size_of(AABB) == 24, "AABB has size % instead of 24", size_of(AABB));
    assert(size_of(Basis) == 36, "Basis has size % instead of 36", size_of(Basis));
    assert(size_of(Transform3D) == 48, "Transform3D has size % instead of 48", size_of(Transform3D));
    assert(size_of(Projection) == 64, "Projection has size % instead of 64", size_of(Projection));
    assert(size_of(Color) == 16, "Color has size % instead of 16", size_of(Color));
    // assert(size_of(StringName) == 4, "StringName has size % instead of 4", size_of(StringName));
    // assert(size_of(NodePath) == 4, "NodePath has size % instead of 4", size_of(NodePath));
    // assert(size_of(RID) == 8, "RID has size % instead of 8", size_of(RID));
    // assert(size_of(Object) == 4, "Object has size % instead of 4", size_of(Object));
    // assert(size_of(Callable) == 16, "Callable has size % instead of 16", size_of(Callable));
    // assert(size_of(Signal) == 16, "Signal has size % instead of 16", size_of(Signal));
    // assert(size_of(Dictionary) == 4, "Dictionary has size % instead of 4", size_of(Dictionary));
    // assert(size_of(Array) == 4, "Array has size % instead of 4", size_of(Array));
    // assert(size_of(PackedByteArray) == 8, "PackedByteArray has size % instead of 8", size_of(PackedByteArray));
    // assert(size_of(PackedInt32Array) == 8, "PackedInt32Array has size % instead of 8", size_of(PackedInt32Array));
    // assert(size_of(PackedInt64Array) == 8, "PackedInt64Array has size % instead of 8", size_of(PackedInt64Array));
    // assert(size_of(PackedFloat32Array) == 8, "PackedFloat32Array has size % instead of 8", size_of(PackedFloat32Array));
    // assert(size_of(PackedFloat64Array) == 8, "PackedFloat64Array has size % instead of 8", size_of(PackedFloat64Array));
    // assert(size_of(PackedStringArray) == 8, "PackedStringArray has size % instead of 8", size_of(PackedStringArray));
    // assert(size_of(PackedVector2Array) == 8, "PackedVector2Array has size % instead of 8", size_of(PackedVector2Array));
    // assert(size_of(PackedVector3Array) == 8, "PackedVector3Array has size % instead of 8", size_of(PackedVector3Array));
    // assert(size_of(PackedColorArray) == 8, "PackedColorArray has size % instead of 8", size_of(PackedColorArray));
    // assert(size_of(Variant) == 24, "Variant has size % instead of 24", size_of(Variant));

    // We can take for granted that offsets are correct if these asserts pass :)
}

#import "Basic";
Math :: #import "Math";
