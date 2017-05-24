class Santa

	def initialize(gender, ethnicity)
		@gender = gender
	    @ethnicity = ethnicity
	    @age = 0
	 	puts "Initializing Santa instance ..."
	end

    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
    end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end

	def celebrate_birthday(year)
		until year = @age
			puts "Happy birthday!!  Now you are #{@age} years old."
			@age += 1
		end

	end
end


santa1 = Santa.new("fenmale", "Japanese")
santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santa1.celebrate_birthday(5)
