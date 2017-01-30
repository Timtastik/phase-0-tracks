// DO THE THING 1
var colors = ["green", "red", "blue", "yellow"];
var names = ["Ed", "Sea Biscuit", "Joe", "Speedster"];

colors.push("magenta");
names.push("Tornado");
console.log(colors);
console.log(names);

console.log("\n");

// DO THE THING 2
var horse = {};

if (names.length == colors.length) {
	for (var i = 0; i < names.length; i++) {
		horse[names[i]] = colors[i];
	};
};

console.log(horse);

console.log("\n");

// DO THE THING 3
function Car(year, make, model){

	this.year = year;
	this.make = make;
	this.model = model;

	this.vroom = function(){ console.log("*VROOM VROOM*"); };
	this.lights = function(){ console.log("*TURN LIGHTS ON"); };

	console.log("CAR INITIALIZATION COMPLETE");
};

var car1 = new Car(2002, "Honda", "Accord");
console.log(car1);
car1.vroom();

console.log("\n");

var car2 = new Car(1993, "Mazda", "Rx-7");
// car3[year] = 1992; Functions don't work like objects?
console.log(car2);
car2.lights();

console.log("\n");

var car3 = new Car(2000, "Toyota", "Corolla");
car3.year = 1996;
console.log(car3);

// SIDE NOTE TO SELF
// When calling a function with no parameters...
// you need empty parathesis after the call