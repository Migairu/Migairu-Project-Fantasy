// This code should be placed in the Step event or a similar update function
if (!double_tap_registered && device_mouse_check_button_pressed(0, mb_left)) { // Check for tap (left mouse button as proxy for tap)
	alarm[1] = game_get_speed(gamespeed_fps) * 1;
	
	tap_count++;
	audio_play_sound(snd_door_knock, 1, false);
}

// Check if there was a double tap
if (tap_count == 2) {
	tap_count = 0;
	double_tap_registered = true;
    alarm[0] = game_get_speed(gamespeed_fps) * 0.5; // Set an alarm to wait 0.5 seconds before going to the next screen
}

