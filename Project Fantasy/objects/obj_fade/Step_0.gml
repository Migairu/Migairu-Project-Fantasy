// Update fade effect
if (fade_state == "out") {
    alpha += fade_out_speed;
    if (alpha >= 1) {
        alpha = 1;
        fade_state = "in"; // Switch to fading in
        if (target_room != noone) {
            room_goto(target_room); // Transition to target room
        }
    }
} else if (fade_state == "in") {
    alpha -= fade_in_speed;
    if (alpha <= 0) {
        alpha = 0;
        instance_destroy(); // Destroy the fade object after transition
    }
}
