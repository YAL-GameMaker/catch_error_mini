#define catch_error_preinit
//#init catch_error_preinit
//#macro error_occurred global.g_error_occurred
//#macro error_last global.g_error_last

var _dump = game_save_id + "error_last.txt";
global.g_error_path = _dump;

if (file_exists(_dump)) {
    var _buf = buffer_load(_dump);
    
    // trim the following, in steps:
    // 0. newlines
    // 1. ___________________________________________
    // 2. newlines
    // 3. ############################################################################################
    // 4. newlines
    var _pos = 0;
    var _size = buffer_get_size(_buf);
    var _state = -1;
    while (++_state < 5) switch (_state) {
        case 0: case 2: case 4:
            while (_pos < _size) {
                switch (buffer_peek(_buf, _pos, buffer_u8)) {
                    case 13: case 10:
                        _pos += 1;
                        continue;
                }
                break;
            }
            break;
        case 1:
            while (_pos < _size && buffer_peek(_buf, _pos, buffer_u8) == ord("_")) _pos++;
            break;
        case 3:
            while (_pos < _size && buffer_peek(_buf, _pos, buffer_u8) == ord("#")) _pos++;
            break;
    }
    //
    buffer_seek(_buf, buffer_seek_start, _pos);
    global.g_error_last = buffer_read(_buf, buffer_string);
    global.g_error_occurred = true;
    buffer_delete(_buf);
    file_delete(_dump);
} else {
    global.g_error_occurred = false;
    global.g_error_last = "";
}

if (!catch_error_is_available()) {
    /* GMS >= 2.3:
    exception_unhandled_handler(function(e) {
        var _tf = file_text_open_write(global.g_error_path);
        if (_tf != -1) {
            // ... simulate message format for consistency
            file_text_write_string(_tf, e.longMessage);
            file_text_write_string(_tf, "############################################################################################");
            file_text_writeln(_tf);
            var _lines = e.stacktrace;
            var _count = array_length(_lines);
            for (var i = 0; i < _count; i++) {
                var _line = _lines[i];
                if (is_string(_line)) {
                    var _len = string_length(_line);
                    var _cut = false;
                    while (_len > 0) {
                        switch (string_ord_at(_line, _len)) {
                            case 13: case 10:
                                _len -= 1;
                                _cut = true;
                                continue;
                        }
                        break;
                    }
                    if (_cut) _line = string_copy(_line, 1, _len);
                    file_text_write_string(_tf, _line);
                    file_text_writeln(_tf);
                }
            }
            file_text_close(_tf);
        }
        trace(e);
        show_message(e.longMessage);
    });
    //*/
    exit;
}

if (!directory_exists(game_save_id)) directory_create(game_save_id);
catch_error_preinit_raw(_dump);
trace(game_save_id);
