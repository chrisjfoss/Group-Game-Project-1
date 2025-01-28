/// @desc Brady Needed something to make a textbox. 


dlog_index = 0; 

dlog[0] = ["You know the thing about card games?", 
	"You have to play the cards you're dealt!", 
	"Ha Ha. Isn't that a funny thing to say!?", 
	["You're not funny^1", "Yes. Hilarious^2", "Test option 3^2"]
];
dlog[1] = "You know what! You're right!^0"; 
dlog[2] = ["See I knew you would think I'm funny!", 
	"You gotta play the cards you're dealt! Ha! What a knee slapper!", 
	function() {
		room_goto(CardGameRoom);
		dlog_end(); 
	}
];


window_sprite = basic_textbox_spr; 

show_debug_message("Speaker test firing.");
create_textbox(window_sprite, 0, dlog[dlog_index], "bottom"); 
