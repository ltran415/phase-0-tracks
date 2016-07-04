
class Santa

  attr_reader :reindeer_ranking
  attr_accessor :name, :age, :speak

  def initialize(name, gender, ethnicity, hair_color)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @hair_color = hair_color
    puts "\n"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "#{@name} says ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!..mmmmm cookies.."
  end

  def about
    puts "#{@name} says ho, ho, ho! Haaaappy holidays!"
    puts "name: #{@name}"
    puts "age: #{@age}"
    puts "gender: #{@gender}"
    puts "ethnicity: #{@ethnicity}"
    puts "hair color: #{@hair_color}"
  end

# #getter methods
#
#   def reindeer_ranking
#     @reindeer_ranking
#   end
#
#   def name
#     @name
#   end
#
#
# #setter methods
#
#   def name=(name)
#     @name = name
#   end
#
end

# ------------------------------------------------

# driver code

santa = Santa.new("Sonic", "male", "Vietnamese", "Blue")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
santa.name = "Sonic the mole"
puts "These are #{santa.name}'s favorite reindeers starting with: #{santa.reindeer_ranking}"


# ------------------------------------------------
# pseudocode

#input: a bunch of new santa instances
#steps:
  # create an empty array
  # create example arrays with initialize information to iterate through
  # use objects in arrays as arguments for the state of our instance
#output: many instances with initialize information

# Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like
# -- each array could have a lot more options in it!) to create your Santas with a randomly selected gender
# and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of
# each Santa using the instance methods that give you access to that data.

# ------------------------------------------------
# ultilizing arrays to create instances

santas = []
example_names = ["Luffy", "Zoro", "Nami", "Robin", "Chopper", "Brooks", "Sanji"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_hair_colors = ["Blue", "Silver", "Red", "Pink", "Rainbow", "Green", "Lavender"]


# using a loop to create many santas
index = 0

while index < 1000

  example_genders.length.times do |i|
    santas << Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample, example_hair_colors.sample).about

  end
  santas.each {|age| age = @age }
  index += 1
end
