/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_card);

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
	if (trick_won == PLAYER_TYPE.HUMAN)
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
		if (type == PLAYER_TYPE.HUMAN) { player_score = tricks_taken; }
		else if (type == PLAYER_TYPE.AI) { opponent_score = tricks_taken; }
	}
	
	if (player_score > opponent_score) { game_over_txt = "You win! Congrats!"; }
	else { game_over_txt = "You lose!"; }
	
	hint_text_x = room_width/2;
	draw_text(hint_text_x,hint_text_y,"Game over.\n"+game_over_txt+"\n(SPACEBAR to play again)");
}

var _ai_hand;
var _ai_active_card;
var _human_hand;
var _human_active_card;
with(obj_base_player) {
	if(self._player_type == PLAYER_TYPE.AI) {
		_ai_hand = self._hand;
		_ai_active_card = self._active_card;
	}
	if(self._player_type == PLAYER_TYPE.HUMAN) {
		_human_hand = self._hand;
		_human_active_card = self._active_card;
	}
}

if (_human_active_card != "")
{
	//render active player card that is ON THE TABLE right now. Their live play for this trick.
	var _card_x = room_width/2 - 36;
	var _card_y = room_height/2 + 4;
	
	draw_sprite(spr_card_front,0,_card_x,_card_y);
		
	var _this_card_type = _human_active_card;
	var _suit_spr = spr_empty;
	if (string_pos("Gray", _this_card_type) > 0) { _suit_spr = spr_suit4; }
	else if (string_pos("Orange", _this_card_type) > 0) { _suit_spr = spr_suit1; }
	else if (string_pos("Yellow", _this_card_type) > 0) { _suit_spr = spr_suit2; }
	else if (string_pos("Pink", _this_card_type) > 0) { _suit_spr = spr_suit3; }
		
	//strip the color from the card string to get the value
	var _card_strength = get_card_power(_this_card_type);
		
	draw_set_color(c_black);
	draw_set_font(fnt_card);
		
	draw_sprite(_suit_spr,0,_card_x,_card_y-24);
	draw_text(_card_x,_card_y,string(_card_strength));
	
	var _card_hint_text = "";
	if (_suit_spr == spr_suit4) { _card_hint_text = "Loses to all\ncolored suits."; }
	else if (_suit_spr == spr_suit1) { _card_hint_text = "Beats Pink.\nLoses to Yellow."; }
	else if (_suit_spr == spr_suit2) { _card_hint_text = "Beats Orange.\nLoses to Pink."; }
	else if (_suit_spr == spr_suit3) { _card_hint_text = "Beats Yellow.\nLoses to Orange."; }
		
	draw_set_font(fnt_card_small);
	draw_text(_card_x,_card_y+32,_card_hint_text);
}

if (_ai_active_card != "")
{
	//render active opponent card that is ON THE TABLE right now. Their live play for this trick.
	var _card_x = room_width/2 + 36;
	var _card_y = room_height/2 - 4;
	
	draw_sprite(spr_card_front,0,_card_x,_card_y);
		
	var _this_card_type = _ai_active_card;
	var _suit_spr = spr_empty;
	if (string_pos("Gray", _this_card_type) > 0) { _suit_spr = spr_suit4; }
	else if (string_pos("Orange", _this_card_type) > 0) { _suit_spr = spr_suit1; }
	else if (string_pos("Yellow", _this_card_type) > 0) { _suit_spr = spr_suit2; }
	else if (string_pos("Pink", _this_card_type) > 0) { _suit_spr = spr_suit3; }
		
	//strip the color from the card string to get the value
	var _card_strength = get_card_power(_this_card_type);
		
	draw_set_color(c_black);
	draw_set_font(fnt_card);
		
	draw_sprite(_suit_spr,0,_card_x,_card_y-24);
	draw_text(_card_x,_card_y,string(_card_strength));
	
	var _card_hint_text = "";
	if (_suit_spr == spr_suit4) { _card_hint_text = "Loses to all\ncolored suits."; }
	else if (_suit_spr == spr_suit1) { _card_hint_text = "Beats Pink.\nLoses to Yellow."; }
	else if (_suit_spr == spr_suit2) { _card_hint_text = "Beats Orange.\nLoses to Pink."; }
	else if (_suit_spr == spr_suit3) { _card_hint_text = "Beats Yellow.\nLoses to Orange."; }
		
	draw_set_font(fnt_card_small);
	draw_text(_card_x,_card_y+32,_card_hint_text);
}

if(ds_list_size(_ai_hand) != 0) {
	//render all opponent cards
	var	_card_x = 272;
	var _card_y = 64;
	
	for (var _i = 0; _i < ds_list_size(_ai_hand); _i++)
	{
		draw_sprite(spr_card_back,0,_card_x,_card_y);
		_card_x += 80;
	}
} 
if(ds_list_size(_human_hand) != 0) {
	//render all player cards
	var _card_x = 48;
	var _card_y = 288;
	
	for (var _i = 0; _i < ds_list_size(_human_hand); _i++)
	{
		draw_sprite(spr_card_front,0,_card_x,_card_y);
		
		var _this_card_type = _human_hand[| _i];
		var _suit_spr = spr_empty;
		if (string_pos("Gray", _this_card_type) > 0) { _suit_spr = spr_suit4; }
		else if (string_pos("Orange", _this_card_type) > 0) { _suit_spr = spr_suit1; }
		else if (string_pos("Yellow", _this_card_type) > 0) { _suit_spr = spr_suit2; }
		else if (string_pos("Pink", _this_card_type) > 0) { _suit_spr = spr_suit3; }
		
		//strip the color from the card string to get the value
		var _card_strength = get_card_power(_this_card_type);
		
		draw_set_color(c_black);
		draw_set_font(fnt_card);
		
		draw_sprite(_suit_spr,0,_card_x,_card_y-24);
		draw_text(_card_x,_card_y,string(_card_strength));
		
		var _card_hint_text = "";
		if (_suit_spr == spr_suit4) { _card_hint_text = "Loses to all\ncolored suits."; }
		else if (_suit_spr == spr_suit1) { _card_hint_text = "Beats Pink.\nLoses to Yellow."; }
		else if (_suit_spr == spr_suit2) { _card_hint_text = "Beats Orange.\nLoses to Pink."; }
		else if (_suit_spr == spr_suit3) { _card_hint_text = "Beats Yellow.\nLoses to Orange."; }
		
		draw_set_font(fnt_card_small);
		draw_text(_card_x,_card_y+32,_card_hint_text);

		//check if the player clicked this card if it is their turn.
		if (card_game_phase == GAME_PHASE.PLAYER_TURN)
		{
			var _card_chosen_successfully = false; //bool flag, set to true if the player successfully clicked a valid card.
			with(obj_base_human) {
				if(self.choose_card(_card_x, _card_y, _this_card_type)) {
					show_debug_message("Card chosen");
					_i--;
					_card_chosen_successfully = true;
				}
				
			}
			
			if (_card_chosen_successfully)
			{
				card_game_phase = GAME_PHASE.OPPONENT_TURN; //change card game phase over to the opponent's turn to play a card down.
				ai_counter = 0;
			}
		}
		else
		{
			//darken player cards to make it clear they are inactive
			draw_sprite_ext(spr_card_front,0,_card_x,_card_y,1,1,0,c_dkgray,0.5);
		}
		
		_card_x += 80;
	}
}
