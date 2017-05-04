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
p creat_list("arrots apples cereal pizza")




# def hash_lists(hash_list, item, quantity)
# 	hash_list[item] = quantity
# end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: