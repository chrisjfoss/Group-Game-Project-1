/// @description Insert description here
// You can write your code in this editor


if (instance_exists(card_game_controller_obj))
{
	if (card_game_controller_obj.card_game_phase == GAME_PHASE.HOW_TO_PLAY)
	{
		exit;
	}
}

draw_set_font(display_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

draw_sprite(sprite_index,image_index,x,y);

draw_sprite(resource_spr_suit1,0,x+28,y+24);
draw_sprite(resource_spr_suit2,0,x+28+64,y+24);
draw_sprite(resource_spr_suit3,0,x+28+64*2,y+24);




draw_text(x+28+18,y+10,string(resource_value_suit1));
draw_text(x+28+64+18,y+10,string(resource_value_suit2));
draw_text(x+28+64*2+18,y+10,string(resource_value_suit3));

draw_set_font(card_small_ft);
draw_set_color(c_gray);
draw_text(x+28+18-24,y+10+24,"Military");
draw_text(x+28+64+18-24,y+10+24,"Economy");
draw_text(x+28+64*2+18-24,y+10+24,"Science");
draw_set_font(display_font);
draw_set_color(c_black);

var setup_phase = false;
if (instance_exists(card_game_controller_obj))
{
	if (card_game_controller_obj.card_game_phase == GAME_PHASE.CHOOSE_RESOURCES)
	{
		setup_phase = true;
		
		//draw up/down triangles to allow player to modify resource values
		draw_sprite(triangle_spr,0,x+28+24,y-12+animation_pip*2);
		draw_sprite(triangle_spr,0,x+28+64+24,y-12+animation_pip*2);
		draw_sprite(triangle_spr,0,x+28+64*2+24,y-12+animation_pip*2);
		
		draw_sprite_ext(triangle_spr,0,x+28+24,y+sprite_height+12-animation_pip*2,1,-1,0,c_white,1);
		draw_sprite_ext(triangle_spr,0,x+28+64+24,y+sprite_height+12-animation_pip*2,1,-1,0,c_white,1);
		draw_sprite_ext(triangle_spr,0,x+28+64*2+24,y+sprite_height+12-animation_pip*2,1,-1,0,c_white,1);
		
		
		//determine if the player has clicked within the bounds of one of the triangle buttons
		if (mouse_check_button_pressed(mb_left))
		{
			var mclick_x = mouse_x;
			var mclick_y = mouse_y;
			
			var detection_circle_size = 30;
			
			if (point_distance(mclick_x,mclick_y,x+28+24,y-12) < detection_circle_size)
			{
				//clicked the UP ARROW above suit1!
				resource_value_suit1 += 1;
				resource_value_suit1 = clamp(resource_value_suit1,0,9);
			}
			else if (point_distance(mclick_x,mclick_y,x+28+64+24,y-12) < detection_circle_size)
			{
				//clicked the UP ARROW above suit2!
				resource_value_suit2 += 1;
				resource_value_suit2 = clamp(resource_value_suit2,0,9);
			}
			else if (point_distance(mclick_x,mclick_y,x+28+64*2+24,y-12) < detection_circle_size)
			{
				//clicked the UP ARROW above suit3!
				resource_value_suit3 += 1;
				resource_value_suit3 = clamp(resource_value_suit3,0,9);
			}
			else if (point_distance(mclick_x,mclick_y,x+28+24,y+sprite_height+12) < detection_circle_size)
			{
				//clicked the DOWN ARROW below suit1!
				resource_value_suit1 -= 1;
				resource_value_suit1 = clamp(resource_value_suit1,0,9);
			}
			else if (point_distance(mclick_x,mclick_y,x+28+64+24,y+sprite_height+12) < detection_circle_size)
			{
				//clicked the DOWN ARROW below suit2!
				resource_value_suit2 -= 1;
				resource_value_suit2 = clamp(resource_value_suit2,0,9);
			}
			else if (point_distance(mclick_x,mclick_y,x+28+64*2+24,y+sprite_height+12) < detection_circle_size)
			{
				//clicked the DOWN ARROW below suit3!
				resource_value_suit3 -= 1;
				resource_value_suit3 = clamp(resource_value_suit3,0,9);
			}
		}
	}
	else
	{
		//display tricks taken counter
		if (trick_flashes_left > 0 && animation_pip == 1)
		{
			draw_set_color(c_white);
		}
		else
		{
			draw_set_color(c_black);
		}
		draw_text(x+28,y+sprite_height,"Tricks Taken: "+string(tricks_taken)+"/3");
	}
}

draw_set_color(c_black);
if (setup_phase == true)
{
	if (type == "player")
	{
		draw_text(x-64,y+10,"player");
	}
	else if (type == "opponent")
	{
		draw_text(x+sprite_width+8,y+10,"opponent");
	}
}
else
{
	if (type == "player")
	{
		draw_text(x+28,y-10-10,"player");
		
		draw_sprite(cheat_sheet_spr,0,x+sprite_width-16,y-20);
		
		for (var i = 1; i <= 2; i++)
		{
			var pip_sub = 0;
			if (card_game_controller_obj.rounds_won_player >= i)
			{
				pip_sub = 1;
			}
			
			draw_sprite(rounds_won_pip_spr, pip_sub, x+8*(i-1)+140, y-6);
		}
	}
	else if (type == "opponent")
	{
		draw_text(x+28,y-10-10,"opponent");
		
		for (var i = 1; i <= 2; i++)
		{
			var pip_sub = 0;
			if (card_game_controller_obj.rounds_won_opponent >= i)
			{
				pip_sub = 1;
			}
			
			draw_sprite(rounds_won_pip_spr, pip_sub, x+8*(i-1)+140, y-6);
		}
	}
	
	
	
}