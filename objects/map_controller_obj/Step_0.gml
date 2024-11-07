/// @description Insert description here
// You can write your code in this editor

//animate the sin wave for the player progress counter
sin_c += (2*pi / (60*2));
if (sin_c > 2*pi) { sin_c -= 2*pi; }

if (instance_exists(modal_parent_obj)) { exit; }

if (global._map_advance)
{
	global._map_advance = false;
	advancing = true;
	
	with (map_button_obj) { instance_destroy(); }
}

if (advancing)
{
	if (global._map_progress >= ds_list_size(global._map_list)-1)
	{
		//cannot progress any further! Do not allow movement.
		advancing = false;
		vehicle_offset = 0;
		
		//TODO: Game Over/epilogue sequence here.
	}
	else
	{
		vehicle_offset += advance_speed;
	
		var _max_x = global._advance_max;
		if (vehicle_offset >= _max_x)
		{
			advancing = false;
			vehicle_offset = 0;

			global._map_progress += 1; //player is further along in the game!
			
			spawn_map_button();
		}
	}
}