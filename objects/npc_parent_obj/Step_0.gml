/// @desc Talk to Player

sin_c += (2*pi)/ (60*3);
if (sin_c > 2*pi) { sin_c = 0; }

depth = -y;

if state = NPC_STATE.ACTIVE && !dlog_override_flag {
	//the player is facing you
	
	if ((check_primary_pressed() || mouse_check_button_pressed(mb_left)) && !instance_exists(modal_parent_obj)) {
		show_debug_message("Player freshly talking to an NPC.");
		create_textbox(window_sprite, 0, dlog[dlog_index], "bottom");
	}
}

dlog_override_flag = false;