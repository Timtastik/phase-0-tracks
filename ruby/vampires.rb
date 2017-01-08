
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

if (name == "Drake Cula") || (name == "Tu Fang")
	print "Definitely a vampire"
elsif (age_stated != age_calculated) && (order_garlic_bread == 'N') && (health_insurance == 'N')
	print "Almost certainly a vampire"
elsif (age_stated != age_calculated) && ((order_garlic_bread == 'N') || (health_insurance == 'N'))
	print "Probably a vampire"
elsif (age_stated == age_calculated) && ((order_garlic_bread == 'Y') || (health_insurance == 'Y'))
	print "Probably not a vampire"
else
	print "Results inconclusive"
end