def questions()
	counter = 0
	puts "How many employees will be processed?"
	employeesNum = gets.chomp
	employeesNum = employeesNum.to_i
	while counter < employeesNum
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
		actual_year = 2017 - age
		if actual_year != birth_year then
			act_age = false
		else
			act_age = true
		end

		puts "Would you like garlic bread (Y/N)?:"
		garlic_bread = gets.chomp
		if garlic_bread != "N" || garlic_bread != "n" then
			eats_GB = true
		else
			eats_GB = true
		end

		puts "Would you like to be enrolled in the company's health insurance (Y/N)?:"
		health_insur = gets.chomp
		if health_insur != 'N' || health_insur != 'n' then
			needs_HI = true
		else
			needs_HI = false
		end

		if eats_GB == false && act_age == false && health_insur == false then
			puts "Almost certainly a vampire"
		elsif (name == "Drake Cula" || name == "Tu Fang") then
			puts "Definitely a vampire"
		elsif (eats_GB != true && act_age != true) || (health_insur != true && act_age != true) then
			puts "Probably a vampire"
		elsif (eats_GB == true && act_age == true) || (health_insur == true && act_age == true) then
			puts "Probably not a vampire"
		else
			puts "Results inconclusive"
		end
		allergies = ""
		while allergies != "done" 
			puts "Please enter any allergies you have, and type done when finished: "
			allergies = gets.chomp
			if allergies == "sunshine" then
				puts "Probably a vampire"
				puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."
				return
			end
		end
		
		counter += 1
	end
	puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."

end

questions()

