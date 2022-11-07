draw_set_font(fnt_test);
draw_set_color(c_white);

var _msg = "[1] Make a mess"
	+ "\n[2] Make your own mess";
if (error_occurred) {
	_msg += "\nLast error:\n" + error_last;
} else _msg += "\nNo last error.";
draw_text(5, 5, _msg);
if keyboard_check_pressed(ord("1")) {
	scr_trouble();
}
if keyboard_check_pressed(ord("2")) {
	var _text = get_string("What trouble will you cause today?", "<error message>");
	show_error(_text, false);
}