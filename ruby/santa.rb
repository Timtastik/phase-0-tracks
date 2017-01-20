class Santa

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", 
							"Dasher", 
							"Dancer", 
							"Prancer", 
							"Vixen", 
							"Comet", 
							"Cupid", 
							"Donner", 
							"Blitzen"]
		@age = 0
	end

end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("chips ahoy")