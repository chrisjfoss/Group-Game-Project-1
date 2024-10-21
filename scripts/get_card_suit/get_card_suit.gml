// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_card_suit(card_string){
	if (string_pos("Gray", card_string) > 0) { return "Gray"; }
	else if (string_pos("Orange", card_string) > 0) { return "Orange"; }
	else if (string_pos("Pink", card_string) > 0) { return "Pink"; }
	else if (string_pos("Yellow", card_string) > 0) { return "Yellow"; }	

	return "";
}