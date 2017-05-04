class Santa

	def speaking
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance ..."
	end
end

santa1 = Santa.new

santa1.speaking
santa1.eat_milk_and_cookies("snickerdoodle")