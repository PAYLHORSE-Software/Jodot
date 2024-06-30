// ------------------------
// JODOT ENTITY DECLARATION
// ------------------------

// We declare a jodot extension entity as a struct.
// Steps to do so:

// (1) Use the @jodot note in struct declaration.
Character :: struct @jodot {

    // (2) Designate a parent class from the gdt submodule, as 'base'.
    #as using base: gdtp.CharacterBody3D;

    // (3) Insert this macro to complete the definition.
    #insert def_extension_entity;

    // You can now declare fields as you would with any other struct.
    time_accumulator : float = 0.0;
    character_name : string = "Nameless One";

    _ready = ready_Character;
}

// The user declares 'virtual method overrides' as native procedures.
// These must match the signature.
ready_Character :: (entity: *ExtensionEntity) {
    print("Hello from JodotTestEntity!\n");
}

process_Character :: (entity: *Character, delta: float) {}

// Here's the test entity we've added to the demo scene:

JodotTestEntity :: struct @jodot {

    #as using base: gdtp.Node;
    #insert def_extension_entity;

    time_accumulator : float = 0.0;

    _ready = ready_JodotTestEntity;
    _process = process_JodotTestEntity;
    _enter_tree = enter_JodotTestEntity;
}

enter_JodotTestEntity :: (entity: *ExtensionEntity) {
    print("Enter tree from JodotTestEntity!\n");
}

ready_JodotTestEntity :: (entity: *ExtensionEntity) {
    print("Ready from JodotTestEntity!\n");
    print("Wait for it...\n");
    new_name: StringName;
    make_stringname("HelloSailor", *new_name);
    gdt_call("Node.set_name", entity, new_name);
    // mouse_cursor := gdt_call("ResourceLoader.load", P_RESOURCE_LOADER, "menu/sprite/mouse_cursor.png");
}

process_JodotTestEntity :: (entity: *ExtensionEntity, delta: float64) {

    jentity := cast(*JodotTestEntity) entity;
    jentity.time_accumulator += cast(float) delta;
    if jentity.time_accumulator > 10.0 print("Greeter's Pocketwatch: %\n", jentity.time_accumulator);
}


#import "Basic";
#import "Jodot";
