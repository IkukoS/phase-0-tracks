# cddefine the class Snata
class Santa

attr_accessor :age, :ethnicity
attr_reader :gender
# create the speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
# create the eat milk and cokkies method with an argument
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}."
	end

# create intialize method
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
	end

# create the ranking array and print it with some comment 
 	
	raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
   
    
    

# create celebrate birthday method to age the raindeer by one year
   def celebrate_birthday(years)
   @age = 0
    	until @age == years 
	        puts "Happy birthday!"
	        puts "Today you became #{age} years old."
	        @age += 1
        end
    end
    

# create get mad at method to change the ranking
    def get_mad_at(name)
    	raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    	raindeer_ranking.delete(name)
    	raindeer_ranking << name
    	puts "NEW Ranking of the Raindeers: #{raindeer_ranking}"
    end

# create setter method for gender
	def gender=(new_gender)
		@gender = new_gender
		puts "The gender has been chnaged for some reasone to #{@gender}"
	end

    def ethnicity
        @ethnicity
    end

end

# check the method if they are working fine or not.

santa1 = Santa.new("female","Japanese")

santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")



# # make a gender array to pass the info to the santas correction
# genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# # make a ethnicity array to pass the info to the santas collection
# ethenicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# # make an collection called santa with the value of genders and ethenicities
# # make an empty 
santas = [@gender, @ethnicity]
# # make a method that hold the info above

santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santa1.celebrate_birthday(7)
santa1.get_mad_at("Vixen")
santa1.gender = "male"

puts "Now the Santa is #{santa1.age} years old"
puts "Santa is a #{santa1.gender}, I guess...."


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santa_age = (1..140).to_a

10.times do |i|
  santas << Santa.new(example_genders.shuffle![i], example_ethnicities.shuffle![i], santa_age.shuffle![i])
end

p santasS