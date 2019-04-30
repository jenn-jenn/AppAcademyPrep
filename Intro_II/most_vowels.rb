# Write a method most_vowels that takes in a sentence string and returns
# the word of the sentence that contains the most vowels.

def most_vowels(sentence)
	vowels = "aeiou"
  	result = Hash.new(0)
  	words = sentence.split(" ")

  	words.each do |word|
      word.each_char do |c|
        if vowels.include?(c)
          result[word] += 1
        end
      end
    end

  	largest = 0
  	the_word = ""
  	result.each do |k, v|
      if v > largest
        largest = v
        the_word = k
      end
    end
  	return the_word

end

print most_vowels("what a wonderful life") #=> "wonderful"
