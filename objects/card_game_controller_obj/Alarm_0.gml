/// @description Insert description here
// You can write your code in this editor

card_game_phase = GAME_PHASE.DEALING_CARDS; //deal cards.

with(obj_base_player) {
	self.draw_starting_hand();
}

alarm[1] = 150; //start the game with player's lead.