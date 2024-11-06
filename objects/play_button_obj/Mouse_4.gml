/// @description Insert description here
// You can write your code in this editor

if (instance_exists(modal_parent_obj))
{
	//don't allow buttons to be pressed if there's a modal blocking them
	exit;
}

if (_room_goto == "textbox")
{
	//quick and dirty, create a textbox instance
	instance_create_depth(0,0,0,speaker_test_obj);
}
else if (_room_goto == "advance")
{
	//quick and dirty, advance the player's vehicle along the map
	with (map_controller_obj)
	{
		advancing = true;
		with (map_button_obj) { instance_destroy(); }
	}
}
else
{
	//reset stats if new game
	if (_room_goto == MapRoom)
	{
		global._map_progress = 0; //reset progress along map for debug purposes.
		global._player_resources.CREDITS = STARTING_VALUES.CREDITS;
		global._player_resources.MILITARY = STARTING_VALUES.MILITARY;
		global._player_resources.CIVILIAN = STARTING_VALUES.CIVILIAN;
		global._player_resources.ENGINEERING = STARTING_VALUES.ENGINEERING;
	}
	
	room_goto(_room_goto);
}