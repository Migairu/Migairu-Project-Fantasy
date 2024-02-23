draw_self(); // Draws the assigned sprite

// Set text properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main); // Set this to your desired font
draw_set_color(c_black);

var text_area_width = sprite_get_width(sprite_index) - 20; // Adjust based on your sprite and desired padding
var start_pos = 1; // Starting position of the text to draw
var end_pos = string_length(text); // Ending position of the text to draw

// Calculate width of the text and adjust start_pos dynamically based on cursor_position
var text_width = string_width(text);
if (text_width > text_area_width) {
    // If text width exceeds bounding box, adjust start_pos to ensure the text around the cursor is visible
    while (string_width(string_copy(text, start_pos, cursor_position - start_pos + 1)) > text_area_width && start_pos <= cursor_position) {
        start_pos++;
    }
}

// Adjust end_pos based on start_pos to ensure we only draw text that fits within the box
while (string_width(string_copy(text, start_pos, end_pos - start_pos + 1)) > text_area_width && end_pos >= start_pos) {
    end_pos--;
}

// Determine the text to draw based on adjusted start_pos and end_pos
var text_to_draw = string_copy(text, start_pos, end_pos - start_pos + 1);

if (cursor_visible && keyboard_active) {
    text_to_draw += "|"; // Add cursor for visual indication
}
text_to_draw += string_copy(text, cursor_position + 1, string_length(text) - cursor_position);

// Draw the text
var text_x = x + 10;
var text_y = y + 4;

draw_text(text_x, text_y, text_to_draw); // Adjust x, y to match your sprite's text area






