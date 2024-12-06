/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 3;
opponent_resource_civilian = 1;
opponent_resource_science = 2;

dlog[0] = [ "Soldier! Listen up! It's time to toughen up and play some cards!", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "I hope you're ready, because here comes the pain!", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_civilian, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "Are you talking back to your commanding officer? Drop and give me twenty! Then let's play some damn cards!^0", dlog_goto]; 

