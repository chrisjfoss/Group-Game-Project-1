/// @description Insert description here
// You can write your code in this editor
event_inherited();

function purchase(resource, amount, cost) {
	creator = self;
	var _succeeded = purchase_resource(resource, amount, cost);
	
	creator = self;
	if(_succeeded) {
		dlog_continue(4);
	}
	else {
		dlog_continue(3);
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
