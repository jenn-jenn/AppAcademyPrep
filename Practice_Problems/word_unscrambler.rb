# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def is_anagram?(word1, word2)
  hash1 = Hash.new(0)
  word1.each_char do |c|
    hash1[c] += 1
  end

  word2.each_char do |c|
    hash1[c] -= 1
  end

  hash1.each do |k,v|
    if v != 0
      return false
    end
  end

  return true
end

def word_unscrambler(word, dictionary)
  answer = []
  dictionary.each do |w|
    if is_anagram?(word, w)
      answer << w
    end
  end
  return answer
end

puts("\nTests for #word_unscrambler")
puts("===============================================")
    puts "word_unscrambler(\"cat\", [\"tac\"]) == [\"tac\"]: "  + (word_unscrambler("cat", ["tac"]) == ["tac"]).to_s
    puts "word_unscrambler(\"cat\", [\"tom\"]) == []: "  + (word_unscrambler("cat", ["tom"]) == []).to_s
    puts "word_unscrambler(\"cat\", [\"tic\", \"toc\", \"tac\", \"toe\"]) == [\"tac\"]: "  + (word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"]).to_s
    puts "word_unscrambler(\"cat\", [\"scatter\", \"tac\", \"ca\"] ) == [\"tac\"]: "  + (word_unscrambler("cat", ["scatter", "tac", "ca"] ) == ["tac"]).to_s
    puts "word_unscrambler(\"turn\", [\"numb\", \"turn\", \"runt\", \"nurt\"]) == [\"turn\", \"runt\", \"nurt\"]: "  + (word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"]).to_s

puts("===============================================")
