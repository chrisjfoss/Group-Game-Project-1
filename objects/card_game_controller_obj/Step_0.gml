/// @description Insert description here
// You can write your code in this editor

//game over logic!
if (card_game_phase == GAME_PHASE.ROUND_END)
{
	ai_counter += 1;
	if (ai_counter > 30)
	{
		if (trick_won == "player")
		{
			card_game_phase = GAME_PHASE.PLAYER_TURN; //restart the game, with the player leading.
			leading_participant = "player";
		}
		else if (trick_won == "opponent")
		{
			card_game_phase = GAME_PHASE.OPPONENT_TURN; //restart the game, with the computer leading.
			leading_participant = "opponent";
		}
		
		ai_counter = 0;
		
		player_card_active = "";
		opponent_card_active = "";
	}
}


//opponent card game AI logic.
if (card_game_phase == GAME_PHASE.OPPONENT_TURN)
{
	//it is the opponent's turn to pick a card.
	if (opponent_card_active != "")
	{
		//opponent already picked a card! Either turn it over to the player to follow, or begin comparing cards.
		if (player_card_active != "")
		{
			card_game_phase = GAME_PHASE.DETERMINE_WINNER; //evaluate the trick winner.
			trick_over_hint_text = "";
			ai_counter = 0;
		}
		else
		{
			card_game_phase = GAME_PHASE.PLAYER_TURN; //let the player pick their card.
			ai_counter = 0;
		}
	}
	else
	{
		//opponent hasn't picked a card yet.
		if (ai_counter < 100)
		{
			ai_counter += 1;
		}
		else
		{
			//officially pick a card.
			if (player_card_active == "")
			{
				//player has played NOTHING. Pick a random card from my hand to lead with.
				rand_pick = irandom(ds_list_size(opponent_hand)-1);
				rand_card = opponent_hand[| rand_pick];
				
				opponent_card_active = rand_card;
				//remove this card from the opponent's hand.
				ds_list_delete(opponent_hand,rand_pick);

				
				card_game_phase = GAME_PHASE.PLAYER_TURN; //let the player pick their card.
				ai_counter = 0;
			}
			else
			{
				//player has played a card. Let's make a smart decision based on the state of the game.
				valid_cards = ds_list_create();
				
				var player_active_suit = get_card_suit(player_card_active);
				var player_active_power = get_card_power(player_card_active);
				
				for (var k = 0; k < ds_list_size(opponent_hand); k++)
				{
					var this_card = opponent_hand[| k];
					
					var this_card_suit = get_card_suit(this_card);
					if (this_card_suit == player_active_suit)
					{
						ds_list_add(valid_cards,this_card);
					}
				}
				
				if (ds_list_size(valid_cards) == 0)
				{
					//no matching suit cards! Let's just add all cards to the valid list.
					for (var k = 0; k < ds_list_size(opponent_hand); k++)
					{
						var this_card = opponent_hand[| k];
						ds_list_add(valid_cards,this_card);
					}
				}
				
				//For now, just choose a random valid card. TODO: Make computer smarter?
				ds_list_shuffle(valid_cards);
				var card_picked = valid_cards[| 0];
				
				opponent_card_active = card_picked;
				
				
				//remove this card from the opponent's hand.
				for (var k = 0; k < ds_list_size(opponent_hand); k++)
				{
					var this_c = opponent_hand[| k];
					if (this_c == card_picked)
					{
						ds_list_delete(opponent_hand,k);
						k--;
					}
				}
				
				card_game_phase = GAME_PHASE.DETERMINE_WINNER; //let's compare cards and see who won the trick!
				trick_over_hint_text = "";
				ai_counter = 0;
			}
		}
	}
}
else if (card_game_phase == GAME_PHASE.DETERMINE_WINNER)
{
	if (ai_counter == 0)
	{
		//just got here. Determine the winner and display hint text.
		trick_won = ""; //who won the last trick? player or opponent?
		trick_over_hint_text = "";
		
		var p_suit = get_card_suit(player_card_active);
		var p_power = get_card_power(player_card_active);
		
		var o_suit = get_card_suit(opponent_card_active);
		var o_power = get_card_power(opponent_card_active);
		
		if (p_suit == "Gray" && o_suit != "Gray")
		{
			//opponent scores!
			award_trick("opponent");
			trick_won = "opponent";
			trick_over_hint_text = "You lost the trick!\nAll other suits beat Gray.";
		}
		else if (p_suit != "Gray" && o_suit == "Gray")
		{
			//player scores!
			award_trick("player");
			trick_won = "player";
			trick_over_hint_text = "You won the trick!\nAll other suits beat Gray.";
		}
		else if (p_suit == "Military" && o_suit == "Science")
		{
			//opponent scores!
			award_trick("opponent");
			trick_won = "opponent";
			trick_over_hint_text = "You lost the trick!\nScience beats Military.";
		}
		else if (p_suit == "Science" && o_suit == "Military")
		{
			//player scores!
			award_trick("player");
			trick_won = "player";
			trick_over_hint_text = "You won the trick!\nScience beats Military.";
		}
		else if (p_suit == "Civilian" && o_suit == "Military")
		{
			//opponent scores!
			award_trick("opponent");
			trick_won = "opponent";
			trick_over_hint_text = "You lost the trick!\nMilitary beats Civilian.";
		}
		else if (p_suit == "Military" && o_suit == "Civilian")
		{
			//player scores!
			award_trick("player");
			trick_won = "player";
			trick_over_hint_text = "You won the trick!\nMilitary beats Civilian.";
		}
		else if (p_suit == "Science" && o_suit == "Civilian")
		{
			//opponent scores!
			award_trick("opponent");
			trick_won = "opponent";
			trick_over_hint_text = "You lost the trick!\nCivilian beats Science.";
		}
		else if (p_suit == "Civilian" && o_suit == "Science")
		{
			//player scores!
			award_trick("player");
			trick_won = "player";
			trick_over_hint_text = "You won the trick!\nCivilian beats Science.";
		}
		else if (p_suit == o_suit)
		{
			//suits are identical! Judge the numbers. In the case of a tie, the leading player wins.
			if (p_power > o_power)
			{
				//player scores!
				award_trick("player");
				trick_won = "player";
				trick_over_hint_text = "You won the trick!\nYour number was higher.";
			}
			else if (o_power > p_power)
			{
				//opponent scores!
				award_trick("opponent");
				trick_won = "opponent";
				trick_over_hint_text = "You lost the trick!\nYour number was lower.";
			}
			else
			{
				//tie! Goes to leading participant.
				if (leading_participant == "player")
				{
					//player scores!
					award_trick("player");
					trick_won = "player";
					trick_over_hint_text = "You won the trick!\nLeading card wins ties.";
				}
				else
				{
					//opponent scores!
					award_trick("opponent");
					trick_won = "opponent";
					trick_over_hint_text = "You lost the trick!\nLeading card wins ties.";
				}
			}
		}
	}
	
	ai_counter += 1;
	
	if (ai_counter >= 60*4.5)
	{
		//reset for the next round.
		var player_score = 0;
		var opponent_score = 0;
		with (resource_indicator_obj)
		{
			if (type == "player") { player_score = tricks_taken; }
			else if (type == "opponent") { opponent_score = tricks_taken; }
		}
		
		if (player_score >= 3 || opponent_score >= 3)
		{
			//ROUND OVER.
			card_game_phase = GAME_PHASE.ROUND_OVER;
			
			if (player_score >= 3)
			{
				rounds_won_player += 1;
			}
			else
			{
				rounds_won_opponent += 1;
			}
			
			if (rounds_won_player >= 2 || rounds_won_opponent >= 2)
			{
				//GAME OVER.
				card_game_phase = GAME_PHASE.GAME_OVER;
			}
			
			ai_counter = 0;
			
			ds_list_clear(player_hand);
			ds_list_clear(player_deck);
			ds_list_clear(opponent_hand);
			ds_list_clear(opponent_deck);
			
			player_card_active = "";
			opponent_card_active = "";
		}
		else
		{
			card_game_phase = GAME_PHASE.ROUND_END;
			ai_counter = 0;
		}
	}
}