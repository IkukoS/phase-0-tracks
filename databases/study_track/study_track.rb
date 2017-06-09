# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("study_track.db")

create_personal_table = <<-SQL
	CREATE TABLE IF NOT EXISTS personal(
		id INTEGER PRIMARY KEY,
 	  name VARCHAR(255),
		start_day VARCHAR(255),
		last_day VARCHAR(255),
		personal_id INT,
		FOREIGN KEY (personal_id) REFERENCES subjects(s_id)
  )
SQL

create_subject_table = <<-SQL
	CREATE TABLE IF NOT EXISTS subjects(
		s_id INT,
		subject VARCHAR(255),
		target_hours INT
	)
	SQL

# create a study_track table (if it's not there already)
db.execute(create_personal_table)
db.execute(create_subject_table)


# USER INTER FACE
#provide a student id to the students.
#store the student name and number in array

student_name = ""
student_id = 1
student_names = []
until student_name == "done"
	puts "Let's set your study target!"
	puts "What is your name? If there are not more stuents enter 'done'."
	student_name = gets.chomp
  	if student_name != "done"		
			puts "Hi, #{student_name.capitalize}! Your student number is #{student_id}."
			student_id += 1
      student_names << student_name.capitalize 
		end
	puts "-----------------------------------------------------------------"
end
p student_names

