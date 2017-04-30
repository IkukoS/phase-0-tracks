def block_method
  puts "Before running the block"
  yield("param1", "param2")
  puts "After running the block"
end

block_method { |p1, p2| puts "Parameters #{p1} and #{p2} were passed in." }


names = ["Jeremy", "Tim", "Bob", "James", "Jerry"]
behavior = {"Jeremy" => "naughty", "Tim" => "nice", "Jenny" => "nice", "Jim" => "naughty"}


 puts "#{names[1]} is in the book of names."
 puts  "#{names[0]} has been #{behavior["Jeremy"]} this year"

names = ["Jeremy", "Tim", "Bob", "James", "Jerry"]
behavior = {"Jeremy" => "naughty", "Tim" => "nice", "Jenny" => "nice", "Jim" => "naughty"}

p "Before-"
p names
p behavior

# iterate
names.each do |name|
  puts "#{name} is in the book of names."
end

behavior.each do |name, status|
  puts "#{name} has been #{status} this year"
end

names.map! do |name|
  puts "#{name} moved to Rock Ridge"
  name + " Johnson"
end

p "After-"
p names
p behavior


testArr = [1,2,3,4,5,6,7,8,9,10]
testHash = {"a" => 1, "b" => 2, "c" => 3, "d"=> 4}
p testArr
p testHash
p "Deleting on condition"
#iterate and delete on condition
testArr.delete_if {|num| num < 5}
p testArr
testHash.delete_if {|key, num| key =="b"}
p testHash

testArr = [1,2,3,4,5,6,7,8,9,10]
testHash = {"a" => 1, "b" => 2, "c" => 3, "d"=> 4}
p "Keeping on condition"
#iterate and keep on condition
testArr.keep_if {|num| !num.even? }
p testArr
testHash.keep_if {|key, num| num.even? }
p testHash

testArr = [1,2,3,4,5,6,7,8,9,10]
testHash = {"a" => 1, "b" => 2, "c" => 3, "d"=> 4}
p "Another keeping on codition"
#iterate and keep on codition
testArr.select! {|num| (num*num).even? }
p testArr
testHash.select! {|key, num| (key <= "c") && (num > 1)}
p testHash

testArr = [1,2,3,4,5,6,7,8,9,10]
testHash = {"a" => 1, "b" => 2, "c" => 3, "d"=> 4}
p "Remove until condition is false"
# remove items until condition evaluates as false
newArr = testArr.drop_while {|num| num > 7}
p newArr
newHash = testHash.drop_while {|key, num| num < 2}
p newHash
