# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: make a pairs with items and quantity and store the data
  # [fill in any steps here] Turned in the stirng into array then iterate making the list of the pair of items and quantities.
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
# out put is hash

grocery_string = "carrots apples cereal pizza"

def create_list(grocery)
	grocery_arr = grocery.split(' ')

	list = {}

	grocery_arr.each { |item| list[item] = 0 }
	
	p list
end

list = create_list(grocery_string)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add new information to the hash 
# output: hash with new items

def add_change_item(list, item, quantity)
	list[item] = quantity
	p list
end

add_change_item(list, "milk", 1)

# Method to remove an item from the list
# input: one of the item I want to delete
# steps: delete the item and quantity pair from the hash 
# output: hash without the itme delteted

def remove_item(list, item)
	list.delete(item)
	p list
end

remove_item(list, "carrots")

# Method to update the quantity of an item
# input: item name and new quantity for that item
# steps: assign the new quantity
# output: hash with new quantity 

# def update_quantity(list, item, quantity)
# 	list[item] = quantity
# 	p list
# end

# update_quantity(list, "apples", 3)

# Method to print a list and make it look pretty
# input: hash 
# steps: print the hash with both itmes ans quantities
# output: user friendly list

def print_list(list)
	list.each { |item, quantity| puts "#{item} : #{quantity}" }
end

print_list(list)