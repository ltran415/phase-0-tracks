# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, 'o')
# => “zoom”

p "enhance".center(18)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".concat(" suspects")
p "the usual".insert(9," suspects")
#=> "the usual suspects"

p " suspects".prepend("the usual")
p " suspects".insert(0,"the usual")
p "suspects".replace("the usual suspects")
# => "the usual suspects"

p "The case of the disappearing last letter".chomp('r')
p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".delete('T')
p "The mystery of the missing first letter".delete "t".capitalize
p "The mystery of the missing first letter".delete "t".upcase
p "The mystery of the missing first letter".delete "The mystery of the missing first letter"[0]
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".scan(/[^\s]{2,}/).join(" ")
p "Elementary,    my   dear        Watson!".squeeze("  ")

# => "Elementary, my dear Watson!"

p 'z'.ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

# 122 is the Decimal value for z in an Ascii chart. Since computers can only understand numbers,
# an Ascii chart allows us to see bits values of letters and characters.

p "How many times does the letter 'a' appear in this string?".scan(/(a)/).length
# => 4
