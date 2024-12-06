// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_map(){
	//init all map points-of-interest that the player must encounter as the game progresses.
	global._map_progress = 0; //which point-of-interest is the player's vehicle at now?
	
	global._map_list = ds_list_create();

	//Station 1
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_stellar_junction_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Stellar Junction";
	_new_map_element[? "room"] = StellarJunctionRoom;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Dusty Crossroads";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Baleful Woods";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 2
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_emerald_lake_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Emerald Lake";
	_new_map_element[? "room"] = EmeraldLakeRoom;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Cratered Valley";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Bloodied Field";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 3
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_fort_endurance_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Fort Endurance";
	_new_map_element[? "room"] = FortEnduranceRoom;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "The Drop-off";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Eerie Swamp";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 4
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_grand_cuckoo_station_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Grand Cuckoo Station";
	_new_map_element[? "room"] = GrandCuckooStationRoom;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Cog Mines";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Abandoned Farms";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "The Dread Plains";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 5
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_the_nexus_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "The Nexus";
	_new_map_element[? "room"] = TheNexusRoom;
	ds_list_add(global._map_list, _new_map_element);
}