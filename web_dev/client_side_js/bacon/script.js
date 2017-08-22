console.log("The script is running fast!");

var content = document.getElementsByTagName('div');
var content = content[0];
var para = document.createElement('p');
var node = document.createTextNode('I love bacon!');
var baconPhoto = document.getElementById("bacon-heart-photo");

para.appendChild(node);

content.appendChild(para);

content.childNodes[9].parentNode.insertBefore(content.childNodes[9], baconPhoto);
