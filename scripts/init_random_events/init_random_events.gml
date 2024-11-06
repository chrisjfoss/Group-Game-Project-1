// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_random_events(){
	
	global._random_events = {
		"event_default": {
			"event_text": "DEBUG: Do not remove this event. This is the default event that shows when no events are available to pick.",
			"choice1": [
				"Continue", 
				0, 
				0,
				"DEBUG: Nothing happened. You continue on your way."
			]
		},
		
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
				"+2 Science",
				"SCIENCE",
				2,
				"You gained a lot of engineers! They attached new cars to your train. +2 Science."
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
		},
		
		"test_event3": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+2 Civilian", 
				"CIVILIAN", 
				2,
				"You gained some civilian followers! They attached new cars to your train. +2 Civilian."
			],
			"choice2": [
				"+2 Military",
				"MILITARY",
				2,
				"You gained a lot of soldiers! They attached new cars to your train. +2 Military."
			],
			"choice3": [
				"+2 Science",
				"SCIENCE",
				2,
				"You gained a lot of engineers! They attached new cars to your train. +2 Science."
			],
		},
		
		"test_event4": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+1 Civilian", 
				"CIVILIAN", 
				1,
				"You gained a civilian follower! They attached a new car to your train. +1 Civilian."
			],
			"choice2": [
				"+1 Military",
				"MILITARY",
				1,
				"You gained a soldier! They attached a new car to your train. +1 Military."
			],
			"choice3": [
				"+1 Science",
				"SCIENCE",
				1,
				"You gained an engineer! They attached a new car to your train. +1 Science."
			],
		},
		
		"test_event5": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"-1 Civilian", 
				"CIVILIAN", 
				-1,
				"You lost a civilian follower! They removed a car from your train. -1 Civilian."
			],
			"choice2": [
				"-1 Military",
				"MILITARY",
				-1,
				"You lost a soldier! They removed a car from your train. -1 Military."
			],
			"choice3": [
				"-1 Science",
				"SCIENCE",
				-1,
				"You lost an engineer! They removed a car from your train. -1 Science."
			],
		},
		
		"test_event6": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+3 Science", 
				"SCIENCE", 
				3,
				"You gained tons of scientists! They attached new cars to your train. +3 Science."
			],
			"choice2": [
				"Do Nothing",
				0,
				0,
				"Nothing of interest happened."
			]
		},
		
		"test_event7": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+2 Civilian", 
				"CIVILIAN", 
				2,
				"You gained lots of civilians! They attached new cars to your train. +2 Civilian."
			],
			"choice2": [
				"Do Nothing",
				0,
				0,
				"Nothing of interest happened."
			]
		},
		
		"test_event8": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+1 Military", 
				"MILITARY", 
				1,
				"You gained a military officer! They attached a new car to your train. +1 Military."
			],
			"choice2": [
				"Do Nothing",
				0,
				0,
				"Nothing of interest happened."
			]
		},
		
		"test_event9": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"+1 Military", 
				"MILITARY", 
				1,
				"You gained a military officer! They attached a new car to your train. +1 Military."
			],
			"choice2": [
				"-1 Military", 
				"MILITARY", 
				-1,
				"You lost a military officer! They removed a car from your train. -1 Military."
			],
			"choice3": [
				"+1 Science", 
				"SCIENCE", 
				1,
				"You gained a scientist! They attached a new car to your train. +1 Science."
			],
			"choice4": [
				"+2 Science", 
				"SCIENCE", 
				2,
				"You gained a team of scientists! They attached new cars to your train. +2 Science."
			]
		},
		
		"test_event10": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": [
				"-2 Military", 
				"MILITARY", 
				-2,
				"You lost a terrible battle. -2 Military."
			],
			"choice2": [
				"-2 Civilian", 
				"CIVILIAN", 
				-2,
				"A tragedy occurred. -2 Civilian."
			],
			"choice3": [
				"-2 Science", 
				"SCIENCE", 
				-2,
				"A laboratory exploded. -2 Science."
			],
			"choice4": [
				"+5 Credits", 
				"CREDITS", 
				5,
				"You found a nickel in the grocery store parking lot. +5 Credits."
			]
		}
		
	}
}