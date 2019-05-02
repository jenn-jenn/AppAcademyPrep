# Write a method anagrams? that takes in two words and returns a boolean
# indicating whether or not the words are anagrams. Anagrams are words that
# contain the same characters but not necessarily in the same order. Solve
# this without using .sort

def hash_word(word)
  word_count = Hash.new(0)
  word.each_char do |c|
    word_count[c] += 1
  end
  return word_count
end


def anagrams?(word1, word2)
	count1 = hash_word(word1)
  	count2 = hash_word(word2)
  	if count1 == count2
      return true
    else
      return false
    end
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
