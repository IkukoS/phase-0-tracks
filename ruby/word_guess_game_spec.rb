require_relative 'word_guess_game'

describe WordGuessGame do 
	let(:game) {WordGuessGame.new(original_word)}

	it "take a word and check the numbers of the letters" do
		expect(game.empty_array("happy")).to eq [_, _, _, _, _]
	end
end