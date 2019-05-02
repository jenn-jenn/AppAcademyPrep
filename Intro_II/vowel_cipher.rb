# Write a method vowel_cipher that takes in a string and returns a new
# string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
	vowels = "aeiou"
  	str = ""
  	string.each_char do |c|
      if vowels.include?(c)
        idx = vowels.index(c)
        idx += 1
        if idx > 4
          idx = (idx % 5)
        end
        str += vowels[idx]
      else
        str += c
      end
    end
  	return str
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
