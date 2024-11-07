/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 0;
direction = 270; // Initiate facing down

_player_direction = DIR.DOWN;

_player_sprites = {
	left: player_left_spr,
	right: player_right_spr,
	up: player_up_spr,
	down: player_down_spr
}

_player_walk_image_speed = 0.2;
_player_walk_speed = 2;

// The last NPC player went up to
last_npc = noone; 

// Debugging Only
show_hitbox = false; 