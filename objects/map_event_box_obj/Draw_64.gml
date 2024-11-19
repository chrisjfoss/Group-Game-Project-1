/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,0,event_box_x,event_box_y,event_box_width/sprite_width,event_box_height/sprite_height,0,c_white,1.0);


draw_set_font(card_14_ft);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

if (event_stage == -1)
{
	//no choice has been selected by the player! Let's draw the pre-choice text to the screen.
	var _event_struct = global._random_events[$ event_uid];
	show_debug_message(event_uid);
	show_debug_message(_event_struct);
	var _event_prechoice_text = wrap_text(_event_struct.event_text, event_box_width-16);
	
	draw_text(event_box_x+8,event_box_y+8, _event_prechoice_text);
	
	//draw event outcome choice box
	var choices_num = 0;
	
	for (var i = 0; i < 10; i++)
	{
		if (struct_exists(_event_struct, "choice"+string(i+1)))
		{
			choices_num++;
		}
	}
	
	if (choices_num > 0)
	{
		var _choice_height = 24;
		draw_sprite_ext(sprite_index,0,event_box_x,event_box_y+event_box_height+4,event_box_width/sprite_width,(8+(choices_num*_choice_height))/sprite_height,0,c_white,1.0);
		
		var mouse_hovering = false;
		
		if (device_mouse_x_to_gui(0) > event_box_x && device_mouse_x_to_gui(0) < event_box_x+event_box_width && device_mouse_y_to_gui(0) > event_box_y+event_box_height+4 && device_mouse_y_to_gui(0) < event_box_y+event_box_height+4 + (8+(choices_num*_choice_height)))
		{
			mouse_hovering = true;
			show_debug_message("mouse hovering!");
		}
		else
		{
			if (check_down_pressed())
			{
				selector++;
				if (selector > choices_num-1)
				{
					selector = choices_num-1;
				}
			}
			else if (check_up_pressed())
			{
				selector--;
				if (selector < 0)
				{
					selector = 0;
				}
			}
		}
		
		for (var i = 0; i < choices_num; i++)
		{
			//draw choices text
			var _event_choice_array = _event_struct[$ "choice"+string(i+1)];
			var _event_choice_text = _event_choice_array[$ "choice_text"];
			
			var _event_invalid_prereq = false;
			var _event_prereq_type = "";
			var _event_prereq_value = 0;
			
			if (struct_exists(_event_choice_array, "choice_prerequisite_type") && struct_exists(_event_choice_array, "choice_prerequisite_value"))
			{
				_event_prereq_type = _event_choice_array[$ "choice_prerequisite_type"];
				_event_prereq_value = _event_choice_array[$ "choice_prerequisite_value"];
			}
			
			if (_event_prereq_type == "BATTERIES" && global._player_resources.BATTERIES < _event_prereq_value) { _event_invalid_prereq = true; }
			if (_event_prereq_type == "MILITARY" && global._player_resources.MILITARY < _event_prereq_value) { _event_invalid_prereq = true; }
			if (_event_prereq_type == "CIVILIAN" && global._player_resources.CIVILIAN < _event_prereq_value) { _event_invalid_prereq = true; }
			if (_event_prereq_type == "SCIENCE" && global._player_resources.SCIENCE < _event_prereq_value) { _event_invalid_prereq = true; }
			
			if (_event_invalid_prereq)
			{
				draw_sprite_stretched(invalid_gray_spr, 0, event_box_x+8, event_box_y+event_box_height+4+4+i*_choice_height, event_box_width-16, _choice_height);
			}
		
			if (i == selector)
			{
				//draw selection box
				draw_sprite_stretched(basic_selector_spr, 0, event_box_x+8, event_box_y+event_box_height+4+4+i*_choice_height, event_box_width-16, _choice_height);
			}
		
			draw_text(event_box_x+8, event_box_y+event_box_height+4+4+i*_choice_height,_event_choice_text);
			
			if (_event_prereq_type != "")
			{
				draw_set_halign(fa_right);
				draw_set_color(c_dkgray);
				if (_event_invalid_prereq) { draw_set_color(c_red); }
				draw_text(event_box_x+event_box_width-8, event_box_y+event_box_height+4+4+i*_choice_height, "(Requires: "+string(_event_prereq_value)+"       )");
				
				var _prereq_spr = empty_spr;
					
				if (_event_prereq_type == "BATTERIES") { _prereq_spr = batteries_symbol_spr; }
				if (_event_prereq_type == "MILITARY") { _prereq_spr = suit_military_spr; }
				if (_event_prereq_type == "CIVILIAN") { _prereq_spr = suit_civilian_spr; }
				if (_event_prereq_type == "SCIENCE") { _prereq_spr = suit_science_spr; }
				
				draw_sprite_ext(_prereq_spr, 0, event_box_x+event_box_width-8-18, event_box_y+event_box_height+16+4+i*_choice_height,1,1,0,c_white,1.0);
				
				draw_set_halign(fa_left);
				draw_set_color(c_black);
			}
			
			if (mouse_hovering)
			{
				if (device_mouse_y_to_gui(0) > (event_box_y+event_box_height+4+4+i*_choice_height) && device_mouse_y_to_gui(0) < (event_box_y+event_box_height+4+4+i*_choice_height) + _choice_height)
				{
					show_debug_message(i);
					selector = i;
				}
			}
		}
	}
}
else
{
	//post-choice in this event! 
	var _event_struct = global._random_events[$ event_uid];
	var _event_postchoice_text = "";
	
	var _event_postchoice_choice_struct = _event_struct[$ "choice"+string(event_stage+1)];
	_event_postchoice_text = _event_postchoice_choice_struct[$ "choice_post_text"];
	
	var results_txt = "\n(";
	var result_i = 1;
	while (struct_exists(_event_postchoice_choice_struct, "choice_outcome"+string(result_i)+"_type"))
	{
		if (result_i > 1) { results_txt += ", "; }
		
		var outcome_i_type = _event_postchoice_choice_struct[$ "choice_outcome"+string(result_i)+"_type"];
		var outcome_i_value = _event_postchoice_choice_struct[$ "choice_outcome"+string(result_i)+"_value"];
		
		var val_string = "";
		if (outcome_i_value >= 0) { val_string = "+"+string(outcome_i_value); }
		else if (outcome_i_value < 0) { val_string = string(outcome_i_value); }
		
		if (outcome_i_type == "CIVILIAN")
		{
			results_txt += val_string + " Civilian";
		}
		else if (outcome_i_type == "MILITARY")
		{
			results_txt += val_string + " Military";
		}
		else if (outcome_i_type == "SCIENCE")
		{
			results_txt += val_string + " Science";
		}
		else if (outcome_i_type == "BATTERIES")
		{
			results_txt += val_string + " Batteries";
		}
		else
		{
			results_txt += "Nothing happened"; //nothing happened.
		}
		
		
		result_i++;
	}
	results_txt += ")";
	
	_event_postchoice_text += results_txt;
	
	_event_postchoice_text = wrap_text(_event_postchoice_text, event_box_width-16);
	
	draw_text(event_box_x+8,event_box_y+8, _event_postchoice_text);
}