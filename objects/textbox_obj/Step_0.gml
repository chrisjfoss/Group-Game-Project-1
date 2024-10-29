/// @desc Handle Player Input

if (do_inputs && !paused) {
	 
	// Action Pressed
	if (keyboard_check_pressed(vk_space)) {
		
		// Action pressed before last page of text = advance page
		if (page < last_page) {
			// Advance the page of text if you can
			page = min(page + 1, last_page); 
			// Reset text progress so that the next page can type
			text_progress = 0;
			
		} else if (page == last_page) {
			
			// Action pressed while on final page of text.
			if (!is_question) {
				// Basic Security Check
				if (!is_array(end_action) && !is_string(end_action)) {
					// Execute the function set by the creator at the end of each dlog.
					end_action();	
				}


			// Action pressed on last page when a question is being asked
			} else { 
				// Basic Security Check
				if (!is_array(question_actions[selector]) && !is_string(question_actions[selector])) {
					// Execute the function set by the creator at the end of each dlog.
					question_actions[selector]();	
				} 
			}	 
		}
	}
	
	// Show question responses if on the final page of text
	if page == last_page {
		show_q = is_question; // This will remain false if it is not a question. 
	}
	
	
}
