# Write a method whisper_words that takes in an array of words and returns
# a new array containing a whispered version of each word.
# See the examples. Solve this using map :).

def whisper_words(words)
	whisper = words.map do |word|
      word.downcase + "..."
    end
  	return whisper
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts
