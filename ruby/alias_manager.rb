
# pseudocode
# input: a string
# output: a string
  # steps:
    # Create a method with an argument of string - "Long Tran"
    # Split the first and last name and swap the position
    # Change the vowels of the name to the next vowel in "a,e,i,o,u" and change
    # the consonants to the next consonants in the alphabet.



# a method that takes a string name a reverses the first and last name
# input: a string that represents a full name
# output: the string names reversed
def swap_names(string_name)
  split_names = string_name.split(" ")
  #=> ['Long','Tran']
  new_name = ""
  swap_names = split_names.rotate

  swap_names.each do |name|
    new_name << name + " "
  end
  new_name.rstrip
end

# takes a string and returns the string with the vowels replaced with the next vowel in "aeiou"
#input: string
#output: all the vowels in the string moved to the next letter in the 'aeiou'
def next_vowel(string)
  vowels = ['a','e','i','o','u','v']
  new_string = ""
  split_letters = string.split("")
  #=> ["L", "o", "n", "g"]
  split_letters.each do |i|
   if i == vowels[0]
     i = vowels[1]
   elsif i == vowels[1]
     i = vowels[2]
   elsif i == vowels[2]
     i = vowels[3]
   elsif i == vowels[3]
     i = vowels[4]
   elsif i == vowels[4]
      i = vowels[5]
   end
   new_string << i
  end
   new_string
end

# takes a string and returns the string with the consonants replaced with the next consonant
#input: string
#output: all the consonant in the string moved to the next letter in the consonant alphabet

def next_consonant(string)
  hash = {}
  new_con_array = []
  new_string = ""
  split_string = string.split("")
 #=> ["L", "o", "n", "g"]

  cons = ['b','c','d','f','g','h','j',
  'k','l','m','n','p','q','r','s','t','v','w','x','y','z']

  cons.each do |letter|
    new_con_array << letter.next
  end

  cons.each do |letter|
    hash[letter] = letter.next
  end

  #=>["c", "d", "e", "g", "h", "i", "k", "l",
  #  "m", "n", "o", "q", "r", "s", "t", "u", "w", "x", "y", "z", "aa"]

  split_string.each do |i|
    case i
    when cons[0]
      i = new_con_array[0]
    when cons[1]
      i = new_con_array[1]
    when cons[2]
      i = new_con_array[2]
    when cons[3]
      i = new_con_array[3]
    when cons[4]
      i = new_con_array[4]
    when cons[5]
      i = new_con_array[5]
    when cons[6]
      i = new_con_array[6]
    when cons[7]
      i = new_con_array[7]
    when cons[8]
      i = new_con_array[8]
    when cons[9]
      i = new_con_array[9]
    when cons[10]
      i = new_con_array[10]
    when cons[11]
      i = new_con_array[11]
    when cons[12]
      i = new_con_array[12]
    when cons[13]
      i = new_con_array[13]
    when cons[14]
      i = new_con_array[14]
    when cons[15]
      i = new_con_array[15]
    when cons[16]
      i = new_con_array[16]
    when cons[17]
      i = new_con_array[17]
    when cons[18]
      i = new_con_array[18]
    when cons[19]
      i = new_con_array[19]
    when cons[20]
      i = new_con_array[20]
    end
    new_string << i
  end
  new_string
end



# combines the methods swap_names, next_vowel, and next_consonant to make an alias key
#input: string
#output: all the vowels and the consonants in the string moved to the next letter and the first and last name will be swapped


def spy_alias(string)


  split_names = string.split(" ")
  #=> ['Long','Tran']
  new_name = ""
  swap_names = split_names.rotate

  swap_names.each do |name|
    new_name << name + " "
  end
  next_consonant_name = next_consonant(new_name.downcase)

  second_alias = next_vowel(next_consonant_name)

  split = second_alias.split(" ")

  final_alias = ""
  split.each do |name|
  final_alias << name.capitalize + " "
  end

final_alias.rstrip

end

p spy_alias("Felicia Torres")

#=> "Vussit Gimodoe"

# user interface


user_input = nil
until user_input == "done"

  puts "Welcome to the alias spy name maker. Please enter in a first and last name in this format 'first_name last_name'. Type done to exit."

  user_input = gets.chomp unless gets.chomp == 'done'


  spy_name = spy_alias(user_input)

  puts "Your spy name is: #{spy_name}"
end
