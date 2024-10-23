// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function award_trick(_participant_string){
	with(resource_indicator_obj) {
		if(_participant_string == type) {
			animation_pip = 1;
			trick_flashes_left = 5;
			alarm[0] = 20;	

			tricks_taken++;
			return true
		}
	}
	return false;
}