// --------------------------------------------
// JODOT - Secret Language Bindings for Godot 4
// --------------------------------------------

// The 'sys' submodule
#load "sys/sys_bindings.jai";

// The 'gdt' submodule
#load "gdt/gdt_bindings.jai";

// ROUGH IDEA:

// gdt binding placeholder:
gdtp :: struct {
    CharacterBody3D :: struct {
        set_visible :: (is_visible: bool) #c_call {}
    }
    Node :: struct {}
}

// Entry point and initialization
#load "sys/sys_init.jai";
