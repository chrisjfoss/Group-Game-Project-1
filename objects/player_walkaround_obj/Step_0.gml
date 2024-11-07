/// @description Insert description here
// You can write your code in this editor

var _moving = false;

depth = -y;

// Pause input if modal_parent_obj exists
if (!instance_exists(modal_parent_obj))
{
	if (check_left())
	{
		//move left
		_moving = true;
	
		sprite_index = _player_sprites.left;
		image_speed = _player_walk_image_speed;
		
		_player_direction = DIR.LEFT;
	
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
		
		_player_direction = DIR.RIGHT;
	
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
	
		_player_direction = DIR.UP;
		
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
		
		_player_direction = DIR.DOWN;
	
		if (!place_meeting(x,y+_player_walk_speed,blocker_parent_obj))
		{
			y += _player_walk_speed;
		}
	}	
	
	
	// Look for Instances of NPC
	var _grab_dist = 16; 
	var _half_player_size = sprite_get_height(sprite_index) / 2; // This assumes player will always be square. which is probably wrong. 
	
	var _hitbox_offset_x = 0;
	var _hitbox_offset_y = 0;
	if (_player_direction == DIR.DOWN) { _hitbox_offset_y += _grab_dist; }
	if (_player_direction == DIR.UP) { _hitbox_offset_y -= _grab_dist; }
	if (_player_direction == DIR.LEFT) { _hitbox_offset_x -= _grab_dist; }
	if (_player_direction == DIR.RIGHT) { _hitbox_offset_x += _grab_dist; }
	
	var _npc_inst = instance_place(x+_hitbox_offset_x,y+_hitbox_offset_y,npc_parent_obj);
	
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