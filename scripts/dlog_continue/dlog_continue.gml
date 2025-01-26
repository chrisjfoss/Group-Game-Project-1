/**
 * @function dlog_respond
 * @desc This function is designed exclusively to be used in the dialogue system. Specifically, it is to be used when the speaker should continue straight to the next dialogue.
	It will have the speaker speak again immediately.
	
	Optionally accepts the dialog index
 */

function dlog_continue() {
	// Start by getting rid of the old textbox
	if (instance_exists(textbox_obj)) {
		instance_destroy(textbox_obj); 
	}
	
	// Have the speaker automatically create a new textbox
	with (creator) {
		// Get the string being written. 
		var str = dlog[dlog_index];
	
		// Extract the instructions
		var n = check_hidden_num(str); // This deletes the instructions and returns a string of numbers
	
		if(argument_count > 0) {
			n = argument[0];
		}
	
		// Apply the change
		dlog_index = n;
		create_textbox(window_sprite, 0, dlog[dlog_index], "bottom", false); 
	}
}