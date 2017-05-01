# Array Drills

{zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]}

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.map! do |item|
  item + "*"
end
p zombie_apocalypse_supplies.join

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

loop do
    changed = false

		num_do.times do |x|
			if zombie_apocalypse_supplies[x].downcase > zombie_apocalypse_supplies[x+1].downcase
			  
			  zombie_apocalypse_supplies[x],zombie_apocalypse_supplies[x+1] = zombie_apocalypse_supplies[x+1],zombie_apocalypse_supplies[x]
			  
			  changed = true
			end
		end

	break if not changed

end

p zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
def inclue(supply)

  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]
  
    zombie_apocalypse_supplies.each do |item|
    if "#{supply}" == item
        puts "We already have that."
      end
    end
  end 

inclue("boots")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
zombie_apocalypse_supplies.each do |item|
  if item > "d" 
    zombie_apocalypse_supplies.delete(item)
  end
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
pair = []

extinct_animals.each do |animal, year|
  animal_year = "#{animal}-#{year}"
  pair << animal_year
end
  
pair.map! do|set|
  set + "*"
end

p pair.join

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
extinct_animals.each do|animal, year|
	if year > 1999 
	    extinct_animals.delete(animal)
	 end
 end
 p extinct_animals


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
actual_year = {}
  extinct_animals.each do |animal, year|
    actual_year["#{animal}"] = year - 3
    extinct_animals = actual_year
  end
 
p extinct_animals 


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
