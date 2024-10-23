/// @description Insert description here
// You can write your code in this editor

if (card_game_phase == GAME_PHASE.NOT_STARTED)
{
	player_card_active = ""; 
	opponent_card_active = "";
	
	card_game_phase = GAME_PHASE.INITIALIZING_DECKS; //shuffle decks based on resource indicator values!
	
	//build decks.
	
	//player deck build
	ds_list_clear(player_deck);
	ds_list_add(player_deck,"Gray 1");
	ds_list_add(player_deck,"Gray 2");
	ds_list_add(player_deck,"Gray 3");
	ds_list_add(player_deck,"Gray 4");
	ds_list_add(player_deck,"Gray 5");
	
	var player_suit1_value = 0;
	var player_suit2_value = 0;
	var player_suit3_value = 0;
	with (resource_indicator_obj) { 
		if (type == "player") { 
			player_suit1_value = resource_value_suit1; 
			player_suit2_value = resource_value_suit2; 
			player_suit3_value = resource_value_suit3; 
		} 
	}
	for (var i = 1; i <= player_suit1_value; i++) { ds_list_add(player_deck,"Orange "+string(i)); }
	for (var i = 1; i <= player_suit2_value; i++) { ds_list_add(player_deck,"Yellow "+string(i)); }
	for (var i = 1; i <= player_suit3_value; i++) { ds_list_add(player_deck,"Pink "+string(i)); }
	ds_list_shuffle(player_deck);
	
	//opponent deck build
	ds_list_clear(opponent_deck);
	ds_list_add(opponent_deck,"Gray 1");
	ds_list_add(opponent_deck,"Gray 2");
	ds_list_add(opponent_deck,"Gray 3");
	ds_list_add(opponent_deck,"Gray 4");
	ds_list_add(opponent_deck,"Gray 5");
	
	var opponent_suit1_value = 0;
	var opponent_suit2_value = 0;
	var opponent_suit3_value = 0;
	with (resource_indicator_obj) { 
		if (type == "opponent") { 
			opponent_suit1_value = resource_value_suit1; 
			opponent_suit2_value = resource_value_suit2; 
			opponent_suit3_value = resource_value_suit3; 
		} 
	}
	for (var i = 1; i <= opponent_suit1_value; i++) { ds_list_add(opponent_deck,"Orange "+string(i)); }
	for (var i = 1; i <= opponent_suit2_value; i++) { ds_list_add(opponent_deck,"Yellow "+string(i)); }
	for (var i = 1; i <= opponent_suit3_value; i++) { ds_list_add(opponent_deck,"Pink "+string(i)); }
	ds_list_shuffle(opponent_deck);
	
	alarm[0] = 150; //deal cards when alarm goes off
}
else if (card_game_phase == GAME_PHASE.GAME_OVER)
{
	card_game_phase = GAME_PHASE.NOT_STARTED; //reset the game from the top!
	
	with (resource_indicator_obj) { alarm[0] = 20; animation_pip = 0; tricks_taken = 0; resource_value_suit1 = 2; resource_value_suit2 = 2; resource_value_suit3 = 2; }
}