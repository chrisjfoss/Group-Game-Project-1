/// @description Insert description here
// You can write your code in this editor

enum GAME_PHASE {
	HOW_TO_PLAY = 0,
	CHOOSE_RESOURCES = 1,
	INITIALIZING_DECKS = 2,
	DEALING_CARDS = 3,
	MULLIGAN = 4,
	PLAYER_TURN = 5,
	OPPONENT_TURN = 6,
	DETERMINE_WINNER = 7,
	ROUND_END = 8,
	ROUND_OVER = 9,
	GAME_OVER = 10
}

card_selected = 0; //0-4, which card is actively selected by mouse, keyboard, or gamepad? -1 means none selected currently.

card_game_phase = GAME_PHASE.CHOOSE_RESOURCES;
//this variable controls the current state of the card game.
//1: Game setup. Determine resource indicator values.
//2: Shuffling deck.
//3: Dealing cards to each player from their decks.
//4: Player's turn to pick a card.
//5: Opponent's turn to pick a card.
//6: Compare cards to determine a winner.
//7: Trick over. Go on to next trick.
//8: GAME OVER.

rounds_won_player = 0;
rounds_won_opponent = 0;

leading_participant = "player";

player_deck = ds_list_create();
opponent_deck = ds_list_create();

ai_counter = 0; //a counter that lets the computer "think" for a little while before picking a card.

player_card_active = ""; //card on the table, live during round
opponent_card_active = ""; //card on the table, live during round

trick_won = ""; //who won the last trick? player or opponent?
trick_over_hint_text = "";

player_hand = ds_list_create();
opponent_hand = ds_list_create();

opponent_flavor = 0;

return_room = global.last_station_visited;
return_x = 64;
return_y = 64;
return_dir = DIR.DOWN;