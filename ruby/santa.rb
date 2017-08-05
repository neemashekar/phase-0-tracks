class Santa
	attr_reader :gender, :ethnicity, :raindeer_ranking, :age
	attr_accessor :age
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(strCookie)
		puts "That was a good #{strCookie} cookie"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(string)
		temp = []
		ctr = 0
		arrayLen = @raindeer_ranking.length
		while ctr < arrayLen
			if string != @raindeer_ranking[ctr]
				temp <<@raindeer_ranking[ctr]
			end
			ctr += 1
		end
		arrayLen -= 1
		temp[arrayLen] = string
		@raindeer_ranking = temp
		return @raindeer_ranking
	end

end #Class Santa

santas = []
santaGender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santaEth = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
ctr = 0
while ctr < 20
	randomGender = rand(santaGender.length + 1)
	randomEth = rand(santaEth.length + 1)
	randomAge = rand(141) 
	santas << Santa.new(santaGender[randomGender], santaEth[randomEth])
	santas[ctr].age = randomAge
	ctr += 1
end

ctr = 1
santas.each do |santas|
	puts "-----------------Santa No. #{ctr}-----------------" 
	puts "gender: #{santas.gender}"
	puts "ethnicity: #{santas.ethnicity}"
	puts "raindeer ranking: #{santas.raindeer_ranking}"
	puts "age: #{santas.age}"
	puts "----------------------------------------------"
	ctr += 1
end




=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")



puts "would you like to add a new Santa?:"
puts "Enter 1 to add Santa else press any key...."
response = gets.chomp
if response == "1"
	puts "Enter gender of Santa:"
	gender = gets.chomp
	puts "Enter ethnicity:"
	eth = gets.chomp
	santas << Santa.new(gender, eth)
end


santas[0].get_mad_at("Rudolph")
santas[3].get_mad_at("Dancer")
santas[6].get_mad_at("Cupid")


santas[1].celebrate_birthday
santas[2].celebrate_birthday
santas[5].celebrate_birthday

ctr = 1
santas.each do |santas|
	puts "-----------------Santa No. #{ctr}-----------------" 
	puts "gender: #{santas.gender}"
	puts "ethnicity: #{santas.ethnicity}"
	puts "raindeer ranking: #{santas.raindeer_ranking}"
	puts "age: #{santas.age}"
	puts "----------------------------------------------"
	ctr += 1
end
=end









