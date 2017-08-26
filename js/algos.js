// Release 0
// Find the Longest Phrase

// This function will find the longest string in an array of strings (phrases).  

// Create an array of phrases and assign to a variable.
// Define single variable to work with (related to the array) inside the function.
// Loop through the array, calling a length method on each element.
// Write if statement to return string if it is the longest phrase, compared to other
// elements in the array.

// Release 1
// Find a Key-Value Match

// This function will take two separate objects and check to see if they share at least one key-value pair.

  // Create three objects with key-value pairs.  Two should have a matching key-value pair, and one shouldn't.
  // Write a function that states whether these objects have matching key-pair values.
      // First, define each part of the object as variables - each key and each value.
      // Once these variables are defined, you can 
  // Output from the function should be true or false.

// Release 2

var phrase_array = ["later guys", "thats what she said", "call me as asap as possible"];
var phrase_array2 = ["don't let your babies grow up to be cowboys", "fishing in the dark", "a boy named sue"];

var guitar = {play_with: 'pick', strings: 6};
var violin = {play_with: 'bow', strings: 4};
var ukulele = {play_with: 'fingers', strings: 4};

function longestPhrase(array) {
  var longestString = array[0];

  for (var i = 0; i < array.length; i++) {
    if (longestString.length < array[i].length) {
      longestString = array[i];
    }
  }
  return longestString;
}
  
function findMatch(objA, objB) {
  for(var key in objA) {
    if (objA[key] === objB[key]) {
      return true
    }
  }
  return false
}

// THIS WORKED!  BUT - it's prone to bugs, and it only accounts for 2 objects,
// like your former Release 0 on this project.  Hours wasted, but you stayed with it.
// 

  // var i0A = 0;
  // var key0A = Object.keys(objA)[i0A];
  // var value0A = objA[key0A];
  // var pair0A = key0A + " " + value0A;

  // var i1A = 1;
  // var key1A = Object.keys(objA)[i1A];
  // var value1A = objA[key1A];
  // var pair1A = key1A + " " + value1A;

  // var i0B = 0;
  // var key0B = Object.keys(objB)[i0B];
  // var value0B = objB[key0B];
  // var pair0B = key0B + " " + value0B;

  // var i1B = 1;
  // var key1B = Object.keys(objB)[i1B];
  // var value1B = objB[key1B];
  // var pair1B = key1B + " " + value1B;

  //   if ((pair0A == pair0B) || (pair1A == pair1B)) {
  //     return true 
  //   } else {
  //     return false
  //   }


// for (var key in obj1)


// function randomTestData(int) {
//   var words_array = [];
//   var i = words_array.length;
//     while (i < int) 
//     // in here, do random alphabet string {
//   var random_word = (Math.random().toString(36).slice(2, Math.floor(Math.random() * 10) + 1)); {
//       words_array.push(random_word);
//       i++;
//     }
//   }
//       console.log(words_array);
//       longestPhrase(words_array);
// }

// create randomWord function that takes int parameter 
// create var to represent alphabet
// create var that is ""
// iterate int number of times
  // generate random number from 0 to 25
  // pull letter at that index out of alphabet
  // append to ""
// return string that was once empty



// console.log(longestPhrase(phrase_array));
// console.log(longestPhrase(phrase_array2));

console.log(findMatch(ukulele, guitar));
console.log(findMatch(ukulele, violin));

// Here, break down the changes from the review of your challenge - where to start,
// and where to go from there.

// 1. Take pseudocode seriously.  Break big problems into smaller, more manageable ones.

// 2. Naming conventions - Ruby (snake_case) vs. JS (camelCase) - look it up!

// 3. Console.log are NOT returns.  You didn't return anything with these.  
// I'm not entirely understanding her feedback, but it seems like I can do both?

// 4. Notes on Release 0: 
  // Use fewer variables (thanks StackOverflow, ya jerks)
  // Longeststring ISN'T declared because I used "longestword" instead.  Simplify!
  // Use return, not console.log.

// 5. Notes on Release 1: 
  // Didn't declare variables, so do that.
  // Use 'return' not console.log again
  // Compare values/keys directly instead of defining strings or whatever you did
  // Use her function!!  Yay!

// 6. Notes on Release 2:
  // Write psuedocode for it, you forgot.  Maybe this was after the wall.
  // Again, undefined because no return, only console.log
  // Try to rewrite only using letters (darn, thought I'd get away with that)
  // AHHHH!!