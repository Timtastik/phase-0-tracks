data_application = {
	name: nil,
	address: nil,
	email: nil,
	phone_number: nil,
	fave_shade_blue: nil,
	:test => "works?",
	"question" => "answer"
}

# Driver Code
puts "What is your name?"
data_application[:name] = gets.chomp

puts "What is your address?"
data_application[:address] = gets.chomp

puts "What is your email?"
data_application[:email] = gets.chomp

puts "What is your phone number?"
data_application[:phone_number] = gets.chomp

puts "What is your favorite shade of blue?"
data_application[:fave_shade_blue] = gets.chomp

data_application[:hired] = "yes"

p data_application
# If one is nil then this command won't work since it cannot
# implicitly convert into a string
p data_application[:name] + data_application[:address]
p data_application[:name] + " " + data_application[:address]

# It is possible to store a key as a variable and
# access that hash using the variable
# May run into bugs with this
variable = :email
p data_application[variable]

# More Questions and Tests
p data_application[:test]
p data_application["question"]