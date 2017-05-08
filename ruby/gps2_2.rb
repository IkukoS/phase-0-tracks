# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# making an array
# set hash with items and quantity place holder
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def creat_list(list)
	
	grocery_list = list.split(" ")
    hash_list = {}
	grocery_list.each do |item|
		hash_list[item] = 0
	end
	hash_list
	
end
new_list = creat_list("carrots apples cereal pizza")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: take an item and quantity add to hash list
# output: new hash list


def add_item(hash_list, item, quantity)
	hash_list[item] = quantity
	hash_list
end

p add_item(new_list, "potato", 3)


# Method to remove an item from the list
# input: item to be remove
# steps: delete an item from the hash 
# output: hash without the item

def delete_item(hash_list, item)
	hash_list.delete(item)
	hash_list
end

p delete_item(new_list, "apples")

# Method to update the quantity of an item
# input: take a hash list and quantity update
# steps: hash list with a new quantity
# output: update hash list

def update_quantity(hash_list, item, quantity)
	hash_list[item] = quantity
	hash_list
end

p update_quantity(new_list, "pizza", 2)

# Method to print a list and make it look pretty
# input: hash list 
# steps: iterate over has list
# output: hash list

def pretty_list(hash_list)
	hash_list.each do |item, quantity|
		puts "#{item} : #{quantity}"
	end
end

p pretty_list(new_list)


# What did you learn about pseudocode from working on this challenge?
# I was just writeing what I would do in English but it was great idea to make clear 
# that what is inut and put put so that I will expect how the start and end are like.

# What are the tradeoffs of using arrays and hashes for this challenge?
# The gegining honestly I was not sure what we were doing but doing same things again and again
# torwards to end I was more confortable to take the hash as an arguments.
# I have been wondering how to take hash in the method from last week but I did not get the conclusion.
# Array is easier to use since it has only one thing as an each item. 
# Hash has key and value so it was confusing to take in hash what I want but 
# one I make hash it was easier to passover the method.

# What does a method return?
# a method always return exactly one single thing.
# arrays or hashes are also considered as an object. In this case it was hash.

# What kind of things can you pass into methods as arguments?
# hashs and arrays.

# How can you pass information between methods?
# No. we made a new name to same hash to different method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# How to make a hash from the date espacially take in values.  
# Taking the default first and changing the each values as needed I would never think of by my own.
