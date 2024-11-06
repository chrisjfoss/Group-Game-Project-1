// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_map(){
	//init all map points-of-interest that the player must encounter as the game progresses.
	global._map_progress = 0; //which point-of-interest is the player's vehicle at now?
	
	global._map_list = ds_list_create();

	//Station 1
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_station_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Station 1";
	_new_map_element[? "room"] = Station1Room;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 1";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 2";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 2
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_station_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Station 2";
	_new_map_element[? "room"] = Station2Room;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 3";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 4";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 3
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_station_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Station 3";
	_new_map_element[? "room"] = Station3Room;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 5";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 6";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 4
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_station_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Station 4";
	_new_map_element[? "room"] = Station4Room;
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 7";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 8";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Road Event
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_event_spr;
	_new_map_element[? "type"] = "event";
	_new_map_element[? "name"] = "Road Event 9";
	_new_map_element[? "events_possible"] = [ "test_event1", "test_event2", "test_event3", "test_event4", "test_event5", "test_event6", "test_event7", "test_event8", "test_event9", "test_event10" ];
	ds_list_add(global._map_list, _new_map_element);
	
	//Station 5
	var _new_map_element = ds_map_create();
	_new_map_element[? "sprite"] = map_indicator_station_spr;
	_new_map_element[? "type"] = "station";
	_new_map_element[? "name"] = "Station 5";
	_new_map_element[? "room"] = Station5Room;
	ds_list_add(global._map_list, _new_map_element);
}