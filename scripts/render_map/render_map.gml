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
	
	//render vehicle cars
	var _p_x = _map_x + global._map_progress*_render_gap + vehicle_offset;
	var _p_y = _map_y-4;
	//first, conductor's car
	draw_sprite_ext(little_train_conductor_spr,0,_p_x,_p_y,1,1,0,c_white,1.0);
	//now, the resource cars
	var order_m = -1;
	var order_c = -1;
	var order_s = -1;
	
	var order_array = [ global._player_resources.MILITARY, global._player_resources.CIVILIAN, global._player_resources.SCIENCE ];
	array_sort(order_array,false);
	
	while (order_m == -1)
	{
		if (order_array[0] == global._player_resources.MILITARY)
		{
			order_m = 0;
		}
		else if (order_array[1] == global._player_resources.MILITARY)
		{
			order_m = 1;
		}
		else if (order_array[2] == global._player_resources.MILITARY)
		{
			order_m = 2;
		}
		else
		{
			order_m = 0;
		}
	}
	
	while (order_c == -1)
	{
		if (order_array[0] == global._player_resources.CIVILIAN && order_m != 0)
		{
			order_c = 0;
		}
		else if (order_array[1] == global._player_resources.CIVILIAN && order_m != 1)
		{
			order_c = 1;
		}
		else if (order_array[2] == global._player_resources.CIVILIAN && order_m != 2)
		{
			order_c = 2;
		}
		else
		{
			order_c = 1;
		}
	}
	
	while (order_s == -1)
	{
		if (order_array[0] == global._player_resources.SCIENCE && order_m != 0 && order_c != 0)
		{
			order_s = 0;
		}
		else if (order_array[1] == global._player_resources.SCIENCE && order_m != 1 && order_c != 1)
		{
			order_s = 1;
		}
		else if (order_array[2] == global._player_resources.SCIENCE && order_m != 2 && order_c != 2)
		{
			order_s = 2;
		}
		else
		{
			order_s = 2;
		}
	}
	
	//now all are sorted. Draw cars.
	
	//colored cars!
	for (cars = 0; cars <= 2; cars++)
	{
		var _loop_var = global._player_resources.MILITARY;
		var _car_spr = little_train_military_spr;
		if (order_m == cars) {_loop_var = global._player_resources.MILITARY; _car_spr = little_train_military_spr; }
		else if (order_c == cars) {_loop_var = global._player_resources.CIVILIAN; _car_spr = little_train_civilian_spr; }
		else if (order_s == cars) {_loop_var = global._player_resources.SCIENCE; _car_spr = little_train_science_spr; }
		for (var i = 0; i < _loop_var; i++)
		{
			_p_x -= sprite_get_width(_car_spr);
			draw_sprite_ext(_car_spr,0,_p_x,_p_y,1,1,0,c_white,1.0);
		}
	}
	
}