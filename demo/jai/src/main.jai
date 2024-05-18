#import "Basic";
#import "Jodot";

main :: () {}

#program_export
initialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }

    // TODO: set this up!
    // ClassDB::register_class(pseudoGod);

    new_context: Context;
    push_context new_context {
        print("Hello, Sailor!");
    }
}

#program_export
deinitialize_jodot_module :: (userdata: *void, p_level: GDExtensionInitializationLevel) #c_call {
    if p_level != .INITIALIZATION_SCENE {
        return;
    }

    // Perform any necessary cleanup!
}

#program_export
jodot_init :: (p_get_proc_address: GDExtensionInterfaceGetProcAddress, p_library: GDExtensionClassLibraryPtr, r_initialization: *GDExtensionInitialization) -> GDExtensionBool #c_call {

    godot_init_params := GDExtensionInitialization.{
        minimum_initialization_level = .INITIALIZATION_SCENE,
        userdata = null,
        initialize = initialize_jodot_module,
        deinitialize = deinitialize_jodot_module,
    };

    << r_initialization = godot_init_params;

    gdext_bool: GDExtensionBool = 1;
    return gdext_bool;
}

// // CUSTOM CLASSES

// // Define the custom class pseudoGod
// pseudoGod :: struct {
//     time_accumulator: float64;

//     // Constructor
//     init :: (self: *pseudoGod) {
//         self.time_accumulator = 0.0;
//     }

//     // Destructor
//     deinit :: (self: *pseudoGod) {
//         // Cleanup code if necessary
//     }

//     // Process method
//     _process :: (self: *pseudoGod, delta: float64) {
//         self.time_accumulator += delta;
//     }

//     // Binding methods
//     _bind_methods :: () {
//         // Register the _process method
//         // register_method("pdeusoGod::_process", _process);
//     }
// }
