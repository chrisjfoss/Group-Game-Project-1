// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_card_power(card_string){
	
	var card_strength = 1;
	
	var card_val = card_string;
	card_val = string_replace(card_val, "Gray ", "");
	card_val = string_replace(card_val, "Orange ", "");
	card_val = string_replace(card_val, "Yellow ", "");
	card_val = string_replace(card_val, "Pink ", "");
	card_val = real(card_val);	

	card_strength = card_val;
	
	return card_strength;
}