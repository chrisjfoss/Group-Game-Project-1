/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(card_ft);

var hint_text_x = room_width/2;
var hint_text_y = room_height/2;

if (card_game_phase == GAME_PHASE.NOT_STARTED)
{
	draw_text(hint_text_x,hint_text_y,"Determine Resource Values for each participant,\nthen press SPACEBAR to start the game.");
}
else if (card_game_phase == GAME_PHASE.INITIALIZING_DECKS)
{
	draw_text(hint_text_x,hint_text_y,"Shuffling decks...\nBoth decks always contain 5 Gray Star cards.");
}
else if (card_game_phase == GAME_PHASE.DEALING_CARDS)
{
	draw_text(hint_text_x,hint_text_y,"Each participant draws 5 cards from the\ntop of their decks.");
}
else if (card_game_phase == GAME_PHASE.PLAYER_TURN)
{
	hint_text_x = 128;
	draw_text(hint_text_x,hint_text_y,"Your turn! Pick 1\ncard to play.");
}
else if (card_game_phase == GAME_PHASE.OPPONENT_TURN)
{
	hint_text_x = room_width-128;
	draw_text(hint_text_x,hint_text_y,"Opponent is\nselecting a card.");
}
else if (card_game_phase == GAME_PHASE.DETERMINE_WINNER)
{
	if (trick_won == "player")
	{
		hint_text_x = 128
	}
	else
	{
		hint_text_x = room_width-128;
	}
	
	draw_text(hint_text_x,hint_text_y,trick_over_hint_text);
}
else if (card_game_phase == GAME_PHASE.GAME_OVER)
{
	var game_over_txt = "";
	
	var player_score = 0;
	var opponent_score = 0;
	with (resource_indicator_obj)
	{
		if (type == "player") { player_score = tricks_taken; }
		else if (type == "opponent") { opponent_score = tricks_taken; }
	}
	
	if (player_score > opponent_score) { game_over_txt = "You win! Congrats!"; }
	else { game_over_txt = "You lose!"; }
	
	hint_text_x = room_width/2;
	draw_text(hint_text_x,hint_text_y,"Game over.\n"+game_over_txt+"\n(SPACEBAR to play again)");
}

if (player_card_active != "")
{
	//render active player card that is ON THE TABLE right now. Their live play for this trick.
	var card_x = room_width/2 - 36;
	var card_y = room_height/2 + 4;
	
	draw_sprite(card_front_spr,0,card_x,card_y);
		
	var this_card_type = player_card_active;
	var suit_spr = empty_spr;
	if (string_pos("Gray", this_card_type) > 0) { suit_spr = suit_gray_spr; }
	else if (string_pos("Military", this_card_type) > 0) { suit_spr = suit_military_spr; }
	else if (string_pos("Civilian", this_card_type) > 0) { suit_spr = suit_civilian_spr; }
	else if (string_pos("Science", this_card_type) > 0) { suit_spr = suit_science_spr; }
		
	//strip the color from the card string to get the value
	var card_strength = get_card_power(this_card_type);
		
	draw_set_color(c_black);
	draw_set_font(card_ft);
		
	draw_sprite(suit_spr,0,card_x,card_y-24);
	draw_text(card_x,card_y,string(card_strength));
	
	var card_hint_text = "";
	if (suit_spr == suit_gray_spr) { card_hint_text = "Loses to all\nother suits."; }
	else if (suit_spr == suit_military_spr) { card_hint_text = "Beats Civilian.\nLoses to Science."; }
	else if (suit_spr == suit_civilian_spr) { card_hint_text = "Beats Science.\nLoses to Military."; }
	else if (suit_spr == suit_science_spr) { card_hint_text = "Beats Military.\nLoses to Civilian."; }
		
	draw_set_font(card_small_ft);
	draw_text(card_x,card_y+32,card_hint_text);
}

if (opponent_card_active != "")
{
	//render active opponent card that is ON THE TABLE right now. Their live play for this trick.
	var card_x = room_width/2 + 36;
	var card_y = room_height/2 - 4;
	
	draw_sprite(card_front_spr,0,card_x,card_y);
		
	var this_card_type = opponent_card_active;
	var suit_spr = empty_spr;
	if (string_pos("Gray", this_card_type) > 0) { suit_spr = suit_gray_spr; }
	else if (string_pos("Military", this_card_type) > 0) { suit_spr = suit_military_spr; }
	else if (string_pos("Civilian", this_card_type) > 0) { suit_spr = suit_civilian_spr; }
	else if (string_pos("Science", this_card_type) > 0) { suit_spr = suit_science_spr; }
		
	//strip the color from the card string to get the value
	var card_strength = get_card_power(this_card_type);
		
	draw_set_color(c_black);
	draw_set_font(card_ft);
		
	draw_sprite(suit_spr,0,card_x,card_y-24);
	draw_text(card_x,card_y,string(card_strength));
	
	var card_hint_text = "";
	if (suit_spr == suit_gray_spr) { card_hint_text = "Loses to all\nother suits."; }
	else if (suit_spr == suit_military_spr) { card_hint_text = "Beats Civilian.\nLoses to Science."; }
	else if (suit_spr == suit_civilian_spr) { card_hint_text = "Beats Science.\nLoses to Military."; }
	else if (suit_spr == suit_science_spr) { card_hint_text = "Beats Military.\nLoses to Civilian."; }
		
	draw_set_font(card_small_ft);
	draw_text(card_x,card_y+32,card_hint_text);
}

