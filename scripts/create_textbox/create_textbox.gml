/**
 * @function create_textbox
 * @description The function runs instance_create_depth with special instructions to make a textbox appear on the Draw_GUI layer
 * @param {Asset.GMSprite} sprite 9-slice sprite to be drawn
 * @param {Real} sub_img The sub-image (frame) of the sprite to draw
 * @param text Words to be written to screen. Accepts string, or array
 * @param {String} position The position to draw the textbox at. Accepts "custom", "top", "bottom", "center"
 * @param {Bool} popup Whether or not the box should animate opening, defaults to true
 * @param {Real} xx The x position of the textbox. Used for custom positioning
 * @param {Real} yy The y position of the textbox. Used for custom positioning
 * @returns {Id.Instance}
*/

function create_textbox(sprite, sub_img, text, position, popup = true, xx = 0, yy = 0){
	
	// NOTE: text can be in 4 formats: 
	// 1) "string" - When the sigle line of text is done, the textbox will go away.
	// 2) ["string", "string", etc.] - When every line in the array has been displayed, the textbox will go away.
	// 3) ["string", "string", etc., function] - When every line of text in the array has been displayed, the function will be run
	// 4) ["string", "string", etc., [question options]] - When every line of text has been displayed, a question window will appear, running different functions based on the selection with the defualt being to respond.
	
	// This needs to be done so that wrapping will work
	draw_set_font(card_small_ft); 
	
	// How tall is a line of text. This is also used as the border around the text
	var font_size = string_height("M");
	var double_border = (font_size * 2); 
	
	// Prepare empty vars for later
	var lines, w, h, array_len; 
	
	// Until we have a better way to reference the size of the screen...
	var res_width = display_get_gui_width(); 
	var res_height = display_get_gui_height(); 
	
	// Set the width of the text box
	if (position == "top" || position == "bottom") {
		// These two will have a fixed width and height whereas "center" and "custom" will automatically adjust
		w = res_width - 60; // 60 is just to give 30 on each side. Placeholder value
	} else {
		// for "center" and "custom" position arguments, I want the size of the textbox to adjust automatically
		var string_w = is_string(text) ? string_width(text) + double_border + font_size: string_width(text[0]) + double_border + font_size; // The spacing still doesn't add up. Fix this, future me
		w = min(string_w, res_width / 3); 
	}
	
	// Find out how much space you have for wrapping the text.
	var typeable_w = w - double_border;
	
	// Default to not a quetion
	var is_question = false; 
	
	// Set up the question arrays anyway
	var question_options = []; 
	var question_actions = [];
	
	// Set Default action to be to close the textbox at the end
	var end_action = dlog_end; 
	
	// This next section does to things, checks to see what format the text argument is in and wraps the text to fit in the textbox
	
	// 1.) text argument is a single string
	if (is_string(text)) {
		
		show_debug_message($"create_texbox says: text is a single string: {text}"); 
		
		// Find how many lines there are to calculate height with later
		lines = wrap_text(text, typeable_w, "lines"); 
		
		// Return the wrapped text
		text = wrap_text(text, typeable_w); 
	} else if (is_array(text)) {
		
		// In cases 2-4 height will be calculated using only the first entry in the array, which should always be a string.
		lines =  wrap_text(text[0], typeable_w, "lines");
		
		// Look at the last item in the array to determine which of the following cases to use next
		array_len = array_length(text) - 1;
		var last_entry = text[array_len];
		
		// 2.) text argument is an array of just strings
		if (is_string(last_entry)) {
			
			// Return the wrapped Text
			text = wrap_text_array(text, typeable_w);
			show_debug_message($"create_textbox says: text is an array of only strings: {text}");
		}
		
		// 3.) text is an array with a function at the end
		if (!is_string(last_entry) && !is_array(last_entry)) {
			
			// Store the function to be run at the end of the textbox
			end_action = last_entry; 
			
			// Remove the function and wrap the text
			text = array_pop_back(text); 
			text = wrap_text_array(text, typeable_w);
			show_debug_message($"create_textbox says: text is an array with a function attached: {text}");
		}
		
		// 4.) text is a question with options for the player to select. 
		// NOTE: Question options are in the format ["yes^1", "no^2"] with optional functions provided between strings. Strings must contain number hidden behind ^
		if (is_array(last_entry)) {
			
			// Flag this as a question
			is_question = true; 
			
			// Find the length of the question options and actions put together
			array_len = array_length(last_entry); 
			
			// Parse the question array and store it in two new arrays
			for (var i = 0; i < array_len; i++) {
				
				// Look at each entry in the array
				var parse = last_entry[i]; 
		
				// Start with strings
				if is_string(parse) {
			
					// Look for ^ in the string, showing there are hidden instructions
					var num = check_hidden_num(parse); 
			
					// The function above returns -1 if no ^ is found. 
					if (num != -1) {
						
						// You can't do i + 1 and then have a string as the last entry in the question array. 
						if (i + 1) < array_len {
							
							// Default behavior should be to add dlog_respond to the list of actions, but only if there is no function provided immediatley after. 
							var next = last_entry[i + 1]; // The next entry in the question array. 
						
							if is_string(next) {
								
								// There is no function provided, assume dlog_respond is the function. 
								array_push(question_actions, dlog_respond);
							}
							
						} else if (i + 1 == array_len) {
							
							// This means the string we found that has a ^ in it is the last entry in the question array. No function provided, use default
							array_push(question_actions, dlog_respond); 
						}	
					}
			
					// Add the string (With instructions attached) to question options
					array_push(question_options, parse); 
					
				} else {
			
					// In this case, entry is a function, add it to the actions
					array_push(question_actions, parse); 
				}
			}
			
			// Remove the function and wrap the text
			text = array_pop_back(text); 
			text = wrap_text_array(text, typeable_w);
			
			show_debug_message($"create_textbox says: text is an array with a question array attached: {text}");
			show_debug_message($"create_textbox says: question options are: {question_options}");
			show_debug_message($"create_textbox says: question actions are: {question_actions}");
		}
	}
	
	// This section looks at the position argument and sets the height for the textbox
	
	// These positions dynamically choose the height of the textbox based on how many lines of text there are
	if (position == "center" || position == "custom") {
		
		h = (font_size * lines) + double_border + font_size; // I have no idea why it needs an extra font_size to be the right height... Fix this, future me
	}
	
	// This position dynamically sets its x, y value using the width and height calculated in this script
	if (position == "center") {
		
		// Center the positon on the screen
		xx = (res_width / 2) - (w / 2);
		yy = (res_height / 2) - (h / 2); 
		
	}
	
	// These positions have a fixed height
	if (position == "top" || position == "bottom") {
		
		// Height of textbox
		h = 100;  // Placeholder value
		
		// These positions have a set x, y value
		xx = 30; // Placeholder value
		yy = (position == "bottom") ? res_height - 130 : 30; 
	}
	
	// In this section, we finally create the textbox
	
	// Create a struct to pass data to the new object with
	var inst_info = {
		// Static or coming from the arguments and speaker
		popup, sprite, sub_img, 
		creator : id, 

		// Dynamic or manipulated by the above code in some way
		width : w, 
		target_height : h,
		text, is_question, question_options, question_actions, end_action, typeable_w, font_size
	}

	// This puts new windows on top of old windows.
	var d = depth - (1 + instance_number(textbox_obj)); 
	
	// Create the inst using the struct
	return instance_create_depth(xx, yy, d, textbox_obj, inst_info);
}