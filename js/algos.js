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

function longest_phrase(array) {
  if (array[0].length > (array[1].length && array[2].length)) {
       console.log(array[0]);
  } else if ((array[1].length) > (array[0].length) && (array[2].length)) {
        console.log(array[1]);
  } else if ((array[2].length) > (array[1].length) && (array[0].length)) {
        console.log(array[2])     
    }
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




// longest_phrase(phrase_array);
// longest_phrase(phrase_array2);

find_match(ukulele, violin);
find_match(ukulele, guitar);
find_match(violin, guitar);



