# Ask the user for a word to input
# Seperate the word into letters of index
# Change the letters of index to the next letter in alphabet
# If it is the z then something?



def encrypt (word)

	length = word.length

	encryptedresult = ""

	counter = 0
	while counter < length
		if word[counter] == 'z'
			encryptedresult += "a"
		elsif word[counter] == ' '
			encryptedresult += " "
		else
			encryptedresult += word[counter].next
		end
		counter += 1
	end
	print encryptedresult
end

def decrypt (encryptedresult)

	length = encryptedresult.length

	decryptedword = ""

	abc = "abcdefghijklmnopqrstuvwxyz"

	counter = 0
	while counter < length
		if encryptedresult[counter] == " "
			decryptedword += " "
		else 
			encryptedletter = encryptedresult[counter]
			index = abc.index(encryptedletter)
			decryptedword += abc[index - 1]
		end
		counter += 1
	end
	print decryptedword
end


	# encrypt("abc")
	# puts " "
	# encrypt("zed")
	# puts " "
	# decrypt("bcd")
	# puts " "
	# decrypt("afe")
	# puts " "
	# encrypt("robin hood")
	# puts " "


# Main Interface !!!
# Greets the Secret Agent
puts "Hello Secret Agent!"
# Asks the Agent if want to Decrypt or Encrypt
puts "Would you like to Decrypt[D or d] or Encrypt[E or e] a password?"
	user_selection = gets.chomp
# Asks the Agent for the password
print "What is the password: "
	password = gets.chomp

# Uses boolean to decide whether to Decrypt or Encrypt the inputted password
	if user_selection == "D" || user_selection == "d"
		# Calls the Decrypt method to decrypt password
		decrypt(password)
		print " is the decryption"
	elsif user_selection == "E" || user_selection == "e"
		# Calls the Encrypt method to encrypt password
		encrypt(password)
		print " is the encryption"
	else
		# Tells the Secret Agent that Invalid input for selection of Decrypt or Encrypt	
		puts "Sorry, Invalid Input for choosing Decrypt or Encrypt"
	end

# Ruby program now exits