/**
 * @function draw_menu_list
 * @description This function will create a text window with a list of options provided by an array to list vertically. 
 * param {Array} arr_options This is the array containing strings to be listed. 
 * @param {Assset.GMsprite} spr The 9-slice enabled sprite to use as the background to the text
 * @param {Real} xx The x position to start drawing. Draws from top left corner
 * @param {Real} yy The y position to start drawing. Draws from top left corner
 * @param {Real} text_border How large of a border around the text should be allowed for when drawing the background
 * @param {Bool} popup Whether or not to show the window opening
 * @param {Real} rows The maximum number of rows to show in the list before cutting it off and making the player scroll to see the rest
 */


// Some of the vars (box_height, sub_img) must be initialized in the object's create event
function draw_menu_list(arr_options, spr, x1, y1, text_border, popup, rows){
	
	// Solve the length and height of the text to be drawn. 
	var longest_str = widest_string(arr_options); 
	var text_height = string_height("M"); 

	// Solve width of window 
	var box_width = longest_str + (text_border * 2); 
	
	// Solve Height of window
	var box_target_height = text_height * rows + (text_border * 2);
	
	// Animated popup
	if popup {
		
		// Open the box over a period of time
		box_height = lerp(box_height, box_target_height, 0.3);
		
		// End Lerp
		var threshold = 0.5; 
		if (abs(box_height - box_target_height) <= threshold) {
			box_height = box_target_height; 
		}
		
		// Draw background animated
		draw_sprite_stretched(spr, 0, x1, y1, box_width, box_height);
	} else {
		// Draw background not animated
		draw_sprite_stretched(spr, 0, x1, y1, box_width, box_target_height); 
	}
	
	// Set variables for where the options will be drawn
	var  
	selector_x = x1 + text_border, 
	selector_y = y1 + text_border + (text_height * selector - text_height * offset) - 8, 
	selector_x2 = selector_x + string_width(arr_options[selector]), 
	selector_y2 = selector_y + text_height; 
	
	// Draw selector
	draw_sprite_stretched(basic_selector_spr, 0, selector_x, selector_y, selector_x2 - selector_x, selector_y2 - selector_y);

	// Draw options text
	rows = min(rows, array_length(arr_options)); // allow for fewer than max options
	for (var i = 0; i < rows; i++) {
		var abridged_txt = check_hidden_num(arr_options[i + offset], "string"); 
		
		draw_text(x1 + text_border, y1 + text_border + (text_height * i), abridged_txt); 	
	}
	
	if (!paused) {
		// Scroll down, selector value goes up
		if keyboard_check_pressed(vk_down) {
			selector = min(selector + 1, array_length(arr_options) - 1); 
			// Change offset
			if selector > rows - 1 {
				offset = max(offset, selector - rows + 1);
			}
		}
	
		// Scroll up, selector value goes down
		if keyboard_check_pressed(vk_up) {
			selector = max(selector - 1, 0); 
			// Change offset
			if selector < offset {
				offset = selector; 
			}
		}
	}
}
