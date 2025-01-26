/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(global._map_advance == true) {
	dlog[0] = ["Would you like to leave the station?",[
				"Yes, let's go!",
				function() {
					room_goto(MapRoom);
				},
				"No, I want to look around a bit more.^0",
				dlog_goto
			  ]];
} else {
	state = NPC_STATE.DISABLED;
}