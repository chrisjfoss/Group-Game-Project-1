/// @desc Set Vars

enum NPC_FACING {
	S, E, N, W
}

enum NPC_STATE {
	ACTIVE, IDLE, MOVING, DISABLED
}

image_speed = 0; 

depth = -y;

sin_c = 0;

state = NPC_STATE.IDLE;
return_state = NPC_STATE.IDLE; 

window_sprite = basic_textbox_spr; 
dlog_index = 0; 
dlog[0] = "This is default text shown by the parent NPC object"; 