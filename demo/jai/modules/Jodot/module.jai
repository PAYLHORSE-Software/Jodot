// --------------------------------------------
// JODOT - Secret Language Bindings for Godot 4
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

// ResourceLoader methods
// TEMP until method default arguments are added to gdt_generate.jai

load :: (main: *ResourceLoader, path: string, type_hint: string = "") -> *Resource { call_ret := cast(*Resource) sys_call("ResourceLoader", "load", 3358495409, Resource, main, path, type_hint); return call_ret; }

load_threaded_request :: (main: *ResourceLoader, path: string) -> Error { call_ret := cast(*Error) sys_call("ResourceLoader", "load_threaded_request", 3614384323, Error, main, path); return call_ret.*; }
load_threaded_get_status :: (main: *ResourceLoader, path: string) -> ResourceLoader.ThreadLoadStatus { call_ret := cast(*ResourceLoader.ThreadLoadStatus) sys_call("ResourceLoader", "load_threaded_get_status", 4137685479, ResourceLoader.ThreadLoadStatus, main, path); return call_ret.*; }
load_threaded_get :: (main: *ResourceLoader, path: string) -> *Resource { call_ret := cast(*Resource) sys_call("ResourceLoader", "load_threaded_get", 1748875256, Resource, main, path); return call_ret; }
get_recognized_extensions_for_type :: (main: *ResourceLoader, type: string) -> PackedStringArray { call_ret := cast(*PackedStringArray) sys_call("ResourceLoader", "get_recognized_extensions_for_type", 3538744774, PackedStringArray, main, type); return call_ret.*; }
add_resource_format_loader :: (main: *ResourceLoader, format_loader: ResourceFormatLoader) { sys_call("ResourceLoader", "add_resource_format_loader", 2896595483, Nil, main, format_loader);  }
remove_resource_format_loader :: (main: *ResourceLoader, format_loader: ResourceFormatLoader) { sys_call("ResourceLoader", "remove_resource_format_loader", 405397102, Nil, main, format_loader);  }
set_abort_on_missing_resources :: (main: *ResourceLoader, abort: bool) { sys_call("ResourceLoader", "set_abort_on_missing_resources", 2586408642, Nil, main, abort);  }
get_dependencies :: (main: *ResourceLoader, path: string) -> PackedStringArray { call_ret := cast(*PackedStringArray) sys_call("ResourceLoader", "get_dependencies", 3538744774, PackedStringArray, main, path); return call_ret.*; }
has_cached :: (main: *ResourceLoader, path: string) -> bool { call_ret := cast(*bool) sys_call("ResourceLoader", "has_cached", 2323990056, bool, main, path); return call_ret.*; }
get_cached_ref :: (main: *ResourceLoader, path: string) -> *Resource { call_ret := cast(*Resource) sys_call("ResourceLoader", "get_cached_ref", 1748875256, Resource, main, path); return call_ret; }
exists :: (main: *ResourceLoader, path: string) -> bool { call_ret := cast(*bool) sys_call("ResourceLoader", "exists", 4185558881, bool, main, path); return call_ret.*; }
get_resource_uid :: (main: *ResourceLoader, path: string) -> int { call_ret := cast(*int) sys_call("ResourceLoader", "get_resource_uid", 1597066294, int, main, path); return call_ret.*; }
list_directory :: (main: *ResourceLoader, directory_path: string) -> PackedStringArray { call_ret := cast(*PackedStringArray) sys_call("ResourceLoader", "list_directory", 3538744774, PackedStringArray, main, directory_path); return call_ret.*; }

#module_parameters(DEBUG := true);
