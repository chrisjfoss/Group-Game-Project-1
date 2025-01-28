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



dlog[0] = ["Blessings of paradise be upon you, traveler.^1",dlog_continue];
dlog[1] = [ "Do you wise to partake in commerce?", [
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
dlog[2] = ["Perhaps another time.^4", dlog_continue]; 
dlog[3] = ["You can't afford that right now. Come back after earning some more batteries.^1", dlog_continue];
dlog[4] = ["Very good, may your fate be honorable and you will join us here in the next life.^1", dlog_goto];
