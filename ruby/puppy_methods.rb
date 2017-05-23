	class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end
	def fetch(toy)
    	puts "I brought back the #{toy}!"
	end
	def speak(num)
		puts "Woof! " * num
	end
	def roll_over
		puts "*rolls over*"
	end
	def dog_years(human_year)
		puts human_year * 7
	end
	def sit
		puts "*sits*"
	end
end


puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(35)
puppy.sit


class Gymnast
	def initialize
		puts "Initializing gymnast instance..."
	end
	def flip
		puts "*Flip! *"
	end
	def jump
		puts "*Jump! *"
	end
end

def doing
gymnast = Gymnast.new
gymnast.flip
gymnast.jump

end

arr = []

50.times {|gymnast| gymnast = Gymnast.new}

index = 0
while index< 50
	gymnast = Gymnast.new
	arr << gymnast
	index += 1
end
p arr 



 gymnasts = []
 arr.each do |x|
  	x = doing

  end




