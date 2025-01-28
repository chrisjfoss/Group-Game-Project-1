/// @desc Makes a "quit game?" confirmation textbox.

if instance_exists(modal_parent_obj) { instance_destroy(); exit; }

dlog_index = 0; 

dlog[0] = ["Quit game and return to the main menu? (Your progress will not be saved.)", 
	["No, Continue^1", "Exit to Main Menu^2"]
];
dlog[1] = ["Continuing...",
	function() {
		dlog_end();
	}
]; 
dlog[2] = ["Exiting to Main Menu...", 
	function() {
		reset_game_variables();
		room_goto(StartMenuRoom);
		dlog_end();
	}
];


window_sprite = basic_textbox_spr; 

show_debug_message("Quit game confirmation firing.");
create_textbox(window_sprite, 0, dlog[dlog_index], "bottom"); 
