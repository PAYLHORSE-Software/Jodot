## DEVLOG/DOCS

Due to precarioussness, I'll document my current understanding of the GDExtension API and approach to bindings here.

### Starting Resources
```
godot --dump-extension-api --dump-gdextension-interface
```
We pull from the godot binary two files: **extension_api.json** and **gdextension_interface.h**.

Feed **gdextension_interface.h** to the Bindings_Generator jai module to get our interface bindings. Stored as **sys_bindings.jai**. 

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

See footer of **gen/gdt_generator.jai** for a complete annotation of JSON fields.

### The Entry Point

Our first step for mankind is to declare an inititialization procedure to be exposed as the DLL entry point. We choose to call this `jodot_init()`, and set up our .gdextension config file godot-side to reflect that.

This procedure pushes initialization parameters to godot, which include an initialization function callback. We're thus given a procedure that we can call (`initialize_jodot_module()`) to set things up for ourselves, having been provided direct access to the extension interface from godot's entry. 

### Class Registration

We use the note `@godot` to tag custom classes in user code, redefined as Entities. A metaprogram crawls the user code for these Entities and stores them in an array. We set up class creation parameters for a new 'class' of this name from the Entity struct, and use the interface function `classdb_register_extension_class()` to add them to godot's database.

As part of this registration, we've had to set up another custom `#c_call` function: `class_create_instance()`. Here, we're expected to instatiate the class in jai, construct an object in godot to hold this class, and bind the two together. This is where **memory allocation** comes in, and we should treat this aspect of the module with great care.

### Roadmap

Jodot development will proceed as follows:

- [ ] Set up codegen from the JSON: this will be **gdt_bindings.jai**.

- [ ] Figure out an alternative to class methods. Leverage native jai for vector algebra, matrix algebra etc. in footsteps of godot-rust. Favor native jai when any opportunity to do so arises.

- [ ] Ignore features of godot that are deemed unneccessary or reductive, while maintaining strong interoperability with godot where it matters... allowing us to declare the module as feature-complete whenever we see fit.

-- v1.0 milestone --
