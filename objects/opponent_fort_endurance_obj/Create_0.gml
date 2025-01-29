/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 3;
opponent_resource_economy = 1;
opponent_resource_science = 2;

dlog[0] = [ "Soldier! Listen up! It's time to toughen up and play some cards!", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "I hope you're ready, because here comes the pain!", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_economy, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "Are you talking back to your commanding officer? Drop and give me twenty! Then let's play some damn cards!^0", dlog_goto]; 

// Dialogue for after winning or losing the game. Must be accessed by changing dlog_index during card game phase.
dlog[3] = ["This is what I will say as soon as I lose the game!^5", dlog_goto]; 
dlog[4] = ["This is what I will say as soon as I win the game! The next time you talk to me, I will ask to play again.^0", dlog_goto]; 
dlog[5] = "This is what I will say if you talk to me after I've lost. There is no way to get me to say anything else."; 