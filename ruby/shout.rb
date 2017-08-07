module Shout
  def yell_angrily(words)
 	words + "!!!" + " :("
  end
  def yell_happily(words)
  	return words + "!!!! " + ":D"
  end
end

class Coach
	include Shout
end

class Child
	include Shout
end

coach = Coach.new
kid = Child.new
puts coach.yell_angrily("Out of bounds")
puts kid.yell_happily("Weee")