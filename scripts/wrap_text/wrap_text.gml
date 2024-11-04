/**
 * @function wrap_text
 * @description The function adds line breaks to a string after a set width and returns either the new string or tne numnber of line breaks.
 * @param {String} str_to_wrap The string that needs to have line breaks inserted
 * @param {Real} w The allowed width of the string before a line break is added
 * @param {String} ret Which option to return, the wrapped string ("string") or the number of line breaks ("lines")
 */ 

function wrap_text(str_to_wrap, w, ret = "string"){
	
	// Remember to make sure the font is set before this function is run. 
	
	// Before wrapping, check the string for hidden numbers
	str_to_wrap = check_hidden_num(str_to_wrap, "string"); 
	
	// Establish Vars
	var new_str = ""; 
	var line_breaks = 1; 
	var last_space = 0;

	// Loop through the string looking for where to put a line break if anywhere.
	for (var i = 1; i <= string_length(str_to_wrap); i++) {
        
		// Build the new string incrementally by adding one character at a time
		new_str += string_char_at(str_to_wrap, i);
        
		// Find Last Space in the string
		if (string_char_at(str_to_wrap, i) == " ") {
			last_space = i;
		}
        
		// Check if the line needs to be wrapped
		if (string_width(new_str) >= w) {
			// Delete the last space from the new string
			new_str = string_delete(new_str, last_space, 1); 
			
			// Insert a line break at the last space position
			new_str = string_insert("\n", new_str, last_space);
			line_breaks++;

			// Reset the position after the break
			new_str = string_copy(new_str, 1, string_length(new_str));
		}
	}
    
	// Default behavior: Return the new string that is a copy of the old one with line breaks
	if (ret == "string") {
		show_debug_message($"wrap_text says: new stirng is {new_str}"); 
		return new_str;
	}
    
	// Secondary behavior, count how many line breaks there are. 
	if (ret == "lines") {
		return line_breaks;
	}
}

/**
 * @function wrap_text_array
 * @description The function adds line breaks to every string in an array after a set width and returns an array with the new strings
 * @param {Array} array_of_strings The array containing strings
 * @param {Real} width The allowed width of the string before a line break is added
 */ 

function wrap_text_array(array_of_strings, w) {

	// Wrap every entry in the array
	var array_len = array_length(array_of_strings); 
	var wrapped_text = [];
	for (var i = 0; i < array_len; i++) {
		
		if (is_string(array_of_strings[i])) { 
			wrapped_text[i] = wrap_text(array_of_strings[i], w);
		}
	}
	
	return wrapped_text; 
}
