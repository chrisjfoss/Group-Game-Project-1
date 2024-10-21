// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function award_trick(participant_string){
	if (participant_string == "opponent")
	{
		with (resource_indicator_obj)
		{
			if (type == "opponent")
			{
				animation_pip = 1;
				trick_flashes_left = 5;
				alarm[0] = 20;
			
				tricks_taken++;
				return true;
			}
		}
	}
	else if (participant_string == "player")
	{
		with (resource_indicator_obj)
		{
			if (type == "player")
			{
				animation_pip = 1;
				trick_flashes_left = 5;
				alarm[0] = 20;
				
				tricks_taken++;
				return true;
			}
		}
	}
	
	return false;
}