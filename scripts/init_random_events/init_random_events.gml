// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_random_events() {
	
	global._random_events = {
		"event_default": {
			"event_text": "DEBUG: Do not remove this event. This is the default event that shows when no events are available to pick.",
			"choice1": {
				"choice_text": "+1 Economy", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "DEBUG: Nothing happened. You continue on your way."
			}
		},
		
		"test_event1": {
			"event_text": "You have come across a randomized event. Choose an outcome that you would like to occur for testing purposes.",
			"choice1": {
				"choice_text": "+1 Economy", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "You gained some economy followers! They attached a new car to your train."
			},
			"choice2": {
				"choice_text": "-1 Military", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_post_text": "You lost some soldiers! They abandoned your train."
			},
			"choice3": {
				"choice_text": "+2 Science", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 2,
				"choice_post_text": "You gained lots of brainiacs! They attached new cars to your train."
			}
		},
		
		"test_event2": {
			"event_text": "Traders ask if you want to buy or sell merchandise.",
			"choice1": {
				"choice_text": "+2 Economy, -10 Batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 2,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": -10,
				"choice_post_text": "You trade for their goods, at a price."
			},
			"choice2": {
				"choice_text": "+1 Military, -5 Batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": -5,
				"choice_post_text": "You trade for their goods, at a price."
			},
			"choice3": {
				"choice_text": "+2 Science, -10 Batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 2,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": -10,
				"choice_post_text": "You trade for their goods, at a price."
			},
			"choice4": {
				"choice_text": "No thank you.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You dismiss the traders and go along on your merry way without making a purchase."
			}
		},
		
		"test_event3": {
			"event_text": "You see a beautiful nebula in the distance. It's a sight to behold.",
			"choice1": {
				"choice_text": "Stop and behold the colors", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "You take in the view. While you do, some random people join your train to marvel at the universe by your side."
			},
			"choice2": {
				"choice_text": "No! Full steam ahead!", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "There's no stopping you! You plow on ahead, further into the unknown."
			}
		},
		
		"test_event4": {
			"event_text": "You encounter an abandoned research station with a valuable fuel cell still clinging to the racks inside.",
			"choice1": {
				"choice_text": "Tear it apart for its secrets!", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 2,
				"choice_post_text": "You disassemble the fuel cell, careful to learn all it has to tell."
			},
			"choice2": {
				"choice_text": "Sell it on the black market!", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 100,
				"choice_post_text": "Through dishonest means, you fence the fuel cell to the highest bidder."
			},
			"choice3": {
				"choice_text": "Repurpose the fuel cell into a nuclear bomb", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 2,
				"choice_post_text": "You've rigged the fuel cell to explode at the most minor of inconveniences."
			}
		},
		
		"test_event5": {
			"event_text": "There's signs of a nearby struggle. What should you do?",
			"choice1": {
				"choice_text": "Investigate nearby bushes", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_post_text": "It's an ambush! You are jumped by bandits, and some of your passengers die in the firefight."
			},
			"choice2": {
				"choice_text": "Loot the scene", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": 25,
				"choice_post_text": "You find a laser torch with its batteries practically unused, along with some money left in the pocket of a corpse. Nice!"
			},
			"choice3": {
				"choice_text": "Get out of here quick!", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You continue on your way, ignoring the obvious danger all around you. Fortunately, in your haste, you avoid further delays."
			}
		},
		
		"test_event6": {
			"event_text": "A massive space-slug blocks your path!",
			"choice1": {
				"choice_text": "Blast it to pieces!",
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "The thing is huge, and you waste an entire roll of ammo trying to bring it down! However, its chunks are a delicacy in some stations, and some nearby peasants come out to feast."
			},
			"choice2": {
				"choice_text": "Honor the slug with a ritual dance", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 35,
				"choice_post_text": "In some cultures, the space-slug is revered as a diety. You pay your respects, and wouldn't you know it, soon your luck improves. You win some money at a low-stakes poker table."
			},
			"choice3": {
				"choice_text": "Sketch the space-slug in your field notes", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "Your beautiful artwork of the space-slug is sure to assist many zoologists in the future."
			}
		},
		
		"test_event7": {
			"event_text": "Your train breaks down in the middle of a sparsely-populated valley. What should you do?",
			"choice1": {
				"choice_text": "Everyone, get out and push!", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": 1,
				"choice_post_text": "Some of your followers die off in the extreme labor to move the train, but on the plus side, the few survivors have found a new level of discipline within their souls."
			},
			"choice2": {
				"choice_text": "Spend the whole day to repair", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "You find a dusty owners' manual in the glovebox. In its pages, you learn something new about your incredible vehicle."
			},
			"choice3": {
				"choice_text": "Pay off the locals for new parts", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "Repairs don't come cheap, but lucky for you, the nearby hardware store has exactly what you need to get going again. The proprieter is sympathetic and joins your cause."
			},
			"choice4": {
				"choice_text": "Reboot the whole system", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "The train takes many agonizing hours to start up again, but when it restarts, it runs perfectly fine. What was that all about?"
			}
		},
		
		"test_event8": {
			"event_text": "Oh no! Another train is heading down the tracks in the opposite direction! What should you do?",
			"choice1": {
				"choice_text": "Fire a warning shot", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_post_text": "You fire a laser bolt, making your presence known. They divert their course. Your reputation as one not-to-be-messed-with increases, and some local thugs join up."
			},
			"choice2": {
				"choice_text": "Speed up!", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "You stoke the engines to hither-to-unforeseen levels. Your engineers discover new ways to improve the efficiency of your train. In the madness, the enemy train diverts."
			},
			"choice3": {
				"choice_text": "Run off the tracks to avoid a collision", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "'Sorry!' yells the other conductor. 'I thought this line was disused! Here, take my nephew as an apology. He's a good lad, he'll help you get back on track.'"
			},
			"choice4": {
				"choice_text": "Stay the course", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": -1,
				"choice_outcome3_type": "SCIENCE",
				"choice_outcome3_value": -1,
				"choice_post_text": "KA-BOOM! A terrible crash rocks both vehicles! In the explosion, many of your devout followers perish."
			}
		},
		
		"test_event9": {
			"event_text": "You encounter a fanatical preacher, yelling some nonsense about the end of the universe and requesting donations.",
			"choice1": {
				"choice_text": "Stay and listen to the rant", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 10,
				"choice_post_text": "You stick around. Many of your people are bored and displeased. Some abandon you. Still, you do learn some interesting lessons you could apply to business."
			},
			"choice2": {
				"choice_text": "Make a small contribution", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "The preacher tips his hat. 'The universe will bless you!' he cries. Your mind suddenly fills with strange geometric shapes. Strangely, you can now smell copper from ten miles away."
			},
			"choice3": {
				"choice_text": "Run him over", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 2,
				"choice_post_text": "You demolish the preacher with your train. This proves quite popular with the local garrison of soldiers. 'We've wanted someone to shut that guy up for years!' they cry. They join you en masse."
			}
		},
		
		"test_event10": {
			"event_text": "A gentle stream bubbles nearby.",
			"choice1": {
				"choice_text": "Take a short rest by its banks", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You stop and smell the roses, sitting on the tranquil banks of the stream. You see a large butterfly-like creature alight on a branch. You feel rejuvenated."
			},
			"choice2": {
				"choice_text": "Refill your water tanks", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 2,
				"choice_post_text": "Freshly resupplied, your train is now a tempting place to be for those who live in these inhospitable lands. You've gained some passengers."
			}
		}
		
	}
}