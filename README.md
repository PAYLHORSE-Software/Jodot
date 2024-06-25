<p align="center">
<img src="demo/godot/icon.png" alt="logo" width="200"/>
</p>

## ABOUT
**Secret language bindings for the GDExtension API.**

Pursuing antagonism to Godot's OOP, and favor to a GDScript-free workflow. WIP!

> 🛈 **A testament to the language, and to temperance:**
>
> Currently at: **3372 LOC**
>
> In comparison to [godot-rust](https://github.com/godot-rust/gdext) at **~43,000 LOC**

## THE CHOPPING BLOCK

Jodot is bespoke, opinionated and experimental in it's design philosophy. For a kitchen-sink alternative, see the aforementioned godot-rust, an excellent library far more feature-packed. With that said, here's the gist:

**Methods, or member functions including getters and setters, are to be abolished.** Except from this abolishment are the **_ready**, **_process** and **_input** virtual methods, which have been reimplemented as hardcoded procedures.

**Signals (the Observer Pattern) are to be abolished.**

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
First, we'll set up our godot project to link against Jodot's output.

**demo.gdextension**
```
[configuration]
entry_symbol = "jodot_init"
compatibility_minimum = 4.3

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
You should edit the paths in the **[libraries]** section to point to your output.

The next little file should be generated automatically by the editor, but you may have to create it yourself.

**extension_list.cfg**
```
res://demo.gdextension
```
That should be all godot-side. Next, we'll configure our build in the language to output to a **dynamic library**. We also have to pull in Jodot's **metaprogram** with an import.

This is a minimal example. The only hard requirements on your workspace are `entry_point_name = "jodot_init"` and `JodotMeta.message_loop()`.

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

Import the full Jodot module in your main source file...

**main.jai**
```
#import "Jodot";
```
And you're set! Refer to [**demo/jai/src/main.jai**](https://github.com/paylanon/Jodot/blob/main/demo/jai/src/main.jai) for comprehensive usage instructions.
