// --------------------------------------------
// JODOT - Secret Language Bindings for Godot 4
// --------------------------------------------

// The 'sys' submodule
#load "sys_bindings.jai";

// The 'gdt' submodule
#load "gdt_bindings.jai";

// ROUGH IDEA:

// gdt binding placeholder:
gdtp :: struct {
    CharacterBody3D :: struct {
        set_visible :: (is_visible: bool) #c_call {}
    }
    Node :: struct {}
}

// ------------------------
// CUSTOM CLASS DECLARATION
// ------------------------
Character :: struct {

    // The user designates a parent class from the gdt submodule.
    #as using base: gdtp.CharacterBody3D;

    // The user declares fields; the extension class 'properties'.
    // Must they have defaults? Not sure.
    fld: CharacterFields;
    // The user declares virtual method overrides.
    virtual: CharacterVM;
}

CharacterFields :: struct {
    time_accumulator : float = 0.0;
    character_name : string = "Nameless One";
}

CharacterVM :: struct {
    _ready :: (self: *Character) #c_call {
    new_context: Context;
    push_context new_context {
        print("Character spawned: %", self.fld.character_name);
    }
        self.base.set_visible(true);
    }

    _process :: (self: *Character, delta: float32) #c_call {

        self.fld.time_accumulator += delta;
        self.base.set_visible(true);
        // self.some_custom_method();
        some_custom_method();
    }
}

// The user declares custom methods.
// They should be able to use these in virtual method overrides...
// ...so context limitation is a real issue.
some_custom_method :: () #c_call {}

// Let's have it so that these procedures are NOT member functions, as a first step to breaking free of godot's OOP.
// We'll find a way of declaring all custom procedures in bulk, in global scope.

JodotTestClass :: struct {}

// -------------------------
// CUSTOM CLASS REGISTRATION
// -------------------------

// Wrapper struct for extension classes:

// ExtensionClass :: struct (uct: Type, ucpt: Type) {
ExtensionClass :: struct {

    user_class_type: Type;
    user_class_parent_type: Type;

    class_create_info: *GDExtensionClassCreationInfo3;

    p_class_name: *void;
    p_parent_class_name: *void;
}

bake_extension_class :: (extension_class: *ExtensionClass) {

    class_create_info := GDExtensionClassCreationInfo3.{
        // Controlled:
        is_virtual = 0,
        is_abstract = 0,
        is_exposed = 1,
        is_runtime = 1,
        //     set_func
        //     get_func
        //     get_property_list_func
        //     free_property_list_func
        //     property_can_revert_func
        //     property_get_revert_func
        //     validate_property_func
        //     notification_func
        //     to_string_func
        //     reference_func
        //     unreference_func
        create_instance_func = class_create_instance,
        free_instance_func = class_free_instance,
        //     recreate_instance_func
        get_virtual_func = get_virtual_func,
        //     get_virtual_call_data_func
        //     call_virtual_with_data_func
        //     get_rid_func
        // User Declaration Specific:
        class_userdata = *extension_class
    };

    // extension_class.p_class_name = make_p_stringname(tprint("%", extension_class.user_class_type));
    // extension_class.p_parent_class_name = make_p_stringname(tprint("%", extension_class.user_class_parent_type));
    extension_class.class_create_info = *class_create_info;
}

// -- MEMALLOC --

class_create_instance :: (p_class_userdata: *void) -> GDExtensionObjectPtr #c_call {
    new_context: Context;
    push_context new_context {
        print("Creating class instance...");
    }
    extension_class: ExtensionClass;
    memcpy(*extension_class, p_class_userdata, size_of(ExtensionClass));
    // user_class_size := size_of(extension_class.user_class_type);
    // userclass:

    p_object := classdb_construct_object(extension_class.p_class_name);
    object_set_instance(p_object, extension_class.p_class_name, *extension_class);
    return p_object;
}

class_free_instance :: (p_class_userdata: *void, p_instance: GDExtensionClassInstancePtr) #c_call {
    // TODO: figure this out...
}

ChildParentPair :: struct {
    child: Type;
    parent: Type;
}

user_class_declarations: [..] ChildParentPair;
extension_classes: [..] ExtensionClass;

// == COMPILE TIME ==

#run {

    // // Get all custom-class structs somehow, put in this array!
    // // array_add(*user_class_declarations, .{Character, gdtp.CharacterBody3D});

    // // Test:
    // array_add(*user_class_declarations, .{JodotTestClass, gdtp.Node});

    // // TODO: verify that extension classes are valid?

    // // Wrap each in ExtensionClass struct
    // for user_class_declarations {
    //     wrapper: ExtensionClass;
    //     wrapper.user_class_type = it.child;
    //     wrapper.user_class_parent_type = it.parent;

    //     array_add(*extension_classes, wrapper);
    //     print_affirm(tprint("%", wrapper.user_class_type));
    //     print_affirm(tprint("%", wrapper.user_class_parent_type));
    // }
}


// == RUNTIME ==

register_extension_classes :: () {
    // Get all custom-class structs somehow, put in this array!
    // array_add(*user_class_declarations, .{Character, gdtp.CharacterBody3D});

    // Test:
    array_add(*user_class_declarations, .{JodotTestClass, gdtp.Node});

    // TODO: verify that extension classes are valid?

    // Wrap each in ExtensionClass struct
    for user_class_declarations {
        wrapper: ExtensionClass;
        wrapper.user_class_type = it.child;
        wrapper.user_class_parent_type = it.parent;

        array_add(*extension_classes, wrapper);
        print_affirm(tprint("%", wrapper.user_class_type));
        print_affirm(tprint("%", wrapper.user_class_parent_type));
    }
    for extension_classes {
        bake_extension_class(*it);

        p_class_name := make_p_stringname(tprint("%", it.user_class_type));
        p_parent_class_name := make_p_stringname(tprint("%", it.user_class_parent_type));

        // Register class!
        // classdb_register_extension_class(P_LIBRARY, it.p_class_name, it.p_parent_class_name, it.class_create_info);
        classdb_register_extension_class(P_LIBRARY, p_class_name, p_parent_class_name, it.class_create_info);

        // Registration can fail silently, so check...
        tag := classdb_get_class_tag(it.p_class_name);
        if tag == null print_error_with_message(null, "Extension class registration failed!", null, "Jodot", 0, 1);
        print_affirm(tprint("Extension class registered: %", tag));
    }
}

// Entry point and initialization
#load "sys_init.jai";
