// DO THE THING 1
// PSEUDO CODE
// Have a bunch of strings in an array
// Iterate through the array of strings to see which has longest length
// If string is the longest then store that into a variable
// Keep looping until checks all the strings of the array
// Case if more than one string is the longest ?

var strings = ["long", "short", "something", "absolutely the longest one"];

function longest_string(array_of_strings){
	var long_string = "";

	for(var i = 0; i < array_of_strings.length; i++){
		if(long_string.length < array_of_strings[i].length) {
			long_string = array_of_strings[i];
		}; // if
	}; // for

	return long_string;

}; // function

console.log(longest_string(strings));

// If stumped, look through code very carefully at each thing!
// The logic you may have, but syntax is key!