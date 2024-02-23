draw_self(); // Draw the sprite
draw_set_font(fnt_main); // Set this to your font
draw_set_color(c_black); // Set the text color
draw_set_halign(fa_center); // Center-align the text
draw_set_valign(fa_middle); // Middle-align the text
var text_x = x + (sprite_width/2); // Adjust text position based on your sprite
var text_y = y + (sprite_height/2); // Adjust text position based on your sprite
draw_text(text_x, text_y, "Please knock!");


