class Santa
	attr_accessor :age, :ethnicity

	def initialize(gender, ethnicity)
		@gender = gender
	    @ethnicity = ethnicity
	    @age = 0
	    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	 	puts "Initializing Santa instance ..."
	end
    
 	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
  end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end

	def celebrate_birthday(year)
		until @age == year
			puts "Happy birthday!!  Now you are #{@age+1} years old."
			@age += 1
		end
	end

	def get_mad_at(reindeer)
	  @reindeer_ranking.delete(reindeer)
	  @reindeer_ranking << reindeer
	end

	def gender=(new_gender)
		@gender = new_gender
		puts "The gender has been chnaged for some reasone to #{@gender}"
	end

  def ethnicity
    @ethnicity
  end

end

# creat santa1 and cal the methods
 santa1 = Santa.new("fenmale", "Japanese")
# santa1.speak
# santa1.eat_milk_and_cookies("snickerdoodle")

 santas = []
 example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
 example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
 example_genders.length.times do |i|
   santas << Santa.new(example_genders[i], example_ethnicities[i])
 end

 p santas
 puts "==============================="
 p santas[0]

santa1.celebrate_birthday (5)
#cheking if the age has been changed
p santa1

santa1.get_mad_at("Vixen")
#checking ig the ranking has been changed
p santa1

santa1.gender = "secret"
p santa1

santas2 = []
count = 0
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
until count == 100 
  santas2 << Santa.new(example_genders.sample, example_ethnicities.sample)
  count += 1
end

#   age_range = [1..140]
# end
