module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :D"
  end

end

# driver code for .self
#
# puts Shout.yell_angrily("Ruby is hard!!")
#
# puts Shout.yelling_happily("Ruby is easy!!")



class CabDriver
  include Shout
end

class Parent
  include Shout
end

driver = CabDriver.new
p driver.yell_angrily("Hey you move!!")

parent = Parent.new
p parent.yelling_happily("Omg the taxes are in!")
