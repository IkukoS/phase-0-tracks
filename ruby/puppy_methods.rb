class Puppy

#def method of fetch	
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#add a speak method that takes an integer
  def speak(number)
  	number.times { puts "woof" } 	
  end

#add roll_over that prints "*roll over*"
  def roll_over
  	puts "*rolls over*"
  end

#add dog_years method that takes an integer(of human years) and converts that number to dog years
	def dog_years(integer)
		dog_age = integer * 7
		p dog_age
	end	

#add new trick: eat
	def eat(name, food)
		puts "#{name} eats #{food}"
	end	

#Add a method named initialize
	def initialize
		puts "Initializing new puppy instances..."
	end
end

fido = Puppy.new
spot = Puppy.new
bob = Puppy.new

p fido.fetch("toy")
p spot.fetch("ball")

fido.speak(7)

spot.roll_over

spot.dog_years(4)

fido.eat("fido", "dog food")

#How do you find all the instances of a new class?
#p fido.instance_variables

class Music
	def initialize
		puts "Initializing music"
	end

    def play
    	puts "Playing the music."
    end

    def record
        puts "I recorded the mucic."
    end


end
arr = []

50.times {|name| name = Music.new }

# arr.each do 
# 	arr << name 
# end

index = 0
while index < 50
	name = Music.new
	arr << name
	index += 1
end

arr.each do |indivisual_music|
	indivisual_music.play
	indivisual_music.record
end