# ask the questions and get the information
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "How may children do you have?"
number_of_children = gets.chomp

puts "What kind of theme would you like to use?"
decor_theme = gets.chomp

# convert the inputs to number in case

age = age.to_i
number_of_children = number_of_children.to_i

# make hash

client_info = {
	name: "#{name}",
	age: age,
	number_of_children: number_of_children,
    decor_theme: "#{decor_theme}",
}  

# print the information 

puts "Please confirm your information."
puts "Name: #{client_info[:name]}"
puts "Age: #{client_info[:age]}"
puts "Number of Children: #{client_info[:number_of_children]}"
puts "Decor Theme: #{client_info[:decor_theme]}"

# ask user if they need to change
# if user need not any change user should put "none"

puts "If you would like to correct any information, enter the area name you want to change(name/age/number of the children/decor theme), otherwise enter 'none'"

# if user need a change, ask which informaiton they need to change.
# ask user how new value
# with that key overwrite the value
key_or_none = gets.chomp

if key_or_none == "name"
	puts "Please enter the right name."
	client_info[:name] = gets.chomp

	elsif key_or_none == "age"
		puts "Please enter your right age."
		client_info[:age] = gets.chomp

	elsif key_or_none == "number of the children"
		puts "Please write the right number of the children"
        client_info[:number_of_children] = gets.chomp

	elsif key_or_none == "decor theme"
        puts "Please write the desire theme name."	
        client_info[:decor_theme] = gets.chomp	
        else
        key_or_none == "none"
        end

puts "Please confirm your information."
puts "Name: #{client_info[:name]}"
puts "Age: #{client_info[:age]}"
puts "Number of Children: #{client_info[:number_of_children]}"
puts "Decor Theme: #{client_info[:decor_theme]}"
			
	

		
