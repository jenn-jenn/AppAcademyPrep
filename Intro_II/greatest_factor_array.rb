# Write a method greatest_factor_array that takes in an array of numbers and
# returns a new array where every even number is replaced with it's greatest
# factor. A greatest factor is the largest number that divides another with
# no remainder. For example the greatest factor of 16 is 8. (For the purpose
# of this problem we won't say the greatest factor of 16 is 16)

def factor(num)
  largest = 0
  (2...num).each do |n|
    if num % n == 0
      largest = n
    end
  end
  return largest
end

def greatest_factor_array(arr)
#   arr.each_with_index do |num, i|
#     if num % 2 == 0
#       arr[i] = factor(num)
#     end
#   end

  new_arr = arr.map do |num|
    if num % 2 == 0
      factor(num)
    else
      num
    end
  end

  return new_arr
end


print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
