# Write a method consonant_cancel that takes in a sentence and returns a new
# sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
	words = sentence.split(" ")
  	new_words = []
  	vowels = "aeiou"
  	words.each do |word|
  		word.each_char.with_index do |c,i|
  			if vowels.include?(c)
  				new_words << word[i..-1]
  				break
  			end
  		end
    end

  	return new_words.join(" ")

end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
