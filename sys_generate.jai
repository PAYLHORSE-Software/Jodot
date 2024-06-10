// This script generates bindings for the GDExtension API from gdextension_interface.h...
// ...henceforth referred to as the 'sys' submodule.
// sys_bindings.jai lands in the 'gen' directory!
// The sys_bindings.jai in the root directory has been hand-edited.

AT_COMPILE_TIME :: true;

GDEXT_PATH :: "gdextension";

// DECLARATIONS_TO_OMIT :: string.[
// ];

#if AT_COMPILE_TIME {
    #run,stallable {
        make_directory_if_it_does_not_exist("gen");
        set_build_options_dc(.{do_output=false});
        root_options := get_build_options();
        args := root_options.compile_time_command_line;
        if !generate_bindings(args) {
            compiler_set_workspace_status(.FAILED);
        }
    }
} else {
    #import "System";

    main :: () {
        set_working_directory(path_strip_filename(get_path_of_running_executable()));
        args := get_command_line_arguments();
        if !generate_bindings(args) {
            exit(1);
        }
    }
}

generate_bindings :: (args: [] string) -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        array_add(*source_files, tprint("%/gdextension_interface.h", GDEXT_PATH));
        array_add(*extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN");
        log_unsupported = true;
        output_filename = "gen/sys_bindings.jai";
    }

    return generate_bindings(opts, output_filename);
}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
