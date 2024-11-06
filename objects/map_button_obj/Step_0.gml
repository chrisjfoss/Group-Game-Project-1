/// @description Insert description here
// You can write your code in this editor

if (instance_exists(modal_parent_obj))
{
	//don't allow buttons to be pressed if there's a modal blocking them
	exit;
}

if	(check_primary_pressed() || 
		(
			mouse_check_button_pressed(mb_left) && 
			point_in_rectangle
			(
				mouse_x,
				mouse_y,
				x-(sprite_width)/2,
				y-(sprite_height)/2,
				x+(sprite_width)/2,
				y+(sprite_height)/2
			)
		)
	)
{
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
			
			//Remove all previously-experienced events from the array.
			for (var e = 0; e < array_length(_events_allowed); e++)
			{
				var this_event_uid = _events_allowed[e];
				if (array_get_index(global._events_witnessed,this_event_uid) != -1)
				{
					//already witnessed this event! Jetisson it from the airlock.
					array_delete(_events_allowed,e,1);
					e--;
				}
			}
			
			if (array_length(_events_allowed) <= 0)
			{
				//no valid events!
				array_push(_events_allowed, "event_default");
			}
		
			var _event_index_random = irandom(array_length(_events_allowed)-1);
			var _event_random_uid = _events_allowed[_event_index_random];
		
			//start an event!
			var _event_box = instance_create_depth(0,0,0,map_event_box_obj);
			_event_box.event_uid = _event_random_uid;
			
			if (_event_random_uid != "event_default")
			{
				//do not allow the player to experience the same event twice.
				array_push(global._events_witnessed,_event_random_uid);
			}
		
			instance_destroy();

		}
	}
}