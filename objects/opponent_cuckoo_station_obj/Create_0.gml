/// @desc

// Inherit the parent event
event_inherited();

opponent_resource_military = 0;
opponent_resource_civilian = 3;
opponent_resource_science = 5;

dlog[0] = [ "Inquiry: Would you like to engage in a quantity of card game rounds? My processors assure me it would be a delight.", ["Play^1", "Don't Play^2"]]; 
dlog[1] = [ "Response: Excellent choice. Preparing the shuffle subroutine...", 
			function() { 
				start_card_game(opponent_resource_military, opponent_resource_civilian, opponent_resource_science);
			} 
		  ]; 
dlog[2] = [ "Response: That is unfortunate. Return when you ready. I will enter sleep mode and await.^0", dlog_goto]; 

