# a method that takes a users full name and returns an encrypted
# string.

# input: a string
# steps:
  # get user input
  # divide the input and swap the first and last name
  # use .next method to change all the vowels to the next vowel
  # and the consonants to the next letter in the alpha bet
  # return the changed string
#output: a new string with letters swapped


def spy_alias(string)

  new_alias = []

  string.each_char do |i|
    if i == "z"
      new_alias.push  "a"
    elsif i == 'a'|| i =='e'||i == 'i'|| i == 'o'|| i == 'u'|| i == " "
      new_alias.push i.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
    else
      new_alias.push i.next
    end
  end

  new_alias.join("")

end


# driver code

spy_name = spy_alias("long tran")
p spy_name



# loop and user interface

user_name = ""
until user_name == "quit"

  puts "Name:"
  user_name = gets.chomp

  puts spy_alias(user_name)

end
