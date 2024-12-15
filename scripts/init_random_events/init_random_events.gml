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
				"choice_text": "Repurpose the fuel cell into a bomb", 
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
		},
		
		"event_batteries1": {
			"event_text": "A strange rotund man approaches asking to see your batteries",
			"choice1": {
				"choice_text": "Tell the man to leave", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "The Man leaves as mysteriously as he arrived."
			},
			"choice2": {
				"choice_text": "Give 5 batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_post_text": "The man eats the battieries and walks away."
			},
			"choice3": {
				"choice_text": "Give 10 batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 2,
				"choice_post_text": "The man eats the battieries, and then joins you. Turns out he knows a thing or two about science."
			}
		},
		
		"event_batteries2": {
			"event_text": "A strange rotund man approaches asking to see your batteries",
			"choice1": {
				"choice_text": "Tell the man to leave", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "The Man leaves as mysteriously as he arrived."
			},
			"choice2": {
				"choice_text": "Give 5 batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "The man licks your batteries, a marvel of science!"
			},
			"choice3": {
				"choice_text": "Give 10 batteries", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": -1,
				"choice_post_text": "The man eats the battieries and explodes!"
			}
		},
		
		"event_cactus": {
			"event_text": "A large patch of purple candle-cactus has grown over the train tracks.",
			"choice1": {
				"choice_text": "Cut down the cactus.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "It doesn't take long for you and your passengers to clear away the hazard from the tracks."
			},
			"choice2": {
				"choice_text": "Pay wanderers to move it.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "The wanderers, a bit too cheerfully, remove the hazard. They then ask to link their horse-drawn car to your train. \"It's mighty dangerous to travel off the railroad. We'd be happy to ride with you to the end of the line.\""
			}
		},
		
		"event_corpses": {
			"event_text": "The bones of dead animals and people are scattered along the tracks. It's an eerie sight that sends a chill down your spine.",
			"choice1": {
				"choice_text": "Move forward cautiously.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "An unsettling silence drifts through the long stretches of barren earth and bones. Thankfully, whatever caused this ghastly scene has left your train alone."
			},
			"choice2": {
				"choice_text": "Double speed through this strech!", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "Your train launches forward at blistering speed due to a new scientific breakthrough!"
			}
		},
		
		"event_abandoned_train": {
			"event_text": "A seemingly abandoned train car has toppled to the ground nearby.",
			"choice1": {
				"choice_text": "Pass without stopping.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "A rough looking group of people leap from the abandoned train car, but your train is too quick and they are left in the dust."
			},
			"choice2": {
				"choice_text": "Charge up weapons and investigate.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": 1,
				"choice_post_text": "With weapons loaded, you and your passengers move forward. A small family in tattered clothes leap from the abanded car and throw their empty hands up. \"Our train was overwhelemed by bandits! We've barely survived two weeks out here. Our food is gone, but we can offer some weapons in exchange for a trip to the end of the line.\""
			}
		},
		
		"event_grass": {
			"event_text": "A rare patch of green grass and flowering trees comes into sight.",
			"choice1": {
				"choice_text": "Keep the train moving.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You and your passengers enjoy the scenery, but your destination lies at the end of the line. There's no time to stop and smell the flowers."
			},
			"choice2": {
				"choice_text": "Stop the train and strech your legs.", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "You take in a deep breath and enjoy this small patch of heaven for a few minutes. When you get back on the train, you find a few new faces that you've never seen before."
			},
			"choice3": {
				"choice_text": "Stop and harvest anything of value.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 15,
				"choice_post_text": "You find the trees ripe with fruit and the bushes laden with berries! You are able to sell them to a traveling merchant."
			}
		},
		
		"event_abyss": {
			"event_text": "A thick veil of black nothingness looms before you, peircing through the sky and land. The void.",
			"choice1": {
				"choice_text": "Push the big red button!", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_post_text": "Upon pressing the button, a humming noise emanates throughout the entire train. The foward lights turn on as you pass through the void curtain. A sort of space bubble warps around your vehicle, as if traveling through a tunnel, and you arrive out the other side unharmed."
			},
			"choice2": {
				"choice_text": "Don't push the big red button.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -25,
				"choice_post_text": "As your train passes into the inky darkness of the void, you feel the entire vehicle rattle and strain against the warping darkness. Somehow, you make it through, but your power reserves have been drained heavily."
			}
		},
		
		"event_distortion": {
			"event_text": "In a flash of light, reality seems to crack and bend around you. A rare time distortion ripples out and splits the tracks into three paths to choose from.",
			"choice1": {
				"choice_text": "Take the right path.", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "You quickly steer the train to the path on your right. A sudden and dizzying rush hits your head. When you come back to your senses, you feel like something has changed but none of your passengers notice anything different."
			},
			"choice2": {
				"choice_text": "Take the middle path.", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "You quickly steer the train to the path in the middle. A sudden and dizzying rush hits your head. When you come back to your senses, you feel like something has changed but none of your passengers notice anything different."
			},
			"choice3": {
				"choice_text": "Take the left path.", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": 1,
				"choice_post_text": "You quickly steer the train to the path on your left. A sudden and dizzying rush hits your head. When you come back to your senses, you feel like something has changed but none of your passengers notice anything different."
			},
			"choice4": {
				"choice_text": "Slam the emergency brakes.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_post_text": "Not wanting to get caught in a time distortion, you pull the emergency brakes. A terrible screeching noise echoes as everyone is launched off their seats. It burns some power, but you manage to wait out the time distortion and then continue on your way."
			}
		},
		
		"event_stopped_train": {
			"event_text": "Another train is sitting still on the tracks up ahead. They are stopped at a broken bridge which leads across a swift flowing, emerald river. A portly conductor shambles over to you, \"We can't move until the bridge is fixed.\"",
			"choice1": {
				"choice_text": "Repair the bridge by yourself.", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 15,
				"choice_post_text": "After a spending a good deal of time and resources you manage to piece together a makeshift railway over the emerald waters. \"Much thanks,\" the portly conductor nods. \"Take this, for your troubles.\""
			},
			"choice2": {
				"choice_text": "Ask for help from other train.", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "\"We'll see what help we can provide,\" the portly conductor mumbles grumpily. Working with the passengers on both trains, you manage to create a path over the emerald waters. During the exhausting endevour, it seems a group of ragged workers decided to join your train instead."
			},
			"choice3": {
				"choice_text": "Pay for assistance.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 2,
				"choice_post_text": "\"A man of wealth I see,\" the portly conductor smiles. He barks some orders to his passengers and offers materials from his storage cars. With both trains working together, you make quick work of the bridge. Afterwards, some of the workers beg you to take them in instead of returning to the portly conductor."
			}
		},
		
		"event_engine_failure": {
			"event_text": "A powerful hiss of steam erupts from your engine as the train grinds to a halt on the tracks.",
			"choice1": {
				"choice_text": "Re-wire the electrical components.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "It takes a good deal of time, but you are able to find where the electricity is shorting out. After re-wiring, the engine is back up and running."
			},
			"choice2": {
				"choice_text": "Replace the mechanical components.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "You scrounge around for any odds and ends that look moderately useful. Not only do you find the parts to repair the engine, but you also come across a few lost batteries!"
			},
			"choice3": {
				"choice_text": "Ask your passengers for assistance.", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "You explain the situation to your passengers. Some grumble and complain, but others roll up their sleeves and get to work. It turns out a few of them have a hidden talent for mechanical engineering."
			}
		},
		
		"event_cargo": {
			"event_text": "A passenger spots a derailed cargo car behind a boulder up ahead.",
			"choice1": {
				"choice_text": "Send the passenger to investigate.", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "Your passenger clearly has good eyes and seems excited to explore. They come back after some time with two large portaits of train conductors under both arms. \"This is all that was left on the cargo car.\""
			},
			"choice2": {
				"choice_text": "Investigate by yourself.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "Curiosity gets the better of you and you decide to explore the cargo car for yourself. Upon arrival, the cargo car has clearly been abandoned and looted already. But you do happen to find a box of batteries hidden in the shadows."
			},
			"choice3": {
				"choice_text": "Keep moving.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "This could easily be an ambush by bandits and you decide its not worth the risk to stop and look."
			}
		},
		
		"event_hovercart": {
			"event_text": "A ramshackle hovercart filled with people is being chased by ravenous animals!",
			"choice1": {
				"choice_text": "Create a loud noise.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "You blare your train's horn, deafening those aboard momentarily. The panicked animals quickly flee. The hovercart also flees from your train. However, in the process, they dropped a battery pack behind that you are quick to recover."
			},
			"choice2": {
				"choice_text": "Slow down and yell to the hovercart to get aboard.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You gently squeeze the brakes, waving and shouting to those on the hovercart to come to your train for safety. Either they can't hear you, or they wilfully choose to ignore your invitation as the hovercart zooms farther away from your train."
			},
			"choice3": {
				"choice_text": "Ask your passengers to save the hovercart.", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_post_text": "Much to your surprise, one of your passengers pulls a laser gun out of their coat! With a steady and practiced aim, the wild animals are driven away without you even slowing the train down. The hovercart, seeing your weapons, flees. But you've found a valuable ally among your passengers."
			}
		},
		
		"event_pond": {
			"event_text": "Your train comes upon a large emerald pond and you decide to stop and stretch your legs. Every tree and bush nearby is twisted into unnatural shapes. A shiver runs down your spine as you spot a large shadow moving in the water below.",
			"choice1": {
				"choice_text": "Grab a rod from your supplies and fish.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "You cast your line and wait for a bite. You notice the mysterious shadow swimming around the deeper parts of the pond and soon fish bones wash ashore near you. You don't manage to reel in any fish, but you accidentally hook a waterlogged package with some usuable batteries."
			},
			"choice2": {
				"choice_text": "Investigate the misshapen trees and plants.", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "You study the peculiar plantlife near the pond. One of the trees has sprouted a wrinkled fruit. You take a bite and find that it is surprising sweet. Your curiosity has paid off!"
			},
			"choice3": {
				"choice_text": "Attempt to photograph the mysterious shape.", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_post_text": "You spend a lengthy afternoon attempting to catch a glimpse of the creature in the pond. Oddly, it keeps disapearing from your sight and you never see it breach the water. But when you get back to your train, one of your cars is missing and a puddle of water has taken its place."
			}
		},
		
		"event_travelers": {
			"event_text": "You come across a group of desperate travelers, crawling on their bellies along the train tracks. They are extremely emacitated and barely alive.",
			"choice1": {
				"choice_text": "Offer food and lodging.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 2,
				"choice_post_text": "The travelers don't say much, but they thank you profusely for taking them in. Afterwards, they offer to help in any way they can to ensure your train reaches the end of the line."
			},
			"choice2": {
				"choice_text": "Ask the travelers their story.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "\"We are fleeing from Emerald Lake Station,\" croaks an elderly man hoarsely. \"We learned things that are better forgotten...\" His words trail off and you realize that he and his group have stopped moving. Their secrets will die with them. The travelers only had a few valuables on them, which you take with you."
			},
			"choice3": {
				"choice_text": "Ignore the travelers, they might be bandits.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You speed past the crawling figures and leave them behind in the dust."
			}
		},
		
		"event_hills": {
			"event_text": "You pass between a set of hills that are riddled with blaster marks and carbon burns. Large swathes of earth have been obliterated from both hills. Although there is currently no sign of combat, you're not sure how safe you are.",
			"choice1": {
				"choice_text": "Push the engines hard!", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_post_text": "You push your engines for all they're worth and barrel past the mountains. However, the intense noise your train makes rattles the battleground and both sides fire at your train!"
			},
			"choice2": {
				"choice_text": "Stop and see what you can loot.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": -1,
				"choice_post_text": "As you begin to loot the quiet battleground, you realize that some of the discarded blaster packs still have usuable batteries! However, you overstay your welcome as a plasma cannon fires into your train!"
			},
			"choice3": {
				"choice_text": "Gather your fighters and investigate.", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "You gather a small posse of armed men and women and investigate the battlegrounds. You come across a battered train car carrying medical equipment. There is a woman inside, unconsious and bleeding, but still alive! Soon a volley of laser fire erupts from one hill to the other. With your armed escort, you manage to connect the medical car to your train."
			}
		},
		
		"event_barricade": {
			"event_text": "A wooden barricade has been constructed over the tracks ahead. A milita of birdmen in military garb approach your train. \"Pay the toll if you wish to proceed.\"",
			"choice1": {
				"choice_text": "Hand the milita a small sum.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -15,
				"choice_post_text": "You begrudingly give the armed birdmen a small pack of batteries. They scowl at you and point their rifles into your head. \"That's not the toll! For your penny pinching, we've doubled the price.\""
			},
			"choice2": {
				"choice_text": "Hand the milita a large sum.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_post_text": "The heavily armed birdmen smile at eachother. With a nod, they move the barricades off the tracks and permit you through."
			},
			"choice3": {
				"choice_text": "Ram the barrier!", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": -1,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_post_text": "You turn your engines on at full power and put the full might of your train into the wooden barricade. Very displeased at this, the militia launch a salvo of rifle fire into your train cars! You hear passengers scream in anguish, but you are able to force your way through."
			},
			"choice4": {
				"choice_text": "Fight the milita.", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": 30,
				"choice_post_text": "Your train is heavily armed and your passengers are ready for a fight. With smirk and a practiced hand signal, your armed forces make the first move. The fighting doesn't last more than a minute before the brazen milita lies dead and unmoving. You lost a few in the battle, but you are able to gain a sizeable amount of loot."
			}
		},
		
		"event_gunfire": {
			"event_text": "You hear the crack of gunfire along with a shrill cry for help. To your left a monster is chasing a small stagecoach. The air ripples with light and suddenly the monster and stagecoach leap backwards in time and the scene repeats itself. The poor people have been stuck in a timeloop.",
			"choice1": {
				"choice_text": "Free the stagecoach from the time loop.", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "Working with the most brilliant passengers aboard your train, you deduce that if you match the speed of the stagecoach, you might be able to pull them free just before the loop repeats itself. With sweaty palms and a hopeful heart, your science team links up with the stagecoach. At the perfect moment, you speed forward and rip the stagecoach free! The bewildered people are extremely grateful and offer you their services."
			},
			"choice2": {
				"choice_text": "Kill the monster.", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": 10,
				"choice_post_text": "You belive that killing the monster should put an end to the time loop, or at least gain you some valuable resources. All trained hands aboard your train set their sights on the great beast. In a roaring salvo of blaster fire, the beast collapses! Unfortunately, the stagecoach jumps backward in time, still stuck in a loop. At least your passengers gained some battle experience and you can sell the beast to a merchant."
			},
			"choice3": {
				"choice_text": "Steal from the stagecoach.", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 25,
				"choice_post_text": "You organize a brave selection of passengers to raid the stagecoach and then leap away before the timeloop repeats. The adventerous souls hook themselves to the stagecoach and climb aboard. You hear screams and the sounds of violence, but soon your passengers arrive back at your train with loaded hands just before the stagecoach leaps back in time as if nothing happened."
			},
			"choice4": {
				"choice_text": "Keep moving.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "Timeloops are tricky business. If there's already one about, then you may very well be the next victims. It's best to keep moving forward."
			}
		},
		
		"event_melvin": {
			"event_text": "A lone train car sits beside the tracks. A neon sign, half lit, declares \"Melvin's Marvelous Merchandise\".",
			"choice1": {
				"choice_text": "Weapons for sale!", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": 1,
				"choice_post_text": "The weapons are dusty and old, but the laser rifles still function."
			},
			"choice2": {
				"choice_text": "Science books for sale!", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "The books are written in an alien language, but seem legit."
			},
			"choice3": {
				"choice_text": "Fancy clothes for sale!", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "These clothes are very attractive, but you will need to patch the hole in the pants."
			},
			"choice4": {
				"choice_text": "Nothing catches your attention.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You decide not to buy anything from Melvin."
			}
		}
	}
}