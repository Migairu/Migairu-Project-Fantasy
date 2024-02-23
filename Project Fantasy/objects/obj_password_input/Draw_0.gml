draw_self(); // Draws the assigned sprite

// Set text properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main); // Set this to your desired font
draw_set_color(c_black);

var text_area_width = sprite_get_width(sprite_index) - 30; // Adjust based on your sprite and desired padding
var start_pos = 1; // Starting position of the text to draw
var end_pos = string_length(password_text); // Ending position of the text to draw

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main); // Set to your desired font
draw_set_color(c_black);

var text_area_width = sprite_get_width(sprite_index) - 34; // Adjust for padding
var start_pos = 1;
var end_pos = string_length(password_text);

if (show_password) {
    // Calculate width and adjust for unmasked text
    var text_width = string_width(string_copy(password_text, start_pos, end_pos - start_pos + 1));
    if (text_width > text_area_width) {
        while (string_width(string_copy(password_text, start_pos, cursor_position - start_pos + 1)) > text_area_width && start_pos <= cursor_position) {
            start_pos++;
        }
    }
    while (string_width(string_copy(password_text, start_pos, end_pos - start_pos + 1)) > text_area_width && end_pos >= start_pos) {
        end_pos--;
    }
    var text_to_draw = string_copy(password_text, start_pos, end_pos - start_pos + 1);
} else {
    // For masked text, directly calculate how many asterisks can fit
    var masked_text_width = string_width("*");
    var max_chars = floor(text_area_width / masked_text_width);
    var text_length = string_length(password_text);
    if (text_length > max_chars) {
        // If more characters than can fit, adjust start_pos similarly to unmasked logic
        text_to_draw = string_repeat("*", max_chars);
    } else {
        // If all characters can fit, mask the entire text
        text_to_draw = string_repeat("*", text_length);
    }
}

if (cursor_visible && keyboard_active) {
    text_to_draw += "|"; // Add cursor for visual indication
}

// Draw the text
var text_x = x + 10;
var text_y = y + 4;

draw_text(text_x, text_y, text_to_draw); // Adjust x, y to match your sprite's text area






