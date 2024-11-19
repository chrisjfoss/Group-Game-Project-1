/// @description Insert description here
// You can write your code in this editor

randomize();

window_set_min_height(window_get_height());
window_set_min_width(window_get_width());

display_set_gui_size(room_width, room_height);

enum DIR {
	UP = 0,
	DOWN = 1,
	LEFT = 2,
	RIGHT = 3
};

global._map_advance = false;

window_set_cursor(cr_none);
cursor_sprite = cursor_spr;

init_map();
global._events_witnessed = [];

enum STARTING_VALUES {
	BATTERIES = 5,
	MILITARY = 1,
	CIVILIAN = 1,
	SCIENCE = 1
}

//player values, useful for scoring the game
global._player_resources = {
	BATTERIES: STARTING_VALUES.BATTERIES,
	MILITARY: STARTING_VALUES.MILITARY,
	CIVILIAN: STARTING_VALUES.CIVILIAN,
	SCIENCE: STARTING_VALUES.SCIENCE
}
	
init_random_events();