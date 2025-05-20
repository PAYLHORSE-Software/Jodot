// -----------
// Demo Ground

// Here's the scrolling platform at the bottom:

GROUND_SCROLL_SPEED :: -0.03;
ground_offset := 0.0;

#poke_name Jodot ScrollingGround;
ScrollingGround :: struct @jodot {

    #as using parent: Sprite2D;
    #insert def_extension_entity;

    _process = process;
}

#scope_file

process :: (cast_me: *ExtensionEntity, delta: float64) {
    
    as_canvas_item := cast_me.(*CanvasItem);
    
    ground_offset += xx delta * GROUND_SCROLL_SPEED;
    ground_offset = fmod_cycling(ground_offset, 1);
    offset_var: Variant;
    offset_vec := Vector2.{ground_offset, 0.0};
    variant_from_Vector2(*offset_var, *offset_vec);
    set_instance_shader_parameter(as_canvas_item, "offset", offset_var);
}
