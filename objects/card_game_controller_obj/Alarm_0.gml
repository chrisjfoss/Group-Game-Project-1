/// @description Insert description here
// You can write your code in this editor

card_game_phase = GAME_PHASE.DEALING_CARDS; //deal cards.

var cards_to_deal = 5;
while (ds_list_size(player_deck) > 0 && cards_to_deal > 0)
{
	var top_card = player_deck[| 0];
	ds_list_add(player_hand, top_card);
	
	ds_list_delete(player_deck,0);
	
	cards_to_deal -= 1;
}

var cards_to_deal = 5;
while (ds_list_size(opponent_deck) > 0 && cards_to_deal > 0)
{
	var top_card = opponent_deck[| 0];
	ds_list_add(opponent_hand, top_card);
	
	ds_list_delete(opponent_deck,0);
	
	cards_to_deal -= 1;
}

/*
//log the hands to the console for debug purposes
show_debug_message("PLAYER HAND:");
for (var i = 0; i < ds_list_size(player_hand); i++)
{
	var this_card = player_hand[| i];
	show_debug_message(this_card);
}
show_debug_message("OPPONENT HAND:");
for (var i = 0; i < ds_list_size(opponent_hand); i++)
{
	var this_card = opponent_hand[| i];
	show_debug_message(this_card);
}
*/


alarm[1] = 150; //start the game with player's lead.