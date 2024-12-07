// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_highest_power_card(_cards){
	var _highest_card = "";
	
	for (var _index = 0; _index < ds_list_size(_cards); _index++)
	{
		var _this_card = _cards[| _index];
					
		var _this_card_power = get_card_power(_this_card);
		if (_highest_card == "" || _this_card_power > get_card_power(_highest_card))
		{
			_highest_card = _this_card;
		}
	}
	
	return _highest_card;
}