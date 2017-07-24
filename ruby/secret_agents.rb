=begin
ask user for a string
store the word
create an empty string to hold the newly shifted word
set up a loop that checks for three conditions:
	3 base cases: 
	- the next char to be shifted down one is a z, and must be changed to a
	- the next char to be shifted is a space, and must remain a space
	- the next char is a - y and can be handled as the normal case and shifted down one
display the newly shifted word
=end

def encrypt()
	puts "Enter a password to encrypt:"
	word = gets.chomp
	new_word = ""
	counter = 0
	while counter < word.length
		if word[counter] == "z" then
			word[counter] = "a"
			new_word = new_word + word[counter]
			counter += 1
		elsif word[counter] == " " then
			word[counter] = " "
			new_word = new_word + word[counter]
			counter += 1
		else
			new_word= new_word+word[counter].next
			counter += 1
		end
	end
	puts new_word
end


def previous_letter(letter)
  if letter.length != 1
    return
  end
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = alphabet.index(letter)
  alphabet[index-1]
end

def decrypt()
  puts "Enter the password to decrypt: "
  pwd_string = gets.chomp

  index = 0
  while index < pwd_string.length
    pwd_string[index] = previous_letter(pwd_string[index])
    index += 1
  end

puts pwd_string

end
=begin
this works because it first encrypts swordfish, and then sends that encrypted 
word to decrypt method which decrypts the original string
decrypt(encrypt("swordfish"))
=end

encrypt()
decrypt()