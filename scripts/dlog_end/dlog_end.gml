/**
 * @function dlog_end
 * @desc This function is designed exclusively to be used in the dialogue system. By default, this will run after all text has been shown and the player presses the action button. 
 */

function dlog_end(){
	with (npc_parent_obj)
	{
		dlog_override_flag = true; //give 1 step of immunity to new dialog to avoid triggering a dialog loop
	}
	
	show_debug_message($"Dialogue ended by {object_get_name(object_index)}"); 
	if (instance_exists(textbox_obj)) {
		with (textbox_obj)
		{
			instance_destroy(); 
		}
	}
	instance_destroy();
	
	
	
	// Do any other actions that need to happen when dialogue ends, such as unpause player. 
}