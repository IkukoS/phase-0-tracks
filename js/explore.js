var str = "Loop over me!";

// make a empty container so that I can store the letters and give a name for that.
var reverseString = '';

// Go through the letters from the back and put the letters into the cintainer I made
// Start from the last letters means I need to know how many letters in the word 
// Then start from the number of the letter in the word. 
// Just put the letter in the container.
// Check the next last letter and put it in the contaner.
// Keep doing the same things untill the furst letter.
for (var i = str.length - 1; i >=0 ; i--) {
  reverseString += str[i];
}

//Print the new word
	console.log(reverseString);

var newWord = "!em revo pooL";

if (newWord === reverseString) {
console.log(newWord + " = " + reverseString);
}




