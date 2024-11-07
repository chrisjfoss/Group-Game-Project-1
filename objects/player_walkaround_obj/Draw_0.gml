/// @desc DEBUGGING VISUALS


// Feel Free to delete this entire event when it is no longer needed


draw_self(); 

if keyboard_check_pressed(ord("G")) {show_hitbox = !show_hitbox;}

if (instance_exists(last_npc) && last_npc != noone && !instance_exists(modal_parent_obj))
{
	draw_sprite_ext(triangle_spr, 0, last_npc.x, last_npc.y-last_npc.sprite_height+sin(last_npc.sin_c)*2 - 8,0.5,-0.5,0,c_white,1.0);
}

//if show_hitbox {
//    var _grab_dist = 16; 
//    var _half_player_size = sprite_get_height(sprite_index) / 2; // Assumes player is a square or close in width and height

//    // Calculate the x and y positions based on direction
//    var _hitbox_x = x + lengthdir_x(_half_player_size, direction);
//    var _hitbox_y = (y - _half_player_size) + lengthdir_y(_half_player_size, direction);

//    // Adjust x for specific directions
//    if (direction == 0 || direction == 180) { 
//        // Facing right or left
//        if (direction == 180) _hitbox_x -= _grab_dist;  // Offset for left
//    } 
//    else if (direction == 90 || direction == 270) {  
//        // Facing up or down
//        _hitbox_x = x - (_grab_dist / 2);  // Center on player's x position
//    }
    
//    // Draw the rectangle centered at calculated position
//    draw_rectangle(_hitbox_x, _hitbox_y, _hitbox_x + _grab_dist, _hitbox_y + _grab_dist, false); 
//}


if show_hitbox {
	var _grab_dist = 16; 
	var _half_player_size = sprite_get_height(sprite_index) / 2; // This assumes player will always be square. which is probably wrong. 
	
	// These values assume the player origin will remain bottom center
	
	var _hitbox_x = x + lengthdir_x(_half_player_size, direction);
	
	// This is literally all I can think to do to get the hitbox centered
	if (direction == 180) {_hitbox_x -= _grab_dist;} // ofset for the fact that the rectangle is drawn at top left.
	if (direction == 90 || direction == 270) {  
		// Facing up or down
		_hitbox_x = x - (_grab_dist / 2);  // Center on player's x position
	}
	
	// We subtract half player size to set y to be center of player 
	var _hitbox_y = (y - _half_player_size) + lengthdir_y(_half_player_size, direction); 
	
	draw_rectangle(_hitbox_x, _hitbox_y, _hitbox_x + _grab_dist, _hitbox_y + _grab_dist, false); 
}
