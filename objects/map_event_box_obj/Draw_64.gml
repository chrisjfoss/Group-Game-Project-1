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
			var _event_choice_text = _event_choice_array[0];
		
			if (i == selector)
			{
				//draw selection box
				draw_sprite_stretched(basic_selector_spr, 0, event_box_x+8, event_box_y+event_box_height+4+4+i*_choice_height, event_box_width-16, _choice_height);
			}
		
			draw_text(event_box_x+8, event_box_y+event_box_height+4+4+i*_choice_height,_event_choice_text);
			
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
	
	var _event_postchoice_choice_array = _event_struct[$ "choice"+string(event_stage+1)];
	_event_postchoice_text = _event_postchoice_choice_array[3];
	
	_event_postchoice_text = wrap_text(_event_postchoice_text, event_box_width-16);
	
	draw_text(event_box_x+8,event_box_y+8, _event_postchoice_text);
}