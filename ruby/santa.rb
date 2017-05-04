class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}."
	end

	def initialize
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def gender
		puts "Gender: #{@gender}"
	end

	def ethnicity
		puts "Ethnicity: #{@ethnicity}"
	end
 	def ranking
	
	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
   
    	puts "Ranking of the Raindeers: #{reindeer_ranking}"
    end

    def age 
    	puts "Age: 0"
    end


end

santa1 = Santa.new

santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")
santa1.gender
santa1.ethnicity
santa1.ranking
santa1.age


