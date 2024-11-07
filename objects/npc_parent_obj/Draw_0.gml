/// @description Insert description here
// You can write your code in this editor

draw_self();

//player facing this NPC
if state = NPC_STATE.ACTIVE && !instance_exists(modal_parent_obj) {
	draw_sprite_ext(triangle_spr, 0, x, y-sprite_height+sin(sin_c)*2 - 8,0.5,-0.5,0,c_white,1.0);
}