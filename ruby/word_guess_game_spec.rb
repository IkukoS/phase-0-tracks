# Take a word.(Original word)
# cheak the number of the letters in the word.
# Take another word.(guessed word)
# Make the guessed word into a each letter.
# Check if the original word includ any of the letter of the guesed word.
# If it contain some letters go to next step.
# Make a word container with blank letter numbers of underscore.
# Find out where is the letter place. (Think about hungman!)
# Locate the letters the right place.
# Give user a feedback mixed already guessed letter and blank underscores.
# Enter another word to guess the original word
# Times for the guessed are the letter numbers in the word.
# If the guessed word is already entered once, it will not count.
# Repeat this the times of the original word's letter number.
# If guessed word is same as original word, user win.
# Give a congratulatory message to the user/
# If the after the attempt theletter numbers times and do not get the original word the user lose.
# Give the user a taunting message.
require_relative 'Word_guess_game'

describe Word_guessing do 
	let(:guessing_word) {Word_guessing.new}
	it "take a originai word and store" do
	    expect(take_original_word("hello")).to eq "hello"
    end


	it "check the original word letter number and store it" do
		expect(guessing_word.letter_number).to eq original_word.length
	end

	it "take a guessing word" do
	end

	it "make the guessing word to letter correciton array" do
	end

	it "check that if the each of the letters of guessing word incluced any orizinal word" do
	end 

	it "find out the incluced letters index number(s)" do
	end

	it "creaate an array with the numbers of the letter number of the original letters with underscores." do
	end

	it "push the letters which included in original letters to the right place" do
	end

	it "give the user a feeback with the letters already guessed and blank underscore mixed" do
	end

	it "take another gessing word and repeat untill game is over" do
    end

	it "will not count as one, the repeated guess " do
	end

	it "if the word entered is same as the guessing word the game is over" do
	end

	it "print a congratulatory message to the user." do
	end

	it "if user guedded same number of the letter and could not find the wriginal word, game is over." do
	end

	it "purint a taunting message" do 
	end


	
end