/**
 * @function check_hidden_num
 * @desc This function looks for hidden numbers at the end of a string denoted by ^ and returns either the string without the number or the number itself. This function returns -1 if no numnber is found.
 * @param {String} str The string to look for the nidden number in
 * @param {String} ret Whether to return the string ("string") or the number ("number")
 */

function check_hidden_num(str, ret = "number"){
	// Set vars
	var num = "0"; 
	
	// Find the ^ in the string
	var pos = string_pos("^", str); 
	
	// If ^ is found, do this
	if (pos != 0) {
		
		// Extract everything from one space after ^ to the end of the hidden number
		num = string_copy(str, pos + 1, string_length(str) - pos);
		
		// If all you want is the number, you're done
		if (ret == "number") {
			return real(num); 
		
		// We want the string, not the number. 
		} else if (ret == "string") {
			return string_copy(str, 1, pos - 1);
		}
	}
	
	// Default returns in case the ^ character isn't found
	if (ret == "number") {
		return -1; // Default to -1 if no ^ is found
	} else {
		return str; // Return the full string unchanged if no ^ is found
	}
}