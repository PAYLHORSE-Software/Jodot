shader_type canvas_item;

instance uniform vec2 offset;

void fragment() {
	vec2 wrapped_uv = fract(UV + offset);
	COLOR = texture(TEXTURE, wrapped_uv);
}
