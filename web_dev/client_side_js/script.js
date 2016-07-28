console.log("Hello World");

var newParagraph = document.createElement('p');
var paraText = document.createTextNode('Trying to add this in using our js.');
newParagraph.appendChild(paraText);


var firstHeading = document.getElementsByTagName('h1');
var realHeading = firstHeading[0];
realHeading.appendChild(newParagraph);
