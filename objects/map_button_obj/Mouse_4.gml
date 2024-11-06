/// @description Insert description here
// You can write your code in this editor

if (instance_exists(modal_parent_obj))
{
	//don't allow buttons to be pressed if there's a modal blocking them
	exit;
}

//allow player to interact with the map button
if (global._map_progress >= 0 && global._map_progress < ds_list_size(global._map_list))
{
	var _active_poi = global._map_list[| global._map_progress];
	
	if (_active_poi[? "type"] == "station")
	{
		//go to station's associated room!
		var _room_goto_id = _active_poi[? "room"];
		
		show_debug_message(room_get_name(_room_goto_id));
		
		room_goto(_room_goto_id);
	}
	else if (_active_poi[? "type"] == "event")
	{
		//pick a random event and play it out!
		var _events_allowed = _active_poi[? "events_possible"];
		
		var _event_index_random = irandom(array_length(_events_allowed)-1);
		var _event_random_uid = _events_allowed[_event_index_random];
		
		show_debug_message(_event_random_uid);

	}
}