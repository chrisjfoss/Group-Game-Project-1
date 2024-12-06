function default_ai(_player_card_active, _valid_cards) {
	// pick random valid card
	ds_list_shuffle(_valid_cards)
	return _valid_cards[| 0];
}