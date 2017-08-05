# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # key value = :carrots value = carrots
=begin
    key = carrots value = quantity
    while ctr < str.length 
		continue to process characters in the string passed to method until a whitespace is detected
		then save the string and use as key for has 
		key value = 1 by default 
=end
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: return hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
# store new item name as key value for the last entry in hash
# store the quantity given as the value for that key
# output return newly modified hash 

# Method to remove an item from the list
# input: list, target item 
# steps: create a temporary hash structure
# => while the target does not equal the current hash key 
		# add the key and value to the temp hash
# output: return the temp hash

# Method to update the quantity of an item
# input: hash, key, and value 
# steps: set the value for the specified key sent to method in method call 
# output: returns the hash with the newly adjusted quantity 

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def createList(str)
	hashTable = {}
	tempArray = str.split(" ")
	ctr = 0
	while ctr < tempArray.length
		hashTable[tempArray[ctr]] = 1
		ctr += 1
	end
	return hashTable
end

def addtoList(hashT, item, quantity=1)
	hashT[item] = quantity
	return hashT
end

def deleteItem(hashT, target)
	hashT.delete(target)
	return hashT
end

def setQuantity(hashT, key, q)
	hashT[key] = q
	return hashT
end

def printList(hashT)
	puts "Printing Current Hash:"
	hashT.each do |key, value|
		puts "Key: #{key} Value: #{value}"
	end
end

hashT = createList("carrots apples cereal pizza")
puts "New hash is: #{hashT}"

addtoList(hashT, "chocolate", 4)
puts "New hash is: #{hashT}"

deleteItem(hashT, "chocolate")
puts "New hash is: #{hashT}"

setQuantity(hashT, "carrots", 50)
puts "New hash is: #{hashT}"

=begin
	
1) I learned that pseudocoding is a lot more useful when you are pseudocoding 
for a method you don't have any idea how to code

2) Using an array would have been a more intuitive choice for a data structure 
if the item and quantity didn't have a one-to-one relationship. For this reason,
a hash which stores a key and a value makes more sense than storing the item and it's 
corresponding quantity in a 2 dimensional array.

3) A method returns an object 

4) You can pass any data type to a method ie strings, bools, ints, chars. You 
cannot pass an operator

5) Create a global variable and pass that variable to the methods and make sure
to return the variable before each method exits

6) New hash built in methods were solidified and there isn't anything that confuses 
me	
end