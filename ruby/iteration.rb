fish = ["tuna", "salmon", "bass", "sea_urchin", "eel"]

sakana =["maguro", "sake", "basu", "uni", "unagi"]

puts "before .each call"
p fish
p sakana

fish.each do |fish|
    sakana << fish
end

puts "after .each call"
p fish
p sakana

fish_sakana = {
 	tuna:  -"maguro",
    salmon: "sake",
    bass: "basu",
    sea_urchin: "uni",
    eel: "unagi"
 }



 fish_sakana.each do |f,s|
   puts "#{s} is japanese name of #{f}"
end

	
