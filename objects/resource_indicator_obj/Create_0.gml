/// @description Insert description here
// You can write your code in this editor

display_font = card_ft;

type = "player"; //player/opponent; determines which participant this resource indicator belongs to.

resource_spr_suit1 = suit_military_spr;
resource_spr_suit2 = suit_civilian_spr;
resource_spr_suit3 = suit_science_spr;

resource_value_suit1 = 2;
resource_value_suit2 = 2;
resource_value_suit3 = 2;

trick_flashes_left = 0; //flash white when a trick is awarded THIS MANY times.

tricks_taken = 0; //a counter that displays how many tricks this participant has taken total in this round.

animation_pip = 0;
alarm[0] = 20;