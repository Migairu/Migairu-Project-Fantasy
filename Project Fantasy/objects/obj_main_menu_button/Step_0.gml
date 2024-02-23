if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom)) {
    if (mouse_check_button_pressed(mb_left)) {
        is_pressed = true;
    } else if (is_pressed && mouse_check_button_released(mb_left)) {
        // Navigate to the target room
        var fade_obj = instance_create_layer(x, y, "Instances", obj_fade);
		fade_obj.target_room = target_room; // Set target room here
    }
} else {
    is_pressed = false;
}






