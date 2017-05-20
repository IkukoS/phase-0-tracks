# making an array with fish names

fish = ["tuna", "salmon", "bass", "sea_urchin", "eel"]

# make sentenses with the fish names
p fish
fish.each do |fish|
    puts "I love #{fish}!"
end

p fish
# change the items with -lover!!

fish.map! do |fish|
	fish + "_lover"
end 

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

p fish_sakana
# print the sentence that tell us the Japanese way of fish

 fish_sakana.each do |fish,sakana|
   puts "#{sakana} is japanese name of #{fish}"
end

p fish_sakana

	
