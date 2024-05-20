#import "Basic";
#import "Jodot";

// GDExtensionClassCreationInfo3 :: struct {
//     is_virtual:                  GDExtensionBool;
//     is_abstract:                 GDExtensionBool;
//     is_exposed:                  GDExtensionBool;
//     is_runtime:                  GDExtensionBool;
//     set_func:                    GDExtensionClassSet;
//     get_func:                    GDExtensionClassGet;
//     get_property_list_func:      GDExtensionClassGetPropertyList;
//     free_property_list_func:     GDExtensionClassFreePropertyList;
//     property_can_revert_func:    GDExtensionClassPropertyCanRevert;
//     property_get_revert_func:    GDExtensionClassPropertyGetRevert;
//     validate_property_func:      GDExtensionClassValidateProperty;
//     notification_func:           GDExtensionClassNotification2;
//     to_string_func:              GDExtensionClassToString;
//     reference_func:              GDExtensionClassReference;
//     unreference_func:            GDExtensionClassUnreference;
//     create_instance_func:        GDExtensionClassCreateInstance; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
//     free_instance_func:          GDExtensionClassFreeInstance; // Destructor; mandatory.
//     recreate_instance_func:      GDExtensionClassRecreateInstance;

//     // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
//     get_virtual_func:            GDExtensionClassGetVirtual;

//     // Paired with `call_virtual_with_data_func`, this is an alternative to `get_virtual_func` for extensions that
//     // need or benefit from extra data when calling virtual functions.
//     // Returns user data that will be passed to `call_virtual_with_data_func`.
//     // Returning `NULL` from this function signals to Godot that the virtual function is not overridden.
//     // Data returned from this function should be managed by the extension and must be valid until the extension is deinitialized.
//     // You should supply either `get_virtual_func`, or `get_virtual_call_data_func` with `call_virtual_with_data_func`.
//     get_virtual_call_data_func:  GDExtensionClassGetVirtualCallData;

//     // Used to call virtual functions when `get_virtual_call_data_func` is not null.
//     call_virtual_with_data_func: GDExtensionClassCallVirtualWithData;
//     get_rid_func:                GDExtensionClassGetRID;
//     class_userdata:              *void; // Per-class user data, later accessible in instance bindings.
// }

// Test custom class registration?
class_creation_info := GDExtensionClassCreationInfo3.{
    is_virtual = 0,
    is_abstract = 0,
    is_exposed = 1,
    is_runtime = 0,
    // create_instance_func: class_create_instance,
    // free_instance_func:
};

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
