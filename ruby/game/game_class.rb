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