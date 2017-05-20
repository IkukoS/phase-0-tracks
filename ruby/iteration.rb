# making an array with fish names

fish = ["tuna", "salmon", "bass", "sea_urchin", "eel"]

# make sentenses with the fish names
puts "<<Before making any changes>>"
p fish

fish.each do |fish|
    puts "I love #{fish}!"
end
puts "<<After .each>>"
p fish
# change the items with -lover!!

fish.map do |fish|
	fish + "_lover"
end 
puts "<<After .map>>"
p fish
# change the items with -lover!! with ! version

fish.map! do |fish|
	fish + "_lover"
end 

puts "<<After .map!>>"
# make sure if the items has been changed
p fish

# making a hash with fish and the japanese name ot each fish

fish_sakana = {
 	tuna: "maguro",
    salmon: "sake",
    bass: "basu",
    sea_urchin: "uni",
    eel: "unagi"
 }

puts "<<Before>>"
p fish_sakana
# print the sentence that tell us the Japanese way of fish

 fish_sakana.each do |fish,sakana|
   puts "#{sakana} is japanese name of #{fish}"
end

puts "<<After>>"
p fish_sakana

	
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.delete_if {|x| x > 5}
p numbers

birth_month = {
	Mark: 11,
	Ikko: 11,
	Anna: 9,
	Kate: 11,
	Sara: 2
}

birth_month.delete_if {|name, month| month < 10}
p birth_month

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers2.keep_if {|x| x > 5}
p numbers2

birth_month2 = {
	Mark: 11,
	Ikko: 11,
	Anna: 9,
	Kate: 11,
	Sara: 2
}

birth_month2.keep_if {|name, month| month < 10}
p birth_month2



#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
numbers3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers3.select! {|x| x > 5}
p numbers3

birth_month3 = {
	Mark: 11,
	Ikko: 11,
	Anna: 9,
	Kate: 11,
	Sara: 2
}

birth_month3.select! {|name, month| month < 10}
p birth_month3


#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
