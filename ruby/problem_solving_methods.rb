#search array
arr = [2, 3, 6, 9, 12]

def search_num(array, number)
  new_hash = {}
    key = 0
      array.each do |x|
       new_hash[key] = x
       key += 1
      end
    new_hash.key(number)
end

p search_num(arr,12)




# calculate fibonacci number

def fib(x)
# the begining
arr_fib = [0 ,1]

#to use .time, need to decide the times
times_run = x-2
times_run.times do |second_last, last_num|

# to easy to read later reassigned
second_last = arr_fib[-2]
last_num = arr_fib[-1]
new_num = second_last + last_num

# add new number in the array
arr_fib.push(new_num)
end

# print and make sure that I get right result
p arr_fib

end

fib(100)



#sort an array
#Bubble skip_before_filter

#have array with neumbers

array = [7, 4, 1, 5, 9, 2]

# compare the first one and second one then if the first one is lager than second one switch them. do same things second number and third number. Keep doing till last nmber of the array. Then start over from the bigening untill nothing to change.

# compare the first one end second one then swich if necessary.
# very basic way 

#if array[0] > array[1]
#   array[0], array[1] = array[1], array[0]
# end
#  p array

# decide how many time need to compare.
num_change = array.length - 1

#num_change.times do |x|
  
#  if array[x] > array[x+1]
#  array[x], array[x+1] = array[x+1], array[x]
# end
#  end
# p array

# keep doing same thing until no more change.
loop do
  changed = false
 
 num_change.times do |x|
	  if array[x] > array[x+1]
	   array[x], array[x+1] = array[x+1], array[x]
	   changed = true
	 end
 end
 
 break if not changed
 end 
 
 p array