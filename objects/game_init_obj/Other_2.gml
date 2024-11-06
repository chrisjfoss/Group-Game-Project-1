/// @description Insert description here
// You can write your code in this editor

window_set_min_height(window_get_height());
window_set_min_width(window_get_width());

display_set_gui_size(room_width, room_height);

enum DIR {
	UP,
	DOWN,
	LEFT,
	RIGHT
};

window_set_cursor(cr_none);
cursor_sprite = cursor_spr;

init_map();

//player values, useful for scoring the game
global._player_resources = {
	CREDITS: 50,
	MILITARY: 0,
	CIVILIAN: 0,
	ENGINEERING: 0
}
	
init_random_events();