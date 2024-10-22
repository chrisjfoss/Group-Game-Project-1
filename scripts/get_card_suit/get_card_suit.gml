// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_card_suit(_card_string){
	return string_split(_card_string, " ")[0];
}