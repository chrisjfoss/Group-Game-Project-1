/// @description Insert description here
// You can write your code in this editor

if (ds_list_size(player_deck) > 0)
{
	card_game_phase = GAME_PHASE.MULLIGAN; //start the game, with the player deciding if they want to mulligan any cards.
	
	ds_list_add(player_hand, "Continue");
	
	//add "continue" "card" to hand
}
else
{
	card_game_phase = GAME_PHASE.PLAYER_TURN;
}

leading_participant = "player";
card_selected = 5; //continue "card" option