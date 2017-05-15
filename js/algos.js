/* Find out the longest word or phrase in the array.
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

// How to find difine which is the longest in the array and print as a result??
// deifine the items length as a valiable so that I can compare the next one.
// also define the longest item so that I can call it later.
var item_length = 0;
var longest;

for(var i=0; i < array.length; i++){
    if(array[i].length > item_length){
        var item_length = array[i].length;
        longest = array[i];
    }      
} 

console.log(longest);*/



//make the rule I found out as a function so that I can use other arraies

function longest_word(array){

var item_length = 0;
var longest;

for(var i=0; i < array.length; i++){
    if(array[i].length > item_length){
         item_length = array[i].length;
        longest = array[i];
    }      
} 

console.log(longest);

}

longest_word(["long phrase","longest phrase","longer phrase"]);

