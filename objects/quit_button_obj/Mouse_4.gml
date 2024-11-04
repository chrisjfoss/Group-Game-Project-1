/// @description Insert description here
// You can write your code in this editor

if (instance_exists(modal_parent_obj))
{
	//don't allow buttons to be pressed if there's a modal blocking them
	exit;
}

show_debug_message("Ending game")
game_end();
