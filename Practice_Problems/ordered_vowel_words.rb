# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_word?(word)
  vowels = "aeiou"
  vowelExist = false
  yExist = false
  prevIdx = nil
  word.each_char do |c|
    if c == "y"
      yExist = true
    end
    if vowels.include?(c)
      vowelExist = true
      if prevIdx == nil
        prevIdx = vowels.index(c)
      else
        if vowels.index(c) < prevIdx
          return false
        end
      end
    end
  end

  if vowelExist
    return true
  elsif !vowelExist and yExist
    return true
  else
    return false
  end
end

def ordered_vowel_words(str)
  words = str.split(" ")
  new_Str = []
  words.each do |word|
    if ordered_vowel_word?(word)
      new_Str << word
    end
  end
  p new_Str.join(" ")
  return new_Str.join(" ")
end



puts("\nTests for #ordered_vowel_words")
puts("===============================================")
    puts "ordered_vowel_words(\"amends\") == \"amends\": "  + (ordered_vowel_words("amends") == "amends").to_s
    puts "ordered_vowel_words(\"complicated\") == \"\": "  + (ordered_vowel_words("complicated") == "").to_s
    puts "ordered_vowel_words(\"afoot\") == \"afoot\": "  + (ordered_vowel_words("afoot") == "afoot").to_s
    puts "ordered_vowel_words(\"ham\") == \"ham\": "  + (ordered_vowel_words("ham") == "ham").to_s
    puts "ordered_vowel_words(\"crypt\") == \"crypt\": "  + (ordered_vowel_words("crypt") == "crypt").to_s
    puts "ordered_vowel_words(\"o\") == \"o\": "  + (ordered_vowel_words("o") == "o").to_s
    puts "ordered_vowel_words(\"tamely\") == \"tamely\": "  + (ordered_vowel_words("tamely") == "tamely").to_s

    phrase = "this is a test of the vowel ordering system"
    result = "this is a test of the system"
    puts "ordered_vowel_words(phrase) == result: "  + (ordered_vowel_words(phrase) == result).to_s
puts("===============================================")
