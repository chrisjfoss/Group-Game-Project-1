/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 1;
opponent_resource_economy = 2;
opponent_resource_science = 1;

dlog[0] = [ "Salutations. There have been several mysterious disappearances around town lately. That's why I'm here.^1", dlog_continue];
dlog[1] = [ "The higher-ups want a new set of eyes on things, and my eyes are the best eyes! Ho ho!^2", dlog_continue];
dlog[2] = [ "I truly am the greatest detective Emerald Lake has ever seen. But I digress!^3", dlog_continue];
dlog[3] = [ "Surely an under-educated man like yourself would be no match for me in a game of cards?", ["Play^4", "Don't Play^5"]]; 
dlog[4] = [ "I cannot say no to a challenge. But be warned, I'm something of an expert at this game.", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_economy, opponent_resource_science);
			} 
		  ]; 
dlog[5] = [ "Ho! That's a smart lad.^0", dlog_goto]; 

