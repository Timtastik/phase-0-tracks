require_relative 'game_class'

game = Game.new

puts "FIRST USER. Please enter a word"
word_input = gets.chomp

game.word_to_array(word_input)

game.array_feedback(word_input)

game.hide_word

puts "SECOND USER. Time to Guess!"
game.guess_count
while game.guess_count < word_input.length

	print "Please enter guess: "
	guess = gets.chomp
	puts ""

	i = -1
	while i < game.array_of_guesses.length
		if game.array_of_guesses[i] == guess
			game.same_guess
			break
		else
			game.new_guess(guess)
			game.guess_increment
			break
		end
		i += 1
	end

	if guess.length == 1
		if guess == word_input
			game.winner(word_input)
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
	elsif guess.length > 1
		if guess == word_input
			game.winner(word_input)
			break
		else
			game.wrong_guess
			game.relay_feedback
			puts ""
		end
	else
		game.invalid_input
		game.guess_increment
	end

	if !game.feedback.include? "_"
		game.winner(word_input)
	elsif game.guess_count == word_input.length
		game.loser
	end
end

# SIDENOTE TO SELF
# Review code and refactor so more readable
# Try using a phrase for word_input
# Instead of one letter, put group of characters that will relay feedback