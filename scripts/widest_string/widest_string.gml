/**
 * @function widest_string
 * @desc This function finds the widest string in an array of strings and returns its width
 * @param {Array} arr The array of strings to find the width of
 * @returns {Real}
 */

function widest_string(arr){
	var widest_str = 0; 
	for (var i = 0; i < array_length(arr); i++) {
		var a = widest_str;
		var b = string_width(arr[i]); 
		widest_str = max(a, b);
	}
	
	return widest_str; 
}