/// @description Insert description here
// You can write your code in this editor


//this object gets created in order to setup a card game. Once we arrive in the card game room, it sets up the game, then instantly self-destructs upon starting the card game.
opponent_military = 0;
opponent_economy = 0;
opponent_science = 0;

// What type of ai logic will the opponent use?  0 is default ai
opponent_flavor = 0;

player_military = 0;
player_economy = 0;
player_science = 0;

return_to_room = MapRoom;
return_to_x = 64;
return_to_y = 64;
return_to_dir = DIR.DOWN;