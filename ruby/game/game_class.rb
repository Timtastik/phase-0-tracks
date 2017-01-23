class Game
	attr_reader :array_word_input, :feedback, :guess_count, :array_of_guesses

	def relay_feedback()
		print "Feedback: "
		@feedback.each { |letter| print "#{letter} "}
		puts ""
	end

	def winner(word)
		puts ""
		puts "CONGRATZ! YOU'VE GUESSED CORRECTLY!"
		print "The word was #{word}"
	end

	def loser()
		puts ""
		puts "Reached maximum number of guesses!"
		puts "BETTER LUCK NEXT TIME LOSER! >:D"
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

	def hide_word()
		z = 0
		while z < 60
			puts ""
			z += 1
		end
	end

	def initialize()
		@array_of_guesses = []
		@guess_count = 0
	end
end