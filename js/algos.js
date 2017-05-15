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

// Test with different arraies

longest_word(["a", "abc", "abcdefg", "abcdefghijklmn"])
longest_word(["I feel so good that I finally made it after three hours!!", "Yes!! I did ","I can sleep well tonight."])


// before make a function make sure the basic logic will work

var data1 = {name: "Steven", age: 54};
var data2 = {name: "Tamir", age: 54};

if (data1.name === data2.name || data1.age === data2.age){
  console.log("true");
}else{
  console.log("false")
}

// in repl it I can tell it is true or false however with sublime and terminal, it will not return so I printed out.
// make this as a function
// how to pass the parameter.....



// make an array with any desired numbers if items.
function wordGenerater(num){
	// create an empty array then make the items with 1,2,3 and so on
  var arr = [];
  for(var i =0; i < num ; i++){
    arr.push(i);
  }
  // replace the each items with romdom letters with random length up to 10
  for(var item =0; item < num ; item++){
     var ran_word = "";
     var possible = "abcdefghijklmnopqrstuvwxyz";

    for( var i=0; i < Math.floor(Math.random() * 10) + 1 ; i++ )
        ran_word += possible.charAt(Math.floor(Math.random() * possible.length));

    arr[item] = ran_word
  }
  console.log(arr)
}

wordGenerater(5);
console.log(arr)


