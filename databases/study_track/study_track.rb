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

def taking_personal_data(db, name, start_day, last_day, personal_id)
  db.execute("INSERT INTO personal (name, start_day, last_day, personal_id) VALUES (?, ?, ?, ?)", [name, start_day, last_day, personal_id])
end

def taking_subject_data(db, s_id, subject, target_hours)
  db.execute("INSERT INTO subjects (s_id, subject, target_hours) VALUES (?, ?, ?)", [s_id, subject, target_hours])
end


# USER INTER FACE
#provide a student id to the students.
#store the student name and number in array

student_name = ""
student_id = 1
start_date = ""
ending_date = ""
target_subject = ""
hours = ""

until student_name == "done"
	puts "Let's set your study target!"
	puts "What is your name? If there are not more stuents enter 'done'."
	student_name = gets.chomp
  	
  	if student_name != "done"		
			puts "Hi, #{student_name.capitalize}! Your student number is #{student_id}."
			student_id += 1
      puts "When do you want to start your log? (ex. 6/10)"
      start_date = gets.chomp
      puts "When do you want to end your log? (ex. 6/10)"
      ending_date = gets.chomp
      taking_personal_data(db, student_name, start_date, ending_date, student_id)
    	
    	until target_subject == "none"
	      puts "Which subject would you like to set a goal? If you do not want set a goal type 'none'."
			  target_subject = gets.chomp
			  	if target_subject != "none"
					  puts "How many hours do you want to study #{target_subject} during #{start_date}-#{ending_date}?"
					  hours = gets.chomp.to_i
					  taking_subject_data(db, student_id, target_subject, hours)
					end
      end

		puts "OK #{student_name.capitalize}! Here is your goal!"
    puts "+++++++++++++++++++++++"
    puts "#{student_name.capitalize}'s GOAL"
    puts "-----------------------"
    puts "TERM : #{start_date}-#{ending_date}"
    subjects_subject = db.execute("SELECT * FROM subjects WHERE s_id = #{student_id}") 
			subjects_subject.each do |goal|
			puts "#{goal[1].upcase} : #{goal[2]} hour(s)"
			end
		puts "+++++++++++++++++++++++"
		puts
    puts "Now we can set another person's goal!"
    target_subject = "reset"

	end
	puts "-----------------------------------------------------------------"
	
end

p personal_table = db.execute("SELECT * FROM personal")
puts "========================================================================="
p subject_table = db.execute("SELECT *FROM subjects")
puts "========================================================================="

puts "========================================================================="
p subjects_subject
subjects_subject.each do |goal|
	puts "#{goal[1].upcase} : #{goal[2]} hour(s)"
end