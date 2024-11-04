/// @description Insert description here
// You can write your code in this editor

window_set_min_height(window_get_height());
window_set_min_width(window_get_width());

enum DIR {
	UP,
	DOWN,
	LEFT,
	RIGHT
};

window_set_cursor(cr_none);
cursor_sprite = cursor_spr;