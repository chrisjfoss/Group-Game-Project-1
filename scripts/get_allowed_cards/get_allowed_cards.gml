// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_allowed_cards(_player_card_active, _hand) {
	//player has played a card. Let's make a smart decision based on the state of the game.
	var _valid_cards = ds_list_create();
	
	if(_player_card_active == "") {
		for (var _index = 0; _index < ds_list_size(_hand); _index++)
		{
			var _this_card = _hand[| _index];
			ds_list_add(_valid_cards, _this_card);
		}
		return _valid_cards;
	}
	
	var _player_active_suit = get_card_suit(_player_card_active);
	var _player_active_power = get_card_power(_player_card_active);
				
	for (var _index = 0; _index < ds_list_size(_hand); _index++)
	{
		var _this_card = _hand[| _index];
					
		var _this_card_suit = get_card_suit(_this_card);
		if (_this_card_suit == _player_active_suit)
		{
			ds_list_add(_valid_cards, _this_card);
		}
	}
				
	if (ds_list_size(_valid_cards) == 0)
	{
		//no matching suit cards! Let's just add all cards to the valid list.
		for (var _index = 0; _index < ds_list_size(_hand); _index++)
		{
			var _this_card = _hand[| _index];
			ds_list_add(_valid_cards, _this_card);
		}
	}
		
	return _valid_cards;
}