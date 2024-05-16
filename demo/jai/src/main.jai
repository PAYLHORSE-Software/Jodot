#import "Basic";
#import "Jodot";

using godot;

#program_export
initialize_example_module :: (p_level: ModuleInitializationLevel) #c_call {
    if p_level != .MODULE_INITIALIZATION_LEVEL_SCENE {
        return;
    }

    new_context: Context;
    push_context new_context {
        print("Hello, Sailor!");
    }
}

#program_export
uninitialize_example_module :: (p_level: ModuleInitializationLevel) #c_call {
    if p_level != .MODULE_INITIALIZATION_LEVEL_SCENE {
        return;
    }

    // Perform any necessary cleanup
}

#program_export
jodot_init :: (p_get_proc_address: GDExtensionInterfaceGetProcAddress, p_library: GDExtensionClassLibraryPtr, r_initialization: *GDExtensionInitialization) -> GDExtensionBool #c_call {
    init_obj: GDExtensionBinding.InitObject;
    init_obj.Constructor(*init_obj, p_get_proc_address, p_library, r_initialization);

    init_obj.register_initializer(*init_obj, initialize_example_module);
    init_obj.register_terminator(*init_obj, uninitialize_example_module);
    init_obj.set_minimum_library_initialization_level(*init_obj, .MODULE_INITIALIZATION_LEVEL_SCENE);

    return init_obj.init(*init_obj);
}
