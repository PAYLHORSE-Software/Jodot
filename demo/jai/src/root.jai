// ---------
// Demo Root

// Here's the test entity we've used as the root of the demo scene:

PRINT_DELTA :: 0.04;
full_message := "I'm sorry! GDScript is in another castle.";
onscreen_message: [..] u8;

g_root_node: Node;

#poke_name Jodot DemoRoot;
DemoRoot :: struct @jodot {

    #as using parent: Node3D;
    #insert def_extension_entity;

    test_export: float; @export
    greeter_text: RichTextLabel;

    _ready = ready;
    _process = process;
    _input = input;
}

#scope_file

time_accumulator : float = 0.0;
greeter_text: RichTextLabel;

ready :: (cast_me: *Extension_Entity) {
    
    as_self := cast_me.(*DemoRoot);
    as_node := cast_me.(*Node);
    as_node3d := cast_me.(*Node3D);
    
    // Get a reference to a child node
    rich_text := get_node(as_node, "greeter/RichTextLabel");
    
    // We can store this reference as a struct field
    as_self.greeter_text = rich_text.(*RichTextLabel).*;
    // We *could* also just store it in a local variable
    greeter_text = rich_text.(*RichTextLabel).*;
    
    // (I much prefer the latter, and keeping everything in file scoped variables/structs instead of using as_self)
    
    // Setting & getting a vector (3D position doesn't do anything in this case)
    set_position(as_node3d, Vector3.{1, 1, 2});
    pos : Vector3 = get_position(as_node3d);
    log_muted(tprint("Position: % should be {1, 1, 2}", pos));

    // Creating and instantiating a Label
    // We use new_gdt() to construct GodotClass objects
    
    hint_text := new_gdt(Label);
    
    // NOTE:
    // new_gdt() returns a pointer to a GodotClass struct.
    // This struct is stack allocated inline.
    // Again, the GodotClass struct is just an opaque reference, holding an ID and/or pointer to the object instantiated in-engine.
    // To hold onto a reference, we can dereference the *GodotClass returned into a GodotClass and copy it somewhere.
    // Otherwise, we lose the reference once it's out of scope!
    
    // Setting a string property
    set_text(hint_text, "Press Esc to exit.");
    set_v_size_flags(hint_text.(*Control), .SIZE_FILL);
    canvas := get_node(as_node, "canvas");
    // Add our hint text to the node tree
    add_child(canvas, hint_text.(*Node));
    
    // Load an image and set as custom mouse cursor
    // TODO wrapper for ResourceLoader::load
    mouse_cursor_tex := load(*S_ResourceLoader, "res://menu/sprite/mouse_cursor.png"); // Loading a .png returns CompressedTexture2D
    assert(has_cached(*S_ResourceLoader, "res://menu/sprite/mouse_cursor.png"));

    mouse_cursor_image := get_image(mouse_cursor_tex.(*Texture2D));
    // TEMP TODO ADVANCED for some reason, the Image object ID becomes invalid after it's passed into set_custom_mouse_cursor...
    // Something to do with reference count on Resources I think, so this may be the case for all Resources.
    // We can circumvent this for now by setting it's object pointer here, so that the sys_call uses that instead.
    mouse_cursor_image.p_object = object_get_instance_from_id(mouse_cursor_image.object_id);
    
    set_custom_mouse_cursor(*S_Input, mouse_cursor_image.(*Resource));
    
    bbcode := "[center]";
    array_copy(*onscreen_message, bbcode.([] u8));

    // Store a reference to this node as a global
    g_root_node := as_node.*;
    
    log("DemoRoot is ready!");
}

process :: (cast_me: *Extension_Entity, delta: float64) {
    
    as_node := cast_me.(*Node);
    
    // Print message one letter per delta
    time_accumulator += delta.(float);
    if time_accumulator > PRINT_DELTA {
        
        time_accumulator = 0;
        next_char := full_message.data.*;
        array_add(*onscreen_message, next_char);
        full_message.data += 1;

        set_text(*greeter_text, onscreen_message.(string));
    }
}

input :: (cast_me: *Extension_Entity, event: *InputEvent) {

    as_node := cast_me.(*Node);
    
    // Quit on pressing Esc
    // The 'escape' action was created and bound to Esc key in editor!
    if is_action_pressed(event, "escape") {
        // TODO free Resources?
        scene_tree := get_tree(as_node);
        quit(scene_tree);
    }
}
