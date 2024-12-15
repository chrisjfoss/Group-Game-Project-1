/// @description Insert description here
// You can write your code in this editor

if (room == CardGameRoom)
{
	var om = opponent_military;
	var oc = opponent_economy;
	var os = opponent_science;
	var pm = player_military;
	var pc = player_economy;
	var ps = player_science;
	
	var returnroom = return_to_room;
	var returnx = return_to_x;
	var returny = return_to_y;
	var returndir = return_to_dir;
	
	var oflavor = opponent_flavor;
	
	
	with (resource_indicator_obj)
	{
		if (type == "player")
		{
			resource_value_suit1 = pm;
			resource_value_suit2 = pc;
			resource_value_suit3 = ps;
		}
		else
		{
			resource_value_suit1 = om;
			resource_value_suit2 = oc;
			resource_value_suit3 = os;
		}
	}
	
	with (card_game_controller_obj)
	{
		/*begin_card_game_round();*/
		card_game_phase = GAME_PHASE.HOW_TO_PLAY;
		
		loss_room = returnroom;
		loss_x = returnx;
		loss_y = returny;
		loss_dir = returndir;
		
		opponent_flavor = oflavor;
	}
	
	
	instance_destroy();
}