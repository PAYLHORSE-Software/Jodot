#import "Basic";
#import "Compiler";

#run build();

build :: () {
    w := compiler_create_workspace();

    options := get_build_options();

    options.output_type = .DYNAMIC_LIBRARY;
    options.output_executable_name = "demo";
    options.output_path = "bin";
    options.entry_point_name = "jodot_init";
    import: [2] string;
    import[0] = "../../..";
    import[1] = "src";
    import_view: [] string;
    import_view = import;
    options.import_path = import_view;

    set_build_options(options, w);
    add_build_file("src/main.jai", w);

    set_build_options_dc(.{do_output=false});
}
