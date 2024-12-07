// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_card_power(_card_string){
	if(string_digits(_card_string) == "") {
		return 0;
	}
	return real(string_digits(_card_string));
}