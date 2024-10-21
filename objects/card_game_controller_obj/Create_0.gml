/// @description Insert description here
// You can write your code in this editor

card_game_phase = 1;
//this variable controls the current state of the card game.
//1: Game setup. Determine resource indicator values.
//2: Shuffling deck.
//3: Dealing cards to each player from their decks.
//4: Player's turn to pick a card.
//5: Opponent's turn to pick a card.
//6: Compare cards to determine a winner.
//7: Trick over. Go on to next trick.
//8: GAME OVER.


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