<p align="center">
<img src="demo/godot/icon.png" alt="logo" width="200"/>
</p>

## ABOUT
**Secret language bindings for the GDExtension API.**

Work in progress! See docs.

## HANDBOOK
### Getting Started
Recommended directory setup:
```
project_dir
│
├── godot/
│   ├── demo.gdextension
│   ├── extension_list.cfg
│   └── project.godot
│
└── jai/
    ├── build.jai
    ├── src/
    │   └── main.jai
    └── bin/
        └── .dll / .so / .dylib
```

**build.jai**
```
build :: () {
    w := compiler_create_workspace();

    options := get_build_options();

    using options;

    output_type = .DYNAMIC_LIBRARY;
    output_executable_name = "demo";
    output_path = "bin";
    entry_point_name = "jodot_init";
    runtime_support_definitions = .ONLY_INIT;
    set_build_options(options, w);

    compiler_begin_intercept(w, .SKIP_EXPRESSIONS_WITHOUT_NOTES);

    add_build_file("src/main.jai", w);

    JodotMeta.message_loop();

    compiler_end_intercept(w);

    set_build_options_dc(.{do_output=false});
}

#run build();

#import "Compiler";
JodotMeta :: #import "Jodot/Meta";
```

**demo.gdextension**
```
[configuration]
entry_symbol = "jodot_init"
compatibility_minimum = 4.2

[libraries]
linux.debug.x86_64 = "res://../jai/bin/demo.so"
linux.release.x86_64 = "res://../jai/bin/demo.so"
windows.debug.x86_64 = "res://../jai/bin/demo.dll"
windows.release.x86_64 = "res://../jai/bin/demo.dll"
macos.debug = "res://../jai/bin/demo.dylib"
macos.release = "res://../jai/bin/demo.dylib"
macos.debug.arm64 = "res://../jai/bin/demo.dylib"
macos.release.arm64 = "res://../jai/bin/demo.dylib"
```

**extension_list.cfg**
```
res://demo.gdextension
```
