#Assignment 5.2 Arrays


#>>>>>>>> Methods for arrays
# Release 2

def array_maker(item1, item2, item3)
  [item1, item2, item3]
end


def add_to_array(array, item)
  array.push item
end


#>>>>>>>> Driver code
made_array = array_maker(true, 3 , 4)

p made_array

added_array = add_to_array([3, 4], 5)

p added_array

added_array2 = add_to_array(["a", "b", "c", 1, 2], 3)

p added_array2

added_array3 = add_to_array(["Hello", false, "c", 1, 4.5], 3)

p added_array3

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Release 1

my_array = Array.new

p my_array

my_array.push("Hello", 5, true, "World", 34)

p my_array

my_array.delete_at(2)

p my_array

my_array.insert(2, true)

p my_array

my_array.shift

p my_array


boolean = my_array.include?("Hello")
puts "Does my array include Hello?: #{boolean}"

new_array = ["eggs", "bacon", "cheese"]

p new_array

joined_arrays = new_array + my_array

p joined_arrays
