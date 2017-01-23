require_relative 'game_class'

game = Game.new

puts "Please enter a word"
word_input = gets.chomp
# array_word_input = word_input.split('')
game.word_to_array(word_input)
# feedback = Array.new(word_input.length, "_")
game.array_feedback(word_input)
# array_of_guesses = []

game.guess_count
while game.guess_count < word_input.length

	puts "Please enter guess"
	guess = gets.chomp

	i = 0
	while i < array_of_guesses.length
		if game.array_of_guesses[i] == guess
			game.same_guess
			break
		else
			game.new_guess(guess)
			p game.array_of_guesses
		end
		i += 1
	end

	if guess.length == 1
		if guess == word_input
			game.winner
			break
		end
		x = 0
		while x < word_input.length
			if game.array_word_input[x] == guess
					game.feedback[x] = guess
			end	
			x += 1
		end
		game.relay_feedback
		puts ""
		if array_of_guesses.include?(guess) == false
			game.guess_increment
			p game.array_of_guesses
		end

	elsif guess.length > 1
		if guess == word_input
			game.winner
			break
		else
			game.wrong_guess
			game.relay_feedback
			game.guess_increment
		end

	else
		game.invalid_input
		game.guess_increment
	end
end

# puts "Sorry YOU LOSE!"