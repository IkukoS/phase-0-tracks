# write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name 
def alias_name(name)
# make the words to lower case
     name = name.downcase
# change the name to an array with two items then swith the items.
 	 array_name = name.split(' ')
# switch the items place
 	 reversed_name = array_name.reverse!
# woking one the first item only. Pidk the first word and make it letters.
reversed_name.map! do |downname|
	  last_name = downname.split('')
	 
# if the letter is vowel chenge the word to the next one.
# make a vowel array ans a consonants array
 vowels = ["a", "e", "i", "o", "u"] 
 consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z" ]
# check the letters one by one 
last_name.map! do |letter|
#if the letter is vowel, use the vowel array and change the letter the next one.
  if vowels.include?(letter) == true
# make sure the last letter will goes back to the first letter
    if letter == "u"
       letter = "a"
      else
       letter = vowels[vowels.index(letter).to_i + 1] 
    end
# do same things for consonants    
    else
      consonants.include?(letter) == true
        if letter == "z"
           letter = "b"
          else
           letter = consonants[consonants.index(letter).to_i + 1]
        end
    end
  end 
 end
# put the letters back to words and make it capitalize 
 reversed_name.map! do|letters|
  letters.join.capitalize
end
# before connect two words, make sure there is a space between last and first name
reversed_name[1] = " #{reversed_name[1]}"
p reversed_name.join
end	 

# alias_name("Felicia Torres")


#Provide a user interface
name_want_change = ""
# store the names user want to change
names_to_change = []
# store the names after change
new_name = []
  loop do
    puts "Please enter a name you like (or type'quit'):"
    name_want_change = gets.chomp
    break if name_want_change == "quit"
     puts "Here is your sercret name!"
      sercret_name = alias_name(name_want_change)
      names_to_change << name_want_change
      new_name << sercret_name
     end
  p names_to_change
  p new_name

