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

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(21)
puppy.jump