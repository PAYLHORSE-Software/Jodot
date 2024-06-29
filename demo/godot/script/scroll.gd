# Once we can have this code in the language instead, Jodot is feature complete.

extends Sprite2D

var scroll_speed_x = -0.03
var offset_x = 0.0
var offset_y = 0.0

func _ready():
	if material == null:
		var mat = ShaderMaterial.new()
		mat.shader = preload("res://shader/scroll.gdshader")
		self.material = mat

func _process(delta):
	offset_x += delta * scroll_speed_x
	offset_x = fmod(offset_x, 1)
	material.set_shader_parameter("offset", Vector2(offset_x, offset_y))
