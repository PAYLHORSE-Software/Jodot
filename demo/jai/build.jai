#import "Basic";
#import "Compiler";

#run build();

build :: () {
    w := compiler_create_workspace();

    options := get_build_options();

    using options;

    output_type = .DYNAMIC_LIBRARY;
    output_executable_name = "demo";
    output_path = "bin";
    entry_point_name = "jodot_init";
    runtime_support_definitions = .ONLY_INIT;
    import: [2] string;
    import[0] = "../../..";
    import[1] = "src";
    import_view: [] string;
    import_view = import;
    import_path = import_view;

    set_build_options(options, w);
    add_build_file("src/main.jai", w);

    set_build_options_dc(.{do_output=false});
}
