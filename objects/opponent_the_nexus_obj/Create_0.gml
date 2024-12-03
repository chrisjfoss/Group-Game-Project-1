/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 4;
opponent_resource_civilian = 4;
opponent_resource_science = 4;

dlog[0] = [ "You cannot leave this place. You cannot overload the system. I will not tolerate it. Unless you can defeat me...", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "Prepare to be vanquished. Then I shall turn you into fuel for the machine.", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_civilian, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "I knew you lacked the courage to follow through.^0", dlog_goto]; 

