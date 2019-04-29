# Write a method o_words that takes in a sentence string and returns
# an array of the words that contain an "o". Use select in your solution!

def o_words(sentence)
  words = sentence.split(" ")
  ohs = words.select do |word|
    word.include?("o")
  end
  return ohs
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts
