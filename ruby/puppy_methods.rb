class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    ctr = 0
    while ctr < integer 
      puts "Woof"
      ctr += 1
    end
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(integer)
    integer *= 7
    return integer
  end

  def name_puppy(name)
    puts "Your puppy's new name is: #{name}"
  end

end


class Kitty
  
  def initialize 
 #   puts "Initializing new kitty instance..."
  end

  def meow(int)
    ctr = 0
    while ctr < int
      puts "meow"
      ctr += 1
    end
  end

  def lives
    puts "how many lives have you used?"
    lives = gets.to_i
    livesLeft = 9 - lives
    puts "You have #{livesLeft} lives left"
  end

end
puts "------------------Calling class methods for kitty class-----------------"
kittyArray = Array.new(50)
ctr = 0
while ctr < 50
  temp = Kitty.new
  kittyArray[ctr] = temp
  ctr += 1
end

kittyArray.each do |x|
  x.meow(2)
  x.lives
end
puts "~~~~~~~~~~~~~~~~~~~End of testing Kitty class~~~~~~~~~~~~~~~~~~~"

puts "******************Calling Class methods for Puppy Class*****************"
spot = Puppy.new
spot.fetch("ball")
puts "How many times would you like the puppy to bark?:"
bark = gets.chomp
bark = bark.to_i
spot.speak(bark)
spot.roll_over
puts "Enter human age to convert to dog years:"
humanyrs = gets.chomp
humanyrs = humanyrs.to_i
x = spot.dog_years(humanyrs)
puts "#{humanyrs} human years equals #{x} dog years"
puts "What would you like to name your puppy?:"
name = gets.chomp
spot.name_puppy(name)





