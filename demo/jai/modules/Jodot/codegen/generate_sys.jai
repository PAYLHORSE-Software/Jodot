// This script generates bindings for the GDExtension FFI from gdextension_interface.h...
// ...henceforth referred to as the 'sys' submodule.

AT_COMPILE_TIME :: true;

#if AT_COMPILE_TIME {
    #run,stallable {
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

    log_muted("Generating sys bindings...");
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        array_add(*source_files, tprint("%/gdextension_interface.h", GDEXT_PATH));
        array_add(*extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN");
        log_unsupported = true;
        output_filename = OUTPUT_PATH;

        // Any extra code to include before or after the generated code.
        header = SYS_HEADER;
        footer = SYS_FOOTER;
    }

    return generate_bindings(opts, output_filename);
}

// gdext_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {}

#scope_file

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";

GDEXT_PATH :: "codegen/gdextension";
OUTPUT_PATH :: "sys/sys_bindings.jai";

// DECLARATIONS_TO_OMIT :: string.[
// ];

log_muted :: (msg: string) {
    log("\x1b[38;5;246m%\x1b[0m", msg);
}

SYS_HEADER :: #string DONE
//  --------------------
// | Jodot sys bindings |
//  --------------------
DONE

SYS_FOOTER :: #string DONE
DONE
