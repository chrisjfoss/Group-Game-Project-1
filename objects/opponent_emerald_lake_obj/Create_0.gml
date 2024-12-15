/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 1;
opponent_resource_economy = 2;
opponent_resource_science = 1;

dlog[0] = [ "You. You have the look of a man who knows his way around a card table.", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "I cannot say no to a challenge. But be warned, I'm something of an expert at this game.", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_economy, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "Are you certain? Come back when you are ready to face me.^0", dlog_goto]; 

