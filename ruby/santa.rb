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

	def show_gender_and_ethnicity()
		puts "#{@gender} and #{@ethnicity}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def show_reindeer()
		p @reindeer_ranking
	end

	def age
		@age		
	end

	def ethnicity
		@ethnicity
	end

end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chips ahoy")

# santas = []
# input_gender = nil
# input_ethnicity = nil
# loop do
# 	print "Enter a gender or 'done': "
# 	input_gender = gets.chomp
# 	break if input_gender == 'done'
# 	print "What is the enthnicity?: "
# 	input_ethnicity = gets.chomp
# 	santas << Santa.new(input_gender, input_ethnicity)
# end

# santas.each do |element|
# 	element.show_gender_and_ethnicity
# end

santa_baby = Santa.new("male", "asian")
santa_baby.get_mad_at("Rudolph")
santa_baby.show_reindeer