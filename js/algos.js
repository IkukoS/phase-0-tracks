/*
Relese 0
write a function that takes an array of words or phrases and returns 
the longest word or phrase in the array. 

take an array with some words or phrases
set the first word as a longest word
compare the word to other words one by one.
if the other word is longer than the fist word assign the word as longest word.
at the end print the longest word.

*/
/*
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
*/
/*
Relese 1
write a function that takes two objects and checks to see 
if the objects share at least one key-value pair.

Take two objecs 
find out the keys words so that I can access to the values
check if the sames keys value is same or not
if they are same store ture to an array.
if they are not same store false in the same array
after checked all the keys check that if the array includes ture.
if it includes true print true otherise orint false
*/

/*
function keyValueMatch(data1, data2) {
	var keys = []
	  for (var key in data1) {
	      keys.push(key);
	  }
	tfArray = []
		for (var i = 0; i < keys.length; i++) {
			if (data1[keys[i]] === data2[keys[i]] ) {
				tfArray.push(true)
			}else{
				tfArray.push(false)
			}
		}

	if (tfArray.includes(true)) {
		console.log(true);
	}else{
		console.log(false);
	}
}

keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});  
keyValueMatch({animal: "Cat", legs: 4}, {animal: "Dog", legs: 3});  
keyValueMatch({name: "Steven", age: 54, gender: "male"}, {name: "Tamir", age: 54, gender: "female"});
keyValueMatch({name: "Steven", age: 54, gender: "male"}, {name: "Tamir", age: 29, gender: "female"});
*/



/*
Relese 2
Write a function that takes an integer for length,
and builds and returns an array of strings of the given length
make an array so that I can store the letters I generate
How to make a rondom word => pick a rondomnumber one to 10
console.log(Math.ceil(Math.random()*10))
pick a romdon letter from alphabet array then store it an array romdom times.
make the letters array in to a string and store the word to an array


*/


/*
function wordGenerater(num) {
	var array = [];

for (var word = 0; word < num; word++){
  	array.push(word);

	var letterArray = [];
	var letters =
    ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  
  		letterArray = []
				for (var i = 0; i < Math.ceil(Math.random()*10); i++) {
		  	letterArray.push(letters[Math.floor(Math.random()*letters.length)]);
		  	word = letterArray.join("");
		    }
		  
		  for (var i = 0; i < num; i++){
  	array.push(word);
}
		    console.log(array)
   }
   

  
  
  //array.push(picked)
  
  //console.log(words);
}

wordGenerater(4)
*/









