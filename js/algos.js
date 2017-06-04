/*write a function that takes an array of words or phrases and returns 
the longest word or phrase in the array. 

make a loop to make a object which hold pairs with the word(or phrase) and the it's length.
compare the length and pick a longest one
   How to pcik a longest one?? 
     compare the first one and next one ane if the first one is greater than second one
     keep the fiest one otherwize keep the next one and so on...
print the one till last

added commetns */

var array = ["long phrase","longest phrase","longer phrase"];
//console.log(array);
var match_length = {};

for (var i = 0; i < array.length; i++) {
	match_length[array[i]] = array[i].length;
}

console.log(match_length)