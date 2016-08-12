
function writeLine(identifier, text) {
	document.getElementById(identifier).innerHTML = text;
}

function writeRandom(identifier) {
	var spit = ["Hello World!", "Foo", "Bar", "Whee!"];
	document.getElementById(identifier).innerHTML = spit[Math.floor(Math.random()*spit.length)];
}

var num = 0;
	
function clickWarn(identifier) {
	num += 1;
	
	var spit = "Hey, you've clicked me " + num + " times already! Stop it!"
	
	if(num > 10) {
		document.getElementById(identifier).innerHTML = spit;
	}
}