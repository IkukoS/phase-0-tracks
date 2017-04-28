puts "Please enter any name you want."

# spy's real name is Felicia Torres 
# Change the name to a fake one!

# assign the name as a string of two words.
name = gets.chomp

#before start changing changeable name, Keep the input as original name.
changeable_name = name
  while changeable_name != "exit"
  
    original_name = changeable_name
# Swapping the first and last name.
# make an array of words and give the array name.
    arr_full_name = changeable_name.split(' ')

# swich the items in the array.
    arr_full_name[0], arr_full_name[1] = arr_full_name[1], arr_full_name[0]

# make a string 
    revers_name = arr_full_name.join(' ')

#make all the letter to individual letters.
    revers_name.chars

# rename so that the name is shoter and easier to understand
    split_letters = revers_name.chars

#after modiffied the data,store the new data under new name

    new_split_letters = []

# make the vowels and space as exceptions.
# make ege case an exception : z => b
# other letters just go to the next letter.
# make the upper case as exception.

    next_vowel = ["a", "e", "i", "o", "u"]

    split_letters.each do |letter|
      if letter == "a"
           new_split_letters << next_vowel[1]
          elsif letter == "e"
           new_split_letters << next_vowel[2]
          elsif letter == "i"
           new_split_letters << next_vowel[3]
          elsif letter == "o"
           new_split_letters << next_vowel[4]
          elsif letter == "u"
           new_split_letters << next_vowel[0]
          elsif letter == " "
           new_split_letters << " "
          elsif letter == "z"
           new_split_letters << "b"
          elsif letter =="A"         
           new_split_letters << next_vowel[1].upcase
          elsif letter == "E"
           new_split_letters << next_vowel[2].upcase
          elsif letter == "I"
           new_split_letters << next_vowel[3].upcase
          elsif letter == "O"
           new_split_letters << next_vowel[4].upcase
          elsif letter == "U"
           new_split_letters << next_vowel[0].upcase
          elsif letter == "Z"
           new_split_letters << "B"
        else
       new_split_letters << letter.next
      end
    end

# make a new string = new name :)

new_name = new_split_letters.join(" ")
p new_name

# change the name till you find the one you like.

puts "If you do not like this name, please enter a new name, otherwise just type 'exit'."
changeable_name = gets.chomp

end

# print the new name and original name for the one you picked. 
puts "#{new_name} is actually #{original_name}."