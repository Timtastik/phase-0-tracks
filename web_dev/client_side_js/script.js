

function hovering(){
	event.target.style.backgroundColor="blue";
};

function out(){
	event.target.style.backgroundColor="white";
};

function resizing(){
	event.target.style.fontSize="20em";
};

function smaller(){
	event.target.style.fontSize=".5em";
};



var timtom = document.getElementById("timtom");
var dudes = document.getElementById("guys");
var stored = document.getElementById("secondhalf");
var parent = document.getElementsByTagName("ol").parentNode;

dudes.addEventListener("mouseover", hovering);
dudes.addEventListener("mouseout", out);
timtom.addEventListener("resize", resizing);
stored.addEventListener("click", smaller);
parent.addEventListener("mouseover", hovering);

console.log("script is running");