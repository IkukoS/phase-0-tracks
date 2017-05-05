# module Shout
# 	# we'll out some methods here soon, but this code is fine for now!
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 	# creaqte a method yelling happily
# 	def self.yell_happily(words)
# 		words + "!!! Wow!!!"
# 	end
# end

# p Shout.yell_angrily("What are you doing")
# p Shout.yell_happily("I wanted that for long")


module Shout
 	
	def yell(words)
	 	puts words + "!!!" 
	end
end

class Happy
	include Shout
end

class Angry
	include Shout
end

happy = Happy.new
happy.yell("I made it")


angry = Angry.new
angry.yell("Don't touch it")