function hover(){
	event.target.style.backgroundColor="blue";
};

function hover_out(){
	event.target.style.backgroundColor="white";
};

function bigger(){
	event.target.style.fontSize="20em";
};

function smaller(){
	event.target.style.fontSize=".5em";
};

var tom = document.getElementById("tom");
var title = document.getElementById("title");
var stored = document.getElementById("secondhalf");

tom.addEventListener("mouseover", hover);
tom.addEventListener("mouseout", hover_out);
title.addEventListener("resize", bigger);
// stored.addEventListener("click", smaller);
// parent.addEventListener("mouseover", hovering);

console.log("script is running");