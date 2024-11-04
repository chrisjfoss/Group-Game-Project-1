/// @description Insert description here
// You can write your code in this editor

var _moving = false;

if (!instance_exists(modal_parent_obj))
{
	if (check_left())
	{
		//move left
		_moving = true;
	
		sprite_index = _player_sprites.left;
		image_speed = _player_walk_image_speed;
	
		if (!place_meeting(x-_player_walk_speed,y,blocker_parent_obj))
		{
			x -= _player_walk_speed;
		}
	}
	else if (check_right())
	{
		//move right
		_moving = true;
	
		sprite_index = _player_sprites.right;
		image_speed = _player_walk_image_speed;
	
		if (!place_meeting(x+_player_walk_speed,y,blocker_parent_obj))
		{
			x += _player_walk_speed;
		}
	}

	if (check_up())
	{
		//move up
		_moving = true;
	
		sprite_index = _player_sprites.up;
		image_speed = _player_walk_image_speed;
	
		if (!place_meeting(x,y-_player_walk_speed,blocker_parent_obj))
		{
			y -= _player_walk_speed;
		}
	}
	else if (check_down())
	{
		//move down
		_moving = true;
	
		sprite_index = _player_sprites.down;
		image_speed = _player_walk_image_speed;
	
		if (!place_meeting(x,y+_player_walk_speed,blocker_parent_obj))
		{
			y += _player_walk_speed;
		}
	}
}

if (!_moving)
{
	//not moving! Make the sprite static (not walking.)
	image_speed = 0;
	image_index = 0.99; //juuuust below 1, that way when the walking begins, the second frame shows freaky fast
}