class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times{ puts "woof!" }
    return nil
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)

    if human_years <= 2
      human_years *= 5
    else
      human_years *= 4
    end
  end

  def play_dead
    puts "*plays dead*"
  end


end

fido = Puppy.new

puts fido.fetch("ball")

puts fido.speak(4)

puts fido.dog_years(18)

puts fido.play_dead

class Tanuki

  def initialize
    puts "Tanuki profile:"

  end

  def eat_snack(item)
    puts "You look so cute eating #{item}! Hey save some for me!"
  end

  def hours_slept(integer)
    if integer <= 8
      puts "You poor baby, take a nap!"
    elsif integer >= 9
      puts "Sleepy head you must be hungry!"
    end
  end

  def cuddle
    puts "*cuddles and lays on lap*"
  end

end

chopper = Tanuki.new

puts chopper.eat_snack("cookies")
puts chopper.hours_slept(8)
puts chopper.cuddle

index = 0

while index < 50
  tanuki = []
  tanuki << Tanuki.new
  tanuki.each {|t| t.eat_snack("chips") }
  tanuki.each {|t| t.hours_slept(9) }
  tanuki.each {|t| t.cuddle }
  index += 1
end
