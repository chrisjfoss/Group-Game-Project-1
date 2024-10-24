/// @description Insert description here
// You can write your code in this editor

if (card_game_phase == GAME_PHASE.NOT_STARTED)
{	
	card_game_phase = GAME_PHASE.INITIALIZING_DECKS; //shuffle decks based on resource indicator values!
	
	//build decks.
	
	//player deck build
	with(obj_base_player) {
		var _player_suit1_value = 0;
		var _player_suit2_value = 0;
		var _player_suit3_value = 0;
		var _player_type = self._player_type;
			
		with (resource_indicator_obj) {
			if (type == _player_type) {
				_player_suit1_value = resource_value_suit1; 
				_player_suit2_value = resource_value_suit2; 
				_player_suit3_value = resource_value_suit3; 
			}
		}
			
		self._orange_cards = _player_suit1_value;
		self._yellow_cards = _player_suit2_value;
		self._pink_cards = _player_suit3_value;
		
		self.build_deck();
	}
	
	alarm[0] = 150; //deal cards when alarm goes off
}
else if (card_game_phase == GAME_PHASE.GAME_OVER)
{
	card_game_phase = GAME_PHASE.NOT_STARTED; //reset the game from the top!
	
	with (resource_indicator_obj) { alarm[0] = 20; animation_pip = 0; tricks_taken = 0; resource_value_suit1 = 2; resource_value_suit2 = 2; resource_value_suit3 = 2; }
}