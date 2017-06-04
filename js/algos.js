/*
write a function that takes an array of words or phrases and returns 
the longest word or phrase in the array. 

take an array with some words or phrases
set the first word as a longest word
compare the word to other words one by one.
if the other word is longer than the fist word assign the word as longest word.
at the end print the longest word.

*/

function longestWordFinder(array) {

	var longestWord = array[0];

	for (var i = 1; i < array.length; i++) {   
		if(longestWord.length < array[i].length){
				  longestWord = array[i];
			}
	}
console.log(longestWord)  

}

longestWordFinder(["long phrase","longest phrase","longer phrase"])
longestWordFinder(["Happy birthday!","Nice to meet you!","Today is Sunday."])