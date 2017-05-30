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

# There are somethings I could not figure it out.
# 1) The secound test. at ruby file it will return what I expected but when it comes test. It got different result.
# 2) When I do not have user interface, except secound test, worked fine and pass the tests,
# however once I put interface, it will not couut even exsamples. 