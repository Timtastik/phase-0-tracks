class Game
	attr_reader :array_word_input, :feedback, :guess_count, :array_of_guesses

	def initialize
		@array_of_guesses = []
		@guess_count = 0
	end

	def relay_feedback()
		@feedback.each { |letter| print "#{letter} "}
	end

	def winner()
		puts "CONGRATZ! YOU'VE GUESSED CORRECTLY!"
	end

	def loser()
		
	end

	def word_to_array(string_word)
		@array_word_input = string_word.split('')
	end

	def array_feedback(string_word)
		@feedback = Array.new(string_word.length, "_")
	end

	def wrong_guess()
		puts "Sorry! Your guess is wrong!"
	end

	def same_guess()
		puts "Already guessed that before!"
	end

	def new_guess(inputted_guess)
		@array_of_guesses << inputted_guess
	end

	def invalid_input()
		puts "Invalid Input. YOU LOSE A GUESS!"
	end

	def guess_increment()
		@guess_count += 1
	end
end

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