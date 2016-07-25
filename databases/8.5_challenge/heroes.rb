# Write a program that will give you the best combo pair to play with for a particular map
# on Heroes of the Storm.

# Whenever the user wins match, they will record it by entering in the map name and character
# set they played.
# The user can then input the map name and see which combo pair they have won the most with.

#input: map name and characters
#output: map name with most frequent wins
#steps:
  # create SQLite3 database
  # create a table with map name, player_1, player_2
  # create a method that will allow the user to input information into the table
  # create a method that returns the map with the most wins

  require 'sqlite3'
  require_relative 'characters_and_maps'

  include CharacterData

  # create SQLite3 database
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
      player_id INT,
      FOREIGN KEY (map_id) REFERENCES maps(id),
      FOREIGN KEY (player_id) REFERENCES characters(id)
    );
  SQL

  db.execute(map_table)
  db.execute(character_table)
  db.execute(games_won_table)

  rows = db.execute("SELECT * FROM maps")
  if rows.length == 0

    maps.each do |map|
     db.execute("INSERT INTO maps (name) VALUES (?) ", map)
    end
  end

  rows2 = db.execute("SELECT * FROM characters")
  if rows2.length == 0
    characters.each do |char|
     db.execute("INSERT INTO characters (name) VALUES (?) ", char)
    end
  end

  # create a method that will allow the user to input information into the table
  def log_win(db, map, player_1, player_2)
    db.execute("INSERT INTO heroes_info (map, player_1, player_2) VALUES (?, ?, ?)", [map],[player_1,[player_2]])
  end

  # create a method that returns the map with the most wins
  def best_combo
    #pseudocode
    # search through the heroes_info according to the user input for map
    # find the player_1 and player_2 combo that appears most frequent and return that
    db = SQLite3::Database.new("heroes.db")
    rows = db.execute( "select map, player_1, player_2 from heroes_info" )
    wins = rows.inject(Hash.new(0)){ |h, v| h[v] += 1; h }
    rows.max_by {|v| wins[v] }
  end

  # user interface
  # puts "Map name please: "
  # map = gets.chomp
  # puts "First character: "
  # player_1 = gets.chomp
  # puts "Second character: "
  # player_2 = gets.chomp
  #
  # log_win(db, map, player_1, player_2)
  #
  # puts "Enter an map name to see best character choices: "
  # # map_name = gets.chomp
