// take a word and make it a backwards
// make a word one by one and print it from the last letter and make it one word again

// store the result and print it only if the newword is same as the word manualy wrote one.
var str = "Loop over me!";
	reverseWord = ""

for (var i = str.length - 1; i >= 0 ; i--) {
	reverseWord +=str[i];
}

// console.log(reverseWord);

if (reverseWord === "!em revo pooL"){
  console.log(reverseWord);
}

