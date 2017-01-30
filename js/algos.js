// DO THE THING 1
// PSEUDO CODE
// Have a bunch of strings in an array
// Iterate through the array of strings to see which has longest length
// If string is the longest then store that into a variable
// Keep looping until checks all the strings of the array
// Case if more than one string is the longest ?

console.log("DO THE THING 1")

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
var person2 = {nickname: "Eminem", ethnicity: "white", rap_song: "Rap God", age: 35};
var person3 = {"name": "Kehlani", attractive: true, "age": 20};

function key_value_pair(object1, object2){
	// Makes an array for the keys
	var object1_keys = Object.keys(object1);
	var object2_keys = Object.keys(object2);
	var bool = false;
	// Does interloop then outerloop

	for(var i = 0; i < object1_keys.length; i++){
		for(var n = 0; n < object2_keys.length; n++){
			if (object1[object1_keys[i]] == object2[object2_keys[n]]) {
				var bool = true;
			}; // if
		}; // for object2
	}; // for object1

	return bool;
};

console.log(key_value_pair(person1, person2));
console.log(key_value_pair(person1, person3));

// Objects do not have a length?...... Wow... -_- ... Makes sense though
// console.log(person1.length);

// SIDE NOTE: Maybe put a break in the loop of function? Redundant coding

// DO THE THING 3
// PSEUDO CODE
// Function that takes an integer and spits out an array of random
// - strings of that integer length
// The strings are random words between 1 letter to 10 letters
// Creating the random words is the more intense code...

console.log("DO THE THING 3");

function random_strings(integer){

	var gibberish_array = [];
	var abc = "abcdefghijklmnopqrstuvwxyz";

	for(var i = 0; i < integer; i++){
		var letter_count = Math.floor(Math.random()*10) + 1;
		var jargon = "";
		for(var n = 0; n < letter_count; n++){
			jargon += abc[Math.floor(Math.random()*25)];
		};
		gibberish_array.push(jargon);
	};

	return gibberish_array;

};

// console.log(Math.floor(Math.random()*10)+1);
console.log(random_strings(3));