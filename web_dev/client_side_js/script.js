function hover(){
	event.target.style.backgroundColor="blue";
};

function hover_out(){
	event.target.style.backgroundColor="white";
};

function resizing(){
	event.target.style.fontSize="20em";
};

function smaller(){
	event.target.style.fontSize=".5em";
};

var tom_header = document.getElementById("tom");
var dudes = document.getElementById("guys");
var stored = document.getElementById("secondhalf");

tom_header.addEventListener("mouseover", hovering);
tom_header.addEventListener("mouseout", out);
timtom.addEventListener("resize", resizing);
stored.addEventListener("click", smaller);
parent.addEventListener("mouseover", hovering);

console.log("script is running");