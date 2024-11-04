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
	
	// Spawn a cursor
	/*if (!instance_exists(cursor_obj)) {
		instance_create_depth(mouse_x, mouse_y, depth + 1, cursor_obj); 
	}*/
	window_set_cursor(cr_none);
	cursor_sprite = cursor_spr;
	
	// Solve the length and height of the text to be drawn. 
	var longest_str = widest_string(arr_options); 
	var text_height = string_height("M"); 

	// Solve width of window 
	var box_width = longest_str + (text_border * 2); 
	
	// Solve Height of window
	var box_target_height = text_height * rows + (text_border * 2);
	
	// Now that height is solved, check if the mouse is within bounds
	var mouse_hover = point_in_rectangle(mouse_x,mouse_y,x1,y1,x1+box_width,y1+box_height);
	
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
	
	// Set variables for where the selector will be drawn
	//var  
	//selector_x = x1 + text_border, 
	//selector_y = y1 + text_border + (text_height * selector - text_height * offset) - 8, // No idea why I needed to do - 8		>:(
	//selector_x2 = selector_x + string_width(arr_options[selector]), 
	//selector_y2 = selector_y + text_height; 
	
	// Draw selector
	//draw_sprite_stretched(basic_selector_spr, 0, selector_x, selector_y, selector_x2 - selector_x, selector_y2 - selector_y);
	
	// Draw options text
	rows = min(rows, array_length(arr_options)); // allow for fewer than max options
	for (var i = 0; i < rows; i++) {

		var abridged_txt = check_hidden_num(arr_options[i + offset], "string"); 
		
		var fix_offset = 8;
		
		// Draw Selector Considering mouse
		var c = c_yellow;
		if (mouse_hover) {
			 
			var selector_x = x1 + text_border, 
			var selector_y = y1 + text_border + (text_height * i), 
			var selector_x2 = selector_x + string_width(arr_options[i]), 
			var selector_y2 = selector_y + text_height; 
			
			var option_hover = point_in_rectangle(mouse_x,mouse_y,selector_x,selector_y,selector_x2,selector_y2-1);
			
			if (option_hover) {
				draw_rectangle_color(selector_x, selector_y, selector_x2, selector_y2, c, c, c, c, false);
				selector = i;
			}
			show_debug_message("draw_menu_list says: mouse is hovering over either option");
		}
		else {
			var selector_x = x1 + text_border; 
			var selector_y = y1 + text_border + (text_height * selector - text_height * offset); // No idea why I needed to do - 8		>:(
			var selector_x2 = selector_x + string_width(arr_options[selector]); 
			var selector_y2 = selector_y + text_height; 
			
			if (i == selector)
			{
				draw_rectangle_color(selector_x, selector_y, selector_x2, selector_y2, c, c, c, c, false);
			}
			
			show_debug_message("draw_menu_list says: mouse is NOT hovering");
		}
	
		draw_text(x1 + text_border, y1 + text_border + (text_height * i) + fix_offset, abridged_txt); 	
	}
	
	if (!paused) {
		// Scroll down, selector value goes up
		if check_down_pressed() {
			selector = min(selector + 1, array_length(arr_options) - 1); 
			// Change offset
			if selector > rows - 1 {
				offset = max(offset, selector - rows + 1);
			}
		}
	
		// Scroll up, selector value goes down
		if check_up_pressed() {
			selector = max(selector - 1, 0); 
			// Change offset
			if selector < offset {
				offset = selector; 
			}
		}
	}

}

