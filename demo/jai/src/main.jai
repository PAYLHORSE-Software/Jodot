// ------------------------
// JODOT ENTITY DECLARATION
// ------------------------

// We declare an Extension Entity as a struct, as follows:

// (1) Use the @jodot note in struct declaration.
MyCharacter :: struct @jodot {

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
    _enter_tree = enter_tree_MyCharacter;
    _ready = ready_MyCharacter;
    _process = process_MyCharacter;
    _physics_process = physics_process_MyCharacter;
    // The input vfn is incomplete, but it's best to use the Input singleton instead anyway.
    // _input = input_MyCharacter;
    _exit_tree = exit_tree_MyCharacter;

    // The way of thinking encouraged by the node system, signals, and
    // these virtual functions especially can and will bite you in the ass.
    // Use them sparingly and wisely.
}


// Each 'virtual function' declaration must match the respective signature shown below.
enter_tree_MyCharacter :: (cast_me: *ExtensionEntity) {
    print("Enter tree from MyCharacter!");
}

ready_MyCharacter :: (cast_me: *ExtensionEntity) {

    // You must cast the provided pointer to the right type to use your struct.
    as_node := cast(*Node) cast_me;

    // Call builtin class methods like so: method(target, args...);
    set_name(as_node, "Sailor");

    // You must also cast to the respective type when using a method.
    // Otherwise, there may be ambiguity as to which procedure overload to use.
    // set_name(entity, "Sailor"); // Uncomment this line for an error.
    // This emulation of class methods is pretty sad and will be improved soon.

    // Use the Godot Docs as your reference: https://docs.godotengine.org/en/stable/classes/index.html
    // All methods are available, and match Godot names and arguments exactly.
    // NOTE: don't worry about String vs. StringName. Just use native strings.
}

process_MyCharacter :: (cast_me: *ExtensionEntity, delta: float64) {}
physics_process_MyCharacter :: (cast_me: *ExtensionEntity, delta: float64) {}
// input_MyCharacter :: (cast_me: *ExtensionEntity, event: *InputEvent) {}
exit_tree_MyCharacter :: (cast_me: *ExtensionEntity) {}

// ----------
// DEMO SCENE

// Here's the test entity we've used as the root of the demo scene:

JodotTestEntity :: struct @jodot {

    #as using parent: Node3D;
    #insert def_extension_entity;

    time_accumulator : float = 0.0;
    greeter_text : *RichTextLabel = null;

    _ready = ready_JodotTestEntity;
    _process = process_JodotTestEntity;
}

ready_JodotTestEntity :: (cast_me: *ExtensionEntity) {
    as_self := cast(*JodotTestEntity) cast_me;
    as_node := cast(*Node) cast_me;
    as_node3d := cast(*Node3D) cast_me;
    // This is 'tree-climbing', the simplest way to reference other nodes.
    set_name(as_node, "Sailor");
    rich_text := get_node(as_node, "greeter/RichTextLabel");
    as_self.greeter_text = cast(*RichTextLabel) *rich_text;
    // message := get_text(as_self.greeter_text);
    // Try not to abuse this. It can ending up locking you into a strict hierarchy.
    mouse_cursor := load(*S_ResourceLoader, "res://menu/sprite/mouse_cursor.png");
    set_custom_mouse_cursor(*S_Input, mouse_cursor);
    set_position(as_node3d, Vector3.{1.0, 1.0, 1.0});
    vec3 := get_position(as_node3d);
    print_muted(tprint("Position: %", vec3));
    print("Ready from JodotTestEntity!\n");
}

process_JodotTestEntity :: (cast_me: *ExtensionEntity, delta: float64) {
    as_self := cast(*JodotTestEntity) cast_me;
    as_self.time_accumulator += cast(float) delta;
    // if as_self.time_accumulator > 10.0 print("Greeter's Pocketwatch: %\n", as_self.time_accumulator);
    // handle_input();
}

handle_input :: () #expand {
    if is_action_pressed(*S_Input, "escape") {
        as_node := cast(*Node) `cast_me;
        scene_tree := get_tree(as_node);
        quit(scene_tree);
    }
}

#import "Basic";
#import "Jodot";
