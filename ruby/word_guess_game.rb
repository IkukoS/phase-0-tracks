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

class WordGuessGame

	def initialize(original_word)
		@original_word = original_word
		@guess_count = 0
		@is_over = false
		@original_word_arr = original_word.split''
		@guess_arr = []
	end

	def empty_array
		
		word_length = @original_word.length
		word_length.times {guess_arr << "_ " }
		guess_arr.join	 
	end

	def check_letters(guessed_word)
		guessed_letter_arr = guessed_word.split''
		guessed_letter_arr.each do |letter|
		included_letter = @original_word.include?(letter)
			if @original_word.include?(letter) == true
				letter_index_num = @original_word_arr.index(letter)
				@guess_arr[letter_index_num] = "#{letter} "
			end
    end

		p @guess_arr
	end
end


game = WordGuessGame.new("happy") 
#game.empty_array
game.check_letters("angry")



# user iterface
# taka a word form userA then pass the word 
# take guesses from userB until B get the original word or guessed the number of letters of the word
# if user find out the word before he guessed the number of the leetter of the word print  congratulatory message 
# if the user could not get the word print taunting message 