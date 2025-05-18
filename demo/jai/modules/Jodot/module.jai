// --------------------------------------------
// Jodot - Secret Language Bindings for Godot 4
// --------------------------------------------

// The 'sys' submodule
#load "sys/sys_bindings.jai";
#load "sys/sys_init.jai";
#load "sys/sys_utils.jai";
#load "sys/sys_entity.jai";
#load "sys/sys_call.jai";

// The 'gdt' submodule
#load "gdt/gdt_bindings.jai";
#load "gdt/gdt_builtin.jai";
#load "gdt/gdt_native.jai";

def_extension_entity :: "#as using sys: ExtensionEntity; type = #this; parent_type = type_of(parent);";

#module_parameters(DEBUG := false);
