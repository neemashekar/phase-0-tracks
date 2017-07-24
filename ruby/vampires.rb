def questions()

	puts "What is your name?:"
	name = gets.chomp
	if name == "Drake Cula" || name == "Tu Fang" then
		act_name = false
	else 
		act_name = true
	end
	puts "Enter age?:"
	age = gets.chomp
	age = age.to_i

	puts "Enter year of birth?:"
	birth_year = gets.chomp
	birth_year = birth_year.to_i
	actual_year = birth_year - age
	if actual_year != birth_year then
		act_age = false
	else
		act_age = true
	end

	puts "Would you like garlic bread (Y/N)?:"
	garlic_bread = gets.chomp
	if garlic_bread != "Y" || garlic_bread != "y" then
		eats_GB = false
	else
		eats_GB = true
	end

	puts "Would you like to be enrolled in the company's health insurance (Y/N)?:"
	health_insur = gets.chomp
	if health_insur != "Y" || health_insur != "y" then
		needs_HI = false
	else
		needs_HI = true
	end

	if (health_insur == true && act_age == true) then
		puts "prob not a vamp"
	end
end

questions()

