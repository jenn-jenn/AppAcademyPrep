# Write a method last_index that takes in a string and a character.
# The method should return the last index where the character can be found in the string.

def last_index(str, char)
	idx = []
  	i = 0

	while i < str.length
      if str[i] == char
        idx << i
      end
      i += 1
    end
  	return idx[-1]
end


puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7
