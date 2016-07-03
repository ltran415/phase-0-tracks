# Assignment 6.4 Solo Challenge

#pseudocode

# implement a class
# initialize a state for the class and add attributes
# give the glass behaviors or methods
# run driver code that creates instances for the class

class Tree

attr_accessor :species_name, :age, :common_tree_name, :tree_types, :tree_region
attr_reader :common_names, :tree_region

  def initialize(species_name)
    puts "initializing tree class..."
    @species_name = species_name
    @common_names = []
    @common_tree_name = ""
    @age = 0
  end

  def wood_hardness
    ibf = nil
    case @species_name
    when "Maple"
        ibf = 999..1500
        return "This #{@species_name} has a hardness of #{ibf} pounds-force"

      when "Rosewood"
        ibf = 1780..3840
        return "#{ibf} pounds force"

      when "Teak"
        ibf = 1000..1650
        return "#{ibf} pounds force"

      when "Walnut"
        ibf = 1010..3689
        return "#{ibf} pounds force"
      else
        puts "not yet determined"
    end

  end

 def common_names

   case @species_name

   when "Maple"
       @common_names = ['mountain Maple', 'red Maple', 'striped Maple', 'sugar Maple', 'chalk Maple', 'Florida Maple', 'black Maple', 'canyon Maple', 'Rocky mountain Maple']

     when "Oak"
       @common_names = ['black Oak', 'northern-red Oak', 'white Oak', 'live Oak', 'scarlet Oak', 'willow Oak', 'bur Oak', 'northern-pin Oak', 'swamp white Oak', 'Buckleys Oak', 'Emory Oak', 'Rocky mountain Oak', 'silverleaf oak', 'blue Oak', 'California Oak', 'canyon Oak', 'coast Oak', 'valley Oak', 'garry Oak']
     when "Pine"
       @common_names = ['eastern white', 'pitch Pine', 'red Pine', 'table mountain Pine', 'longleaf Pine', 'Virginia Pine', 'shortleaf Pine', 'white Pine', 'Apache Pine', 'limber Pine', 'ponderosa Pine']
     when "Sumac"
       @common_names = ['smooth Sumac', 'staghorn Sumac', 'winged Sumac', 'evergreen Sumac', 'prairie Sumac', 'poison Sumac']
     else
       puts "not yet determined"
   end
 end


  def tree_types

    case @species_name

    when "Maple"
        @common_names = ['mountain Maple', 'red Maple', 'striped Maple', 'sugar Maple', 'chalk Maple', 'Florida Maple', 'black Maple', 'canyon Maple', 'Rocky mountain Maple']
        return "These are the different types of #{@species_name} trees found: #{@common_names}"

      when "Oak"
        @common_names = ['black Oak', 'northern-red Oak', 'white Oak', 'live Oak', 'scarlet Oak', 'willow Oak', 'bur Oak', 'northern-pin Oak', 'swamp white Oak', 'Buckleys Oak', 'Emory Oak', 'Rocky mountain Oak', 'silverleaf oak', 'blue Oak', 'California Oak', 'canyon Oak', 'coast Oak', 'valley Oak', 'garry Oak']

        return "These are the different types of #{@species_name} trees found: #{@common_names}"

      when "Pine"
        @common_names = ['eastern white', 'pitch Pine', 'red Pine', 'table mountain Pine', 'longleaf Pine', 'Virginia Pine', 'shortleaf Pine', 'white Pine', 'Apache Pine', 'limber Pine', 'ponderosa Pine']

        return "These are the different types of #{@species_name} trees found: #{@common_names}"

      when "Sumac"
        @common_names = ['smooth Sumac', 'staghorn Sumac', 'winged Sumac', 'evergreen Sumac', 'prairie Sumac', 'poison Sumac']
        return "These are the different types of #{@species_name} trees found: #{@common_names}"

      else
        puts "not yet determined"
    end
  end

  def tree_region

    case @common_tree_name
    when  'red Maple','sugar Maple', 'striped', 'mountain Maple', 'black Oak', 'northern-red Oak', 'white Oak', 'eastern white', 'pitch Pine', 'red Pine', 'smooth Sumac', 'staghorn Sumac'
          return "Northeast"

      when 'chalk Maple', 'Florida Maple', 'live Oak', 'scarlet Oak', 'willow Oak', 'table mountain Pine', 'longleaf Pine', 'Virginia Pine', 'winged Suman', 'smooth Sumac'
          return  "Southeast"

      when 'black Maple', 'red Maple', 'bur Oak', 'northern-pin Oak', 'swamp white Oak', 'red Pine', 'shortleaf', 'white Pine', 'red Pine', 'staghorn Suman', 'winged Sumac', 'smooth Sumac'
          return  "Midwest"

      when 'chalk Maple', 'ash-leaved Maple', 'canyon Maple', 'Rocky mountain Maple', 'Buckleys Oak', 'Emory Oak', 'Rocky mountain Oak', 'silverleaf oak', 'limber Pine', 'ponderosa Pine', 'evergreen Sumac', 'prairie Sumac'
          return  "Southwest"

      when 'big-leaf Maple', 'sierra Maple', 'vine Maple', 'blue Oak', 'California Oak', 'canyon Oak', 'coast Oak', 'valley Oak', 'garry Oak', 'valley Oak', 'garry Oak', 'grey Oak', 'smooth Sumac'
          return  "Farwest"
      else
        "undifined"
    end


  end

  def about_tree
    puts "Age: #{@age}"
    puts "Species: #{@species_name}"
    puts "Other names: #{@common_names}"
  end


end

# driver code

# tree = Tree.new("Maple")
# puts tree.age = 50
# puts "Wow this tree is #{tree.age}"
# puts tree.wood_hardness
# puts tree.tree_types
# puts tree.common_tree_name = 'canyon Maple'
# puts tree.tree_region
# puts tree.common_names
# puts tree
# puts "If you live in the #{tree.tree_region}, you have probably seen one of these: #{tree.common_names}"

#----------------------------------------------------

# user interface

puts "This program creates a tree."

my_trees = []
user_tree = nil

  until user_tree == "done"
    puts "What type of tree would you like? Or type done."
    user_tree = gets.chomp
    case user_tree
    when "Maple", "Oak", "Pine", "Sumac"

      tree = Tree.new(user_tree)
      my_trees << tree

      puts "Tree age?"
      tree.age = gets.chomp.to_i

      puts "Common name for the tree?"
      tree.common_tree_name = gets.chomp
    when "done"
      my_trees.each {|i| puts "#{tree.tree_types}. The #{i.common_tree_name} trees are found in the #{i.tree_region}."}
    end
  end
