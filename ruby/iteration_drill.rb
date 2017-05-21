# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.map! do |item|
   item + " * "
   end
 p zombie_apocalypse_supplies.join

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# def alphabetize
#   zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
#                               "shotgun", "compass", "CB radio", "batteries"]

#   index = 0
#     while index < zombie_apocalypse_supplies.length
#   if zombie_apocalypse_supplies[index] > zombie_apocalypse_supplies[index + 1]
#        zombie_apocalypse_supplies << zombie_apocalypse_supplies[index]
#        zombie_apocalypse_supplies.delete[index]
#        index += 1
#      end
#      p zombie_apocalypse_supplies
#    end
#  end

#  alphabetize

       


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def already_have(checking_item)

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

  zombie_apocalypse_supplies.each do |item|
    if item == checking_item
      puts "We already have #{item}."
    end
  end
end

  already_have("shotgun")
  already_have("water")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
def pick_five
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

  chosen_item = []
    while chosen_item.length < 5
      picked = zombie_apocalypse_supplies.sample
      chosen_item << picked
      chosen_item.uniq
    end
  p chosen_item

end

pick_five



# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]
# # ----
# def add_items
#   zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
#                               "shotgun", "compass", "CB radio", "batteries"]
#   other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]
#   index = 0
  
#   zombie_apocalypse_supplies.each do |item|
#     while index < other_survivor_supplies.length
#       if other_survivor_supplies[index] == item
#         zombie_apocalypse_supplies << other_survivor_supplies[index]
#         index += 1
#       end
#     end
#   end
#     p zombie_apocalypse_supplies
# end

# add_items

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
# ----

pair = []

extinct_animals.each do |animal, year|
  animal_year = "#{animal} - #{year}"
  pair << animal_year
end
  
pair.map! do|set|
  set + " * "
end

p pair.join

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_animals.each do |animal, year|
  year >= 2000 
      extinct_animals.delete(animal)
    end
    p extinct_animals
  end


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

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