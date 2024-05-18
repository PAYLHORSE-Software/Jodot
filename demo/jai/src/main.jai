#import "Basic";
#import "Jodot";

main :: () {}

// NOTE: this doesn't compile anymore as of godot-cpp divorce :(

// #program_export
// initialize_example_module :: (p_level: ModuleInitializationLevel) #c_call {
//     if p_level != .MODULE_INITIALIZATION_LEVEL_SCENE {
//         return;
//     }

//     // TODO: set this up!
//     // ClassDB::register_class();

//     new_context: Context;
//     push_context new_context {
//         print("Hello, Sailor!");
//     }
// }

// #program_export
// uninitialize_example_module :: (p_level: ModuleInitializationLevel) #c_call {
//     if p_level != .MODULE_INITIALIZATION_LEVEL_SCENE {
//         return;
//     }

//     // Perform any necessary cleanup!
// }

// #program_export
// jodot_init :: (p_get_proc_address: GDExtensionInterfaceGetProcAddress, p_library: GDExtensionClassLibraryPtr, r_initialization: *GDExtensionInitialization) -> GDExtensionBool #c_call {
//     init_obj: GDExtensionBinding.InitObject;
//     init_obj.Constructor(*init_obj, p_get_proc_address, p_library, r_initialization);

//     init_obj.register_initializer(*init_obj, initialize_example_module);
//     init_obj.register_terminator(*init_obj, uninitialize_example_module);
//     init_obj.set_minimum_library_initialization_level(*init_obj, .MODULE_INITIALIZATION_LEVEL_SCENE);

//     return init_obj.init(*init_obj);
// }

// // CUSTOM CLASSES

// // Define the custom class GDExample
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
