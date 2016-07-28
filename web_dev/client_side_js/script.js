console.log("Hello World");

function addRedBorder(event) {
event.target.style.border = '3px solid red';
};

var title = document.getElementById('title');
title.addEventListener('click', addRedBorder);




var newParagraph = document.createElement('p');
var paraText = document.createTextNode('Trying to add this in using our js.');
newParagraph.appendChild(paraText);


var firstHeading = document.getElementsByTagName('h1');
var realHeading = firstHeading[0];
realHeading.appendChild(newParagraph);
var parent = realHeading.parentNode;
parent.insertBefore(newParagraph,realHeading);
