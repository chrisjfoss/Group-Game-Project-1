/// @description Insert description here
// You can write your code in this editor
event_inherited();

_player_type = PLAYER_TYPE.AI;

choose_card = function(){
	var _opponent_suit = "";
	var _opponent_power = 0;
	with(obj_base_human) {
		if(self._active_card) {	
			var _data = string_split(self._active_card, " ");
			_opponent_suit = _data[0];
			_opponent_power = real(_data[1]);
		}
	}
	
	var _valid_cards = get_playable_cards(_opponent_suit);
				
	//For now, just choose a random valid card. TODO: Make computer smarter?
	ds_list_shuffle(_valid_cards);
	var _card_picked = valid_cards[| 0];
	
	return _card_picked;
}