# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

require 'set'

def no_repeat?(year)
  digits = []

  while year > 0
    d = year % 10
    digits << d
    year = year / 10
  end
  digits = digits.to_set
  if digits.count < 4
    return false
  else
    return true
  end
end

def no_repeats(year_start, year_end)
  years = []
  (year_start..year_end).each do |yr|
    if no_repeat?(yr)
      years << yr
    end
  end
  p years
  return years
end

puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")
