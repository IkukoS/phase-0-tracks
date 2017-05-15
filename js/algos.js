// Find out the longest word or phrase in the array.
// count how many letters in each word
// pick the longest word or phrase then print it.

// pick an item from the array
array = ["long phrase","longest phrase","longer phrase"]
// print the wrod or phrase
console.log(array[0]);

// Check howlong the first item is.
console.log(array[0].length);

// Do samethings for the next item and if the length is larger than the last one print the word instaed .
// If the first item is longer than that judt keep printing same one.

// use loop for checking the lenght of the phrase or word
// first, print all the element length
array.forEach(function(element){
  console.log(element.length);
})