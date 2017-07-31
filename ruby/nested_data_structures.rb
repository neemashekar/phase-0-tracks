def nested_Structure
	puts"********************************************"
	puts"* Welcome to Password Recovery System v2.0 *"
	puts"********************************************"
	puts ""
	puts "Please enter your 2 digits passcode to proceed"
	actComb = gets.chomp
	numbOne = ["1", "3", "4", "6", "7", "8", "0"]
	numbTwo = ["1", "2", "4", "5", "7", "9", "0"]
	secretAnswer = {
		"first pet" => "spot",
		"age" => "24",
		"initials" => "nps"
	}
	numbOne.each do |numb1|
		numbTwo.each do |numb2|
			if numb1 + numb2 == actComb
				secretAnswer.each do |key, value|
					puts "Enter secret answer for: #{key}"
					response = gets.chomp 
					if response != value
						puts "Incorrect answer...Exiting"
						return
					end
				end
				puts "Your password has successfully reset!"
			end
		end
	end
end
nested_Structure
