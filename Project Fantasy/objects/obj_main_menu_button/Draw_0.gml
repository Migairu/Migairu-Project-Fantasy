// Draw the button sprite
draw_self();

// Draw overlay

if (is_pressed) {
	
	draw_sprite(spr_main_menu_pressed_button, 0, x, y);

}


// Set text properties
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_main); // Set this to your desired font

// Draw the text
var text_x = x + sprite_width / 2;
var text_y = y + 5;

draw_set_color(c_black);

draw_text(text_x, text_y, button_text);

// Draw the icon
var icon_x = x + 57;
var icon_y = y + 22;

draw_sprite(icon_sprite, 0, icon_x, icon_y);




