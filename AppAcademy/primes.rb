# primes.rb
require 'byebug'

def prime?(num)
  byebug
  (1..num).each do |i|
    if (num % i) == 0
      return false
    end
  end
end

def primes(num_primes)
  ps = []
  num = 1
  while ps.count < num_primes
    primes << num if prime?(num)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts primes(100)
end
