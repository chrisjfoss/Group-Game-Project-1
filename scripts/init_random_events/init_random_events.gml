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
		},
		
		"event_nothingness": {
			"event_text": "A vast patch of nothingness looms upon the tracks ahead. The void is always a strange sight to behold, as if a bite has been taken out of reality and only a sickening darkness remains. With the tracks now gone, you will need to find a way forward.",
			"choice1": {
				"choice_text": "Create a ramp", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_post_text": "Your train flies full speed ahead, but a miscacluation means that the last car didn't quite clear the void. It is swallowed by darkness."
			},
			"choice2": {
				"choice_text": "Use experimental rockets", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "The makeshift rockets roar to life and the passengers prepare for the worst. Much to everyone's surprise, the rockets are an astounding success! Your train clears the void with room to spare."
			},
			"choice3": {
				"choice_text": "Lay new tracks", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_post_text": "A few unsavory sorts watch your train with a devious look in their eyes. However, your weapons keep them at bay while everyone else gets the new tracks laid. After a few greuling days of work, you are able to move around the void and continue your journey. But the time spent has been taxing on your energy reserves."
			},
			"choice4": {
				"choice_text": "Continue without stopping", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": -1,
				"choice_outcome3_type": "SCIENCE",
				"choice_outcome3_value": -1,
				"choice_post_text": "You choose to barrel through the inky darkness heedless of the danger. Some of your train cars get swallowed up."
			}
		},
		
		"event_tree": {
			"event_text": "An absolutely massive, yet twisted, tree has grown by an emerald stream beside the train tracks. As you pass underneath one of its branches, you hear an unnerving snap.",
			"choice1": {
				"choice_text": "Pull the brakes!", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "Your brakes squeel loudly as the train screetches to a slow halt, but you don't stop until well past the tree. With a powerful thud, the limb falls behind your train. You send a team to investigate and perform research on how the tree grew so large."
			},
			"choice2": {
				"choice_text": "Push the engines hard!", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_post_text": "You tax the engnies to well over the recommended speed. Your train suddenly rockets forward and flings people out of their seats. Thankfully, the tree does not land on your cars, but you spent some extra energy pushing the engines."
			},
			"choice3": {
				"choice_text": "Ignore the sound.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You move forward heedless of the danger. Your passengers become increasingly alarmed by the creaking sounds from outside, but, against all odds, you pass by the tree unscathed."
			}
		},
		
		"event_mountain": {
			"event_text": "As you pass through a mountain, you find that a recent rockslide has blocked the tunnel up ahead.",
			"choice1": {
				"choice_text": "Send people to clear the rocks.", 
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_post_text": "The boulders are large and heavy. It is strenuous work to painstankingly clear a path for your train. Just as the work is finishing, a terrible accident causes a boulder to fall and smash one of your train cars like a soda can!"
			},
			"choice2": {
				"choice_text": "Blow up the rocks.", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 10,
				"choice_post_text": "You are well equipped with explosives. After laying the charges properly, you set off a well coordinated fireball. As the dust settles, your path is clear. You also find that one of the boulders was concealing gold, which you promptly trade for needed supplies."
			},
			"choice3": {
				"choice_text": "Pay travelers to move the rocks.", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 15,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -15,
				"choice_post_text": "You pay a group of semi-trustworthy travelers to remove the rocks in your path. The work takes longer than you expect, but the work gets done. With a sigh of relief, you move forward."
			}
		},
		
		"event_tower": {
			"event_text": "A ramshackle wooden tower looms over the tracks. There are no lights on and it seems eerily quiet.",
			"choice1": {
				"choice_text": "Send scientists to investigate.", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_post_text": "The scientsists carefully move to the first floor. The entire building creaks with each step. They happen to find a crate of laser rifles and return with their findings."
			},
			"choice2": {
				"choice_text": "Send soldiers to investigate.", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "Your armed forces head to the basement of the tower, fully prepared for a firefight. The darkness and eerie silence are disturbing, but they find a strange contraption made of gears and bring it back."
			},
			"choice3": {
				"choice_text": "Send businessmen to investigate.", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 20,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": -1,
				"choice_post_text": "The businessmen decide to move to the upper floor of the decrepit tower. They find decaying skeletons sitting at a card table next to a large box of batteries. Suddenly, the floor gives way and one of the businessmen falls to his death!"
			},
			"choice4": {
				"choice_text": "Ignore the structure.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You decide it is best to ignore the tower and continue on your way."
			}
		},
		
		"event_dog": {
			"event_text": "You hear a forlorn howling coming from the other side of a hill. Then, a half-starved dog appears at the top of the hill and looks down at your train. Its eyes are sad and pleading.",
			"choice1": {
				"choice_text": "Feed the dog.", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_post_text": "You beckon the dog over and give it some food. The starving animal seems grateful, then it howls loudly by your ear. Suddenly, a pack of the dogs appears on the hill top. They rush your train and attack your passengers!"
			},
			"choice2": {
				"choice_text": "Shoot the dog.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "You pull out a laser pistol and take a deep breath. It's best to put the poor creature out of its misery, you think to yourself. Soon only a carbon scorch mark remains. That's when you notice forlorn eyes staring at you from every hill in the area. Time to leave!"
			},
			"choice3": {
				"choice_text": "Follow the dog.", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "The dog leads you over the hill to a small cave. As you travel, more and more of the sad looking dogs appear and follow you. Unnerved, but unable to leave the pack, you enter the cave. Inside you find a busted clockwork person! After a few hours, the dogs sleep and you leave with the clockwork person. It takes some effort and energy to fix, but soon you have a new passenger aboard your train."
			},
			"choice4": {
				"choice_text": "Ignore the dog.", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_post_text": "You choose to ignore the dog and keep the train moving forward. The animal howls loudly at your train and soon a cacophony of howls joins in from every hill and valley around. Sad looking dog creatures of all sizes and shapes surround your train and box you in. You are only able to escape after a group of scientists go out to study the creatures and are promptly eaten!"
			}
		},
		
		"event_sacrifice": {
			"event_text": "On the tracks a monsterous lobster creature blocks your progress and demands the death of one your cars to its foul god. The monster is seemingly invulnerable.",
			"choice1": {
				"choice_text": "Sacrifice a scientist", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_post_text": "The Beast devours your chosen sacrifice."
			},
			"choice2": {
				"choice_text": "Sacrifice a civilian", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -1,
				"choice_post_text": "The Beast devours your chosen sacrifice."
			},
			"choice3": {
				"choice_text": "Sacrifice a soldier", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_post_text": "The Beast devours your chosen sacrifice."
			},
			"choice4": {
				"choice_text": "Bribe the lobster", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 50,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": -1,
				"choice_outcome3_type": "ECONOMY",
				"choice_outcome3_value": -1,
				"choice_post_text": "The lobster is angered that you have tried this and assaults your train!"
			},
			"choice5": {
				"choice_text": "Fight the lobster", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -2,
				"choice_outcome2_type": "MILITARY",
				"choice_outcome2_value": -2,
				"choice_outcome3_type": "ECONOMY",
				"choice_outcome3_value": -2,
				"choice_post_text": "The fighting is short and brutal. Few survive the onslaught of the beast's massive claws."
			}
		},
		
		"event_radiation_zone": {
			"event_text": "The train has entered a highly radioactive zone. The danger is great, but there is also opportunity here.",
			"choice1": {
				"choice_text": "Weaponize the radiation", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 2,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": -10,
				"choice_post_text": "You have contained the background radiation, powered the trains weapons, but at a cost."
			},
			"choice2": {
				"choice_text": "Prepare a scientific solution", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 5,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "The scientists have made ramshackle shield for the train."
			},
			"choice3": {
				"choice_text": "Absorb the energy", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 20,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": -1,
				"choice_post_text": "The radiation absorbtion has freed up the batteries that run the train. However, in the process, the science team was poisoned by radiation!"
			}
		},
		
		"event_sentry": {
			"event_text": "A large defensive mobile sentry gun was detected ahead and it block your progress till its dealt with.",
			"choice1": {
				"choice_text": "Destroy it!", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "The sentry gun is now a smoldering heap."
			},
			"choice2": {
				"choice_text": "Attempt to hack it", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_post_text": "The hacking attempt is success, and the sentry gun is moved and placed on your train."
			},
			"choice3": {
				"choice_text": "Shut it down and salvage", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": -2,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": 25,
				"choice_post_text": "The sentry is salvaged and shut down, but it fires upon the passengers!"
			},
			"choice4": {
				"choice_text": "Ignore the sentry gun", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_post_text": "The sentry gun cannon punches a hole through the train!"
			}
		},
		
		"event_gamble": {
			"event_text": "The train stops as there a frog-like humanoid camped next to the tracks. He holds a gun and beckons you foward to play a different sort of gambling game. His four barreled gun is raised to you. He tells you select a barrel for him to fire.",
			"choice1": {
				"choice_text": "Barrel 1", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "There is click and nothing happens. The frog laughs and tells you its not your lucky day"
			},
			"choice2": {
				"choice_text": "Barrel 2", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "There is click and nothing happens. The frog laughs and tells you its not your lucky day"
			},
			"choice3": {
				"choice_text": "Barrel 3", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": 1,
				"choice_outcome2_type": "BATTERIES",
				"choice_outcome2_value": 15,
				"choice_post_text": "He raises to gun and tells this is the loaded barrel. You don't move. And asks if you are sure. He lifts the gun to sky and fires. Laughing all the while, the Frog man says, 'you have moxy,' and tells you he is former gun fighter looking for fun."
			},
			"choice4": {
				"choice_text": "Barrel 4", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "There is click and nothing happens. The frog laughs and tells you its not your lucky day"
			},
			"choice5": {
				"choice_text": "No thanks!", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "'Get out, you coward!' the frog-man shouts. You continue on your way."
			}
		},
		
		"event_stampede": {
			"event_text": "A stampede of millions of 6 foot tall milipede-like animals rumbles over the horizon heading in your direction!",
			"choice1": {
				"choice_text": "Speed up and attempt avoid", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_post_text": "You aren't quick enough, the milipedes hit the train like tsunami, damaging it in the process. The train will need repairs in the next port."
			},
			"choice2": {
				"choice_text": "Weapons to full!", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -5,
				"choice_post_text": "The trains weapons shoot at the creatures, and drive them away but the constant barrage required batteries to be spent."
			},
			"choice3": {
				"choice_text": "Ask passengers for advice", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 4,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 20,
				"choice_post_text": "A passager knows to stay still when the Coraltron mitigrate. The swarms climbs over the still train and some of the swarm is left behind. Their meat is considered delicious to most and can be sold."
			},
			"choice4": {
				"choice_text": "Research the stampede", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": 1,
				"choice_post_text": "The researchers know that a common mixature of basic goods drives them away. The swarm avoids the train."
			}
		},
		
		"event_slavers": {
			"event_text": "A crawling vehicile of arms and legs, flags down your train. Crewed by insectoid slavers, they ask if you want to buy any slaves for your journey.",
			"choice1": {
				"choice_text": "Revolt!", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 4,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 15,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_outcome3_type": "ECONOMY",
				"choice_outcome3_value": 1,
				"choice_post_text": "While the slavers machine is strong, you suprise them by opening up on them. The vehicle is destroyed the slaves are freed and join you."
			},
			"choice2": {
				"choice_text": "Buy a civilian", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": 1,
				"choice_post_text": "You have made your purchase."
			},
			"choice3": {
				"choice_text": "Buy a scientist", 
				"choice_prerequisite_type": "BATTERIES",
				"choice_prerequisite_value": 10,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": -10,
				"choice_outcome2_type": "SCIENCE",
				"choice_outcome2_value": 1,
				"choice_post_text": "You have made your purchase."
			},
			"choice4": {
				"choice_text": "I don't deal in slaves.", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "The slavers sneer and bid you to move along."
			}
		},
		
		"event_power_plant": {
			"event_text": "You come across an automated power plant. Perhaps something useful can be gained from there.",
			"choice1": {
				"choice_text": "Shut down the plant and salvage", 
				"choice_prerequisite_type": "SCIENCE",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": -1,
				"choice_post_text": "The plants machines immediately attack the train upon its attempts!"
			},
			"choice2": {
				"choice_text": "Siphon a small amount of power", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 1,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "A small amount of power was not noticed."
			},
			"choice3": {
				"choice_text": "Siphon a medium size of energy", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 10,
				"choice_post_text": "The plant doesn't notice!"
			},
			"choice4": {
				"choice_text": "Take a large amount of batteries", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_outcome2_type": "ECONOMY",
				"choice_outcome2_value": -1,
				"choice_outcome3_type": "SCIENCE",
				"choice_outcome3_value": -1,
				"choice_post_text": "The plant is unstable and siphon has unbalanced things further, and it explodes in electromagnetic fire!"
			}
		},
		
		"event_old_mission": {
			"event_text": "The train scopes see what appears a small church. At the door, a kindly fungus person greets and hugs and asks you to pray and break bread with him.",
			"choice1": {
				"choice_text": "Pray with the fungi", 
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 5,
				"choice_post_text": "He is happy and offers its last 5 batteries. The fungi waves you and hopes your journey is successful."
			},
			"choice2": {
				"choice_text": "Convince him to join you", 
				"choice_prerequisite_type": "ECONOMY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "ECONOMY",
				"choice_outcome1_value": 1,
				"choice_post_text": "The fungi realizes its kindness will not save the world. The fungi-man will join your adventure!"
			},
			"choice3": {
				"choice_text": "Rob the fungi", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 2,
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -2,
				"choice_post_text": "The fungi bemoans your foolish action as it sores choke and kill your troops!"
			}
		},
		
		"event_ghost_town": {
			"event_text": "You find an abandoned town covered in black cobweb-like structures. There is no sound or life in this area.",
			"choice1": {
				"choice_text": "Don't go into the town", 
				"choice_outcome1_type": 0,
				"choice_outcome1_value": 0,
				"choice_post_text": "The town has an eerie off putting look, perhaps its good to avoid it."
			},
			"choice2": {
				"choice_text": "Explore the town using troops", 
				"choice_outcome1_type": "MILITARY",
				"choice_outcome1_value": -1,
				"choice_post_text": "Whatever the organic mass is, it has a mind as it begins to consume those that enter. The screams will haunt you forever."
			},
			"choice3": {
				"choice_text": "Send a team to research", 
				"choice_outcome1_type": "SCIENCE",
				"choice_outcome1_value": -1,
				"choice_post_text": "Whatever the organic mass is, it has a mind as it begins to consume those that enter. The screams will haunt you forever."
			},
			"choice4": {
				"choice_text": "Burn the town", 
				"choice_prerequisite_type": "MILITARY",
				"choice_prerequisite_value": 3,
				"choice_outcome1_type": "BATTERIES",
				"choice_outcome1_value": 15,
				"choice_post_text": "The black cobweb-thing howls and shrieks as it up to the torch. In the smoldering remains you find a number of supplies!"
			}
		}
	}
}