fish = ["tuna", "salmon", "bass", "sea_urchin", "eel"]

sakana =[]

puts "before .each call"
p fish
p sakana

fish.each do |fish|
    sakana << fish
end

puts "after .each call"
p fish
p sakana

