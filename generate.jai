#import "Basic";
#import "Bindings_Generator";
#import "File";
#import "Hash_Table";
#import "Jaison";

AT_COMPILE_TIME :: true;

GODOT_CPP_PATH :: "godot-cpp";

// DECLARATIONS_TO_OMIT :: string.[
// ];

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
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            array_add(*libpaths, tprint("%/bin/windows", GODOT_CPP_PATH));
            output_filename = "windows.jai";
        } else {
            #if OS == .LINUX {
                array_add(*libpaths, tprint("%/bin/linux", GODOT_CPP_PATH));
            } else #if OS == .MACOS {
                array_add(*libpaths, tprint("%/bin/macos", GODOT_CPP_PATH));
            } else {
                assert(false);
            }
            output_filename = "unix.jai";
            generate_library_declarations = false;
            footer = FOOTER_UNIX;
        }

        array_add(*libnames, "godot-cpp");
        array_add(*include_paths, tprint("%/gdextension", GODOT_CPP_PATH));
        array_add(*source_files, tprint("%/include/godot_cpp/godot.hpp", GODOT_CPP_PATH));
        array_add(*extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN");
        log_unsupported = true;
    }

    return generate_bindings(opts, output_filename);
}

#import "Basic";
#import "Bindings_Generator";
#import "BuildCpp";
#import "Compiler";
#import "File";
#import "Hash_Table";
#import "String";

FOOTER_UNIX :: #string END

#if OS == .MACOS    godot_lib :: #library "macos/godot-cpp";
#if OS == .LINUX    godot_lib :: #library "linux/godot-cpp";

END
