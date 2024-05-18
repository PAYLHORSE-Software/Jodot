## DEVLOG/DOCS

Due to precarioussness, I'll document my current understanding of the GDExtension API and approach to bindings.

### Starting Resources
```
godot --dump-extension-api --dump-gdextension-interface
```
We pull from the godot binary two files: **extension_api.json** and **gdextension_interface.h**.

Feed **gdextension_interface.h** to the Bindings_Generator jai module to get our platform agnostic interface-related bindings. Stored as **gen_bindings.jai**.

### extension_api.json

A 300k line beast of a file. Let's break it down.

`header`

Godot version info.

`builtin_class_sizes`

Holds four `build_configuration` blocks: `float_32`, `float_64`, `double_32`, `double_64`.

I believe this is a choice for the storage format of godot's builtin types. Each choice holds name and size for godot's 39 builtin types.

We select `float_32`, and manually set up some asserts for each type and it's size to run at compile-time of our module.
