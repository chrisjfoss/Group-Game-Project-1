/// @description Insert description here
// You can write your code in this editor
event_inherited();

function spend_batteries(_resource, _cost) {
	var _succeeded = false;
	var _remaining = _resource;
	
	if(_remaining >= _cost) {
		_remaining-= _cost;
		_succeeded = true;
	}
	
	return { _remaining, _succeeded };
}

function purchase(resource, amount, cost) {
	creator = self;
	var _result = spend_batteries(global._player_resources.BATTERIES, cost);
					
	global._player_resources.BATTERIES = _result._remaining;
	
	creator = self;
	if(_result._succeeded) {
		global._player_resources[$ resource] += amount;
		dlog_continue(4)
	}
	else {
		dlog_continue(3)
	}
}



dlog[0] = ["The boss here is ruling with an iron fist, a lot of citizens want out.^1",dlog_continue];
dlog[1] = [ "Looking to hire anyone?", [
				"Banker: 10 Batteries",
				function() {
					purchase("ECONOMY", 1, 10);
				},
				"Soldier: 30 Batteries",
				function() {
					purchase("MILITARY", 1, 30);
				},
				"Engineer: 50 Batteries",
				function() {
					purchase("SCIENCE", 1, 50);
				},
				"No^2"
			]];
dlog[2] = [ "That's too bad. Maybe some other time.^4", dlog_continue]; 
dlog[3] = ["You can't afford that right now. Come back after earning some more batteries.^1", dlog_continue];
dlog[4] = ["Thanks for your business!^1", dlog_goto];
