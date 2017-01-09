# Defines the method to run this program
def vampires
	# Asks the user for how many times the survey will run
	print "How many employees will be processed? "
		number_employees = gets.chomp.to_i

	# Set counter to 0 for looping
	counter = 0
	# Will run this survey until the number of employees have been surveyed
	while counter < number_employees
		# Start of Data Collection
		puts " "
		# Asks user for name and stores it as a string
		print "What is your name? "
			name = gets.chomp
		# Asks user for age and stores it as an integer
		print "How old are you? "
			age_stated = gets.chomp.to_i
		# Asks user for birth year and stores it as an integer
		print "What year were you born? "
			year_born = gets.chomp.to_i
		# Asks user if they want garlic bread or not and stores it as a string
		puts "  Our company cafeteria serves garlic bread!"
		print "Should we order some for you? (Y or N) "
			order_garlic_bread = gets.chomp
		# Asks user if they want health insurance and stores it as a string
		print "Would you like to enroll in the company's health insurance? (Y or N) "
			health_insurance = gets.chomp

		# Asks user if they have allergies and directs them with instructions
		puts "  Do you have any allergies?"
		puts "  Name them one at a time and press enter"
		puts "  OR when done listing the allergies enter 'done'"
		# Initializes allergic to nothing to setup for a while loop
		allergic = ""
		# Runs the loop until entered "done" or the break happens when entered "sunshine"
		while allergic != "done"
			# User enters the allergy and stores it into allergic as a string
			allergic = gets.chomp
			# If user is done listing and enters done then this code will follow (original beginning code of assignment)

			if allergic == "done"
				# Calculate the age stated by birth year
				age_calculated = 2017 - year_born
				puts " "
				# If name is too suspicious then definitely a vampire
				if (name == "Drake Cula") || (name == "Tu Fang")
					puts "Definitely a vampire"
				# If age stated earlier does not match with age calculated AND does not want garlic bread AND health insurance
				elsif (age_stated != age_calculated) && (order_garlic_bread == 'N') && (health_insurance == 'N')
					puts "Almost certainly a vampire"
				# If age stated earlier does not match with age calculated AND does not want EITHER garlic bread or health insurance
				elsif (age_stated != age_calculated) && ((order_garlic_bread == 'N') || (health_insurance == 'N'))
					puts "Probably a vampire"
				# If age stated matches age calculated and likes EITHER garlic bread or health insurance
				elsif (age_stated == age_calculated) && ((order_garlic_bread == 'Y') || (health_insurance == 'Y'))
					puts "Probably not a vampire"
				else
				# If age does not match with age calculated but likes either garlic bread or health insurance
					puts "Results inconclusive"
				end

			# If user inputs sunshine as an allergy then skips the rest of the program
			elsif allergic == "sunshine"
				puts " "
				puts "Probably a vampire"
				# Breaks the loop since the argument of the loop to stop is allergic == "done"
				break
			end # If allergic == "done"
		end
	# Adds a count when finished with one survey of an employee
	counter += 1
	end # End while counter < number_employees

	# After program finishes all the surveys
	# This will print a final message before program closes
	puts " "
	print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end # End of Vampire method
# Calls the vampire method to run
vampires

