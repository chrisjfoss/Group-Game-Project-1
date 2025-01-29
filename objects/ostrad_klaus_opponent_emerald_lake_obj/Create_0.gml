/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 1;
opponent_resource_economy = 2;
opponent_resource_science = 1;

dlog[0] = [ "Salutations. There have been several mysterious disappearances around town lately. That's why I'm here.", "The higher-ups want a new set of eyes on things, and my eyes are the best eyes! Ho ho!", "I truly am the greatest detective Emerald Lake has ever seen. But I digress!", "Surely an under-educated man like yourself would be no match for me in a game of cards?", ["Play^1", "Don't Play^2"]];
dlog[1] = [ "I cannot say no to a challenge. But be warned, I'm something of an expert at this game.", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_economy, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "Ho! That's a smart lad.^0", dlog_goto]; 

// Dialogue for after winning or losing the game. Must be accessed by changing dlog_index during card game phase.
dlog[3] = ["This is what I will say as soon as I lose the game!^5", dlog_goto]; 
dlog[4] = ["This is what I will say as soon as I win the game! The next time you talk to me, I will ask to play again.^0", dlog_goto]; 
dlog[5] = "This is what I will say if you talk to me after I've lost. There is no way to get me to say anything else."; 