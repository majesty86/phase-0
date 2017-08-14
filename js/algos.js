// Release 0
// Find the Longest Phrase

// This function will find the longest string in an array of strings (phrases).  

// Create an array of phrases and assign to a variable.
// Find the length of each phrase in the array.
// Compare the phrase lengths in a function, and return the longest one.

// Release 1
// Find a Key-Value Match

// This function will take two separate objects and check to see if they share at least one key-value pair.

  // Create three objects with key-value pairs.  Two should have a matching key-value pair, and one shouldn't.
  // Write a function that states whether these objects have matching key-pair values.
  // Output from the function should be true or false.

var phrase_array = ["call me as asap as possible", "thats what she said", "later guys"];
var phrase_array2 = ["don't let your babies grow up to be cowboys", "fishing in the dark", "a boy named sue"];

var guitar = {play_with: 'pick', strings: 6};
var violin = {play_with: 'bow', strings: 4};
var ukulele = {play_with: 'fingers', strings: 4};

// Initially, I psuedocoded and created this myself, and it worked for release 0, but only took three strings.  

// function longest_phrase(array) {
//   if (array[0].length > (array[1].length && array[2].length)) {
//         console.log(array[0]);
//   } else if ((array[1].length) > (array[0].length) && (array[2].length)) {
//         console.log(array[1]);
//   } else if ((array[2].length) > (array[1].length) && (array[0].length)) {
//         console.log(array[2])     
//     }
//   }

// Refactored into this instead:

function longest_phrase(array) {
  var largest = 0;
  var longeststring = " ";

  for (var i = 0; i < array.length; i++) {
    if (array[i].length > largest) {
      largest = array[i].length;
      longestword = array[i];
    }
  }
  console.log(longestword)
}


function find_match(obj1, obj2) {
  for(key in obj1) {
    pair1 = (key + " " + obj1[key]) 
  }
  for(key in obj2) {
    pair2 = (key + " " + obj2[key])
  }
    if (pair1 == pair2)
      console.log(true);
    else 
      console.log(false);
  }

function random_test_data(int) {
  var words_array = [];
  var i = words_array.length;
    while (i < int) {
  var random_word = (Math.random().toString(36).slice(2, Math.floor(Math.random() * 10) + 1)); {
      words_array.push(random_word);
      i++;
    }
  }
      console.log(words_array);
      longest_phrase(words_array);
}




// longest_phrase(phrase_array);
// longest_phrase(phrase_array2);

// find_match(ukulele, violin);
// find_match(ukulele, guitar);
// find_match(violin, guitar);

console.log("~~~~~~~~~~")
console.log("Test 1")
console.log("~~~~~~~~~~")
random_test_data(2);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 2")
console.log("~~~~~~~~~~")
random_test_data(3);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 3")
console.log("~~~~~~~~~~")
random_test_data(4);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 4")
console.log("~~~~~~~~~~")
random_test_data(5);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 5")
console.log("~~~~~~~~~~")
random_test_data(6);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 6")
console.log("~~~~~~~~~~")
random_test_data(7);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 7")
console.log("~~~~~~~~~~")
random_test_data(8);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 8")
console.log("~~~~~~~~~~")
random_test_data(9);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 9")
console.log("~~~~~~~~~~")
random_test_data(10);

console.log(" ");
console.log("~~~~~~~~~~")
console.log("Test 10")
console.log("~~~~~~~~~~")
random_test_data(11);