// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function render_map(){
	//do all rendering for the world map for the traveling portion of the game.
	
	var _map_x = 48;
	var _map_y = floor(room_height/2);
	var _map_width = floor(room_width-(48*2));
	
	//draw the map background (aka, road)
	draw_sprite_ext(map_road_spr, 0, _map_x+_map_width/2, _map_y, _map_width/sprite_get_width(map_road_spr),1,0,image_blend,1.0);
	
	var _render_x = _map_x;
	var _render_y = _map_y;
	
	var _render_gap = 0;
	
	if (ds_list_size(global._map_list) > 1)
	{
		_render_gap = _map_width/(ds_list_size(global._map_list)-1);
	}
	else
	{
		_render_x = _map_x+_map_width/2;
		_render_gap = _map_width/2;
	}
	
	global._advance_max = _render_gap;
	
	//render all points of interest along the road
	for (var i = 0; i < ds_list_size(global._map_list); i++)
	{
		var _this_map_poi = global._map_list[| i];
		
		var _this_map_poi_spr = _this_map_poi[? "sprite"];
		
		var _poi_x = _render_x;
		var _poi_y = _render_y;
		
		draw_sprite(_this_map_poi_spr, 0, _poi_x, _poi_y);
		
		_render_x += _render_gap; //move the render along the x-axis further for the next poi
	}
	
	//render active point of interest name, if applicable
	if (!advancing)
	{
		if (global._map_progress >= 0 && global._map_progress < ds_list_size(global._map_list))
		{
			var _map_poi_current = global._map_list[| global._map_progress];
			var _map_poi_name = _map_poi_current[? "name"];
		
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_color(c_white);
			draw_set_font(card_ft);
		
			draw_text(room_width/2, 8, _map_poi_name);
		}
	}
	
	
	//render the player's vehicle along the map
	if (!instance_exists(modal_parent_obj))
	{
		draw_sprite_ext(triangle_spr, 0, _map_x + global._map_progress*_render_gap + vehicle_offset, _map_y-32+2*sin(sin_c), 1, -1, 0, image_blend, 1.0);
	}
}