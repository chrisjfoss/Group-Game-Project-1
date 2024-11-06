// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_random_events(){
	
	global._random_events = {
		"test_event1": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+1 Civilian", 
				"CIVILIAN", 
				1,
				"You gained some civilian followers! They attached a new car to your train. +1 Civilian."
			],
			"choice2": [
				"-1 Military",
				"MILITARY",
				-1,
				"You lost some military followers! They abandoned your train. -1 Military."
			],
			"choice3": [
				"+2 Engineering",
				"ENGINEERING",
				2,
				"You gained a lot of engineers! They attached new cars to your train. +2 Engineering."
			],
		},
		
		"test_event2": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+50 Credits", 
				"CREDITS", 
				50,
				"You found some money along the road! +50 Credits."
			],
			"choice2": [
				"-10 Credits",
				"CREDITS",
				-10,
				"You lost some money along the road! -10 Credits."
			],
			"choice3": [
				"Do Nothing",
				0,
				0,
				"Nothing of interest happened."
			],
		}
	}
}