// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_random_events(){
	
	global._random_events = {
		"test_event1": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": ["+1 Civilian", global._player_resources.CIVILIAN, 1],
			"choice2": ["-1 Military", global._player_resources.MILITARY, -1],
			"choice3": ["+2 Engineering", global._player_resources.ENGINEERING, 2],
		},
		
		"test_event2": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": ["+50 Credits", global._player_resources.CREDITS, 50],
			"choice2": ["-10 Credits", global._player_resources.CREDITS, -10],
			"choice3": ["Do Nothing", 0, 0],
		}
	}
}