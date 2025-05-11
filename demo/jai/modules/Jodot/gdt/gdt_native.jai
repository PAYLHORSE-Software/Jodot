//  --------------------------
// | JODOT GDT NATIVE STRUCTS |
//  --------------------------

// Commented out cause compiler crash for some reason... @Incomplete

AudioFrame :: struct {
    left: float;
    right: float;
}

CaretInfo :: struct {
    leading_caret: Rect2;
    trailing_caret: Rect2;
    leading_direction: TextServer.Direction;
    trailing_direction: TextServer.Direction;
}

// Glyph :: struct {
//     start : int = -1;
//     end : int = -1;
//     count : u8 = 0;
//     repeat : u8 = 1;
//     flags : u16 = 0;
//     x_off : float = 0.0;
//     y_off : float = 0.0;
//     advance : float = 0.0;
//     front_rid: RID;
//     font_size : int = 0;
//     index : s32 = 0;
// }

ObjectID :: struct {
    id : u64 = 0;
}

// PhysicsServer2DExtensionMotionResult :: struct {
//     travel: Vector2;
//     remainder: Vector2;
//     collision_point: Vector2;
//     collision_normal: Vector2;
//     collider_velocity: Vector2;
//     collision_depth: float64;
//     collision_safe_fraction: float64;
//     collision_unsafe_fraction: float64;
//     collision_local_shape: int;
//     collider_id: ObjectID;
//     collider: RID;
//     collider_shape: int;
// }

// PhysicsServer2DExtensionRayResult :: struct {
//     position: Vector2;
//     normal: Vector2;
//     rid: RID;
//     collider_id: ObjectID;
//     collider: *Object;
//     shape: int;
// }

// PhysicsServer2DExtensionShapeRestInfo :: struct {
//     point: Vector2;
//     norma: Vector2;
//     rid: RID;
//     collider_id: ObjectID;
//     shape: int;
//     linear_velocity: Vector2;
// }

// PhysicsServer2DExtensionShapeResult :: struct {
//     rid: RID;
//     collider_id: ObjectID;
//     collider: *Object;
//     shape: int;
// }

// PhysicsServer3DExtensionMotionCollision :: struct {
//     position: Vector3;
//     normal: Vector3;
//     collider_velocity: Vector3;
//     collider_angular_velocity: Vector3;
//     depth: float64;
//     local_shape: int;
//     collider_id: ObjectID;
//     collider: RID;
//     collider_shape: int;
// }

// PhysicsServer3DExtensionMotionResult :: struct {
//     travel: Vector3;
//     remainder: Vector3;
//     collision_depth: float64;
//     collision_safe_fraction: float64;
//     collision_unsafe_fraction: float64;
//     collisions: [32] PhysicsServer3DExtensionMotionCollision;
//     collision_count: int;
// }

// PhysicsServer3DExtensionRayResult :: struct {
//     position: Vector3;
//     normal: Vector3;
//     rid: RID;
//     collider_id: ObjectID;
//     collider: *Object;
//     shape: int;
//     face_index: int;
// }

// PhysicsServer3DExtensionShapeRestInfo :: struct {
//     point: Vector3;
//     normal: Vector3;
//     rid: RID;
//     collider_id: ObjectID;
//     shape: int;
//     linear_velocity: Vector3;
// }

// PhysicsServer3DExtensionShapeResult :: struct {
//     rid: RID;
//     collider_id: ObjectID;
//     collider: *Object;
//     shape: int;
// }

// ScriptLanguageExtensionProfilingInfo :: struct {
//     signature: StringName;
//     call_count: u64;
//     total_time: u64;
//     self_time: u64;
// }
