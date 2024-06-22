build :: () {

    w := compiler_create_workspace();

    options := get_build_options();

    using options;

    output_type = .DYNAMIC_LIBRARY;
    output_executable_name = "demo";
    output_path = "bin";
    entry_point_name = "jodot_init";
    runtime_support_definitions = .ONLY_INIT;
    set_build_options(options, w);

    compiler_begin_intercept(w, .SKIP_EXPRESSIONS_WITHOUT_NOTES);

    add_build_file("src/main.jai", w);

    JodotMeta.message_loop();

    compiler_end_intercept(w);

    set_build_options_dc(.{do_output=false});
}


#run build();

#import "Compiler";
JodotMeta :: #import "Jodot/Meta";
