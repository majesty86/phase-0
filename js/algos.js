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
  
// function findMatch(obj1, obj2) {
//   for(key in obj1) {
//     pair1 = (key + " " + obj1[key]) 
//   }
//   for(key in obj2) {
//     pair2 = (key + " " + obj2[key])
//   }
//     if (pair1 == pair2)
//       console.log(true);
//     else 
//       console.log(false);
//   }

// function randomTestData(int) {
//   var words_array = [];
//   var i = words_array.length;
//     while (i < int) {
//   var random_word = (Math.random().toString(36).slice(2, Math.floor(Math.random() * 10) + 1)); {
//       words_array.push(random_word);
//       i++;
//     }
//   }
//       console.log(words_array);
//       longestPhrase(words_array);
// }




console.log(longestPhrase(phrase_array));
console.log(longestPhrase(phrase_array2));

// find_match(ukulele, violin);
// find_match(ukulele, guitar);
// find_match(violin, guitar);


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