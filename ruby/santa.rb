class Santa
	attr_accessor :age, :ethnicity
	attr_writer :gender

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

  def santas_info
   	puts "Gender: #{@gender}"
	  puts "Ethnicity: #{@ethnicity}"
	  puts "Age: #{@age}" 
	  puts "Reindeer Ranking: #{@reindeer_ranking}"
  end

end

# creat santa1 and cal the methods
santa1 = Santa.new("fenmale", "Japanese")
santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")

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

# make 100 santas using exsample arrays
santas2 = []
count = 0

until count == 100 
  santas2 << Santa.new(example_genders.sample, example_ethnicities.sample)
  # make an array indluce 1 t0 140 number
# pick a random number form array for santa age
  age_range = (1..140).to_a
p age_range
santas2.age = age_range.sample
  count += 1
end

