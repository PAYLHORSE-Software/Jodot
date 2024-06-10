#import "Basic";
#import "Jodot";

// ------------------------
// CUSTOM CLASS DECLARATION
// ------------------------

Character :: struct @godot {

    #as using sys: ExtensionClass;
    type = #this;

    // The user designates a parent class from the gdt submodule.
    #as using base: gdtp.CharacterBody3D;
    parent_type = type_of(base);

    // The user declares fields; the extension class 'properties'.
    // Must they have defaults? Not sure.
    time_accumulator : float = 0.0;
    character_name : string = "Nameless One";

    // The user declares virtual method overrides.
    _ready :: (self: *Character) #c_call {
        new_context: Context;
        push_context new_context {

            print("Character spawned: %", self.character_name);
        }
            self.base.set_visible(true);
    }

    _process :: (self: *Character, delta: float32) #c_call {

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
// We'll find a way of declaring all custom procedures in bulk, in global scope.

JodotTestClass :: struct @godot {
    #as using sys: ExtensionClass;
    type = #this;

    // The user designates a parent class from the gdt submodule.
    #as using base: gdtp.Node;
    parent_type = type_of(base);
}
