
function writeLine(identifier, text) {
	document.getElementById(identifier).innerHTML = text;
}

function writeRandom(identifier) {
	var spit = ["Hello World!", "Foo", "Bar", "Whee!"];
	document.getElementById(identifier).innerHTML = spit[Math.floor(Math.random()*spit.length)];
}