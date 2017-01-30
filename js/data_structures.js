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

	console.log("CAR INITIALIZATION COMPLETE");
};

var car1 = new Car(2002, "Honda", "Accord");
console.log(car1);
car1.vroom();

console.log("\n");

var car2 = new Car(1993, "Mazda", "Rx-7");
console.log(car2);
car2.vroom();