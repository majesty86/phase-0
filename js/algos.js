// Release 0
// Find the Longest Phrase

// This function will find the longest string in an array of strings (phrases).  

// Create an array of phrases and assign to a variable.
// Find the length of each phrase in the array.
// Compare the phrase lengths in a function, and return the longest one.

var phrase_array = ["call me as asap as possible", "thats what she said", "later guys"];

var phrase_array2 = ["don't let your babies grow up to be cowboys", "fishing in the dark", "a boy named sue"];

// console.log(phrase_array[0].length);
// console.log(phrase_array[1].length);
// console.log(phrase_array[2].length);

function longest_phrase(array) {
    if (array[0].length > (array[1].length && array[2].length)) {
        console.log(array[0]);
    } else if ((array[1].length) > (array[0].length) && (array[2].length)) {
        console.log(array[1]);
    } else if ((array[2].length) > (array[1].length) && (array[0].length)) {
        console.log(array[2])     
    }
  }

longest_phrase(phrase_array);
longest_phrase(phrase_array2);

// Release 1
// Find a Key-Value Match

// This function will take two separate objects and check to see if they share at least one key-value pair.



