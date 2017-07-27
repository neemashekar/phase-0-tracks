=begin
1. Ask user to enter info about client and store response in variables
2. Populate the hash table with the user's responses
3. Print the entered info
4. Ask user if they would like to change any of the entered info and store their response in variable: key
		if user doesn't enter "none", 
			ask user what they would like to change the key to and store response in variable: change
			if the variable "change" = either age or number of children, 
				convert variable to an int
			elsif the variable "change" = pets
				convert variable to a bool
			change the key value to the user's response
5. Print the entered info
6. Exit
=end
def interiorDesigner_Qs
	puts "****Enter the following information about client:****"

	puts "Name:"
	name = gets.chomp

	puts "Age:"
	age = gets.chomp
	age = age.to_i

	puts "Number of Children:"
	numChild = gets.chomp
	numChild = numChild.to_i

	puts "Decor Theme:"
	theme = gets.chomp

	puts "Pets: (Y/N)"
	pets = gets.chomp
	pets = pets.downcase
	puts "*************************************************"
	puts ""

	if pets =="y" then
		hasPets = true
	else
		hasPets = false
	end

	post = {
		"name" => name,
		"age" => age,
		"children" => numChild,
		"theme" => theme,
		"pets" => hasPets
	}
	puts "*****You have entered:*****"
	puts "Name: #{post["name"]}"
	puts "Age: #{post["age"]}"
	puts "Children: #{post["children"]}"
	puts "Theme: #{post["theme"]}"
	puts "Pets: #{post["pets"]}"
	puts "***************************"
	puts ""

	puts "****If you would like to make a change to the information above****"
	puts "enter the field you would like to modify, otherwise enter 'none':"
	key = gets.chomp
	key = key.downcase
	if key !="none" then
		puts "What would you like to change #{key} to?:"
		change = gets.chomp
		change = change.downcase
		if key == "age" || key == "children" then
			change = change.to_i
		elsif key == "pets" then
			if change == "y" then
				change = true
			else
				change = false
			end
		end
		post[key] = change
	end
	puts "**************************************************************"
	puts ""
	puts ""
	puts "*****You have entered:*****"
	puts "Name: #{post["name"]}"
	puts "Age: #{post["age"]}"
	puts "Children: #{post["children"]}"
	puts "Theme: #{post["theme"]}"
	puts "Pets: #{post["pets"]}"
	puts "***************************"
	puts "Thank You!"
	puts "Exiting.."
end

interiorDesigner_Qs