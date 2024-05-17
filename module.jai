// Godot 4 Bindings generated from godot-cpp

#load "bindings.jai";

#if OS == .WINDOWS {
    // This shouldn't be a requisite to using Jodot :(
    // TODO: solve linker errors somehow...
    #library,system,link_always "msvcprt";
} else {
    // C++ libs for Linux and Macos here!
}
