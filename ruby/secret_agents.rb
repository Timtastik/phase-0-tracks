# Original Thoughts before Coding
	# PSEUDO CODE FOR ENCRYPT
	# Ask the user for a word to input for encryption
	# Seperate the word into letters of index
	# Change the letters of index to the next letter in alphabet
	# If it is the 'z' then encrypt the letter back to 'a'
	# If it is a ' ' then encrypt it as the same ' '
	# Print the Encrypted word

	# PSEUDO CODE FOR DECRYPT
	# Ask the user for encrypted word
	# Seperate the encrypted word to refer to each character for decryption
	# Change each character for decryption
	# If it is a ' ' then encrypt it as the same ' '
	# Print the Decrypted word

	# PSEUDO CODE FOR ASKING SECRET AGENT FOR PASSWORD TO DECRYPT OR ENCRYPT
	# Ask secret agent either to decrypt or encrypt
	# Take in input variable as a string with the best input as 'D' or 'd' for Decrypt or 'E' or 'e' for Encrypt
	# Ask secret agent for the password
	# If Decrypt is wished then call the decrypt method
		# Print the Decrypted password
	# If Encrypt is wished then call the encrypt method
		# Print the Encrypted password
	# If Invalid input then print Invalid Input to screen
	# Exit the program

# REVISED PSEUDO CODE AFTER CODING

# Method for Encrypt a word or phrase
def encrypt (word)
	# Stores how many characters are in the word to the variable: length
	length = word.length
	# Initializes the encryption result as nothing before loop
	encryptedresult = ""
	# Initializes the counter to zero before the loop
	counter = 0
	# Keeps looping until counter does every character of the word to be encrypted
	while counter < length
		# Special end case for z to go back to a rather than aa
		if word[counter] == 'z'
			encryptedresult += "a"
		# If the character is a space then do nothing to it
		elsif word[counter] == ' '
			encryptedresult += " "
		# Proceed with the regular encryption
		else
			encryptedresult += word[counter].next
		end
		# Adds to counter to avoid infinite loop
		counter += 1
	end
	# Shows the word after encryption and uses P because puts will return 'nil'
	p encryptedresult
end # End of encrypt (word) method
# Method for Decrypt an already encrypted word
def decrypt (encryptedresult)
	# Stores how many characters are in the encrypted word to the variable: length
	length = encryptedresult.length
	# Initializes the decrypted word as nothing before loop
	decryptedword = ""
	# Stores the alphabet into a variable to make it easier to call
	abc = "abcdefghijklmnopqrstuvwxyz"
	# Sets counter to 0 before loop 
	counter = 0
	# Keeps looping until counter does every character of the encrypted word
	while counter < length
		# If the character is a space, no decryption, keep it the same
		if encryptedresult[counter] == " "
			decryptedword += " "
		# Main Decryption Code
		else
			# Stores a encrypted character into the variable
			encryptedletter = encryptedresult[counter]
			# Figures the index of that encrypted letter in the alphabet
			# And stores it into variable: index
			index = abc.index(encryptedletter)
			# Adds to the decrypted word variable of the decrypted letter
			decryptedword += abc[index - 1]
		end
		# Adds to counter to avoid infinite loop
		counter += 1
	end
	# Shows the word after decryption and uses p because 'puts' will return nil
	p decryptedword
end

	# Code Testers!
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
	# decrypt(encrypt("swordfish"))
	# decrypt("aaa")


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
	if (user_selection == "D") || (user_selection == "d")
		# Calls the Decrypt method to decrypt password
		decrypt(password)
		print " Decrypted"
	elsif (user_selection == "E") || (user_selection == "e")
		# Calls the Encrypt method to encrypt password
		encrypt(password)
		print " Encrypted"
	else
		# Tells the Secret Agent that Invalid input for selection of Decrypt or Encrypt	
		puts "Sorry, Invalid Input for choosing Decrypt or Encrypt"
	end

# Ruby program now exits