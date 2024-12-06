// This ai will always play the worst card that can win the hand
// It will play a high numbered card if it is leading
function aggressive_dumb_ai(_player_card_active, _valid_cards) {
	var _winning_cards = ds_list_create();
	for (var _index = 0; _index < ds_list_size(_valid_cards); _index++)
	{
		var _this_card = _valid_cards[| _index];
					
		if (is_card_winning(_this_card, _player_card_active, false))
		{
			ds_list_add(_winning_cards, _this_card);
		}
	}
	
	if(ds_list_size(_winning_cards) > 0) {	
		return get_lowest_power_card(_winning_cards);
	} else if(_player_card_active == "") {
		// I am leading, so I play the best card I can
		return get_highest_power_card(_valid_cards);
	} else {
		// I am not leading, and I can't win, so throw something away
		return get_lowest_power_card(_valid_cards);
	}
}
