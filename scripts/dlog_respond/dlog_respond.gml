/**
 * @function dlog_respond
 * @desc This function is designed exclusively to be used in the dialogue system. Specifically, it is to be used when the speaker asks a question. 
 It will have the speaker respond to what was said immediately.
 */

function dlog_respond(){
	// Start by getting rid of the old textbox
	if (instance_exists(textbox_obj)) {
		instance_destroy(textbox_obj); 
	}
	
	// Look for hidden number in the option that was selected
	var str = question_options[selector]; 
	var n = check_hidden_num(str); 
	
	// Use the hidden number in the option that was selected to tell the speaker what to say next
	creator.dlog_index = n; 
	
	// Have the speaker automatically create a new textbox
	with (creator) {
		show_debug_message("Textbox responding.");
		create_textbox(window_sprite, 0, dlog[dlog_index], "bottom", false); 
	}
}
