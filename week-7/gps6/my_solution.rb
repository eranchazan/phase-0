# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# Allows you to load the state_data.rb file
#
require_relative 'state_data'

class VirusPredictor
  # initialize and identify the instance variables in this class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls the other two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # calculates predicted deaths based on data from the state_data.rb file
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
     when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    when
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # calculates speed of spread based 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    when
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population]) 
  state.virus_effects 
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
#Reflection
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first hash syntax is called the hash rocket (now depricated)syntax with hash = {key=>value}. 
# The second hash syntax: hash = {key: value}.
# 
#What does require_relative do? How is it different from require?
# require_relative allowes you to load a file and gain access to it relative to the file containing the statement.  
# require_relative looks up the relative path of the other file in relation to it. Require just allows you to access 
# another file. 
# 
#What are some ways to iterate through a hash?
# To iterate throught a hash you use the .each method, .each_key, each_value, 
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#
#What concept did you most solidify in this challenge?
# I solidified how to iterate over a nested hash. when outside a class. 
#
#
#
#


