// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum CARD_TYPES {
	MILITARY,
	SCIENCE,
	CIVILIAN,
	GRAY
}

function get_card_type_name(_card_type) {
	if(_card_type == CARD_TYPES.MILITARY) {
		return "Military";
	}
	else if(_card_type == CARD_TYPES.CIVILIAN) {
		return "Civilian";
	}
	else if(_card_type == CARD_TYPES.SCIENCE) {
		return "Science";
	}
	else if(_card_type == CARD_TYPES.GRAY) {
		return "Gray";
	}
	return "";
}