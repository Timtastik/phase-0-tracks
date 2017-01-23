require_relative 'game_class'

describe Game do
	let (:game) { Game.new }

	it "initialize array of guesses to be blank array" do
		expect(game.array_of_guesses).to eq []
	end

	it "pushes new element into array of guesses" do
		expect(game.new_guess("lol")).to eq ["lol"]
	end

	it "show the first element of array of guesses" do
		expect(game.array_of_guesses[0]).to eq nil
	end

	it "pushes new element and checks the element array of guesses" do
		game.new_guess("lol")
		expect(game.array_of_guesses[0]).to eq "lol"
	end
end