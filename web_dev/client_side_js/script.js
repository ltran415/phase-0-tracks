console.log("Hello World");

var title = document.getElementsByTagName('h1');
title[0].style.border = '3px solid red';







var newParagraph = document.createElement('p');
var paraText = document.createTextNode('Trying to add this in using our js.');
newParagraph.appendChild(paraText);


var firstHeading = document.getElementsByTagName('h1');
var realHeading = firstHeading[0];
realHeading.appendChild(newParagraph);
var parent = realHeading.parentNode;
parent.insertBefore(newParagraph,realHeading);
