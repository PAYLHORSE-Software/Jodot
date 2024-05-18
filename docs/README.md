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

### Roadmap

Jodot development will proceed as follows:

- [ ] Set up a metaprogram to generate bindings from the JSON: this will be **gdt_bindings.jai**.

- [ ] Set up abstraction for sys_bindings if necessary.

-- v1.0 milestone --

- [ ] Leverage native jai modules for vector algebra, matrix algebra etc. in footsteps of godot-rust.

- [ ] Favor 'idiomatic' jai when opportunities to do so arise.

payl is typing...
