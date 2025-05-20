// --------
// template

#poke_name Jodot MyCustomEntity;
MyCustomEntity :: struct @jodot {

    #as using parent: Node;
    #insert def_extension_entity;

    _enter_tree = enter_tree;
    _ready = ready;
    _process = process;
    _physics_process = physics_process;
    _input = input;
    _exit_tree = exit_tree;
}

#scope_file

enter_tree :: (cast_me: *ExtensionEntity) {}
ready :: (cast_me: *ExtensionEntity) {}
process :: (cast_me: *ExtensionEntity, delta: float64) {}
physics_process :: (cast_me: *ExtensionEntity, delta: float64) {}
input :: (cast_me: *ExtensionEntity, event: *InputEvent) {}
exit_tree :: (cast_me: *ExtensionEntity) {}
