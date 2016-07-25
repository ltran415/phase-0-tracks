# Write a program that will give you the best combo pair to play with for a particular map
# on Heroes of the Storm.

# Whenever the user wins match, they will record it by entering in the map name and character
# set they played.
# The user can then input the map name and see which combo pair they have won the most with.

#input: map name and characters
#output: map name with most frequent wins
#steps:
  # create SQLite3 database
  # create 3 tables with map, characters, games_won
  # create a method that will allow the user to input information into the table
  # create a method that returns the map with the most wins

  require 'sqlite3'
  require_relative 'characters_and_maps'

  # create SQLite3 database
  def inititalize_database
    include CharacterData

    db = SQLite3::Database.new("heroes.db")
    db.results_as_hash = true

    # create a tables with maps, characters, and games won
    map_table = <<-SQL
      CREATE TABLE IF NOT EXISTS maps (
        id INTEGER PRIMARY KEY,
        name VARCHAR(255)
      );
    SQL

    character_table = <<-SQL
      CREATE TABLE IF NOT EXISTS characters (
        id INTEGER PRIMARY KEY,
        name VARCHAR(255)
      );
    SQL

    games_won_table = <<-SQL
      CREATE TABLE IF NOT EXISTS games_won (
        id INTEGER PRIMARY KEY,
        map_id INT,
        player_1_id INT,
        player_2_id INT,
        FOREIGN KEY (map_id) REFERENCES maps(id),
        FOREIGN KEY (player_1_id) REFERENCES characters(id),
        FOREIGN KEY (player_2_id) REFERENCES characters(id)
      );
    SQL

    db.execute(map_table)
    db.execute(character_table)
    db.execute(games_won_table)

    rows = db.execute("SELECT * FROM maps")
    if rows.length == 0

      # maps is included in the data module
      maps.each do |map|
       db.execute("INSERT INTO maps (name) VALUES (?) ", map)
      end
    end

    rows2 = db.execute("SELECT * FROM characters")
    if rows2.length == 0
      # characeters is included in the data module
      characters.each do |char|
       db.execute("INSERT INTO characters (name) VALUES (?) ", char)
      end
    end

    db
  end

  # create a method that will allow the user to input information into the table
  def log_win(db)
    puts "Map name please: "
    map = gets.chomp
    puts "First character: "
    player_1 = gets.chomp
    puts "Second character: "
    player_2 = gets.chomp
    db.execute("INSERT INTO games_won (map_id, player_1_id, player_2_id) VALUES (?, ?, ?) ", [map,player_1,player_2])
  end

  # create a method that returns the map with the most wins
  def best_combo(db)
    #pseudocode
    # search through the heroes_info according to the user input for map
    # find the player_1 and player_2 combo that appears most frequent and return that
    rows = db.execute( "select games_won, player_1, player_2 from heroes_info" )
    wins = rows.inject(Hash.new(0)){ |h, v| h[v] += 1; h }
    rows.max_by {|v| wins[v] }
  end


#driver code
db = inititalize_database

puts "Welcome to the program that can calculate the best combo of heroes for the map of your choosing based on your wins.
To log your wins, please enter 'log', to see the best possible combo for a map type 'combo', otherwise type 'done'."

want_exit = nil

until want_exit == "done"
  user_input = gets.chomp

  if user_input == 'log'
    log_win(db)
  elsif user_input 'combo'
    best_combo(db)
  end
end
