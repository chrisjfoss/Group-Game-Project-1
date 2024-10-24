/// @description Insert description here
// You can write your code in this editor

//game over logic!
if (card_game_phase == GAME_PHASE.ROUND_END)
{
	ai_counter += 1;
	if (ai_counter > 30)
	{
		if (trick_won == PLAYER_TYPE.HUMAN)
		{
			card_game_phase = GAME_PHASE.PLAYER_TURN; //restart the game, with the player leading.
			leading_participant = PLAYER_TYPE.HUMAN;
		}
		else if (trick_won == PLAYER_TYPE.AI)
		{
			card_game_phase = GAME_PHASE.OPPONENT_TURN; //restart the game, with the computer leading.
			leading_participant = PLAYER_TYPE.AI;
		}
		
		ai_counter = 0;
		
		with (obj_base_player)
		{
			_active_card = ""; //all participants remove their active cards from the table. Reset.
		}
	}
}


//DETERMINE ACTIVE CARDS (aka cards played on the table)
var opponent_card_active = "";
var player_card_active = "";
with (obj_base_player)
{
	if (_player_type == PLAYER_TYPE.HUMAN)
	{
		player_card_active = _active_card;
	}
	else if (_player_type == PLAYER_TYPE.AI)
	{
		opponent_card_active = _active_card;
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
			var _chosen_card = "";
			with(obj_base_ai) {
				_chosen_card = self.choose_card();
			}
			
			if (player_card_active == "")
			{
				//player has played NOTHING. First, allow AI to choose a card. Then toss the action over to the player's choice.
				
				with (obj_base_ai) { self.play_card(_chosen_card); }
				
				card_game_phase = GAME_PHASE.PLAYER_TURN; //let the player pick their card.
				ai_counter = 0;
			}
			else
			{
				//player has already played a card. AI should pick a card, then we go to compare cards to determine the trick winner.
				
				with (obj_base_ai) { self.play_card(_chosen_card); }
				
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
			award_trick(PLAYER_TYPE.AI);
			trick_won = PLAYER_TYPE.AI;
			trick_over_hint_text = "You lost the trick!\nAll colored suits beat Gray.";
		}
		else if (p_suit != "Gray" && o_suit == "Gray")
		{
			//player scores!
			award_trick(PLAYER_TYPE.HUMAN);
			trick_won = PLAYER_TYPE.HUMAN;
			trick_over_hint_text = "You won the trick!\nAll colored suits beat Gray.";
		}
		else if (p_suit == "Orange" && o_suit == "Yellow")
		{
			//opponent scores!
			award_trick(PLAYER_TYPE.AI);
			trick_won = PLAYER_TYPE.AI;
			trick_over_hint_text = "You lost the trick!\nYellow beats Orange.";
		}
		else if (p_suit == "Yellow" && o_suit == "Orange")
		{
			//player scores!
			award_trick(PLAYER_TYPE.HUMAN);
			trick_won = PLAYER_TYPE.HUMAN;
			trick_over_hint_text = "You won the trick!\nYellow beats Orange.";
		}
		else if (p_suit == "Pink" && o_suit == "Orange")
		{
			//opponent scores!
			award_trick(PLAYER_TYPE.AI);
			trick_won = PLAYER_TYPE.AI;
			trick_over_hint_text = "You lost the trick!\nOrange beats Pink.";
		}
		else if (p_suit == "Orange" && o_suit == "Pink")
		{
			//player scores!
			award_trick(PLAYER_TYPE.HUMAN);
			trick_won = PLAYER_TYPE.HUMAN;
			trick_over_hint_text = "You won the trick!\nOrange beats Pink.";
		}
		else if (p_suit == "Yellow" && o_suit == "Pink")
		{
			//opponent scores!
			award_trick(PLAYER_TYPE.AI);
			trick_won = PLAYER_TYPE.AI;
			trick_over_hint_text = "You lost the trick!\nPink beats Yellow.";
		}
		else if (p_suit == "Pink" && o_suit == "Yellow")
		{
			//player scores!
			award_trick(PLAYER_TYPE.HUMAN);
			trick_won = PLAYER_TYPE.HUMAN;
			trick_over_hint_text = "You won the trick!\nPink beats Yellow.";
		}
		else if (p_suit == o_suit)
		{
			//suits are identical! Judge the numbers. In the case of a tie, the leading player wins.
			if (p_power > o_power)
			{
				//player scores!
				award_trick(PLAYER_TYPE.HUMAN);
				trick_won = PLAYER_TYPE.HUMAN;
				trick_over_hint_text = "You won the trick!\nYour number was higher.";
			}
			else if (o_power > p_power)
			{
				//opponent scores!
				award_trick(PLAYER_TYPE.AI);
				trick_won = PLAYER_TYPE.AI;
				trick_over_hint_text = "You lost the trick!\nYour number was lower.";
			}
			else
			{
				//tie! Goes to leading participant.
				if (leading_participant == PLAYER_TYPE.HUMAN)
				{
					//player scores!
					award_trick(PLAYER_TYPE.HUMAN);
					trick_won = PLAYER_TYPE.HUMAN;
					trick_over_hint_text = "You won the trick!\nLeading card wins ties.";
				}
				else
				{
					//opponent scores!
					award_trick(PLAYER_TYPE.AI);
					trick_won = PLAYER_TYPE.AI;
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
			if (type == PLAYER_TYPE.HUMAN) { player_score = tricks_taken; }
			else if (type == PLAYER_TYPE.AI) { opponent_score = tricks_taken; }
		}
		
		if (player_score >= 3 || opponent_score >= 3)
		{
			//GAME OVER.
			card_game_phase = GAME_PHASE.GAME_OVER;
			ai_counter = 0;
			
			with (obj_base_player)
			{
				ds_list_clear(_hand);
				ds_list_clear(_deck);
				_tricks_won = 0;
				_active_card = "";
			}
		}
		else
		{
			card_game_phase = GAME_PHASE.ROUND_END;
			ai_counter = 0;
		}
	}
}