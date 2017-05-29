# game alass

# make a class
# take a original wrod as an argument
# count the letters of the word
# make an array with the number of _s
# take a guess words until the guess times is same as guess word letter numbers or usser enter the roriginal word.
# take a word to guess
# make an array of the letters of guess
# check the each letters if there are any letters in the original word
# if there are any letters in the original word find out the place of the letter
# chenge the array with _s with the guessed letter
# store the userB input so that be able to check the new guess word has been already used

class WordGuessGame
	attr_accessor :guessed_word, :tried_arr, :guess_arr 
  #attr_reader :tried_arr

	def initialize(original_word)
		@original_word = original_word
		@is_over = false
		@original_word_arr = original_word.split''
		@guess_arr = []
		@tried_arr = []
		@tried_arr = tried_arr
	end

	def empty_array	
		word_length = @original_word.length
		word_length.times {@guess_arr << "_ " }
		p @guess_arr.join	 
	end

	def check_letters(guessed_word)
		@guessed_word = guessed_word
		guessed_letter_arr = guessed_word.split''
		guessed_letter_arr.each do |letter|
		included_letter = @original_word.include?(letter)
			if @original_word.include?(letter) == true
				letter_index_num = @original_word_arr.index(letter)
				@guess_arr[letter_index_num] = "#{letter} "
			end
    end
		p feedback = @guess_arr.join
	end

	def tried_arr_store
	  @tried_arr << @guessed_word
  end

end


#game = WordGuessGame.new("happy") 
# game.empty_array
#game.check_letters("angry")
#game.tried_arr



# user iterface
# taka a word form userA then pass the word 
# take guesses from userB until B get the original word or guessed the number of letters of the word
# if user find out the word before he guessed the number of the leetter of the word print  congratulatory message 
# if the user could not get the word print taunting message 

# take an input from userA
puts "Welcome to the Word Guess Game!"
puts "Please enter a word. Do not let your partner to see the word!!"
userA_input = gets.chomp.downcase
game = WordGuessGame.new(userA_input) 

# take inputs from userB
puts "Now time to guess. Please enter a word. Here is a clue for you!"
game.empty_array
try_count = 1
userB_input = ""

until try_count > userA_input.length || userA_input == userB_input
	userB_input = gets.chomp.downcase
  game.guessed_word = userB_input
  duplicate_check = game.tried_arr

   	if duplicate_check.include?(userB_input) == true 
  		puts "You already entered '#{userB_input}'. Please enter another word."
  	end


	if userA_input == userB_input
 		puts "You won! The word you were looking for is '#{userA_input}' "
  
  else			
  puts "This is what you got so far. Please enter another word."
  game.check_letters(userB_input)
	game.tried_arr_store
	try_count += 1
	end
end

if userA_input.length == try_count -1
  puts "You lost! You tried too many. The word you were looking for is '#{userA_input}'" 
end




	