#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "Jaison";

main :: () {}

#run,stallable {
    set_build_options_dc(.{do_output=false});
    print("Hello, Sailor!");
}
