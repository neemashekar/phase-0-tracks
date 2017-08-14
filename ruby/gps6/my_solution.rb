
# Virus Predictor

# I worked on this challenge [by myself, with: Melissa].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It links state_data.rb to my_solution so it can access the data and run the methods.
#
require_relative 'state_data'

class VirusPredictor
  # Initializes a new virus predictor instance and passes the three arguments/parameters.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density)
  end

  # private to the class
  private

  def predictedDeathsSpeedOfSpread(population_density, population, state)
  	speed = 0.0
  	if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end
  end 
  # it calculates the number of deaths based on the population density and stores it in number of deaths.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # it calculates the speed of the spread of disease based on the population density and prints a value at the end.

  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# state = VirusPredictor.new()
array = []
ctr = 0
STATE_DATA.each { |state, pop|
array[ctr] = VirusPredictor.new(state, pop[:population_density], pop[:population])
ctr += 1
}
array[0].virus_effects
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end 

#=======================================================================
# Reflection Section
=begin
The difference betweent the two different hash sytanxes is the use of the 
hash rocket. The hash in the state_data file is interesting because it has a 
nested has within a larger hash. THe larger hash uses hash rocket notation while the 
nested inner hash uses colon notation.

The require_relative links the specified file to the file you are working on.
It is different in that the file you would like to link has to be inside the 
the directory you are currently working on. With the Require keyword you can link
a file using it's full path name if the file is not in your current working
directory.

The way we used to iterate through a hash was the .each method of looping

We sent the function the class attributes instead of a copy of the attribute values
which was something I found interesting. 

I solidified the ruby syntax in this challenge
=end