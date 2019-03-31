# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, idx)
  num = arr[idx]
  option = []
  arr.each_with_index do |n, index|
    if n > num
      pair = []
      pair << n
      pair << index
      # puts pair
      option << pair
    end
  end

  if option.length == 1
    return option[0][1]
  elsif option.length > 1 # more than 1 possible option
    # compare the distance from idx
    diff = option.length
    largestIdx = option.length
    option.each do |pair|
      if (idx - pair[1]).abs < diff
        diff = idx - pair[1]
        largestIdx = pair[1]
      end
    end
    return largestIdx
  else
    return nil
  end
end

puts("Tests for #nearest_larger")
puts("===============================================")
    puts "nearest_larger([2,3,4,8], 2) == 3: "  + (nearest_larger([2,3,4,8], 2) == 3).to_s
    puts "nearest_larger([2,8,4,3], 2) == 1: "  + (nearest_larger([2,8,4,3], 2) == 1).to_s
    puts "nearest_larger([2,6,4,8], 2) == 1: "  + (nearest_larger([2,6,4,8], 2) == 1).to_s
    puts "nearest_larger([2,6,4,6], 2) == 1: "  + (nearest_larger([2,6,4,6], 2) == 1).to_s
    puts "nearest_larger([8,2,4,3], 2) == 0: "  + (nearest_larger([8,2,4,3], 2) == 0).to_s
    puts "nearest_larger([2,4,3,8], 1) == 3: "  + (nearest_larger([2,4,3,8], 1) == 3).to_s
    puts "nearest_larger([2, 6, 4, 8], 3) == nil: "+ (nearest_larger([2, 6, 4, 8], 3) == nil).to_s
    puts "nearest_larger([2, 6, 9, 4, 8], 3) == 2: "+ (nearest_larger([2, 6, 9, 4, 8], 3) == 2).to_s
puts("===============================================")
