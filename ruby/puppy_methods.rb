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
