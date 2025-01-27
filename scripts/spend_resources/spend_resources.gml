// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spend_resource(_resource, _cost, _skip_if_unable) {
	var _succeeded = false;
	var _remaining = _resource;
	
	if(_remaining >= _cost) {
		_remaining-= _cost;
		_succeeded = true;
	}
	
	if(_succeeded != true && _skip_if_unable = false) {
		_remaining = 0;
	}
	
	return { _remaining, _succeeded };
}

function spend_batteries(_cost, _skip_if_unable = false) {
	var _result = spend_resource(global._player_resources.BATTERIES, _cost, _skip_if_unable);
	
	global._player_resources.BATTERIES = _result._remaining;
	
	return _result._succeeded;
}

function purchase_resource(_resource, _amount, _cost) {
	var _succeeded = spend_batteries(_cost, true);
	if(_succeeded) {
		global._player_resources[$ _resource] += _amount;
	}
	
	return _succeeded;
}