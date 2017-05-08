class Word_guessing


def take_original_word(original)
    puts "Enter a word to be guessed."
    @original_word = original
end

def letter_number(original)
	@times = original.length
end


def take_guessing_word(guessed)
    puts "Enter a word."
    @guessed_word = guessed
end

def letters_of_guessed(guessed)
	@letters_guessed = guessed.split("")
end

def letters_include(original)
	@letter_guessed = ["h", "e", "l", "l", "o"]
    @selected_letter = []
      @letter_guessed.each do |letter|
      	if 
          original.include?(letter) == true
          
          @selected_letter << letter 
        end
        p @selected_letter
    end
end

def empty_arr(times)
  @empty_arr = []
      count = 0
  until count == times
  
    @empty_arr << "_ "
    count += 1
    end
      @empty_feedback = @empty_arr.join
    p @empty_feedback
end

def find_index 
  selected_letter.each do |letter|
  index_num = @guessed_word(letter)
  @empty_arr[index_num] = letter
  p feedback = empty_arr
end



end

