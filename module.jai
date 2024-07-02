// --------------------------------------------
// JODOT - Secret Language Bindings for Godot 4
// --------------------------------------------

// == UTILITY ==

Option :: enum u8 {
    NONE :: 0;
    SOME :: 1;
}

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
#load "gdt/gdt_builtin.jai";
#load "gdt/gdt_bindings.jai";
#load "gdt/gdt_native.jai";

// Entry point and initialization
#load "sys/sys_init.jai";

def_extension_entity :: "#as using sys: ExtensionEntity; type = #this; parent_type = type_of(parent);";

#module_parameters(DEBUG := true);
