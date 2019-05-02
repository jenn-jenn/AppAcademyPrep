# Write a method caesar_cipher that takes in a string and a number. The
# method should return a new string where every character of the original
# is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  	new_str = ""

  	str.each_char do |c|
      new_letter = c.ord + num
      if new_letter > 122
        shift = ((new_letter - 96) % 26) + 96
        new_str += shift.chr
      else
        new_str += new_letter.chr
      end
    end
    return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
