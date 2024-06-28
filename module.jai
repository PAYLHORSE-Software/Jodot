// --------------------------------------------
// JODOT - Secret Language Bindings for Godot 4
// --------------------------------------------

// == UTILITY ==

// -- LOGGING --
print_error :: (msg: string) {
    log_error("\x1b[1;38;5;9mERROR: %\n\x1b[0m", msg);
}

print_affirm :: (msg: string) {
    log("\x1b[1;38;5;144m%\x1b[0m", msg);
}

print_muted :: (msg: string) {
    log("\x1b[38;5;246m%\x1b[0m", msg);
}

print_warn :: (msg: string) {
    log("\x1b[38;5;180m%\x1b[0m", msg);
}

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

def_extension_entity :: "#as using sys: ExtensionEntity; type = #this; parent_type = type_of(base);";

// Entry point and initialization
#load "sys/sys_init.jai";

#module_parameters(DEBUG := true);
