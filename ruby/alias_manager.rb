# write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name 
def alias_name(name)
# make the words to lower case
     name = name.downcase
# change the name to an array with two items then swith the items.
 	 array_name = name.split(' ')
# switch the items place
 	 reversed_name = array_name.reverse!
# woking one the first item only. Pidk the first word and make it letters.
	p last_name = reversed_name[0].split('')
# if the letter is vowel chenge the word to the next one.
# make a vowel array 
 vowels = ["a", "e", "i", "o", "u"] 
 consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z" ]
  
last_name.each do |letter|
  if vowels.include?(letter) == true
    if letter == "u"
        p letter = "a"
      else
        p letter = vowels[vowels.index(letter).to_i + 1] 
    end
     
    else
      consonants.include?(letter) == true
        if letter == "z"
            p letter = "b"
          else
            p letter = consonants[consonants.index(letter).to_i + 1]
        end
    end
  end 
end	 

alias_name("Felicia Torres")