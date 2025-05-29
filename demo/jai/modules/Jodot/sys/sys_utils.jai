// ---------
// Utilities

Option :: enum u8 {
    NONE :: 0;
    SOME :: 1;
}

// TODO: debug print gstring and stringname
// TODO cleaner allocation?
make_stringname :: (native_string: string, dst: *StringName) -> *StringName {
    c_string := to_c_string(native_string);
    p_stringname := alloc(size_of(StringName),, allocator=temp);
    // p_stringname := alloc(size_of(StringName),, allocator=temp);
    string_name_new_with_utf8_chars(p_stringname, c_string);
    if dst != null memcpy(dst, p_stringname, size_of(StringName));
    // NOTE: For some reason, godot requires the *exact* pointer it generates here, as opposed to an arbitrary pointer to the StringName value.
    // So we return it, in case we need to capture.
    return p_stringname;
}

sn_equal :: (a: StringName, b: StringName) -> bool {
    if a[0] == b[0] &&
        a[1] == b[1] &&
        a[2] == b[2] &&
        a[3] == b[3] return true;
    else return false;
}

sn_equal :: (a: StringName, native_string: string) -> bool {
    b := make_stringname(native_string, null).*;
    if a[0] == b[0] &&
        a[1] == b[1] &&
        a[2] == b[2] &&
        a[3] == b[3] return true;
    else return false;
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
    log_muted(tprint("gstring length: %", len));
    buffer := NewArray(len, u8);
    string_to_utf8_chars(src, buffer.data, len);
    return buffer.(string);
}

handle_call_error :: (err: GDExtensionCallError) {
    using GDExtensionCallErrorType;
    if err.error == {
        case OK;
          // if DEBUG log_affirm("gdt_call OK!")(, p_final_var);
        case ERROR_INVALID_METHOD;
          log_error("gdt_call failed! invalid method");
        case ERROR_INVALID_ARGUMENT;
          log_error("gdt_call failed! invalid argument");
          log_muted(tprint("argument given: %", err.argument.(GDExtensionVariantType)));
          log_muted(tprint("argument expected: %", err.expected.(GDExtensionVariantType)));
        case ERROR_TOO_MANY_ARGUMENTS;
          log_error("gdt_call failed! too many arguments");
        case ERROR_TOO_FEW_ARGUMENTS;
          log_error("gdt_call failed! too few arguments");
        case ERROR_INSTANCE_IS_NULL;
          log_error("gdt_call failed! instance is null");
        case ERROR_METHOD_NOT_CONST;
          log_error("gdt_call failed! method not const");
        case;
          log_error("gdt_call failed!");
    }
}

// TEMP
set_object_pointer :: (object: *Godot_Class) {
    object.p_object = object_get_instance_from_id(object.object_id);
}

// ==== Wrappers ====

// TODO: these should push line number from the .jai source file
godot_error :: (message: string) {
    print_error_with_message(null, message, null, null, 0, 1);
}

godot_warn :: (message: string) {
    print_warning_with_message(null, message, null, null, 0, 1);
}
