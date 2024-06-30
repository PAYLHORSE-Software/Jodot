## DEVLOG/DOCS

Due to precarioussness, I'll document my current understanding of the GDExtension API and approach to bindings here.
```
godot --dump-gdextension-interface --dump-extension-api
```
This gives us the files required for generating bindings: **gdextension_interface.h** and **extension_api.json**.

Not sure if my terminology is correct, but I recognise the header file as the GDExtension FFI, and the .json as a reference for the Godot API. The Jodot module is divided accordingly into **sys** for the former and **gdt** for the latter.

### The Entry Point

Our first step for mankind is to declare an inititialization procedure to be exposed as the DLL entry point. We choose to call this `jodot_init()`, and set up our .gdextension config file godot-side to reflect that.

This procedure pushes initialization parameters to godot, which include an initialization function callback. We're thus given a procedure that we can call (`initialize_jodot_module()`) to set things up for ourselves, having been provided access to the extension interface from godot's entry.

### Class Registration

We use the note `@jodot` to tag extension classes in user code, redefined as Extension Entities. A metaprogram crawls the user code for these entities and stores them in an array. We set up creation parameters for a new 'class' of this name from each Extension Entity struct, and use the interface function `classdb_register_extension_class()` to add them to godot's database.

As part of this registration, we've had to set up another custom `#c_call` function: `class_create_instance()`. Here, we're expected to instatiate the class natively, construct an object in godot to hold this class, and bind the two together. This is where native memory allocation comes in, and we should treat this aspect of the module with great care.

### Initialized and Uninitialized Values

Many FFI functions expect to recieve a pointer to an uninitialized value. These appear as `GDExtensionUninitializedXXXPtr`, as opposed to `GDExtensionXXXPtr`. In these cases, we must use:
```
pointer = alloc(size_of(T));
```
As opposed to a standard declaration. `New()` works too with initialize flagged off, but `alloc()` here is a clearer signal of intent.

**Otherwise, Godot will crash.**
