#import "Basic";
#import "Jodot";

// ------------------------
// CUSTOM CLASS DECLARATION
// ------------------------

Character :: struct @jodot {

    #as using sys: ExtensionEntity;
    type = #this;

    // The user designates a parent class from the gdt submodule.
    #as using base: gdtp.CharacterBody3D;
    parent_type = type_of(base);

    // The user declares fields; the extension class 'properties'.
    // Must they have defaults? Not sure.
    time_accumulator : float = 0.0;
    character_name : string = "Nameless One";

    // The user declares virtual method overrides. These are the only 'class methods' in jodot.
    ready :: (self: *Character) {
        print("Character spawned: %", self.character_name);
        self.base.set_visible(true);
    }

    process :: (self: *Character, delta: float32) #c_call {
        self.time_accumulator += delta;
        self.base.set_visible(true);
        some_custom_method();
    }

    input :: (self: *Character, input: float32) #c_call {
        self.time_accumulator += delta;
        self.base.set_visible(true);
        some_custom_method();
    }
}

// The user declares custom methods.
// They should be able to use these in virtual method overrides...
// ...so context limitation is a real issue.
some_custom_method :: () #c_call {}

// Let's have it so that these procedures are NOT member functions, as a first step to breaking free of godot's OOP.
// We'll find a way of exporting tagged custom procedures if that becomes necessary.

JodotTestEntity :: struct @jodot {
    #as using sys: ExtensionEntity;
    type = #this;

    // The user designates a parent class from the gdt submodule.
    #as using base: gdtp.Node;
    parent_type = type_of(base);

    time_accumulator : float = 0.0;
}
