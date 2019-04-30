# Write a method pick_primes that takes in an array of numbers
# and returns a new array containing only the prime numbers.

def isPrime?(num)
  if num < 2
    return false
  end

  (2...num).each do |n|
    if num % n == 0
      return false
    end
  end
  return true
end


def pick_primes(numbers)
  	primes = []
	numbers.each do |num|
      if isPrime?(num)
        primes << num
      end
    end
  	return primes
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
