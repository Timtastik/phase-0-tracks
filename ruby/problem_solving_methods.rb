ary = [1,27,3,4,23,6,1]

def simple_array_search(array, integer)
	x = 0
	while x < array.length
		if array[x] == integer
			return x
		end
	x += 1
	end
end

puts simple_array_search(ary, 1)
puts simple_array_search(ary, 27)
puts simple_array_search(ary, 3)
puts simple_array_search(ary, 4)
puts simple_array_search(ary, 23)
puts simple_array_search(ary, 100)

# def simple_array_search (array, integer)
# 	array.each do |x|
# 		if integer == array[x]
# 			x
# 		end
# 	end
# end

# p simple_array_search(ary, 1)
# puts simple_array_search(ary, 2)
# puts simple_array_search(ary, 3)
# puts simple_array_search(ary, 4)
# puts simple_array_search(ary, 23)
# puts simple_array_search(ary, 100)

puts "Fibonacci"

def fib(number)
	array = []
	if number == 0
		return array
	elsif number == 1
		array << 0
		return array
	elsif number == 2
		array << 0
		array << 1
		return array
	elsif number > 2
		index = 2
		array << 0
		array << 1
		while index < number
			array << array[index - 1] + array[index - 2]
			index += 1
		end
		return array
	end	

end

p fib(0)
p fib(1)
p fib(2)
p fib(3)
p fib(50)
if fib(100)[99] == 218922995834555169026
	puts fib(100)[99]
end

puts " "

array = ["acab", "coolly", "awesome", "hippopatamus", "timothy", "elizabeth", "to", "a"]
puts " Prints unsorted array"
p array

def simple_words_to_complex_words (string_array)
	i = 0
		# Keeps looping until reaches all the elements of the whole array
	  	while i < string_array.length
	  		# Related to variable, i, to always check the succeeding element next to it first
	   		n = i + 1
	   		# Keeps looping until reaches the end of the array
			while n < string_array.length 
				# If this element length is greater than the succeeding ones then
				if string_array[i].length > string_array[n].length
					# Swaps the compared elements if only the THE element is longer than the succeeding elements
					string_array[i], string_array[n]=string_array[n], string_array[i]
				end
				# Keeps counting to avoid infinite loop
				n += 1
			end
			# Keeps counting to avoid infinite loop
			i += 1
		end
	# Returns the sorted array
	return string_array
end

puts " Prints sorted array"
p simple_words_to_complex_words (array)