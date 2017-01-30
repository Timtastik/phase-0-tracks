var colors = ["green", "red", "blue", "yellow"];
var names = ["Ed", "Sea Biscuit", "Joe", "Speedster"];

colors.push("magenta");
names.push("Tornado");
console.log(colors);
console.log(names);

var horse = {};

if (names.length == colors.length) {
	for (var i = 0; i < names.length; i++) {
		horse[names[i]] = colors[i];
	};
};

console.log(horse);