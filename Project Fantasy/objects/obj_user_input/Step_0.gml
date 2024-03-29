if (point_in_rectangle(device_mouse_x(0), device_mouse_y(0), bbox_left, bbox_top, bbox_right, bbox_bottom)) {
    if (mouse_check_button_pressed(mb_left)) {
		if (!keyboard_virtual_status()) {
			keyboard_string = "";
			global.activeInput = object_identifier; // Set this object as the active input
	        keyboard_active = true;
	        keyboard_virtual_show(kbv_type_email, kbv_returnkey_default, kbv_autocapitalize_none, false);
	    } else {
			keyboard_virtual_hide();
		}
	}
} else if (mouse_check_button_pressed(mb_left) && keyboard_virtual_status() && keyboard_active) {
    keyboard_active = false;
    keyboard_virtual_hide();
}

// If this object is not the active input, do not process further input
if (global.activeInput != object_identifier) {
    return;
}

if keyboard_virtual_status() {
	if (string_length(user_text) < 250) {
	    user_text = keyboard_string;
		cursor_position++;
	}
}

if (keyboard_key == vk_backspace && keyboard_string != "") {
	if (cursor_position > 0) {
		cursor_position--;
	}
}

if (keyboard_key == 10 && keyboard_string != "") {
	
	if (keyboard_string != "" && string_char_at(keyboard_string, string_length(keyboard_string)) == chr(10)) {
		// Correctly checks if the last character of keyboard_string is a newline (chr(10))
		keyboard_string = string_delete(keyboard_string, string_length(keyboard_string), 1);
	}
	
    keyboard_active = false;  
	keyboard_virtual_hide();
}

frame_count++;
if (frame_count >= 1000) { // Reset after a million frames to prevent overflow
    frame_count = 0;
}

// Cursor blink logic
if (keyboard_virtual_status() && keyboard_active) {
    if (frame_count % blink_rate == 0) {
        cursor_visible = !cursor_visible;
    }
} else {
    cursor_visible = false;
}





