//draw player resource values to the screen.
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_ltgray);
draw_set_font(card_14_ft);

draw_text(display_get_gui_width()-35,6,
			"Batteries: "+string(global._player_resources.BATTERIES)+"\n"+
			"Military: "+string(global._player_resources.MILITARY)+"\n"+
			"Civilian: "+string(global._player_resources.CIVILIAN)+"\n"+
			"Science: "+string(global._player_resources.SCIENCE)
		);
		
draw_sprite_ext(batteries_symbol_spr,0,display_get_gui_width()-16,16,1,1,0,c_white,1.0);
draw_sprite_ext(suit_military_spr,0,display_get_gui_width()-16,16+24,1,1,0,c_white,1.0);
draw_sprite_ext(suit_civilian_spr,0,display_get_gui_width()-16,16+24*2,1,1,0,c_white,1.0);
draw_sprite_ext(suit_science_spr,0,display_get_gui_width()-16,16+24*3,1,1,0,c_white,1.0);

//reset render to default
draw_set_halign(fa_center);