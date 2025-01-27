// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_card_game(opp_m, opp_c, opp_s, opponent_flavor = 0){
	var new_card_game_handler = instance_create_depth(0,0,0,new_card_game_handler_obj);
	new_card_game_handler.opponent_military = opp_m;
	new_card_game_handler.opponent_civilian = opp_c;
	new_card_game_handler.opponent_science = opp_s;
	new_card_game_handler.player_military = global._player_resources.MILITARY;
	new_card_game_handler.player_civilian = global._player_resources.ECONOMY;
	new_card_game_handler.player_science = global._player_resources.SCIENCE;
	new_card_game_handler.return_to_room = room;
	new_card_game_handler.return_to_x = player_walkaround_obj.x;
	new_card_game_handler.return_to_y = player_walkaround_obj.y;
	new_card_game_handler.return_to_dir = player_walkaround_obj._player_direction;
	new_card_game_handler.opponent_flavor = opponent_flavor;
	new_card_game_handler.return_to_room = room;
	
	show_debug_message("DIR RETURN: "+string(new_card_game_handler.return_to_dir));
	
	room_goto(CardGameRoom);
}