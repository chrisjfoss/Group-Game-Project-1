/// @description Insert description here
// You can write your code in this editor

animation_pip += 1;
if (animation_pip >= 2)
{
	animation_pip = 0;
}

trick_flashes_left -= 1;
if (trick_flashes_left < 0) { trick_flashes_left = 0; }

alarm[0] = 20;