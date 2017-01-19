# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: [what data type goes here, array or hash?] HASH

# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]

  # n = 0
  # while n < user_input_array.length
  #   grocery_list[user_input_array[n]] = 1
  #   n += 1
  # end

# Make an empty hash
# Get user input to be put into the hash
# Default the quantity of each item to 1
# Return the hash

def creation_list (user_input)
  grocery_list = {}
  user_input_array = user_input.split(' ')
  user_input_array.each do |list_item|
    grocery_list[list_item] = 1
  end
  grocery_list
end

user_input = "carrots apples cereal pizza"

created_list = creation_list(user_input) #= { "carrots" => 1, "apples" => 1, "cereal" => 1, "pizza" => 1 }

# Add a new item into hash
# Use user input of a key and user input of a value

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

def add_to_list(created_list, add_list_key, add_list_value)
  created_list[add_list_key] = add_list_value
end

p add_to_list(created_list, "celery", 2)
p created_list

# Completely remove an item off the hash

# Method to remove an item from the list
# input:
# steps:
# output:

def remove_to_list(list, remove_list_key)
  list.delete(remove_list_key)
  list
end

p remove_to_list(created_list, "pizza")

# Take user input of a key and user input of a value
# Update that value to the list

# Method to update the quantity of an item
# input:
# steps:
# output:

def update_list(list, update_key, update_value)
  add_to_list(list, update_key, update_value)
  list
end

p update_list(created_list, "apples", 2)

# Iterates the list back to the user

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print_list(list)
  puts "YOUR LIST:"
  list.each {|key, value| puts "#{key}: #{value}"}
end

print_list(created_list)