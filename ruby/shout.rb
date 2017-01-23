# OLD CODE
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(happy_phrase)
#   	happy_phrase.upcase + "! :D"
#   end
# end

# p Shout.yell_angrily("I hate you")
# p Shout.yelling_happily("I love you")

# NEW CODE
module Shout
	def question_yell(phrase)
		puts "#{phrase}!?!?"
	end

	def just_be_loud(phrase)
		puts phrase.upcase
	end

	def mad_yell(phrase)
		puts "#{phrase.upcase} !!!!!"
	end

	def cheer(phrase)
		puts "#{phrase} :D !!! <(^_^)>"
	end
end # module Shout

class Drill_Sergeant
	include Shout
end

class Protester
	include Shout
end

puts "DRIVER CODE FOR Drill_Sergeant"
lieutenant = Drill_Sergeant.new
lieutenant.question_yell("Do you think your life will be better if I'm in a bad mood?")
lieutenant.just_be_loud("attention!")
lieutenant.mad_yell("do 50 push ups private")
lieutenant.cheer("Thank you Drill Sergeant")

puts ""

puts "DRIVER CODE FOR Protester"
protester = Protester.new
protester.question_yell("What do we want?")
protester.just_be_loud("i am not so sure")
protester.mad_yell("I am really not happy about this")
protester.cheer("But they said there would be free food")