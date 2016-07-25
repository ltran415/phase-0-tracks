
# pseudocode
# input: a string
# output: a string
  # steps:
    # Create a method with an argument of string - "Long Tran"
    # Split the first and last name and swap the position
    # Change the vowels of the name to the next vowel in "a,e,i,o,u" and change
    # the consonants to the next consonants in the alphabet.

def alias(string_name)
  split_names = string.split_string
  #=> ['Long','Tran']
  swap_names = split_names.shuffle
  return swap_names
end

# takes a string and moves the each vowel to the next vowel in 'aeiou'
#input: string
#output: all the vowels in the string moved to the next letter in the 'aeiou'
def next_vowel(string)
  vowels = ['a','e','i','o','u']
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
      i = vowels[0]
   end
   new_string << i
  end
   new_string
end

p next_vowel('Long Tran')




# vowels = ['a','e','i','o','u']
# if vowels.index(char) == 0
#   char = 'e'
# elsif vowels.index(char) == 1
#   char = 'i'
# elsif vowels.index(char) == 2
#   char = 'o'
# elsif vowels.index(char) == 3
#   char = 'o'
# elsif vowels.index(char) == 4
#   char = 'a'
# end
