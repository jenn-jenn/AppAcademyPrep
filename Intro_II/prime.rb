# Write a method prime? that takes in a number and returns a boolean, indicating
# whether the number is prime. A prime number is only divisible by 1 and itself.

def prime?(num)
  	if
	(2...num).each do |n|
    	if num % n  == 0
          return false
        end
    end
  	return true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
