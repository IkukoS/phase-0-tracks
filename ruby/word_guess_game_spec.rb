require_relative 'word_guess_game'

describe WordGuessGame do 
	let(:game) {WordGuessGame.new("happy")}

	it "take a word and check the numbers of the letters" do
		expect(game.empty_array).to eq "_ _ _ _ _ "
	end

	it "takes a guess word and give a feedback" do
		expect(game.check_letters("angry")).to eq "_ a _ _ y "
	end

	it "store the guesses" do
		game.check_letters("angry")
		expect(game.tried_arr_store).to eq ["angry"]
	end

end 