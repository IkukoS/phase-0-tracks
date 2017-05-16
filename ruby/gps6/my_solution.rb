# Virus Predictor

# I worked on this challenge with Ikuko Schoeller.
# We spent 2.5 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# require_relative copy and pasting satte_data 
# require_relative = same directory, require needs full passway

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # intialize method intializes instance and takes arguments for instance valiable
 
  #Refactoring the parameters of methods inside virus effects because the argmunts have already been called in each method previously.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  # calls two methods predicted_deaths and speed_of_spread

  private  

  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    

    number_of_deaths = if @population_density >= 200
                        (@population * 0.4).floor
      #speed += 0.5
                      elsif @population_density >= 150
                        (@population * 0.3).floor
      #speed += 1
                      elsif @population_density >= 100
                        (@population * 0.2).floor
      #speed += 1.5
                      elsif @population_density >= 50
                        (@population * 0.1).floor
      #speed += 2
                      else
                        (@population * 0.05).floor
      #speed += 2.5
                      end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak "

  end

# takes arguments related to instance valuable 
# greater population density means greater deaths. 
# print the statement

  def speed_of_spread #(population_density, state) #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
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

  # perform the caluculation, when the pupulation density is larger the spread speed is faster. 
  # print out the statement.

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_info|
  current_state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  current_state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
What are the differences between the two different hash syntaxes shown in the state_data file?
#  => and : 
 
# What does require_relative do? How is it different from require?
#  require_relative copy and pasting satte_data 
#  require_relative = same directory, require needs full passway 

# What are some ways to iterate through a hash?
#  If the global scope is used evenif there are no hash pass in the current method directry, as long as the method included in the current method, has passway to the hash, it can iterate.
#  or just use @ to connect to the hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#  It was amazing how we can simlpify the code. In the end we have only two lines of method names in it!

# What concept did you most solidify in this challenge?
#  require-relative, I learnd something I did not fully understand before.  iterate is still working on. 