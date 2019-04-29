# Write a method yell_sentence that takes in a sentence string and returns a new
# sentence where every word is yelled. See the examples. Use map to solve this.

def yell_sentence(sent)
	words = sent.split(" ")
  	yelled = words.map do |word|
      word.upcase + "!"
    end
  	return yelled.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
