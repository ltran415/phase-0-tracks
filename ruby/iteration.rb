# Assignment 5.4 Iteration

fruits = ["apples","lychee","durian","jackfruit"]

# iterating with .each

capitalize_fruits = []
fruits.each {|fruit| capitalize_fruits << fruit.capitalize }

# iterating with .map
fruits.map {|fruit| puts "My favorite fruits are: #{fruit}"}

puts "--------------------------------------------------"

#=>
# My favorite fruits are: apples
# My favorite fruits are: lychee
# My favorite fruits are: durian
# My favorite fruits are: jackfruit

#>>>>>>>>>>>>>>>>> sample calls

p fruits
#=> ["apples", "lychee", "durian", "jackfruit"]


p capitalize_fruits
#=> ["Apples", "Lychee", "Durian", "Jackfruit"]

puts "--------------------------------------------------"


#iteration for hash
dinner = {
  :red_snapper => "Fried with chilli and lemongrass",
  :rice => "steamed",
  :soup => "mustard greens and ginger broth",
  :mango_and_rice => "with coconut milk and sesame seeds",
  :fried_banana => "with coconut ice cream",
}

# iterating with .each
dinner.each {|item, descript| puts "I love #{item} #{descript}."}


puts "--------------------------------------------------"

#=>
# I love red_snapper Fried with chilli and lemongrass.
# I love rice steamed.
# I love soup mustard greens and ginger broth.
# I love mango_and_rice with coconut milk and sesame seeds.
# I love fried_banana with coconut ice cream.

# iterating with .map
dinner.map do |item, descript|
  puts "My favorite counting down: #{item}"
end

puts "--------------------------------------------------"

#=>
# My favorite counting down: red_snapper
# My favorite counting down: rice
# My favorite counting down: soup
# My favorite counting down: mango_and_rice
# My favorite counting down: fried_banana

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# method that iterates through the items,
# deleting any that meet a certain condition

# array method
fruits = ["apples", "lychee", "durian", "jackfruit"]

fruits.delete_if {|fruit| fruit == "apples"}
p fruits

puts "--------------------------------------------------"

# hash method
prices = {
  :red_snapper => 10,
  :rice => 2,
  :soup => 3,
  :dessert1 => 3,
  :dessert2 => 4
}

prices.delete_if do |item|
    item == :dessert1
end

p prices

puts "--------------------------------------------------"

# method that filters a data structure for only items that
# do satisfy a certain condition

# array method
fruits2 = ["mango", "mandarin", "durian", "jackfruit"]

fruits2.select!{|item| item.length >= 8}

p fruits2

puts "--------------------------------------------------"

# hash method
ordered_items = {
  :red_snapper => 10,
  :rice => 2,
  :soup => 3,
  :dessert1 => 3,
  :dessert2 => 4
}

ordered_items.select!{|item, price| item == :red_snapper ||
  item == :rice || item == :soup }

p ordered_items

# another method that filters a data structure for only items that
# do satisfy a certain condition
