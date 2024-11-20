/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 2;
opponent_resource_civilian = 3;
opponent_resource_science = 1;

dlog[0] = [ "Howdy pardner. Would you like to play a game of cards?", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "Yeeeeee Hawwwwww! Let's play some cards!", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_civilian, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "That's too bad. Maybe some other time.^0", dlog_goto]; 

