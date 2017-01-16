# Ask the user to input their full name (first and last)
# Store the user input as a key into the hash
# Swap the first and last name (last name is front and first name is last)
# Downcase all of characters in the string
# Change all the vowels to the succeeding vowel in string "aeiou"
# Change all the consonants to the succeeding conasonant in string "bcdfghjklmnpqrstvwxyz"
# Capitalize the first and last name of the fake name
# Store the fake name into the value of user input key of the hash
# Print the fake name to the user
# Keep looping until quit
# If quit, relay back the hash to the user before closing


# ORIGINAL METHOD DEFINIED
# def fake_name_creation(name)
	# Initializes hash to later store with data
	name_to_alias = {}
	# Initializes name to nothing for loop
	name = ""
	# As long as input is not quit, will keep looping
	while name != 'quit'
		# Retrieve user input
		puts "Enter first and last name to be faked or 'quit'"
		name = gets.chomp
		# Break the loop if quit was entered
		if name == 'quit'
			p name_to_alias
			break
		# Otherwise proceed to main code
		else
			# Splits the user input into an array with two seperate strings
			name_array = name.split(' ')
			# Swaps the first and last name in the array
			name_array[0], name_array[1]=name_array[1], name_array[0]
			# Make the array into one whole string with all lower case letters
			swapped_name = name_array.join(' ').downcase

			# Use variables to store a consonant and vowel string
			consonants = "bcdfghjklmnpqrstvwxyz"
			vowels = "aeiou"

			# Initialize faked name to feed translated data into it
			alias_name = ""

			n = 0
			# Keep looping until the very end of the name
			while n < swapped_name.length
				# End case for z to become b
				if swapped_name[n] == 'z'
					alias_name << 'b'
				# End case for u on vowels to become a
				elsif swapped_name == 'u'
					alias_name << 'a'
				# If there is a space then do nothing
				elsif swapped_name[n] == ' '
					alias_name << ' '
				# Translate the consonant into a fake name consonant
				elsif consonants.include? swapped_name[n]
					alias_consonant_index = consonants.index(swapped_name[n]) + 1
					alias_name << consonants[alias_consonant_index]
				# Translate the vowel into a fake name vowel
				elsif vowels.include? swapped_name[n]
					alias_vowel_index = vowels.index(swapped_name[n]) + 1
					alias_name << vowels[alias_vowel_index]
				end # End of n < swapped_name.length
			# Counter
			n += 1
			end
			# Code to capitalize the first and last name
			alias_name = alias_name.split(' ')
			alias_name[0].capitalize!
			alias_name[1].capitalize!
			alias_name_final = alias_name.join(' ')
			# Prints the fake name to user after input
			p alias_name_final
			# Stores the inputted name and fake name into a hash
			name_to_alias[name] = alias_name_final
		end # End if else for loop
	end # End of while != 'quit'

# end

# ORIGINAL METHOD TO BE CALLED
# puts "Please enter name to create an alias"
# real_name = gets.chomp

# fake_name_creation(real_name)

# SIDENOTE TO SELF
# COMMENTED OUT THE ORIGINAL METHOD I DID
# Able to run all the code and do all the requirements
# Code looks messy without methods!
# Must learn how to do nested methods
# Code doesn't work if it is just first name or last name