/// @description Insert description here
// You can write your code in this editor

if (instance_exists(player_walkaround_obj))
{
	player_walkaround_obj.x = player_set_x;
	player_walkaround_obj.y = player_set_y;
	player_walkaround_obj._player_direction = player_set_dir;
	
	with (player_walkaround_obj)
	{
		//set sprite according to direction
		if (_player_direction == DIR.DOWN)
		{
			sprite_index = _player_sprites.down;
		}
		else if (_player_direction == DIR.UP)
		{
			sprite_index = _player_sprites.up;
		}
		else if (_player_direction == DIR.LEFT)
		{
			sprite_index = _player_sprites.left;
		}
		else if (_player_direction == DIR.RIGHT)
		{
			sprite_index = _player_sprites.right;
		}
	}
	
	instance_destroy();
}