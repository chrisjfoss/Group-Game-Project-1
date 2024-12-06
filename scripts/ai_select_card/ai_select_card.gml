// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_select_card(_opponent_flavor) {
	with(card_game_controller_obj) {
		valid_cards  = get_allowed_cards(player_card_active, opponent_hand);
		
		// Pick a card
		var _selected_card = default_ai(player_card_active, valid_cards);
		
		if(_opponent_flavor == 1) {
			_selected_card = aggressive_dumb_ai(player_card_active, valid_cards);
		}
		
		opponent_card_active = _selected_card;
		
		//remove this card from the opponent's hand.
		for (var _index = 0; _index < ds_list_size(opponent_hand); _index++)
		{
			var _current_card = opponent_hand[| _index];
			if (_current_card == _selected_card)
			{
				ds_list_delete(opponent_hand, _index);
				_index--;
			}
		}
		
		end_opponent_turn();
	}
}

function end_opponent_turn() {
	with(card_game_controller_obj) {
		if (player_card_active == "")
		{		
			card_game_phase = GAME_PHASE.PLAYER_TURN; //let the player pick their card.
			ai_counter = 0;
		}
		else
		{
			card_game_phase = GAME_PHASE.DETERMINE_WINNER; //let's compare cards and see who won the trick!
			trick_over_hint_text = "";
			ai_counter = 0;
		}
	}
}