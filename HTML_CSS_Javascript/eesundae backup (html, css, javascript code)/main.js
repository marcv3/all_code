    
    var hidden = document.querySelectorAll("#hidden"); /* dropdown menu unordered list */
	var hidden2 = document.querySelectorAll("#hidden2");
    var button = document.querySelectorAll("#button"); /* button for dropdown menu */
    var button2 = document.querySelectorAll("#button2");
	var blackBolt = document.querySelectorAll("#blackBolt");
	var whiteBolt = document.querySelectorAll("#whiteBolt");
	
	var URL = document.URL;
	var menuState000 = 1;
    var menuState00 = 1; /* toggles whether dropdown menu is up or down */
    var menuState10 = 1;
	var menuState11 = 1;
	var menuState12 = 1;
	var menuState13 = 1;
	
	button[0].addEventListener("click", buttonHandler000, false);
    button[1].addEventListener("click", buttonHandler00, false);
	//button[0].addEventListener("mouseover", mouseoverHandler, false);
	//button[0].addEventListener("mouseout", mouseoutHandler, false);
  //  button[1].addEventListener("click", buttonHandler01, false);  
    button2[0].addEventListener("click", buttonHandler10, false);   
    button2[1].addEventListener("click", buttonHandler11, false);  	 
    button2[2].addEventListener("click", buttonHandler12, false);
    button2[3].addEventListener("click", buttonHandler13, false);



function buttonHandler000(){
console.log("buttonHandler000");
if(menuState000){
    hidden[0].style.display = "inline";
	blackBolt[0].style.display = "none";
	whiteBolt[0].style.display = "inline";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[0].style.backgroundColor = "#33C";
    menuState000 = 0;
} else {
    hidden[0].style.display = "none";
	blackBolt[0].style.display = "inline";
	whiteBolt[0].style.display = "none";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[0].style.backgroundColor = "transparent";
    menuState000 = 1;
    }	
}

	    
function buttonHandler00(){
console.log("buttonHandler00");
if(menuState00){
    hidden[1].style.display = "inline";
	blackBolt[1].style.display = "none";
	whiteBolt[1].style.display = "inline";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[1].style.backgroundColor = "#33C";
    menuState00 = 0;
} else {
    hidden[1].style.display = "none";
	blackBolt[1].style.display = "inline";
	whiteBolt[1].style.display = "none";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[1].style.backgroundColor = "transparent";
    menuState00 = 1;
    }
    }

function buttonHandler10(){
console.log("buttonHandler10");
if(menuState10){
    hidden2[0].style.display = "inline";
	blackBolt[2].style.display = "none";
	whiteBolt[2].style.display = "inline";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[2].style.backgroundColor = "#33C";
    menuState10 = 0;
} else {
    hidden2[0].style.display = "none";
	blackBolt[2].style.display = "inline";
	whiteBolt[2].style.display = "none";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[2].style.backgroundColor = "transparent";
    menuState10 = 1;
    }
    }

function buttonHandler11(){
console.log("buttonHandler11");
if(menuState11){
    hidden2[1].style.display = "inline";
	blackBolt[3].style.display = "none";
	whiteBolt[3].style.display = "inline";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[3].style.backgroundColor = "#33C";

    menuState11 = 0;
} else {
    hidden2[1].style.display = "none";
	blackBolt[3].style.display = "inline";
	whiteBolt[3].style.display = "none";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[3].style.backgroundColor = "transparent";
    menuState11 = 1;
    }
    }

function buttonHandler12(){
console.log("buttonHandler12");
if(menuState12){
    hidden2[2].style.display = "inline";
	blackBolt[4].style.display = "none";
	whiteBolt[4].style.display = "inline";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[4].style.backgroundColor = "#33C";
	
    menuState12 = 0;
} else {
    hidden2[2].style.display = "none";
	blackBolt[4].style.display = "inline";
	whiteBolt[4].style.display = "none";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[4].style.backgroundColor = "transparent";
    menuState12 = 1;
    }
    }
	
function buttonHandler13(){
console.log("buttonHandler13");
if(menuState13){
    hidden2[3].style.display = "inline";
	blackBolt[5].style.display = "none";
	whiteBolt[5].style.display = "inline";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[5].style.backgroundColor = "#33C";	

    menuState13 = 0;
} else {
    hidden2[3].style.display = "none";
	blackBolt[5].style.display = "inline";
	whiteBolt[5].style.display = "none";
	window.document.getElementsByClassName("navigator")[0].getElementsByTagName("span")[5].style.backgroundColor = "transparent";
    menuState13 = 1;
    }
    }

/* start URL project */
var str = URL.search("main");
var NAME = URL.substring(str,(str+15));
console.log(NAME);

if(NAME === "main/blog/"){
console.log("main");
window.document.getElementsByTagName("li")[0].getElementsByTagName("a")[0].style.color = "white";
window.document.getElementsByTagName("li")[0].getElementsByTagName("a")[0].style.backgroundColor = "#33C";
	
} else if(NAME === "main/tutorials/"){
console.log("tutorials");
window.document.getElementsByTagName("li")[2].getElementsByTagName("a")[0].style.color = "white";
window.document.getElementsByTagName("li")[2].getElementsByTagName("a")[0].style.backgroundColor = "#33C";
var x = window.document.getElementsByTagName("li")[1].getElementsByTagName("ul")[0];
x.getElementsByTagName("li")[3].style.backgroundColor = "white";
for(var i = 0; i < 3; i++){
x.getElementsByTagName("li")[i].style.backgroundColor = "white";
}

}else if(NAME === "main/about/"){
console.log("about");
window.document.getElementsByTagName("li")[19].getElementsByTagName("a")[0].style.color = "white";
window.document.getElementsByTagName("li")[19].getElementsByTagName("a")[0].style.backgroundColor = "#33C";	

}else if(NAME === "main/tutoring/"){
console.log("tutoring");
window.document.getElementsByTagName("li")[20].getElementsByTagName("a")[0].style.color = "white";
window.document.getElementsByTagName("li")[20].getElementsByTagName("a")[0].style.backgroundColor = "#33C";	

}else if(NAME === "main/resources/"){
console.log("tutoring");
window.document.getElementsByTagName("li")[21].getElementsByTagName("a")[0].style.color = "white";
window.document.getElementsByTagName("li")[21].getElementsByTagName("a")[0].style.backgroundColor = "#33C";	
}



/* end URL project */