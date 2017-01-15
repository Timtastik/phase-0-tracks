# Initialize a Predetermined Hash with labled keys with values of nil
# Ask the user for input on the values of nil by keys
# Convert any of the user input to correct data type
# Relay back the inputs back to user in hash form
# Asks the user to update a key
# - If none, prints hash to show no changes
# - If input, updates the value of the key
# - Updates the key to a new label
# - Print the new hash to user

# Intialize the Hash with no values
client_data = {
	name: nil,
	age: nil,
	number_children: nil,
	decor_theme: nil,
	budget: nil
}

# Driver Code
# Asks user for value for name
print "Name? "
client_data[:name] = gets.chomp

# Asks user for value of age
print "Age? "
client_data[:age] = gets.chomp.to_i

# Asks user for value of number of children
print "Number of Children? "
client_data[:number_children] = gets.chomp.to_i

# Asks user for value of Decoration Theme
print "Decoration Theme? "
client_data[:decor_theme] = gets.chomp

# Asks user for value of Estimated Budget
print "Estimated Budget($)? "
client_data[:budget] = gets.chomp.to_i

# Prints the hash back to the user with inputs
puts " "
p client_data
puts " "

# Asks the User for input 
puts "Is there a label of a key do you want to update?"
puts "'none' is an option."
user_input = gets.chomp

# If none reprints the hash to show no changes
if user_input == "none"
	puts "No update!"
	p client_data
# For any other input assuming it is a correct input
else
	# Store all the keys into an array of a variable
	keys = client_data.keys
	# Convert the user input of a string to symbol
	key_update = user_input.to_sym
	# Set counter to 0
	n = 0
	# Keeps running until it checks each of elements of keys
	while n < keys.length
		# If there is a match of a key to user input
		if keys[n] == key_update
			# Asks user for new value for the key
			puts "What is the new value of key #{key_update}?"
			client_data[key_update] = gets.chomp
			# Asks user to input a new label for the key
			puts "What is the new label for the key?"
			new_key_name = gets.chomp.to_sym
			# Changes the key name, but keeps the value of the key
			client_data[new_key_name] = client_data.delete(key_update)
			puts " "
			p client_data
			# breaks loop after finding the match and doing the code
			break
		end
		# Counter to avoid infinite loop and this increments
		n += 1
	end
end

# SIDE NOTE TO SELF
# Maybe make a method for last part of coding?
# Use conditional statements to convert user input value
# from updated key to convert to suitable type (integer)