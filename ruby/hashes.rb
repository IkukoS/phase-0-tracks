#let the designer enter the information of the client then store them.
#(name, age, number of the children, decor theme and so on)

puts "What is the client name?"
name = gets.chomp.downcase

puts "How old is the cleient?"
age = gets.chomp.to_i

puts "How many children does the client have?"
number_of_children = gets.chomp.to_i

puts "What is the theme of the decor?"
theme_of_decor = gets.chomp

puts "Does the cleient have a budget?(y/n)"
budget = gets.chomp

client_info = {
	name: name,
	age: age,
	num_children: number_of_children,
	theme: theme_of_decor,
	budget: budget
}

puts "Cleient Information"
# puts "Name: client_info[:name]"S