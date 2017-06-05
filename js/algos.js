

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






function wordGenerater(num) {
  var array = [];
  for (var n = 0; n < num; n++) {

	var letterArray = [];
	var letters =
    ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  
				for (var i = 0; i < Math.ceil(Math.random()*10); i++) {
		  	letterArray.push(letters[Math.floor(Math.random()*letters.length)]);
		  	word = letterArray.join("");
		    }

  array.push(word);
  
  }

 console.log(array);

}

wordGenerater(4);











