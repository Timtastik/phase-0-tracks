class Santa
	attr_accessor :gender, :age
	attr_reader :ethnicity, :reindeer_ranking

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		# Attributes: 
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
		puts "Gender: #{@gender} && Ethnicity: #{@ethnicity}"
	end

	# Attributing-changing methods
	def celebrate_birthday()
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end
end # class Santa

# RELEASE 0 DRIVER TEST CODE
# - Before having initialize parameters
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chips ahoy")

puts "RELEASE 1 DRIVER TEST CODE"
# Keeps looping until entered 'done' for gender
# Able to enter gender and ethnicity until user is 'done'
	santas = []
	input_gender = nil
	input_ethnicity = nil
	loop do
		print "Enter a gender or 'done': "
		input_gender = gets.chomp
		break if input_gender == 'done'
		print "What is the ethnicity?: "
		input_ethnicity = gets.chomp
		santas << Santa.new(input_gender, input_ethnicity)
	end

	puts ""
	puts "Inputted Gender and Ethnicity"
	santas.each do |element|
		element.show_gender_and_ethnicity
	end

puts ""

puts "RELEASE 2 DRIVER TEST CODE"

	santa_baby = Santa.new("male", "asian")
	puts "Santa's age: #{santa_baby.age}"
	puts "Santa's birthday! Santa is now #{santa_baby.celebrate_birthday} years old!"
	p santa_baby.get_mad_at("Rudolph")
	p santa_baby.get_mad_at("Dancer")
	p santa_baby.age
	p santa_baby.gender
	p santa_baby.ethnicity

puts ""


# example arrays taken from assignment
 example_genders = ["agender", 
 										"female", 
 										"bigender", 
 										"male", 
 										"female", 
 										"gender fluid", 
 										"N/A",
 										"transgender",
 										"not sure"]
 example_ethnicities = ["black", 
 												"Latino", 
 												"white", 
 												"Japanese-African", 
 												"prefer not to say", 
 												"Mystical Creature (unicorn)", 
 												"N/A",
 												"asian",
 												"mixed"]

puts "RELEASE 4 DRIVER CODE"
	i = 0
	while i < 100
		santa_claus = Santa.new(example_genders.sample, example_ethnicities.sample)
		puts "Gender: #{santa_claus.gender}"
		puts "Ethnicity: #{santa_claus.ethnicity}"
		santa_claus.get_mad_at(santa_claus.reindeer_ranking[rand(8)])
		print "Current Reindeer Ranking: "
		santa_claus.reindeer_ranking.each do |reindeer|
			print "#{reindeer} "
		end
		puts ""
		puts "Age: #{santa_claus.age=(rand(140))} years old"
		puts ""
		i += 1
	end