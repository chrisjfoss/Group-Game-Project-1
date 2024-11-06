// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_game_variables(){
	global._map_progress = 0; //reset progress along map.
	
	global._player_resources.CREDITS = STARTING_VALUES.CREDITS;
	global._player_resources.MILITARY = STARTING_VALUES.MILITARY;
	global._player_resources.CIVILIAN = STARTING_VALUES.CIVILIAN;
	global._player_resources.SCIENCE = STARTING_VALUES.SCIENCE;
	
	global._events_witnessed = [];
}