/// @description Insert description here
// You can write your code in this editor

if (event_stage == -1 && selector >= 0)
{
	if (check_primary_pressed() || mouse_check_button_pressed(mb_left))
	{
		//add to the variable as described in the event array
		var _event_struct = global._random_events[$ event_uid];
		var _event_choice_struct = _event_struct[$ "choice"+string(selector+1)];
		
		var _event_invalid_prereq = false;
		var _event_prereq_type = "";
		var _event_prereq_value = 0;
			
		if (struct_exists(_event_choice_struct, "choice_prerequisite_type") && struct_exists(_event_choice_struct, "choice_prerequisite_value"))
		{
			_event_prereq_type = _event_choice_struct[$ "choice_prerequisite_type"];
			_event_prereq_value = _event_choice_struct[$ "choice_prerequisite_value"];
		}
		
		if (_event_prereq_type == "BATTERIES" && global._player_resources.BATTERIES < _event_prereq_value) { _event_invalid_prereq = true; }
		if (_event_prereq_type == "MILITARY" && global._player_resources.MILITARY < _event_prereq_value) { _event_invalid_prereq = true; }
		if (_event_prereq_type == "ECONOMY" && global._player_resources.ECONOMY < _event_prereq_value) { _event_invalid_prereq = true; }
		if (_event_prereq_type == "SCIENCE" && global._player_resources.SCIENCE < _event_prereq_value) { _event_invalid_prereq = true; }
		
		if (!_event_invalid_prereq) //is the precondition met?
		{
			//execute the choice associated with the given event choice!
			event_stage = selector;
			event_box_height = event_box_height_post_choice;
		
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
					else if (_event_outcome_type == "ECONOMY")
					{
						global._player_resources.ECONOMY += _event_outcome_value;
				
						global._player_resources.ECONOMY = clamp(global._player_resources.ECONOMY, 0, 10);
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
		else
		{
			//TODO: Maybe play a bad sound effect to indicate that the selected choice cannot be selected, because a precondition/prerequisite is not met?
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