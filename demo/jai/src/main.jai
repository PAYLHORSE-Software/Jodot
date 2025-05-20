// -------------------------
// Guided Entity Declaration

// Jodot import should be named, so we can use #poke_name.
Jodot :: #import "Jodot";
// It should be fine to use it's namespace globally anyway:
using Jodot;

// We declare an Extension Entity as follows:

// (1) Poke struct name into Jodot's scope.
#poke_name Jodot MyCustomEntity;
// (2) Use the @jodot note in struct declaration.
MyCustomEntity :: struct @jodot {

    // (3) Designate a parent class from Godot's builtin classes, as 'parent'.
    #as using parent: CharacterBody3D;

    // (4) Insert this macro to complete the definition.
    // (This just inserts another #as using statement that declares this struct
    // as an 'Extension Entity' and sets it's type fields appropriately.)
    #insert def_extension_entity;

    // You can now declare fields as you would with any native struct.
    health : float = 0.0;
    character_name : string = "Nameless One";

    // (5) Assign to virtual function slots if necessary.
    // These procedures are called automatically on each node in the scene as follows:
    // _enter_tree is called as soon as the node is instantiated into the scene tree
    // _ready is called once the node is fully initialized
    // _process is called once per frame
    // _physics_process is called at a frame-independent tick rate
    // _input is called when the node recieves an input event
    // _exit_tree is called when the node is destroyed
    _enter_tree = enter_tree;
    _ready = ready;
    _process = process;
    _physics_process = physics_process;
    _input = input;
    _exit_tree = exit_tree;
}

// I feel that file scope makes sense here, since these declarations pertain only to the Extension Entity.
#scope_file

// Each 'virtual function' declaration must match the respective signature shown below.
enter_tree :: (cast_me: *ExtensionEntity) {
    print("Enter tree from MyCustomEntity!");
}

ready :: (cast_me: *ExtensionEntity) {

    // You must cast the provided pointer to the right type to use your struct.
    as_self := cast_me.(*MyCustomEntity);
    as_node := cast_me.(*Node);

    // ExtentionEntity 'inherits' from it's parent GodotClass.
    // All GodotClass structs are identical, and just an opaque reference to an object instance.
    
    // Call builtin class methods like so: method(target, args...);
    set_name(as_node, "Sailor");

    // You must cast to the expected GodotClass type when using methods.
    // Otherwise, there may be ambiguity as to which procedure overload to use.
    // set_name(as_self, "Sailor"); // Uncomment this line for an error.

    // Use the Godot Docs as your reference: https://docs.godotengine.org/en/stable/classes/index.html
    // All methods are available, and should match Godot names and arguments exactly.
    // NOTE: don't worry about String vs. StringName, just use native strings
    // NOTE: currently, arguments with default values are skipped
}

// Signatures for the rest of the virtual functions:
process :: (cast_me: *ExtensionEntity, delta: float64) {}
physics_process :: (cast_me: *ExtensionEntity, delta: float64) {}
input :: (cast_me: *ExtensionEntity, event: *InputEvent) {}
exit_tree :: (cast_me: *ExtensionEntity) {}

#scope_export

// Look here to see code for the demo scene!
#load "root.jai";
#load "ground.jai";

// 'template.jai' is provided in the module directory for your convenience.

#import "Basic";
#import "Math";
