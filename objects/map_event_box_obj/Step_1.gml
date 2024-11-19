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
		var _event_choice_struct = _event_struct[$ "choice"+string(event_stage+1)];

		var outcome_i = 1;
		while (struct_exists(_event_choice_struct, "choice_outcome"+string(outcome_i)+"_type"))
		{
			var _event_outcome_type = _event_choice_struct[$ "choice_outcome"+string(outcome_i)+"_type"];
			var _event_outcome_value = _event_choice_struct[$ "choice_outcome"+string(outcome_i)+"_value"];
			
			show_debug_message(_event_outcome_type);
			show_debug_message(_event_outcome_value);
		
			if (_event_outcome_type != 0)
			{
				if (_event_outcome_type == "BATTERIES")
				{
					global._player_resources.BATTERIES += _event_outcome_value;
				
					//TODO check for game over if batteries < 0
					
					
					
					
					if (global._player_resources.BATTERIES < 0)
					{
						global._player_resources.BATTERIES = 0;
					}
				}
				else if (_event_outcome_type == "MILITARY")
				{
					global._player_resources.MILITARY += _event_outcome_value;
				
					global._player_resources.MILITARY = clamp(global._player_resources.MILITARY, 0, 10);
				}
				else if (_event_outcome_type == "CIVILIAN")
				{
					global._player_resources.CIVILIAN += _event_outcome_value;
				
					global._player_resources.CIVILIAN = clamp(global._player_resources.CIVILIAN, 0, 10);
				}
				else if (_event_outcome_type == "SCIENCE")
				{
					global._player_resources.SCIENCE += _event_outcome_value;
				
					global._player_resources.SCIENCE = clamp(global._player_resources.SCIENCE, 0, 10);
				}
			}
			
			outcome_i++;
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