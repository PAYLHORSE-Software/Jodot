// ==== UTILITY ====

Option :: enum u8 {
    NONE :: 0;
    SOME :: 1;
}

print_error :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log_error("\n\x1b[1;38;5;9mERROR: %\n\x1b[0m", final_msg);
}

print_affirm :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[1;38;5;144m%\x1b[0m", final_msg);
}

print_muted :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[38;5;246m%\x1b[0m", final_msg);
}

print_warn :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[38;5;180m%\x1b[0m", final_msg);
}

// TODO: debug print gstring and stringname
make_stringname :: (native_string: string, dst: *StringName) -> *StringName {
    c_string := to_c_string(native_string);
    p_stringname := alloc(size_of(StringName),, allocator=temp);
    string_name_new_with_utf8_chars(p_stringname, c_string);
    if dst != null memcpy(dst, p_stringname, size_of(StringName));
    // NOTE: For some reason, godot requires the *exact* pointer it generates here, as opposed to an arbitrary pointer to the StringName value.
    // So we return it, in case we need to capture.
    return p_stringname;
}

make_gstring :: (native_string: string, dst: *gstring) -> *gstring {
    c_string := to_c_string(native_string);
    p_gstring := alloc(size_of(gstring),, allocator=temp);
    string_new_with_utf8_chars(p_gstring, c_string);
    if dst != null memcpy(dst, p_gstring, size_of(gstring));
    return p_gstring;
}

break_gstring :: (src: *gstring) -> string {
    len := string_to_utf8_chars(src, null, 0);
    print_muted(tprint("gstring length: %", len));
    buffer := NewArray(len, u8);
    string_to_utf8_chars(src, buffer.data, len);
    return buffer.(string);
}

handle_call_error :: (err: GDExtensionCallError) {
    using GDExtensionCallErrorType;
    if err.error == {
        case OK;
          // if DEBUG print_affirm("gdt_call OK!")(, p_final_var);
        case ERROR_INVALID_METHOD;
          print_error("gdt_call failed! invalid method");
        case ERROR_INVALID_ARGUMENT;
          print_error("gdt_call failed! invalid argument");
          print_muted(tprint("argument given: %", cast(GDExtensionVariantType) err.argument));
          print_muted(tprint("argument expected: %", cast(GDExtensionVariantType) err.expected));
        case ERROR_TOO_MANY_ARGUMENTS;
          print_error("gdt_call failed! too many arguments");
        case ERROR_TOO_FEW_ARGUMENTS;
          print_error("gdt_call failed! too few arguments");
        case ERROR_INSTANCE_IS_NULL;
          print_error("gdt_call failed! instance is null");
        case ERROR_METHOD_NOT_CONST;
          print_error("gdt_call failed! method not const");
    }
}

// ==== WRAPPERS ====

// TODO: these should push line number from the .jai source file
godot_error :: (message: string) {
    print_error_with_message(null, message, null, null, 0, 1);
}

godot_warn :: (message: string) {
    print_warning_with_message(null, message, null, null, 0, 1);
}
