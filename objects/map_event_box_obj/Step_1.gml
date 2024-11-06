/// @description Insert description here
// You can write your code in this editor

if (event_stage == -1 && selector >= 0)
{
	if (check_primary_pressed() || mouse_check_button_pressed(mb_left))
	{
		//execute the choice associated with the given event choice!
		event_stage = selector;
		event_box_height = event_box_height_post_choice;
		
		//add to the variable as described in the event array
		var _event_struct = global._random_events[$ event_uid];
		var _event_choice_array = _event_struct[$ "choice"+string(event_stage+1)];
		var _event_choice_variable = _event_choice_array[1];
		var _event_choice_delta = _event_choice_array[2];
		
		show_debug_message(_event_choice_variable);
		show_debug_message(_event_choice_delta);
		
		if (_event_choice_variable != 0)
		{
			if (_event_choice_variable == "CREDITS")
			{
				global._player_resources.CREDITS += _event_choice_delta;
				
				//TODO check for game over if credits < 0
			}
			else if (_event_choice_variable == "MILITARY")
			{
				global._player_resources.MILITARY += _event_choice_delta;
				
				global._player_resources.MILITARY = clamp(global._player_resources.MILITARY, 0, 10);
			}
			else if (_event_choice_variable == "CIVILIAN")
			{
				global._player_resources.CIVILIAN += _event_choice_delta;
				
				global._player_resources.CIVILIAN = clamp(global._player_resources.CIVILIAN, 0, 10);
			}
			else if (_event_choice_variable == "ENGINEERING")
			{
				global._player_resources.ENGINEERING += _event_choice_delta;
				
				global._player_resources.ENGINEERING = clamp(global._player_resources.ENGINEERING, 0, 10);
			}
		}
	}
}
else if (event_stage >= 0)
{
	if (check_primary_pressed() || mouse_check_button_pressed(mb_left))
	{
		//advance past the event, it is resolved!
		
		with (map_controller_obj)
		{
			advancing = true;
		}
		
		instance_destroy();
		
		
	}
}