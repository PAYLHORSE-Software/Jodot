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
// These must be declared, must follow this naming convention, and must match the signature.
ready_Character :: (entity: *ExtensionEntity) {
    print("Hello from JodotTestEntity!\n");
}

process_Character :: (entity: *Character, delta: float) {}

JodotTestEntity :: struct @jodot {

    #as using base: gdtp.Node;
    #insert def_extension_entity;

    time_accumulator : float = 0.0;
    character_name : string = "Nameless One";

    _ready = ready_JodotTestEntity;
    _process = process_JodotTestEntity;
}

ready_JodotTestEntity :: (entity: *ExtensionEntity) {
    print("Hello from JodotTestEntity!\n");
}

process_JodotTestEntity :: (entity: *ExtensionEntity, delta: float64) {
    print("Delta from JodotTestEntity: %\n", delta);
}

#import "Basic";
#import "Jodot";
