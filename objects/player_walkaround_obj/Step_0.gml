/// @description Insert description here
// You can write your code in this editor

var _moving = false;

// Pause input if modal_parent_obj exists
if (!instance_exists(modal_parent_obj))
{
	if (check_left())
	{
		//move left
		_moving = true;
	
		sprite_index = _player_sprites.left;
		image_speed = _player_walk_image_speed;
		direction = 180; 
	
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
		direction = 0; 
	
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
		direction = 90;
	
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
		direction = 270; 
	
		if (!place_meeting(x,y+_player_walk_speed,blocker_parent_obj))
		{
			y += _player_walk_speed;
		}
	}	
	
	
	// Look for Instances of NPC
	var _grab_dist = 16; 
	var _half_player_size = sprite_get_height(sprite_index) / 2; // This assumes player will always be square. which is probably wrong. 
	
	// These values assume the player origin will remain bottom center
	
	var _hitbox_x = x + lengthdir_x(_half_player_size, direction);
	
	// This is literally all I can think to do to get the hitbox centered. 
	if (direction == 180) {_hitbox_x -= _grab_dist;} // ofset for the fact that the rectangle is drawn at top left.
	if (direction == 90 || direction == 270) {  
		// Facing up or down
		_hitbox_x = x - (_grab_dist / 2);  // Center on player's x position
	}
	
	// We subtract half player size to set y to be center of player 
	var _hitbox_y = (y - _half_player_size) + lengthdir_y(_half_player_size, direction); 
	
	var _npc_inst = collision_rectangle(_hitbox_x, _hitbox_y, _hitbox_x + _grab_dist, _hitbox_y + _grab_dist, npc_parent_obj, true, true);
	
	// If you hit a new instance, deactivate the last one and activate the new one
    if _npc_inst != noone {
        if (last_npc != noone && last_npc != _npc_inst) {
            // Make sure the last instance is not the same as the current hit
            if (instance_exists(last_npc)) {
                with (last_npc) {
					state = return_state; 
				}
            }
        }
        // Activate the instance so it can talk to you
		_npc_inst.state = NPC_STATE.ACTIVE;
		last_npc = _npc_inst;

    } 
    // If you're facing nothing, deactivate the last instance
    else if (last_npc != noone) {
        // Deactivate the last object you were using as soon as hitbox registers no hit
        if (instance_exists(last_npc)) {
            with (last_npc) {
				state = return_state; 
			}
        }
        last_npc = noone; // Reset last_inst_active since there's nothing currently hit
    }
}

if (!_moving)
{
	//not moving! Make the sprite static (not walking.)
	image_speed = 0;
	image_index = 0.99; //juuuust below 1, that way when the walking begins, the second frame shows freaky fast
}