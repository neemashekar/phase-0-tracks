=begin
Ask user to enter info about client and store response in variables
Populate the hash table with the user's responses
	
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