function hover(){
	event.target.style.backgroundColor="blue";
};

function hover_out(){
	event.target.style.backgroundColor="white";
};

function hello(){
	alert("Hello there!");
};

function smaller(){
	event.target.style.fontSize=".5em";
};

function insert_new(){
	var new_header = document.createElement("h4");
	var node = document.createTextNode("HOPE YOU HAVE A GREAT DAY!!!");
	new_header.appendChild(node);

	var el = document.getElementById("editing");
	var kid = document.getElementById("alright");
	el.insertBefore(new_header, kid);
};

function turn_red(){
	event.target.style.color="red";
};

var tom = document.getElementById("tom");
var title = document.getElementById("title");
var tim = document.getElementById("tim");
var red = document.getElementsByClassName("red");

tom.addEventListener("mouseover", hover);
tom.addEventListener("mouseout", hover_out);
title.addEventListener("click", hello);
tim.addEventListener("click", smaller);
insert_new();

for(var i = 0; i < red.length; i++){
	red[i].addEventListener("mouseover", turn_red);
};

console.log("script is running");