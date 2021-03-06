# Virus Predictor

# I worked on this challenge till middle of Release 5 [with: Eric].
# We spent [1] hours on this challenge.  After that I did by myself.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#This connects to the data file.
#This statement essentially copies the data from the file into this location of the program.
#Difference is that require requires the entire directory path for the file.

#STATE_DATA is a constant, because it is initialized with capital letters.
#This is meant not to be changed while running the program; doing so will cause a warning.
#This is in the global name space



class VirusPredictor
attr_reader :virus_effects
  #Initializes a new instance of a class.
  #This is where we initialize our instance variables and state attributes.
  #Takes three parameters as arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
  # private 
  # if I put private here I get error. under private you can not call a method.
  # but if the private is under virus_effect method it still work even this passing methods under private

  # The virus_effects method looks like a getter for predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  # This depends on the population density, establishing a positive correlation between population density and the number of deaths.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    number_of_deaths = if @population_density >= 200
									      (@population * 0.4).floor
									    elsif @population_density >= 150
									      (@population * 0.3).floor
									    elsif @population_density >= 100
									      (@population * 0.2).floor
									    elsif @population_density >= 50
									      (@population * 0.1).floor
									    else
									      (@population * 0.05).floor
									    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Again establishes a correlation between population density and the time it will take for the disease to spread across the state.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed +=  if @population_density >= 200
                  0.5
              elsif @population_density >= 150
                  1
              elsif @population_density >= 100
                  1.5
              elsif @population_density >= 50
                  2
              else
                  2.5
              end

    puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#STATE_DATA.each {|state, data| puts "#{state}, #{STATE_DATA[state][:population_density]}, #{STATE_DATA[state][:population]}"}
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#  => and : 
 
# What does require_relative do? How is it different from require?
#  require_relative copy and pasting satte_data 
#  require_relative = same directory, require needs full passway 

# What are some ways to iterate through a hash?
#  If the global scope is used evenif there are no hash pass in the current method directry, as long as the method included in the current method, has passway to the hash, it can iterate.
#  or just use @ to connect to the hash. Then we can use methods like .each

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#  It was amazing how we can simlpify the code. In the end we have only two method names!! As long as the things pass on is instance value, we even need not pass it!

# What concept did you most solidify in this challenge?
# private was something new and interesting. It is really clear you can not call the method if it is under private! 