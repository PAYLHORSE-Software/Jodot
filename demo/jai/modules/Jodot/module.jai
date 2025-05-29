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

def_extension_entity :: "#as using sys: Extension_Entity; type = #this; parent_type = type_of(parent);";

#module_parameters(DEBUG := false);

#import "Basic";
#import "Compiler";
#import "String";
#import "Flat_Pool";
// #import "Hash_Table";
#import "Math";
#import "Global_Utilities";

// TEMP since we don't have codegen for method arguments with default values yet
play_2 :: (main: *AnimationPlayer, name: string) { sys_call("AnimationPlayer", "play", 3118260607, Nil, main, name);  }  // 14
