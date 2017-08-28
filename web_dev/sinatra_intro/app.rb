# require gems
require 'sqlite3'
require 'sinatra'


db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
	student.to_s
end

get '/contact' do 
	"123 State St."
end

get '/great_job' do
	name = params[:name]
	if name
		"Great job, #{name}!"
	else
		"Great job!"
	end
end

get '/:num_1/plus/:num_2' do
	n1 = params[:num_1].to_i
	n2 = params[:num_2].to_i
	x = n1 + n2
	x.to_s
end
 




