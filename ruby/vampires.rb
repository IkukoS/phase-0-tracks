def multiple_employees(n)
current_applicant = 0
	until 
		current_applicant == n

		puts "What is your name?"
		name = gets.chomp

		puts "How old are you?"
		age = gets.chomp.to_i

		puts "What year were you born"
		birth_year = gets.chomp.to_i

		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		like_garlic = gets.chomp

		puts "Would you like to enroll in the company’s health insurance?(y/n) "
		want_insurance = gets.chomp

		puts "If you have allergies, please write what a name of the allergy. If you do not have any allergies, please write [done]."
		allergy = gets.chomp
		  if allergy == "sunshine"
			      	puts "Probably a vampire"
		  elsif allergy == "done"

		  	   true_age = 2017 - birth_year

								if name == "Drake Cula" || name == "Tu Fang"
									puts "Definitely a vampire."

									elsif true_age != age && like_garlic == "n" && want_insurance == "n"
										puts "Almost certainly a vampire."

									elsif true_age != age && (like_garlic == "n" || want_insurance == "n")
										puts "Probably a vampire."
									elsif 
										true_age == age && (like_garlic == "y" || want_insurance == "y")
										puts "Probably not a vampire."
									else 
										puts "Result inconclusive."
								end
							else
        allergies = ""
		until allergy == "done" || allergy == "sunshine" || allergies == "done" || allergies == "sunshine"
		 	    puts "Please write another allergy. if you do not have any more allergy, please write [done]."
			    allergies = gets.chomp
			      if allergies == "sunshine"
			      	puts "Probably a vampire"
			      else
			      	true_age = 2017 - birth_year

								if name == "Drake Cula" || name == "Tu Fang"
									puts "Definitely a vampire."

									elsif true_age != age && like_garlic == "n" && want_insurance == "n"
										puts "Almost certainly a vampire."

									elsif true_age != age && (like_garlic == "n" || want_insurance == "n")
										puts "Probably a vampire."
									elsif 
										true_age == age && (like_garlic == "y" || want_insurance == "y")
										puts "Probably not a vampire."
									else 
										puts "Result inconclusive."
								end
              end
			      end
			 end

 	current_applicant = current_applicant + 1
 end
end

multiple_employees(2)

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


