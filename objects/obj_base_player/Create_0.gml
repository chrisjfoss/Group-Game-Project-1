/// @description Initialize the player deck data
// You can write your code in this editor


_player_type = PLAYER_TYPE.HUMAN;

_hand = ds_list_create();
_deck = ds_list_create();
_starting_hand_size = 5;

_gray_cards = 5;
_orange_cards = 5;
_yellow_cards = 5;
_pink_cards = 5;

_active_card = ""; //card on the table, live during round

play_card = function(_card) {
	if (_card != "")
	{
		_active_card = _card;
	
		ds_list_delete(self._hand, ds_list_find_index(_hand, _card));
	}
}

get_active_power = function() {
	if(_active_card == "") {
		return 0;
	}
	return real(string_digits(_active_card));
}

get_active_suit = function() {
	return string_letters(_active_card);
}

_tricks_won = 0;

draw_starting_hand = function() {
	while (ds_list_size(_deck) > 0 && ds_list_size(_hand) < _starting_hand_size)
	{
		draw_top_card();
	}
}

draw_top_card = function() {
	if(ds_list_size(_deck)) {	
		var _top_card = _deck[| 0];
		ds_list_add(_hand, _top_card);
		ds_list_delete(_deck,0);
	}
}

get_playable_cards = function(_opponent_active_suit) {

	var _valid_cards = ds_list_create();
				
	for (var _k = 0; _k < ds_list_size(_hand); _k++)
	{
		var _this_card = _hand[| _k];
					
		var _this_card_suit = get_card_suit(_this_card);
		if (_this_card_suit == _opponent_active_suit)
		{
			ds_list_add(_valid_cards,_this_card);
		}
	}
				
	if (ds_list_size(_valid_cards) == 0)
	{
		//no matching suit cards! Let's just add all cards to the valid list.
		for (var _k = 0; _k < ds_list_size(_hand); _k++)
		{
			var _this_card = _hand[| _k];
			ds_list_add(_valid_cards,_this_card);
		}
	}
	
	return _valid_cards;
}

build_deck = function() {
	ds_list_clear(_deck);
	for (var _i = 1; _i <= _gray_cards; _i++) { ds_list_add(_deck,"Gray "+string(_i)); };
	for (var _i = 1; _i <= _orange_cards; _i++) { ds_list_add(_deck,"Orange "+string(_i)); }
	for (var _i = 1; _i <= _yellow_cards; _i++) { ds_list_add(_deck,"Yellow "+string(_i)); }
	for (var _i = 1; _i <= _pink_cards; _i++) { ds_list_add(_deck,"Pink "+string(_i)); }
	ds_list_shuffle(_deck);

	_active_card = "";
}