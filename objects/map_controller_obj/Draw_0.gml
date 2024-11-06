/// @description Insert description here
// You can write your code in this editor

//RENDER MAP
render_map();



//draw player resource values to the screen.
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_ltgray);
draw_set_font(card_14_ft);

draw_text(room_width-6,6,
			"Credits: "+string(global._player_resources.CREDITS)+"\n"+
			"Military: "+string(global._player_resources.MILITARY)+"\n"+
			"Civilian: "+string(global._player_resources.CIVILIAN)+"\n"+
			"Engineering: "+string(global._player_resources.ENGINEERING)
		);


//reset render to default
draw_set_halign(fa_center);