if (ds_list_size(player_hand) > 0)
{
	//render all player cards
	var card_x = 48;
	var card_y = 288;
	
	for (var i = 0; i < ds_list_size(player_hand); i++)
	{
		draw_sprite(card_front_spr,0,card_x,card_y);
		
		var this_card_type = player_hand[| i];
		var suit_spr = empty_spr;
		if (string_pos("Gray", this_card_type) > 0) { suit_spr = suit_gray_spr; }
		else if (string_pos("Military", this_card_type) > 0) { suit_spr = suit_military_spr; }
		else if (string_pos("Civilian", this_card_type) > 0) { suit_spr = suit_civilian_spr; }
		else if (string_pos("Science", this_card_type) > 0) { suit_spr = suit_science_spr; }
		
		//strip the color from the card string to get the value
		var card_strength = get_card_power(this_card_type);
		
		draw_set_color(c_black);
		draw_set_font(card_ft);
		
		draw_sprite(suit_spr,0,card_x,card_y-24);
		draw_text(card_x,card_y,string(card_strength));
		
		var card_hint_text = "";
		if (suit_spr == suit_gray_spr) { card_hint_text = "Loses to all\nother suits."; }
		else if (suit_spr == suit_military_spr) { card_hint_text = "Beats Civilian.\nLoses to Science."; }
		else if (suit_spr == suit_civilian_spr) { card_hint_text = "Beats Science.\nLoses to Military."; }
		else if (suit_spr == suit_science_spr) { card_hint_text = "Beats Military.\nLoses to Civilian."; }
		
		draw_set_font(card_small_ft);
		draw_text(card_x,card_y+32,card_hint_text);

		//check if the player clicked this card if it is their turn.
		if (card_game_phase == GAME_PHASE.PLAYER_TURN)
		{
			if (mouse_check_button_pressed(mb_left))
			{
				if (mouse_x > card_x-32 && mouse_x < card_x+32 && mouse_y > card_y-48 && mouse_y < card_y+48)
				{
					//clicked this card! Let's play it, if that's valid.
					if (opponent_card_active == "")
					{
						//simple case, the opponent has not played a card. In this case, all card picks are valid.
						player_card_active = this_card_type;
						
						//remove this card from the player's hand.
						ds_list_delete(player_hand,i);
						i--;
						
						card_game_phase = GAME_PHASE.OPPONENT_TURN; //change card game phase over to the opponent's turn to play a card down.
						ai_counter = 0;
					}
					else
					{
						//determine if the player must follow suit or not. if they must, display an error message. Otherwise, allow the play.
						var suit_violated = false;
						
						var opp_suit = get_card_suit(opponent_card_active);
						
						var pl_suit = get_card_suit(this_card_type);
						
						if (opp_suit == pl_suit)
						{
							suit_violated = false;
						}
						else
						{
							//not same suit! Determine if the player has ANY of the opponent's suit in their hand.
							var has_matching_suit = false;
							for (var j = 0; j < ds_list_size(player_hand); j++)
							{
								var check_card = player_hand[| j];
								
								var check_suit = get_card_suit(check_card);
								
								if (check_suit == opp_suit)
								{
									has_matching_suit = true;
								}
							}
							
							if (has_matching_suit)
							{
								suit_violated = true;
							}
						}
						
						if (suit_violated)
						{
							//error message
							show_message("Invalid choice. You must follow suit! Play a card of the same suit as your opponent.");
						}
						else
						{
							//valid play
							player_card_active = this_card_type;
						
							//remove this card from the player's hand.
							ds_list_delete(player_hand,i);
							i--;
						
							card_game_phase = GAME_PHASE.OPPONENT_TURN; //change card game phase over to the opponent's turn to play a card down.
							ai_counter = 0;
						}
					}
				}
			}
		}
		else
		{
			//darken player cards to make it clear they are inactive
			draw_sprite_ext(card_front_spr,0,card_x,card_y,1,1,0,c_dkgray,0.5);
		}
		
		card_x += 80;
	}
}

if (ds_list_size(opponent_hand) > 0)
{
	//render all opponent cards
	var	card_x = 272;
	var card_y = 64;
	
	for (var i = 0; i < ds_list_size(opponent_hand); i++)
	{
		draw_sprite(card_back_spr,0,card_x,card_y);
		card_x += 80;
	}
}