/// @description Insert description here
// You can write your code in this editor

advancing = false;

sin_c = 0;

vehicle_offset = 0; //how much in the x-direction is the player's vehicle "advanced" between the current and next point of interest?
advance_speed = 0.33; //how quickly should the player's vehicle move along the map while advancing?

if (!global._map_advance)
{
	spawn_map_button();
}