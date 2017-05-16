class Santa

	attr_accessor :gender, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}."
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def gender_info
		puts "Gender: #{@gender}"
	end

	def ethnicity
		puts "Ethnicity: #{@ethnicity}"
	end
 	
	def ranking
	raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        	puts "Ranking of the Raindeers: #{raindeer_ranking}"
    end

    def age_info 
    	@age = 0
    end

    def celebrate_birthday(years_past)
    	until @age == years_past
	    	puts "Happy birthday!"
	    	puts "You became #{@age} years old today."
	        @age += 1
	    end
	end

    def get_mad_at(raindeer)
    	raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    	raindeer_ranking.delete(raindeer)
    	raindeer_ranking << raindeer
    	p raindeer_ranking
    end

     
 end

santa1 = Santa.new("female", "Japanese")

santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")
santa1.gender_info
santa1.ethnicity
santa1.ranking
santa1.age_info

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santa1.celebrate_birthday(7)
santa1.get_mad_at("Vixen")
santa1.gender = "male"

puts "Somenow now the santa became a #{santa1.gender}?!" 


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

p santa

age_range = (1..140).to_a
santa1.age = age_range.sample

p santa1.age 



