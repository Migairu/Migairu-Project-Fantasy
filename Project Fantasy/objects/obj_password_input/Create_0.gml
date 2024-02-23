// path/filename: objects/obj_textInput/CreateEvent.gml
// Purpose: Initialize text input object properties
password_text = ""; // Stores input text
show_password = false; // Start with the password masked
keyboard_active = false; // Tracks if the keyboard is active
cursor_position = 0; // Position of the typing cursor
cursor_visible = true; // Controls cursor visibility for blinking effect
blink_rate = 20; // How fast the cursor blinks (frames)
frame_count = 10;
object_identifier = "obj_main_menu_password_input"