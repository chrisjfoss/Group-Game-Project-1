/**
 * @function dlog_end
 * @desc This function is designed exclusively to be used in the dialogue system. By default, this will run after all text has been shown and the player presses the action button. 
 */

function dlog_end(){
	show_debug_message($"Dialogue ended by {object_get_name(object_index)}"); 
	if (instance_exists(textbox_obj)) {
		instance_destroy(textbox_obj); 
	}
	
	// Do any other actions that need to happen when dialogue ends, such as unpause player. 
}