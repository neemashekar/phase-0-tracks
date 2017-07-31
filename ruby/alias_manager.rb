# Ask user to enter strings for their first and last name
# Send each string to fakeName(string) function. 
# Continue processing the entire first or last string until the counter reaches the length of string
# Determine if the current char is a vowel 
# => if vowel then shift by adding 1 to index for all other vowels besides u
# => else if 'u' change char to 'a'
# Determine if current char is a consonent
# => if consonent then shift by adding 1 to index for all other consonents except y 
# => else if 'y' change the char to 'b'


def fakeName(name)
	nameLen = name.length
	nameIndex = 0
	vowels = ["a", "e", "i", "o", "u"]
	cons = ["b", "c","d", "f","g", "h","j", "k","l", "m","n", "p","q", "r","s", "t","v", "x", "z","w", "y"]
	newName = ""
	while nameIndex < nameLen
		vowelArrayIndex = 0
		vowels.each do |vow|
			if name[nameIndex] == vow
				nextchar = next_vowel(vowelArrayIndex)
				newName = newName + nextchar
			end
			vowelArrayIndex += 1
		end
		vowelArrayIndex = 0
		consArrayIndex = 0
		cons.each do |cons|
			if name[nameIndex] == cons
				nextchar = next_cons(consArrayIndex)
				newName = newName + nextchar
			end
			consArrayIndex += 1
		end
		nameIndex += 1
	end
	return newName
end

def gatherUserInput
	dataArray = []
	ctr = 0
	while true 
		puts "-------------TO EXIT TYPE 'QUIT'-------------"
		puts "Enter first name?:"
		fname = gets.chomp
		fname = fname.downcase
		if fname == "quit"
			puts "User entered data:"
			puts dataArray
			puts "Exiting..."
			return
		end
		puts "Enter last name?:"
		lname = gets.chomp
		lname = lname.downcase
		if lname == "quit"
			puts "User entered data:"
			puts dataArray
			puts "Exiting..."
			return
		end

		#puts "New fake first name:"
		newFirst = fakeName(lname)
		#puts "New fake last name:"
		newLast = fakeName(fname)
		temp = fname + " " + lname + " becomes " + newFirst + " " + newLast
		dataArray[ctr] = temp
		puts dataArray[ctr]
		puts "**********************************************************"
		ctr += 1
	end
end

def next_vowel(index)
	vowels = ["a", "e", "i", "o", "u"]
	if index == 4
		return "a"
	else
		index += 1
		return vowels[index]
	end
end

def next_cons(index)
	cons = ["b", "c","d", "f","g", "h","j", "k","l", "m","n", "p","q", "r","s", "t","v", "x", "z","w", "y"]
	if index == 20
		return "b"
	else 
		index += 1
		return cons[index]
	end
end

gatherUserInput