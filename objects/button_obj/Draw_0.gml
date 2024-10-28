/// @description Insert description here
// You can write your code in this editor
draw_set_font(card_ft);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);
draw_text(x,y,_button_text);