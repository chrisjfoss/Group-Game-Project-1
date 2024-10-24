/// @description Insert description here
// You can write your code in this editor
event_inherited();

_player_type = PLAYER_TYPE.HUMAN;

choose_card = function(_card_x, _card_y, _this_card_type) {
	var _opponent_suit = "";
	var _opponent_power = 0;
	with(obj_base_ai) {
		_opponent_power = self.get_active_power();
		_opponent_suit = self.get_active_suit();
	}
	if (mouse_check_button_pressed(mb_left)) {
		if (mouse_x > _card_x-32 && mouse_x < _card_x+32 && mouse_y > _card_y-48 && mouse_y < _card_y+48)
		{
			//clicked this card! Let's play it, if that's valid.
			if (_opponent_suit == "")
			{
				play_card(_this_card_type);
				
				return true;
			}
			else
			{
				//determine if the player must follow suit or not. if they must, display an error message. Otherwise, allow the play.
				var suit_violated = false;
						
				var pl_suit = get_card_suit(_this_card_type);
						
				if (_opponent_suit == pl_suit)
				{
					suit_violated = false;
				}
				else
				{
					//not same suit! Determine if the player has ANY of the opponent's suit in their hand.
					var has_matching_suit = false;
					for (var _j = 0; _j < ds_list_size(self._hand); _j++)
					{
						var check_card = self._hand[| _j];
								
						var check_suit = get_card_suit(check_card);
								
						if (check_suit == opp_suit)
						{
							has_matching_suit = true;
						}
					}
							
					if (has_matching_suit)
					{
						suit_violated = true;
					}
				}
						
				if (suit_violated)
				{
					//error message
					show_message("Invalid choice. You must follow suit! Play a card of the same suit as your opponent.");
				}
				else
				{
					//valid play
					play_card(_this_card_type);
					return true;
				}
			}
		}
	}
	
	return false;
}