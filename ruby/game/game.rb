











puts "Please enter a word"
word_input = gets.chomp
array_word_input = word_input.split('')
feedback = Array.new(word_input.length, "_")

array_of_guesses = []

guess = nil
n = 0
while n < word_input.length

	puts "Please enter guess"
	guess = gets.chomp

	i = 0
	while i < array_of_guesses.length
		if array_of_guesses[i] == guess
			puts "Already guessed that before!"
			break
		end
		i += 1
	end

	array_of_guesses.push(guess)

	if guess.length == 1
		x = 0
		while x < word_input.length
			if array_word_input[x] == guess
					feedback[x] = guess
			end	
			x += 1
		end
		feedback.each {|letter| print "#{letter} "}
		puts ""
		y = 0
		# while y < array_of_guesses.length
		# 	if array_of_guesses[y] == guess
		# 		break
		# 	end
		# 	y += 1
		# end
		n += 1
	elsif guess.length > 1
		if guess == word_input
			puts "CONGRATZ! YOU'VE GUESSED CORRECTLY!"
			break
		else
			puts "Sorry! Your guess is wrong!"
			n += 1
		end
	else
		puts "Invalid Input. YOU LOSE A GUESS!"
		n += 1
	end
end

# puts "Sorry YOU LOSE!"