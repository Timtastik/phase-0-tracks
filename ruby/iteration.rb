def yo_man
	puts "YO MAN!"
	yield
end

yo_man {puts "WHATS UP!"}

puts " "

# Array full of sports
sports = ["basketball", "soccer", "football" , "volleyball"]
# Hash with Chicago teams and whether if they are good or not
teams = {"Cubs" => "good", "White_Sox" => "bad", "BlackHawks" => "good"}

# Before calling blocks for each
p sports
# For each element in sports it prints it is fun
sports.each do |sport|
	puts "#{sport} is Fun!"
end
# After calling blocks for each
p sports

# Before calling hash for each
p teams
# For key and value of teams it prints the team and its status
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
# After calling blocks for map!
p sports

def method_answer_1

end

# Array full of random numbers
number_array = [9, 15, 23, 14, 30, 1, 4, 2, 3, 17]
# Hash with word and digit from 1 to 10
number_hash = {one: 1,
               two: 2,
               three: 3,
               four: 4,
               five: 5,
               six: 6,
               seven: 7,
               eight: 8,
               nine: 9,
               ten: 10
}

puts " "

def answer_1_array(array1)
	puts "Original Array"
	p array1
	yield
end
answer_1_array(number_array) do
	number_array.delete_if {|number| number < 5}
end

def answer_2_array(array2)
	puts "Array after deleting number < 5"
	p array2
	yield
end
answer_2_array(number_array) do
	number_array.keep_if {|number| number > 14}
end

def answer_3_array(array3)
	puts "Array after keeping number > 14"
	p array3
	yield
end
answer_3_array(number_array) do
	number_array.select! {|number| number.odd?}
end

def answer_4_array(array4)
	puts "Array after selecting odd numbers"
	p array4
	yield
	puts "Array after deleting numbers > 16"
	p array4
end
answer_4_array(number_array) do
	number_array.delete_if {|integer| integer > 16}
end

puts " "

def answer_1_hash(hash1)
	puts "Original Hash"
	p hash1
	yield
end
answer_1_hash(number_hash) do
	number_hash.delete_if { |word_number, digit| digit < 3 }
end

def answer_2_hash(hash2)
	puts "Hash after deleting values < 3"
	p hash2
	yield
end
answer_2_hash(number_hash) do
	number_hash.keep_if { |word, integer| integer > 4 }
end

def answer_3_hash(hash3)
	puts "Hash after keeping values > 4"
	p hash3
	yield
end
answer_3_hash(number_hash) do
	number_hash.reject! {|word, digit| digit.even? }
end

def answer_4_hash(hash4)
	puts "Hash after rejecting all even numbers"
	p hash4
	yield
	puts "Hash after deleting numbers > 6"
	p hash4
end
answer_4_hash(number_hash) do
	number_hash.delete_if{ |english, math| math > 6 }
end

