// Find out the longest word or phrase in the array.
// count how many letters in each word
// pick the longest word or phrase then print it.

// pick an item from the array
var array = ["long phrase","longest phrase","longer phrase"]
// print the wrod or phrase
// This test worked fine .......  console.log(array[0]);

// Check howlong the first item is.
// This test worked fine .......  console.log(array[0].length);

// Do samethings for the next item and if the length is larger than the last one print the word instaed .
// If the first item is longer than that judt keep printing same one.

// use loop for checking the lenght of the phrase or word
// first, print all the element length

for (var i = 0; i < array.length; i++) {
	console.log(array[i].length);

}