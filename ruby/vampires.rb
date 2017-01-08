print "How many employees will be processed? "
	number_employees = gets.chomp.to_i

counter = 0
while counter < number_employees
	puts " "
	print "What is your name? "
		name = gets.chomp
	print "How old are you? "
		age_stated = gets.chomp.to_i
	print "What year were you born? "
		year_born = gets.chomp.to_i
	puts "  Our company cafeteria serves garlic bread!"
	print "Should we order some for you? (Y or N) "
		order_garlic_bread = gets.chomp
	print "Would you like to enroll in the company's health insurance? (Y or N) "
		health_insurance = gets.chomp

	age_calculated = 2017 - year_born

	puts " "

	if (name == "Drake Cula") || (name == "Tu Fang")
		puts "Definitely a vampire"
	elsif (age_stated != age_calculated) && (order_garlic_bread == 'N') && (health_insurance == 'N')
		puts "Almost certainly a vampire"
	elsif (age_stated != age_calculated) && ((order_garlic_bread == 'N') || (health_insurance == 'N'))
		puts "Probably a vampire"
	elsif (age_stated == age_calculated) && ((order_garlic_bread == 'Y') || (health_insurance == 'Y'))
		puts "Probably not a vampire"
	else
		puts "Results inconclusive"
	end

counter += 1
end