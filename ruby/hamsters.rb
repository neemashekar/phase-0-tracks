puts "Enter the hamster's name?: "
name = gets.chomp

puts "Enter volume level (1 - 10)?: "
volume = gets.chomp
volume = volume.to_i

puts "Enter fur color?: "
fur = gets.chomp

puts "Enter whether good for adoption (YES/NO)?: "
adoptable = gets.chomp

puts "Enter estimated age?: "
age = gets.chomp
age = age.to_i

puts "***ANSWERS***"
puts "Hamster name is #{name}"
puts "Volume level is #{volume}"
puts "Fur color is #{fur}"
puts "#{adoptable}"
puts "Age is #{age}"
