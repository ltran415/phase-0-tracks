# Assignment 5.3 Symbols and Hashes

# write a program that will allow an interior designer to enter the details of a
# given client: the client's name, age, number of children, decor theme, and so on.

# pseudocode

#input: different data types such as strings, booleans, and integers

  #steps:
  # create a hash with specified client information, with empty values.
  # ask the user for input
  # translate the input as values for the hash and print out the hash
  # go through the hash and ask the user if they would like to change their input
  # if none then skip and on to the next, if the want to change something allow them
  # to access the key and update it.
  # print the lastest version of the hash and exit.

#output: a hash with the clients input



my_application = {
  :name => "",
  :taste => "",
  :favorite_color => "",
  :number_of_rooms => 0,
  :lives_in_city => nil,
  :has_pets => nil,
  :is_married => nil,
  :has_children => nil,
  :hates_these_questions => nil,
}

#user input
puts "Full name?"

  my_application[:name] = gets.chomp

puts "Describe your taste in three words:"

  my_application[:taste] = gets.chomp

puts "What's your favorite color?"

  my_application[:favorite_color] = gets.chomp

puts "Number of rooms in your house?"

  my_application[:number_of_rooms] = gets.chomp.to_i

puts "Do you live in the city, true or false?"

  if gets.chomp == "true"

    my_application[:lives_in_city] = true

  else
    my_application[:lives_in_city] = false
  end

puts "Do you have pets, true or false??"

  if gets.chomp == "true"

    my_application[:has_pets] = true

  else
    my_application[:has_pets] = false
  end

puts "Are you married, true or false??"

  if gets.chomp == "true"

    my_application[:is_married] = true

  else
    my_application[:is_married] = false
  end

puts "Any children, true or false??"

  if gets.chomp == "true"

    my_application[:has_children] = true

  else
    my_application[:has_children] = false
  end

puts "You like these questions, true or false?"

  if gets.chomp == "true"

    my_application[:hates_these_questions] = true

  else
    my_application[:hates_these_questions] = false
  end

puts my_application


puts "To change your name, type new name, or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:name] = changed_name

  end

puts "Type changes to taste, or type 'none' to skip"

 changed_taste = gets.chomp

  if changed_name != "none"

    my_application[:taste] = changed_taste

  end


puts "Type changes to favorite color or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:favorite_color] = changed_name

  end


puts "Type changes to number of rooms or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:number_of_rooms] = changed_name

  end

puts "Type changes to living in city or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:lives_in_city] = changed_name

  end

puts "Type changes to having pets or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:has_pets] = changed_name

  end

puts "Type changes to marital status or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:is_married] = changed_name

  end

puts "Type changes to having children or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:has_children] = changed_name

  end

puts "Type changes to hating these questions or type 'none' to skip"

 changed_name = gets.chomp

  if changed_name != "none"

    my_application[:hates_these_questions] = changed_name

  end

puts my_application

puts "Thanks for the info!"
