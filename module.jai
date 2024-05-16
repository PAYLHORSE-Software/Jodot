// Godot 4 Bindings generated from godot-cpp

#if OS == .WINDOWS {
    #load "windows.jai";

    // This shouldn't be a requisite to using Jodot :(
    // TODO: solve linker errors somehow...
    #library,system,link_always "msvcprt";
} else {
    #load "unix.jai";
}
