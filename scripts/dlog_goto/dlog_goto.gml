/**
 * @function dlog_goto
 * @desc This function is designed exclusively to be used in the dialogue system. Specifically, it is to be used when the speaker asks a question. 
 It will have the speaker stop talking, and when they speak again, they will have the dialogue option set by the hidden instructions.
 */

function dlog_goto(){
	// Get the string being written. 
	var str = creator.dlog[creator.dlog_index]; 
	
	// Extract the instructions
	var n = check_hidden_num(str); // This deletes the instructions and returns a string of numbers
	
	// Apply the change
	creator.dlog_index = n;
	
	// Close the textbox as normal
	dlog_end(); 
}