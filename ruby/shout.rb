# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("Hey"), Shout.yelling_happily("Hey")



module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!" + " :)"
  end
end

class Police
	include Shout
end

class Graduate
	include Shout
end

police = Police.new
p police.yell_angrily("Hold up")

graduate = Graduate.new
p graduate.yelling_happily("We did it")
