sports = ["basketball", "soccer", "football" , "volleyball"]

teams = {"Cubs" => "good", "White_Sox" => "bad", "BlackHawks" => "good"}

# Before calling blocks for each
p sports

sports.each do |sport|
	puts "#{sport} is Fun!"
end

# After calling blocks for each
p sports

# Before calling hash for each
p teams

teams.each do |team, status|
	puts "#{team} is #{status}"
end

# After calling hash for each
p teams

# Before calling blocks for map!
p sports

sports.map! do |sport|
	puts sport
	sport.upcase
end

# Aafter calling blocks for map!
p sports

def method
	puts " "
	puts "Yo Man"
	yield
end

method { puts "WASSSUUPPP"}