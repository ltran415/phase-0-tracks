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

  # create SQLite3 database
  db = SQLite3::Database.new("heroes.db")
  db.results_as_hash = true

  # create a table with map name, player_1, player_2
  create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS heroes_info(
      id INTEGER PRIMARY KEY,
      map VARCHAR(255),
      player_1 VARCHAR(255),
      player_2 VARCHAR(255)
    )
  SQL

  db.execute(create_table_cmd)
