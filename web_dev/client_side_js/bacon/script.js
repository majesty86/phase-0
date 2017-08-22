console.log("The script is running fast!");

var content = document.getElementsByClassName('top');
var content = content[0];
var para = document.createElement('p');
var node = document.createTextNode('I love bacon!');
var baconPhoto = document.getElementById("bacon-heart-photo");
var baconDance = document.getElementById("dancing-bacon");
var danceOn = document.getElementById('dance-on');
var danceOff = document.getElementById('dance-off');


// function giveBorder() {
//   console.log("Click happened!  Here's the click event:");
//     baconDance.style.border = "5px solid green";
// }

// function danceOn() {
//   console.log("Click happened!  Here's the click event:");
//     baconDance.src='dancingbacon.webp'
// }

// event.addEventListener("click", makeGuyStopDancing)

// function makeGuyStopDancing() {
//   console.log("Click happened!  Here's the click event:");
//   console.log(event);
// }


para.appendChild(node);
content.appendChild(para);
content.childNodes[9].parentNode.insertBefore(content.childNodes[9], baconPhoto);

// makeGuyDance('dance-on')
// makeGuyStopDancing('dance-off')