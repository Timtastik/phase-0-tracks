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
		} // if
	}; // for

	return long_string;

}; // function

console.log(longest_string(strings));

// If stumped, look through code very carefully at each thing!
// The logic you may have, but syntax is key!

// DO THE THING 2
// PSEUDO CODE
// Have 3 different objects with many key-value pairs to run the function
// Make a function that compares key-value of the objects
// If one instance where key-value shares the same value then return true
// Otherwise return false
// Function should iterate through all the property values in the object
// Problem in different property names, but same value?

console.log("DO THE THING 2")

var person1 = {name: "G Eazy", "ethnicity": "white", age: 22};
var person2 = {nickname: "Eminem", rap_song: "Rap God", age: 22};
var person3 = {"name": "Kehlani", attractive: true, "age": 20};

function key_value_pair(object1, object2){
	var object1_keys = Object.keys(object1);
	var object2_keys = Object.keys(object2);
	var bool = false;
	// Does interloop then outerloop
	for(var i = 0; i < object1.length; i++){
		for(var n = 0; n < object2.length; n++){
			if (object1[object1_keys[i]] == object2[object2_keys[n]]) {
				var bool = true;
			}; 
		};
	};

return bool;

};

console.log(key_value_pair(person1, person2));