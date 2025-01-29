/// @description Insert description here
// You can write your code in this editor

if (instance_exists(modal_parent_obj)) { exit; }

if (check_primary_pressed() || mouse_check_button_pressed(mb_left))
{
	if (card_game_phase == GAME_PHASE.CHOOSE_RESOURCES)
	{
		begin_card_game_round();
	
	}
	else if (card_game_phase == GAME_PHASE.HOW_TO_PLAY)
	{
		begin_card_game_round();
	}
	else if (card_game_phase == GAME_PHASE.ROUND_OVER)
	{
		begin_card_game_round();
		
		with (resource_indicator_obj) { 
			tricks_taken = 0;
		}
	
		/*
		//LEGACY CODE, RESTARTS THE CARD GAME FROM THE TOP
	
		card_game_phase = GAME_PHASE.CHOOSE_RESOURCES; //reset the game from the top!
	
		with (resource_indicator_obj) { alarm[0] = 20; animation_pip = 0; tricks_taken = 0; resource_value_suit1 = 2; resource_value_suit2 = 2; resource_value_suit3 = 2; }
		*/
	}
	else if (card_game_phase == GAME_PHASE.GAME_OVER)
	{
		var player_score = 0;
		var opponent_score = 0;
		with (resource_indicator_obj)
		{
			if (type == "player") { player_score = tricks_taken; }
			else if (type == "opponent") { opponent_score = tricks_taken; }
		}
	
		if (player_score > opponent_score) { 
			//Victory! Return to Walkaround phase.
			//global._map_advance = true;
			
			global.won_last_card_game = true; 
			
			room_goto(return_room);
			
			var _player_setter = instance_create_depth(0,0,0,player_setter_obj);
			_player_setter.player_set_x = return_x;
			_player_setter.player_set_y = return_y;
			_player_setter.player_set_dir = return_dir;
			
			show_debug_message("DIR SET: "+string(_player_setter.player_set_dir));
			
		}
		else 
		{ 
			//Failure! Return to the station.
			room_goto(return_room);
			
			// Lose 10 batteries when you lose
			spend_batteries(10);
			
			var _player_setter = instance_create_depth(0,0,0,player_setter_obj);
			_player_setter.player_set_x = return_x;
			_player_setter.player_set_y = return_y;
			_player_setter.player_set_dir = return_dir;
			
			show_debug_message("DIR SET: "+string(_player_setter.player_set_dir));
		}
		
		
		
	
		/*
		//LEGACY CODE, RESTARTS THE CARD GAME FROM THE TOP
	
		card_game_phase = GAME_PHASE.CHOOSE_RESOURCES; //reset the game from the top!
	
		with (resource_indicator_obj) { alarm[0] = 20; animation_pip = 0; tricks_taken = 0; resource_value_suit1 = 2; resource_value_suit2 = 2; resource_value_suit3 = 2; }
		*/
	}
}