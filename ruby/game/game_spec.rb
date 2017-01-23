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

	it "checks the length of array of guesses" do
		game.new_guess("lol")
		game.new_guess("yeah")
		game.new_guess("something")
		expect(game.array_of_guesses.length).to eq 3
	end

	it "checks length of an empty array_of_guesses" do
		expect(game.array_of_guesses.length).to eq 0
	end

	it "checks the return of an empty array with index" do
		expect(game.array_of_guesses[0]).to eq nil
	end

	it "checks the guess_count after increments" do
		game.guess_increment
		game.guess_increment
		expect(game.guess_count).to eq 2
	end

	it "checks if this line of code words" do
		game.new_guess("a")
		expect(game.array_of_guesses.include?("b")).to eq false
	end
end