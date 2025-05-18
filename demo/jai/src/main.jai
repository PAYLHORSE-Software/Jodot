// ------------------------
// JODOT ENTITY DECLARATION
// ------------------------

using Jodot;

// We declare an Extension Entity as a struct, as follows:

// (1) Use the @jodot note in struct declaration.
#poke_name Jodot MyCustomEntity;
MyCustomEntity :: struct @jodot {

    // (2) Designate a parent class from Godot's builtin classes, as 'parent'.
    #as using parent: CharacterBody3D;

    // (3) Insert this macro to complete the definition.
    // (This just inserts another #as using statement that declares this struct
    // as an 'Extension Entity' and sets it's type fields appropriately.)
    #insert def_extension_entity;

    // You can now declare fields as you would with any native struct.
    time_accumulator : float = 0.0;
    character_name : string = "Nameless One";

    // (4) Assign to 'virtual function' slots if necessary.
    // Nodes in Godot operate as independent objects, with their own inner game-loop.
    // These procedures are called automatically on each node in the scene as follows:
    // _enter_tree is called as soon as the node is instantiated into the scene tree
    // _ready is called once the node is fully initialized
    // _process is called once per frame
    // _physics_process is called at a frame-independent tick rate
    // _input is called when the node recieves an input event
    // _exit_tree is called when the node is destroyed
    _enter_tree = enter_tree_MyCustomEntity;
    _ready = ready_MyCustomEntity;
    _process = process_MyCustomEntity;
    _physics_process = physics_process_MyCustomEntity;
    _input = input_MyCustomEntity;
    _exit_tree = exit_tree_MyCustomEntity;

    // The way of thinking encouraged by the node system, signals, and
    // these virtual functions especially can and will bite you in the ass.
    // Use them sparingly and wisely.
}


// Each 'virtual function' declaration must match the respective signature shown below.
enter_tree_MyCustomEntity :: (cast_me: *ExtensionEntity) {
    print("Enter tree from MyCustomEntity!");
}

ready_MyCustomEntity :: (cast_me: *ExtensionEntity) {

    // You must cast the provided pointer to the right type to use your struct.
    as_self := cast_me.(*MyCustomEntity);
    as_node := cast_me.(*Node);

    // Call builtin class methods like so: method(target, args...);
    set_name(as_node, "Sailor");

    // You must cast to the respective type when using a method.
    // Otherwise, there may be ambiguity as to which procedure overload to use.
    // set_name(as_self, "Sailor"); // Uncomment this line for an error.
    // This emulation of class methods is pretty sad and will be improved soon.

    // Use the Godot Docs as your reference: https://docs.godotengine.org/en/stable/classes/index.html
    // All methods are available, and should match Godot names and arguments exactly.
    // NOTE: don't worry about String vs. StringName. Just use native strings.
    // NOTE: currently, arguments with default values are skipped
}

process_MyCustomEntity :: (cast_me: *ExtensionEntity, delta: float64) {}
physics_process_MyCustomEntity :: (cast_me: *ExtensionEntity, delta: float64) {}
input_MyCustomEntity :: (cast_me: *ExtensionEntity, event: *InputEvent) {}
exit_tree_MyCustomEntity :: (cast_me: *ExtensionEntity) {}

// ----------
// DEMO SCENE

// Here's the test entity we've used as the root of the demo scene:

PRINT_DELTA :: 0.04;
full_message := "I'm sorry! GDScript is in another castle.";
onscreen_message: [..] u8;

#poke_name Jodot DemoRoot;
DemoRoot :: struct @jodot {

    #as using parent: Node3D;
    #insert def_extension_entity;

    time_accumulator : float = 0.0;
    greeter_text: RichTextLabel;

    _ready = ready_DemoRoot;
    _process = process_DemoRoot;
    _input = input_DemoRoot;
}

