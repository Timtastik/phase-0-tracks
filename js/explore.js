/*
PSUEDO CODE
- A function that takes in a string as a parameter
- The function will store the characters of the string into an array
- The function will loop to make last charcters in first
-- and front characters last
- The function will return the backwards string 
*/

function reverse_string(input_string){

	var backwards_string = "";
	// Instead of incrementing by adding, increment by going from max length til 0
	for (var i = input_string.length - 1; i >= 0; i--) {
		backwards_string += input_string[i];
	};

	return backwards_string;

};

// DRIVER TEST CODE

if (reverse_string("stressed") == "desserts") {
	console.log(reverse_string("hello"));
};

// SIDE NOTE TO SELF
// Always remember to put the ;;;;;;;;;;;;;;;;;;;