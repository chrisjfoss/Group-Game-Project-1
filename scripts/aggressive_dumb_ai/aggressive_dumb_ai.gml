// This ai will always play the worst card that can win the hand
// It plays a random card when it is ahead
function aggressive_dumb_ai(_player_card_active, _valid_cards) {
	var _player_power = get_card_power(_player_card_active);
	var _player_suit = get_card_suit(_player_card_active);
	
	var _winning_cards = ds_list_create();
	for (var _index = 0; _index < ds_list_size(_valid_cards); _index++)
	{
		var _this_card = _valid_cards[| _index];
					
		var _this_card_suit = get_card_suit(_this_card);
		if (is_card_winning(_player_card_active, _this_card_suit, false))
		{
			ds_list_add(_winning_cards, _this_card);
		}
	}
	
	return _winning_cards[| 0];
}
