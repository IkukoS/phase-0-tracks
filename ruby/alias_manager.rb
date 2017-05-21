# write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name 
def alias_name(name)

# change the name to an array with two items then swith the items.
 	 array_name = name.split(' ')
# switch the items place
 	 reversed_name = array_name.reverse!
# woking one the first item only. Pidk the first word and make it letters.
	p reversed_name[0].split('')
end	 

alias_name("Felicia Torres")