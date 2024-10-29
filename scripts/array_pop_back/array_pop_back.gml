/**
 * @function array_pop_back
 * @desc This funciton takes the last entry out of an array
 * @param {Array} arr The array to remove the last entry from
 * @returns {Array}
 */

function array_pop_back(arr){
	
	var new_array = [];
	
	for (var i = 0; i < array_length(arr) - 1; i++) {
		new_array[i] = arr[i];
	}
	
	return new_array; 
}