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

enter_tree :: (cast_me: *Extension_Entity) {}
ready :: (cast_me: *Extension_Entity) {}
process :: (cast_me: *Extension_Entity, delta: float64) {}
physics_process :: (cast_me: *Extension_Entity, delta: float64) {}
input :: (cast_me: *Extension_Entity, event: *InputEvent) {}
exit_tree :: (cast_me: *Extension_Entity) {}
