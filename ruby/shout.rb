module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(happy_phrase)
  	happy_phrase.upcase + "! :D"
  end
end

p Shout.yell_angrily("I hate you")
p Shout.yelling_happily("I love you")