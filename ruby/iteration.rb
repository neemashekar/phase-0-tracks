
puts "~~~~~~~~~~~~~~~~~~~~~~~RELEASE 0~~~~~~~~~~~~~~~~~~~~~~~"
puts "************Demonstrating .each with Arrays************"
arrayNums = [1,2,3,4,5,6,7]
addOne = []

puts "Before .each w array:"
p "Original Array: #{arrayNums}"
p "Emtpy Array: #{addOne}"

arrayNums.each do |addingOne|
	addOne << addingOne.next
end
puts "After .each w array:"
p "Original Array: #{arrayNums}"
p "Emtpy Array: #{addOne}"
puts "************Demonstrating .each with Arrays************"
puts ""
puts ""
puts "-----------Demonstrating .each with Hash Table-----------"
hashTable =
{ :r => "red",
	:o => "orange",
	:y => "yellow",
	:g => "green",
	:b => "blue",
	:i => "indigo",
	:v => "violet"
}
emptyArray = []
puts "Before .each w hash:"
puts "Original Array: #{hashTable}"
puts "Empty Array: #{emptyArray}"

hashTable.each do |key, value|
	emptyArray << value+'!'
end
puts "After .each w hash:"
puts "Original Array: #{hashTable}"
puts "Empty Array: #{emptyArray}"
puts "-----------Demonstrating .each with Hash Table-----------"
puts""
puts ""
puts "===========Demonstrating .map! with Arrays==========="
arrayNumbs = [1,2,3,4,5,6,7]
emptyArray = []
puts "Before .map! w array"
puts "Original Array: #{arrayNumbs}"
puts "Empty Array: #{emptyArray}" 
arrayNumbs.map! do |arrayNumbs|
	emptyArray << arrayNumbs + 10
end
puts "After .map w array:"
puts "Original Array: #{arrayNumbs}"
puts "Empty Array: #{emptyArray}" 
puts "===========Demonstrating .map! with Arrays==========="
puts "~~~~~~~~~~~~~~~~~~~~END OF RELEASE 0~~~~~~~~~~~~~~~~~~~~"
puts ""
puts ""