ready_DemoRoot :: (cast_me: *ExtensionEntity) {
    
    as_self := cast_me.(*DemoRoot);
    as_node := cast_me.(*Node);
    as_node3d := cast_me.(*Node3D);
    
    // This is 'tree-climbing', the simplest way to reference other nodes.
    rich_text := get_node(as_node, "greeter/RichTextLabel");
    // We can store this reference as a struct field.
    as_self.greeter_text = rich_text.(*RichTextLabel).*;
    
    // Test setting & getting a property (3D position doesn't do anything in this case)
    set_position(as_node3d, Vector3.{1, 1, 2});
    vec3 := get_position(as_node3d);
    print_muted(tprint("Position: % should be {1, 1, 2}", vec3));

    // Creating and instantiating a Label
    hint_text := new_gdt_obj(Label);
    hint_text_as_ctrl := (*hint_text).(*Control);
    set_text(*hint_text, "Press Esc to exit.");
    // set_horizontal_alignment(*hint_text, .HORIZONTAL_ALIGNMENT_RIGHT);
    set_v_size_flags(hint_text_as_ctrl, .SIZE_FILL);
    canvas := get_node(as_node, "canvas");
    add_child(canvas, xx,force hint_text);
    
    bbcode := "[center]";
    array_copy(*onscreen_message, bbcode.([] u8));
    
    // TODO find a way to load resources!!
    // The image is loaded and cached successfuly, but the resource object returned seems to be invalid.
    // mouse_cursor := load(*S_ResourceLoader, "res://menu/sprite/mouse_cursor.png");
    // assert(has_cached(*S_ResourceLoader, "res://menu/sprite/mouse_cursor.png"));
    
    // Setting custom mouse cursor
    // set_custom_mouse_cursor(*S_Input, mouse_cursor.*);
    
    // Creating and instantiating a TextureRect
    // img_tex := new_gdt_obj(ImageTexture);
    // set_image(*img_tex, xx,force mouse_cursor.*);
    // tex_rect := new_gdt_obj(TextureRect);
    // set_texture((*tex_rect).(*TextureRect), xx,force img_tex);
    // add_child(canvas, xx,force tex_rect);
    
    print("Ready from DemoRoot!\n");
}

process_DemoRoot :: (cast_me: *ExtensionEntity, delta: float64) {
    
    as_self := cast(*DemoRoot) cast_me;
    as_node := cast_me.(*Node);
    
    // Print message one letter per delta
    as_self.time_accumulator += cast(float) delta;
    if as_self.time_accumulator > PRINT_DELTA {
        
        as_self.time_accumulator = 0;
        next_char := full_message.data.*;
        array_add(*onscreen_message, next_char);
        full_message.data += 1;

        set_text(*as_self.greeter_text, onscreen_message.(string));
    }
}

input_DemoRoot :: (cast_me: *ExtensionEntity, event: *InputEvent) {

    as_node := cast_me.(*Node);
    
    // Quit on pressing Esc
    // The 'escape' action was created and bound to Esc key in editor!
    if is_action_pressed(event, "escape") {
        scene_tree := get_tree(as_node);
        quit(scene_tree);
    }
}

// Here's the scrolling platform at the bottom:

GROUND_SCROLL_SPEED :: -0.03;
ground_offset := 0.0;

#poke_name Jodot ScrollingGround;
ScrollingGround :: struct @jodot {

    #as using parent: Sprite2D;
    #insert def_extension_entity;

    shader_mat: ShaderMaterial;

    _ready = ready_ScrollingGround;
    _process = process_ScrollingGround;    
}

ready_ScrollingGround :: (cast_me: *ExtensionEntity) {

    as_self := cast_me.(*ScrollingGround);
    as_canvas_item := cast_me.(*CanvasItem);
    
    // shader_mat := load(*S_ResourceLoader, "res://shader/ground_shader_mat.tres", "ShaderMaterial");
    // shader_mat_name := get_name(shader_mat.(*Resource));
    // as_self.shader_mat = shader_mat.(*ShaderMaterial).*;
    // set_material(as_canvas_item, xx,force as_self.shader_mat);
    
    // offset_var: Variant;
    // offset_vec := Vector2.{0.4, 0.0};
    // variant_from_Vector2(*offset_var, *offset_vec);
    // set_instance_shader_parameter(as_canvas_item, "offset", offset_var);
}

process_ScrollingGround :: (cast_me: *ExtensionEntity, delta: float64) {
    
    as_self := cast_me.(*ScrollingGround);
    as_canvas_item := cast_me.(*CanvasItem);
    
    ground_offset += xx delta * GROUND_SCROLL_SPEED;
    ground_offset = Math.fmod_cycling(ground_offset, 1);
    offset_var: Variant;
    offset_vec := Vector2.{ground_offset, 0.0};
    variant_from_Vector2(*offset_var, *offset_vec);
    // set_shader_parameter(*as_self.shader_mat, "offset", offset_var);
    shader_mat := get_material(as_canvas_item).(*ShaderMaterial);
    // current_offset := get_shader_parameter(shader_mat, "offset");
    current_offset := get_instance_shader_parameter(as_canvas_item, "offset");
    print_muted("Offset variant: %", current_offset);
    vec: Vector2;
    // variant_to_Vector2(*vec, *offset_var);
    variant_to_Vector2(*vec, *current_offset);
    print_affirm("Offset: %", vec);
    // set_shader_parameter(shader_mat, "offset", offset_var);
    print_muted("Offset variant: %", current_offset);
    // set_shader_parameter(shader_mat, "offset", current_offset);
    set_instance_shader_parameter(as_canvas_item, "offset", offset_var);
    // assert(false);
}

#import "Basic";
Math :: #import "Math";
Jodot :: #import "Jodot";
