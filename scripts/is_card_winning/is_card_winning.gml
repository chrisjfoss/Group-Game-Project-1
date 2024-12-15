// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Returns true if _card_one is winning, otherwise false

function is_card_winning(_card_one, _card_two, _wins_ties){
	var _is_winning_by_suit = card_result_by_suit(_card_one, _card_two);
	if(_is_winning_by_suit != 0) {
		return _is_winning_by_suit;
	}
	
	var _card_one_power = get_card_power(_card_one);
	var _card_two_power = get_card_power(_card_two);
	
	if(_card_one_power > _card_two_power || (_card_one_power == _card_two_power && _wins_ties)) {
		return true;
	}
	return false;
}

// Returns 1 for _card_one winning by suit
// Returns 0 if neither suit is winning
// Returns -1 if _card_two is winning by suit
function card_result_by_suit(_card_one, _card_two) {
	var _card_one_suit = get_card_suit(_card_one);
	var _card_two_suit = get_card_suit(_card_two);
	
	var _gray_text = get_card_type_name(CARD_TYPES.GRAY);
	
	if(_card_one_suit == _card_two_suit) {
		return 0;
	}
	
	if(_card_one_suit != _gray_text && _card_two_suit == _gray_text) {
		return 1;
	}
	
	if(_card_one_suit == _gray_text && _card_two_suit != _gray_text) {
		return -1;
	}
	
	if(_card_one_suit == get_card_type_name(CARD_TYPES.MILITARY)) {
		if(_card_two_suit == get_card_type_name(CARD_TYPES.ECONOMY)) {
			return 1;
		}
		return -1;
	}
	
	if(_card_one_suit == get_card_type_name(CARD_TYPES.ECONOMY)) {
		if(_card_two_suit == get_card_type_name(CARD_TYPES.SCIENCE)) {
			return 1;
		}
		return -1;
	}
	
	if(_card_two_suit == get_card_type_name(CARD_TYPES.MILITARY)) {
		return 1;
	}
	return -1;
}