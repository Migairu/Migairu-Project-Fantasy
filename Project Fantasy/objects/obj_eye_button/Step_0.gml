// Step event of obj_eye_button
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
    // Assuming 'obj_password' is your password input object
    obj_password_input.show_password = !obj_password_input.show_password;
	image_index = obj_password_input.show_password ? 1 : 0;
}







