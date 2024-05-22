## DEVLOG/DOCS

Due to precarioussness, I'll document my current understanding of the GDExtension API and approach to bindings here.

### Starting Resources
```
godot --dump-extension-api --dump-gdextension-interface
```
We pull from the godot binary two files: **extension_api.json** and **gdextension_interface.h**.

Feed **gdextension_interface.h** to the Bindings_Generator jai module to get our interface bindings. Stored as **sys_bindings.jai**. 

The generator seems to declare all enums as `s32`, despite `u8` being sufficient for all the interface enums. 

So replace `s32` with `u8`. Godot seems to be fine with it.

### gdextension_interface.h / sys_bindings

Of most apparent relevance here are the interface function pointers listed from line 800 onwards. We use `p_get_proc_address()` during module initialization to create native procedures from these pointers, and we're locked and loaded. More on module initialization later.

### extension_api.json

A 300k line beast of a file, formatted as follows:

`header`

Godot version info.

`builtin_class_sizes`

Holds four `build_configuration` blocks: `float_32`, `float_64`, `double_32`, `double_64`.

I believe this is a choice for the memory format of godot's builtin types/classes. Each choice holds name and size for godot's 39 builtin types.

We select `float_32`, and manually set up some asserts for each type and it's size to run at compile-time of our module.

`builtin_class_member_offsets`

Bit offsets of each member, for each builtin class, for each build configuration. We shouldn't need to assert this if the asserts above pass.

`global_enums`

Straightforward, just enums. There's an `is_bitfield` boolean: when true, the enum values are more or less a doubling series. We can attempt a dynamic assignment of integer type based on the enum values, and see how that goes.

`utility_functions`

We should be able to skip these for now. Any of these functions can (and should) be reimplemented natively in jai.

`builtin_classes`

Operators, constructors, destructors for godot's builtin types/classes. Skip these too?

`classes`

We'll generate a struct for each of these. This will include all the methods assigned to each godot class.

The classes are organized in an inheritance hierarchy, with 'base classes' such as `Object` and `Resource` at the top.

`singletons`

A subset of the classes above, flagged for implementation as singeltons I guess.

`native_structures`

Straightforward, just structs.

See footer of **gdt_generator.jai** for a complete annotation of JSON fields.

### The Entry Point

Our first step for mankind is to declare an inititialization procedure to be exposed as the DLL entry point. We choose to call this `jodot_init()`, and set up our .gdextension config file godot-side to reflect that.

This procedure pushes initialization parameters to godot, which include an initialization function callback. We're thus given a procedure that we can call `initialize_jodot_module()` to set things up for ourselves, having been provided direct access to the extension interface from godot's entry. 

Currently, we're restricted to `initialize_jodot_module()` as our only window to execute jai. It's a `#c_call`, so we're all the more restricted in that we can't access context. Our workaround for setting up native interface procedures is to decalre the procedures at the highest level of the program, in global scope, and then set them using `p_get_proc_address()` during initialization.

## Class Registration

Our test class is simply a string at this point: 'JodotTestClass'. We set up class creation parameters for a new class of this name that inherits from Node, and use the interface function `classdb_register_extension_class()`.

As part of this registration, we've had to set up another custom `#c_call` function: `class_create_instance()`. Here, we're expected to instatiate the class in jai, construct an object in godot to hold this class, and bind the two together.

Here, our context limitation begins to rear it's head. In order for this registration to go through, we must allocate memory for an instanced JodotTestClass in global scope...

What kind of overall structure should Jodot have, given this hard limtation? An open question.

### Roadmap

Jodot development will proceed as follows:

- [ ] Set up a metaprogram to generate bindings from the JSON: this will be **gdt_bindings.jai**.

- [ ] Set up abstraction for sys_bindings if necessary.

-- v1.0 milestone --

- [ ] Leverage native jai modules for vector algebra, matrix algebra etc. in footsteps of godot-rust.

- [ ] Favor 'idiomatic' jai when opportunities to do so arise.

payl is typing...
