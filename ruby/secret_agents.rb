def encrypt(word)

	letter_number = 0

	while letter_number < word.length
		letter = "#{word}"[letter_number]
		alphabet = "abcdefghijklmnopqrstuvwxyz ".index("#{letter}").to_i
		word_after = "abcdefghijklmnopqrstuvwxyz"[alphabet + 1]
	 	
		if alphabet == 25
	 	  word_after = "a"	
			elsif alphabet == 26
		    word_after = " "
	  end

	  letter_number +=1
		new_word = "#{new_word}" + "#{word_after}"
	end
	  puts new_word

end

  #encrypt("zed")


 def decrypt(word)

letter_number = 0
	while letter_number < word.length

		letter = "#{word}"[letter_number]
		alphabet = "abcdefghijklmnopqrstuvwxyz ".index("#{letter}").to_i
		word_previous = "abcdefghijklmnopqrstuvwxyz"[alphabet - 1]
			if alphabet == 26
		    word_previous = " "
			end

		letter_number +=1
		new_word = "#{new_word}" + "#{word_previous}"
  end
    puts new_word
end 

#decrypt("afe")

#decrypt(encrypt("swordfish"))
#encrypt(decrypt("swordfish"))
# The method which is falling inside the brackets is the one that is working.
#I think this is same rule as math. Start form inside the btackets. 

puts "Would like to decrypt or encrypt a password?"
  opt_pas = gets.chomp

puts "Please enter your password."
  password = gets.chomp

if opt_pas == "encrypt"
	puts encrypt("#{password}")
else 
	puts decrypt("#{password}")
end

puts "Okay, bye."