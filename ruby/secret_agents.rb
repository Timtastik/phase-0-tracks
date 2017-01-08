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
	puts encryptedresult
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
	puts decryptedword
end


	encrypt("abc")
	encrypt("zed")
	decrypt("bcd")
	decrypt("afe")
	encrypt("robin hood")
	decrypt(encrypt("robin hood"))
	decrypt(encrypt("swordfish"))