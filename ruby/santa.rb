class Santa

  def initialize(name, gender, ethnicity, hair_color)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @hair_color = hair_color
    puts "\n"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "#{@name} says ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!..mmmmm cookies.."
  end

  def about
    puts "name: #{@name}"
    puts "gender: #{@gender}"
    puts "ethnicity: #{@ethnicity}"
    puts "hair color: #{@hair_color}"
  end

#getter methods

  def reindeer_ranking
    @reindeer_ranking
  end

  def name
    @name
  end


#setter methods

  def name=(name)
    @name = name
  end

end

# driver code

santa = Santa.new("Sonic", "male", "Vietnamese", "Blue")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
santa.name = "Sonic the mole"
puts "These are #{santa.name}'s favorite reindeers starting with: #{santa.reindeer_ranking}"
#santa.speak = "Now off to deliver presents and stuff!"



# ultilizing arrays to create instances

santas = []
example_names = ["Luffy", "Zoro", "Nami", "Robin", "Chopper", "Brooks", "Sanji"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_hair_colors = ["Blue", "Silver", "Red", "Pink", "Rainbow", "Green", "Lavender"]

example_genders.length.times do |i|
  santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i], example_hair_colors[i]).about
end
