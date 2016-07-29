# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")

# write a basic GET route
# add a query parameter
# GET /
get '/' do

  name = params[:name]
  if name
  "Hello, #{name}!"
  else
    "Hello You!"
  end
end

# write a GET route with
# route parameters

get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is am learning Sinatra"
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end
# write a GET route that retrieves
# all student data

get '/students' do
  students = db.execute("SELECT * FROM students")
  students.to_s
end

# write a GET route that retrieves
# a particular student
