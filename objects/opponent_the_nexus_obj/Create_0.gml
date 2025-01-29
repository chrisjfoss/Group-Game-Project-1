/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 4;
opponent_resource_economy = 4;
opponent_resource_science = 4;

dlog[0] = [ "You cannot leave this place. You cannot overload the system. I will not tolerate it. Unless you can defeat me...", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "Prepare to be vanquished. Then I shall turn you into fuel for the machine.", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_economy, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "I knew you lacked the courage to follow through.^0", dlog_goto]; 

// Dialogue for after winning or losing the game. Must be accessed by changing dlog_index during card game phase.
dlog[3] = ["This is what I will say as soon as I lose the game!^5", dlog_goto]; 
dlog[4] = ["This is what I will say as soon as I win the game! The next time you talk to me, I will ask to play again.^0", dlog_goto]; 
dlog[5] = "This is what I will say if you talk to me after I've lost. There is no way to get me to say anything else."; 