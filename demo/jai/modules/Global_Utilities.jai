//  ------------------
// | Global Utilities |
//  ------------------
// Some stuff I end up using everywhere - payl

/*
==========
log_X
Formatted stdout.
-----------------------
*/
log_error :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log_error("\n\x1b[1;38;5;9mERROR: %\n\x1b[0m", final_msg);
}

log_affirm :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[1;38;5;144m%\x1b[0m", final_msg);
}

log_muted :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[38;5;246m%\x1b[0m", final_msg);
}

log_warn :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[38;5;180m%\x1b[0m", final_msg);
}

log_glow :: (msg: string, args: .. Any) {
    final_msg := tprint(msg, .. args);
    log("\x1b[1;38;5;230m%\x1b[0m", final_msg);
}

/*
==========
transmute
Convenience, a bitcast.
-----------------------
*/
transmute :: ($T: Type, pfrom: *void) -> T {
    return (pfrom.(*T)).*;
}

type_from_type_info :: (ti: *Type_Info) -> Type {
    return (*ti).(*Type).*;
}

#scope_file

#import "Basic";
