#let the designer enter the information of the client then store them.
#(name, age, number of the children, decor theme and so on)

puts "What is the client first name?"
first_name = gets.chomp.capitalize

puts "What is the client last name?"
last_name = gets.chomp.capitalize

puts "How old is the cleient?"
age = gets.chomp.to_i

puts "How many children does the client have?"
number_of_children = gets.chomp.to_i

puts "What is the theme of the decor?"
theme_of_decor = gets.chomp

puts "Does the cleient have a budget?(y/n)"
need_budget = gets.chomp

if need_budget == "y"
	puts "How much is the budget?"
	budget = gets.chomp.to_i
end

# store the information in one place

client_info = {
	first_name: first_name,
	last_name: last_name,
	age: age,
	num_children: number_of_children,
	theme: theme_of_decor,
	budget: need_budget
}

# print all the informations with tags.

puts "<<Cleient Information>>"
puts "Name: #{client_info[:first_name]} #{client_info[:last_name]}"
puts "Age: #{client_info[:age]}"
puts "Number of the children: #{client_info[:num_children]}"
puts "Theme: #{client_info[:theme]} "

# if there is a budegt ask the amount.
if need_budget == "y"
	puts "Budget: #{budget}"
else
	puts "Budget: N/A"
end

# give the chance to correct the information

puts "Is all the information correct?"
puts "If the information is correct, please enter 'none'"
puts "If there is a crrection, please enter the name of the part you want to change."
correction_part = gets.chomp.downcase
	if correction_part != "none"
		puts "Write the correct information."
		new_value = gets.chomp
	end

correction_part = correction_part.to_sym
client_info[correction_part] = new_value

	puts "<<Cleient Information>>"
	puts "Name: #{client_info[:first_name]} #{client_info[:last_name]}"
	puts "Age: #{client_info[:age]}"
	puts "Number of the children: #{client_info[:num_children]}"
	puts "Theme: #{client_info[:theme]} "	

    	if correction_part != budget

            if need_budget != "y"
	
		            puts "Budget: N/A"

	            else
	                puts "Budget: #{budget}"
            end
        else
         	puts "Budget: #{client_info[:budget]}"
    end



