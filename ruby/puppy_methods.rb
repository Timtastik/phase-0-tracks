class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(numb)
  	n = 0
  	while n < numb
  		print "Woof! "
  	n += 1
  	end
  	puts ""
  end

  def roll_over()
  	puts "*rolls over*"
  end

  def dog_years(human_year)
  	dog_year = human_year / 7
  	puts dog_year
  end

  def jump()
  	puts "*JUMPY*"
  end

  def initialize()
  	puts "Initializing new puppy instance ..."
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(21)
puppy.jump


# PSEUDO CODE
# Define a class "Dancer"

# Initialize a instance class for Dancer

class Dancer

	def spin()
		"Dancer spins"
	end

	def flip()
		"Dancer flips"
	end

end

# dancer.flip
# dancer.spin

def loop_into_data_structure()
	array_moves = []
	n = 0
	while n < 50
		array_moves[n] = Dancer.new
		n += 1
	end
	p array_moves
end

loop_into_data_structure

# array_moves.each do |moves|
# 	puts "#{moves} with style!"
# end

loop_into_data_structure.each do |element|
	puts "Here I go! #{element.spin} and #{element.flip}"
end