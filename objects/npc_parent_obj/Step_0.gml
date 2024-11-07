/// @desc Talk to Player

if state = NPC_STATE.ACTIVE {
	// Temprorary: show the player is facing you
	image_blend = c_green; 
	
	if (check_primary_pressed()) {
		create_textbox(window_sprite, 0, dlog[dlog_index], "bottom");
	}
} else image_blend = c_white; // also temporary code