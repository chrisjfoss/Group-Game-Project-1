// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_map_button(){
	//based on the player's current positioning, spawn a button that initiates the corresponding action.
	
	//first, cleanup any map buttons that already exist.
	with (map_button_obj)
	{
		instance_destroy();
	}
	
	//now, spawn a map button, if the player is at an actionable space on the map.
	if (global._map_progress >= 0 && global._map_progress < ds_list_size(global._map_list))
	{
		var _active_map_poi = global._map_list[| global._map_progress];
		
		//spawn a button!
		var _new_button = instance_create_depth(320, 96, 0, map_button_obj);
		_new_button.image_xscale = 3;
			
		if (_active_map_poi[? "type"] == "station")
		{
			_new_button._button_text = "Visit Station";
		}
		else if (_active_map_poi[? "type"] == "event")
		{
			_new_button._button_text = "Resolve Event";
		}
	}
}