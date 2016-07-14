# Virus Predictor

# I worked on this challenge [by myself, with: n/a ].
# I spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative

# require_relative is a method that takes an argument, usually a
# filename, with a path to that file if it's not in the same folder as the file using the method.

# require takes a libaray name and imports all methods and modules associated with that libary.

require_relative 'state_data'



class VirusPredictor

  # initializes the class VirusPredictor and attributes
  # input: a string for state, integer for population_density and population
  # output: a new instance of VirusPredictor class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # gives the return value of predicted_deaths method and speed_of_spread method.
  # input:
  # output: the return values for the methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# renders everything below it as a private method
# you use this method when you don't want the user to able to call the methods
  private

  # Takes population_density, population, state, and returns a printed statement of
  # the number of predicted eaths in the state.
  # input: initialized class data for new instance
  # output: a printed statement of the number of deaths in the state

  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end
  #
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  #
  # end

  # refactored

    def predicted_deaths
      # predicted deaths is solely based on population density
      number_of_deaths =
      #number_of_deaths.floor =

  @population * if @population_density >= 200
        0.4
      elsif @population_density >= 150
        0.3
      elsif @population_density >= 100
        0.2
      elsif @population_density >= 50
        0.1
      else
        0.05
      end

      print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    end
#=======================================================================

  # Takes population density of the state and returns how quickly the virus
  # will spread according to state
  # input: initialized data of population_density and state
  # output: returns a printed statement with the integer speed of how quickly
  # the virus will spread in the particular state

  # def speed_of_spread #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0
  #
  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end
  #
  #   puts " and will spread across the state in #{speed} months.\n\n"
  #
  # end

 # refactored

 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.

  speed = 0

  speed += if @population_density >= 200
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

#
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# release 5 Run reports for all 50 states

STATE_DATA.each do |state, population_information|
  state = VirusPredictor.new(state, population_information[:population_density], population_information[:population])
  state.virus_effects
end

# this belongs outside of the class because we are creating new instances of the class
# based on the data provided by the STATE_DATA hash.


#=======================================================================

# release 6 Refactor virus_effects and make DRY



#=======================================================================
# Reflection Section
#
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The STATE_DATA hash takes a string as a key, and another hash as its value. The population information hash
# has a key of population_density, an integer representing the value,
# a key of population, and an integer representing the value.

# What does require_relative do? How is it different from require?
# require_relative takes a filename and creates a path to that file if it's not in the same folder,
# while require takes a libaray name and imports all methods and modules associated with that libary.

# What are some ways to iterate through a hash?
# An example would be you can use .each method like like one I use above or a for loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The thing that stood out the most was refactoring the method to not take arguments and only use the
# instance varibles.

# What concept did you most solidify in this challenge?
# I think this challenge really help me understand instance varibles. Also iterating through
# the hash is something that I am getting a good grasp on. 
