<p align="center">
<img src="demo/godot/icon.png" alt="logo" width="200"/>
</p>

## ABOUT
**Secret language bindings for the GDExtension API.**

Pursuing antagonism to Godot's OOP and GDScript-free performance.

> 🛈 **A testament to language design and to temperance:**
>
> Currently at: **1400 LOC** (pre-codegen)
>
> Compared to:
>
> [godot-cpp](https://github.com/godotengine/godot-cpp) at **~22,000 LOC**
> 
> [godot-rust](https://github.com/godot-rust/gdext) at **~43,000 LOC**

## THE CHOPPING BLOCK

Jodot aims to be language idiomatic, and can thus be deemed experimental and opinionated. If you prefer traditional OOP, see the aforementioned godot-rust - an excellent library. With that said, here's the gist of it:

Jodot's version of the custom extension class is an **Extension Entity**.

**Methods, or member functions, have been abolished.** Except from this abolishment are the **ready**, **process**, **physics process**, **input**, **enter tree** and **exit tree** virtual methods, which can be declared as members of an Extension Entity.

You are offered all of Godot's class methods as pure procedures instead.

```jai
MyCharacter :: struct @jodot {
    ...
    character_name := "Nameless One";
    _ready = ready_MyCharacter;
}

ready_MyCharacter :: (cast_me: *ExtensionEntity) {
    as_self := cast_me.(*MyCharacter);
    as_node3d := cast_me.(*Node3D);
    as_self.character_name = "John Doe";
    set_visible(as_node3d, true);
    pos : Vector3 = get_global_position(as_node3d);
}
```

**Interoperability with GDScript and Signals is neglected.** It's possible to register 'extension class methods' and 'extension class signals' with the bindings provided and a little extra work, but it's not a supported feature.

More will be added to the chopping block as opportunities to favor language idioms arise.

## HANDBOOK
### Getting Started
> 🛈 The Jodot **module directory** is located at [demo/jai/modules/Jodot](demo/jai/modules/Jodot).
>
> The Jodot module depends on [Jaison](https://github.com/rluba/jaison), so copy or git clone that into [demo/jai/modules/Jodot/modules/Jaison](demo/jai/modules/Jodot/modules/Jaison).

**Make sure to first run `jai generate.jai` in the Jodot module directory to generate bindings.**

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
We'll set up our Godot project to link against Jodot's output.

**demo.gdextension**
```
[configuration]
entry_symbol = "jodot_init"
compatibility_minimum = 4.4

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
That should be all Godot-side. 

Next, we'll configure our build script to output to a **dynamic library**. We also have to pull in Jodot's **metaprogram** with an import.

This is an example. The only hard requirements on your workspace are `entry_point_name = "jodot_init"` and `JodotMeta.message_loop()` in place.

**build.jai**
```jai
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
Import the Jodot module in your main source file...

**main.jai**
```jai
Jodot :: #import "Jodot";
```
And you're set!

Our workflow is now running `jai build.jai` in the jai directory to compile our extension library, then running `godot` in the godot directory to run our project.
Make sure to open the project in editor (`godot -e` or `godot -e -w`) at least once prior to that, if you haven't done so already.

Refer to [**demo/jai/src/main.jai**](https://github.com/paylanon/Jodot/blob/main/demo/jai/src/main.jai) for comprehensive usage instructions.

## ROADMAP/TODO

- [x] Proof of concept: "It just works!"

== v0.1 ==

- [x] Feature-complete with opaque godot classes.
- [ ] Editor integration pass: export properties, description etc.
- [ ] Performance pass: bespoke allocator and fast class method lookups.
- [ ] Extenstion library hot-reloading.

== v0.2 ==

- [ ] Exposed godot classes, directly get and set class properties.
- [ ] 'Jodot System' MainLoop, DOD, abolish virtual functions.

== v0.3 ==

== v0.4 ==
