/// @description Insert description here
// You can write your code in this editor
event_inherited();

_view_map_text = "Would you like to view the map?";

if(global._map_advance == true) {
	_view_map_text= "Would you like to leave the station?";
}


dlog[0] = [_view_map_text,[
	"Yes!",
	function() {
		// Uncomment to use the train to advance to the next map without fighting the boss
		// global._map_advance = true;
		room_goto(MapRoom);
	},
	"No.",
	dlog_end
]];
