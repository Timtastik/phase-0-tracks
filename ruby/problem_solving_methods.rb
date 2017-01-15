ary = [1,2,3,4,23,6,1]

# def simple_array_search(array, integer)
# 	x = 0
# 	while x < array.length
# 		if array[x] == integer
# 			return x
# 		end
# 	x += 1
# 	end
# end

# p simple_array_search(ary, 1)
# puts simple_array_search(ary, 2)
# puts simple_array_search(ary, 3)
# puts simple_array_search(ary, 4)
# puts simple_array_search(ary, 23)
# puts simple_array_search(ary, 100)

def simple_array_search (array, integer)
	array.each do |x|
		if integer == array[x]
			x
		end
	end
end

p simple_array_search(ary, 1)
# puts simple_array_search(ary, 2)
# puts simple_array_search(ary, 3)
# puts simple_array_search(ary, 4)
# puts simple_array_search(ary, 23)
# puts simple_array_search(ary, 100)


# def fib(number)
# 	array = []
# 	if number == 0
# 		return array
# 	elsif number == 1
# 		array << 0
# 		return array
# 	elsif number == 2
# 		array << 0
# 		array << 1
# 		return array
# 	elsif number > 2
# 		index = 2
# 		array << 0
# 		array << 1
# 		while index < number
# 			array << array[index - 1] + array[index - 2]
# 			index += 1
# 		end
# 		return array
# 	end	

# end

# p fib(0)
# p fib(1)
# p fib(2)
# p fib(3)
# p fib(100)

# array = ["acab", "coolly", "awesome", "hippopatamus", "timothy", "elizabeth", "to", "a"]

# def simple_words_to_complex_words (string_array)
# 	i = 0
# 	n = 0
# 			while string_array.length < (string_array.length - 1)
# 				if string_array[i].length < string_array[i+1].length
# 					string_array[i], string_array[i+1]=string_array[i+1], string_array[i]
					
# 				end
# 				i += 1
# 			end
# 	return string_array
# end

# p simple_words_to_complex_words (array)

# until (string_array[n].length..)

# array = [1,2,3,4,5,6,7,8,9,10,13,18,45,24,68]

# def sort
# 	n = 0
# 	while n < array2.length
# 		sum 
# 	end

# end

# def sort_even_and_odd_numbers_seperately (array)

# 	array2 = []
# 	array3 = []
# 	x = 0
# 	while x < array.length
# 		if array[x].even?
# 			array2 << array[x]
# 		else
# 			array3 << array[x]
# 		end
# 		x += 1
# 	end
# 	return array2 + array3
# end

# p sort_even_and_odd_numbers_seperately(array)