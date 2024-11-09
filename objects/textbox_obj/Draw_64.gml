/// @desc Show Text

// Start a new surface to draw on
if (!surface_exists(textbox_surface))
{
	var res_width = window_get_width(); 
	var res_height = window_get_height(); 

	// Start a new surface because we need to be able to draw a mouse on top with drawGUI
	textbox_surface = surface_create(res_width, res_height); 
}

surface_set_target(textbox_surface); 
draw_clear_alpha(c_white, 0); // Clear the surface to start fresh

// Set draw
draw_set_font(card_14_ft); 
draw_set_color(c_black);
draw_set_valign(fa_top);
draw_set_halign(fa_left); 

// Create Text box background
var lerp_speed = 0.3
var threshold = 0.5; 

// Potentially animate it opening up
height = lerp(height, target_height, lerp_speed);

if (abs(height - target_height) <= threshold) {
	// Finish Lerp
	height = target_height; 
	box_open = true;
}
	
draw_sprite_stretched(sprite, sub_img, x, y, width, height);

// Figure out where text will be. Font size acts as a border around the text
var text_x = x + font_size; 
var text_y = y + font_size - 4;

// Type out Text
var mssg = is_array(text) ? text[page] : text;

// Get the total length of the string (number of characters in the text)
var message_length = string_length(mssg);

if (text_progress < message_length && text_progress != 0)
{
	if (check_primary_pressed() || mouse_check_button_pressed(mb_left))
	{
		//advance text to the end
		text_progress = message_length-1;
	}
}
    
// If the progress through the text (number of characters shown so far) is less than the message length
if (text_progress < message_length) {
	text_progress++;  // Increment text progress to show the next character
} 
	
// Copy part of the string from the start up to the current progress
var print = string_copy(mssg, 1, text_progress);

// Draw the currently visible portion of the text
draw_text(text_x, text_y, print);

// What to do when the text box is done typing
if (text_progress >= message_length) {
	do_inputs = true; // This is the prerequisite for step event to do anything. 
}

// Draw question Options
if (show_q) {
	
	// Position question window at top right corner of textbox. 
	var rx = x + width; // Top right corner x. 
	var longest_str = widest_string(question_options); 
	var qw = longest_str + (font_size * 2); // question width
	var qx = rx - qw; // x on question box 
	var _max_rows = min(array_length(question_options), max_rows); // Cap the replies
	var qh = (_max_rows * font_size*2) + (font_size*2);
	var qy = y - qh - 4; // y on question box
	
	draw_menu_list(question_options, sprite, qx, qy, font_size, true, _max_rows);  
}

//// Reset draw <-----------------------Don't know what's going on. Is this needed?
//draw_set_color(c_white);
//draw_set_halign(fa_center); 

// Go back to regular surface
surface_reset_target();

// Apply the drawing we did to ui_surface
draw_surface(textbox_surface, 0, 0); 