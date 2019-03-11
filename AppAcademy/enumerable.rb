##  What is enumerable?
# Ruby module (collection of methods and constants)
# can be mixed in to other classes
# the methods of the module are available in the class it is mixed into
# holds methods like map & each
# it is mixed into Array & Hash classes

## each method
# use each when you want to run some block of code for each element in Array/Hash
# returns original array; does not modify the original array

## map method
# returns a new array with results of running the called block once for each element
# does not modify the original array
integers = [1, 2, 3, 4]
integers.map { |i| i*i }
# => [1, 4, 9, 16]
nato = {:a => "alpha", :b => "bravo"}
nato.map { |key, value| value.upcase }
# => ["ALPHA", "BRAVO"]

integers = [1, 2, 3, 4]
map_return_value = integers.map { |i| i*i }
map_return_value # => [1, 4, 9, 16]
each_return_value = integers.each { |i| i*i }
each_return_value # => [1, 2, 3, 4]
# Because each just returns the old value, it is used for its side-effect. Use #each if all you want is a side-effect, use #map if you actually want to use the returned array.


## inject method
nums = [1, 2, 3, 4, 5]
nums.inject(0) do |accum, element| # accum is initially set to 0, the method argument
  accum + element
end
nums.inject(:+) # A cool shortcut that does the same as the above code.
nums.inject('') # Will set the accum value to an empty string.
# Write a method that takes nums and, using inject, returns the
# product of all of the elements.
# We pass inject an initial value and a block. The code block takes the current accumulator value and the next element in the Enumerable. The block is run, and the accumulator value is updated with the block’s result. When all elements have been processed, the accumulator value is returned. ==> use loop instead


## select method
# returns an array with all the elements for which the called code block returns true
nums = (1..10)
# nums is a Range. Ruby's Range class also mixes in Enumerable!
nums.select do |i|
  i % 3 == 0
end
# => [3, 6, 9]
# Write a method that takes a range of the integers from 1 to 100
# and uses select to return an array of those that are perfect
# squares.

## count method
# returns # of items in the collection it's called on
nums = [1, 4, 5, 6, 7]
nums.count # => 5
elements = {:first => "hydrogen", :second => 'helium', :third => 'lithium'}
elements.count # => 3
# for hash, returns number of key-value pairs


## include? method
# takes an object as paramenter & returns true if any item in collection is equal to that object
nums = [1, 4, 5, 6, 7]
nums.include?(3) # => false
nums.include?(4) # => true


## any? method
# returns true if the code block returns true for any of the members of the collection
nums = [2, 3, 5, 7]
nums.any? do |i|
  i % 2 == 0
end
# => true
# Using any?, verify that the range of integers from 1 to 5 does
# include at least one odd number

## all? and none? works similarly
