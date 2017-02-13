# require gems
require 'sinatra'
require 'sqlite3'

# add static resources
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# student location counter
get "/students/count" do 
  sql_loc = <<-SQL
  SELECT COUNT(name), campus FROM students GROUP BY campus HAVING campus="SF" 
  UNION 
  SELECT COUNT(name), campus FROM students GROUP BY campus HAVING campus="SD"
  UNION 
  SELECT COUNT(name), campus FROM students GROUP BY campus HAVING campus="CHI"
  UNION 
  SELECT COUNT(name), campus FROM students GROUP BY campus HAVING campus="SEA"
  UNION 
  SELECT COUNT(name), campus FROM students GROUP BY campus HAVING campus="NYC"
  SQL
  @students_loc = db.execute(sql_loc)
  erb :students_locations
end

# birthday for a studnet
# update database with +1 on age
get '/students/birthday' do
  erb :birthday
end

post '/birthday' do
  cur_age = db.execute("SELECT age FROM students WHERE name=?",[params['name']])
  new_age = cur_age[0]['age'].to_i + 1
  db.execute("UPDATE students SET age=? WHERE name=?", [new_age,params['name']])
  redirect '/'
end