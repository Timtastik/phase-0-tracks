/*
PSUEDO CODE
- A function that takes in a string as a parameter
- The function will store the characters of the string into an array
- The function will loop to make last charcters in first
-- and front characters last
- The function will return the backwards string 
*/

function reverse_string(input_string){
	var array_of_string = [];
	var backwards_string = [];

	for (var i = 0; i < input_string.length; i++) {
		array_of_string += input_string[i];
	};

	console.log(array_of_string);

	for (var i = array_of_string.length - 1; i >= 0; i--) {
		backwards_string += array_of_string[i]
	};

	console.log(backwards_string)

};

// DRIVER TEST CODE

reverse_string("hello");