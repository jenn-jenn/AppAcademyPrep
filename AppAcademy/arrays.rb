# Arrays

# empty_array = Array.new
# another = []
#
# fruits = ["strawberry", "orange", "kiwi", "lemon"]
# puts fruits[0..3]
# puts fruits[0...3]

# don't need to use + to print for strings
# cool_things = ["race cars", "lasers", "aeroplanes"]
# num = 3
# cool_things.each do |cool_thing|
#   puts "I like #{cool_thing}!"
#   puts "I like #{num}!"
# end

# adding items at end of array using << (shovel operator)
# fruits = []
# fruits << "pear"
# fruits << "apple"
# fruits << "banana"
# puts fruits

# concatenate two arrays produce a new array
# does not modify originals
# some_numbers = [1, 3, 5]
# more_numbers = [7, 9, 11]
#
# all_numbers = some_numbers + more_numbers
# puts all_numbers

# array size
# [1, 2, 3].count
# # => 3
# [].empty? # arr.count == 0
# # => true

# treating array as STACK (LIFO)
# use push and pop
# computes (1 (2 3 +) *)
# nums = []
# # shovel pushes an element to end of stack/top
# nums << 1
# nums << 2
# nums << 3
# # puts nums
# # pop removes element from end/top
# nums << (nums.pop) + (nums.pop)
# puts nums
# nums << (nums.pop) * (nums.pop)
# puts nums

# array as QUEUE (FIFO)
# # use push and delete_at(0)
# nums = []
# # pushes to end of queue
# nums << 1
# nums << 2
# nums << 3
# # removes from front of queue
# nums.delete_at(0)
# # => 1
#
# nums
# # => [2, 3]


# new concept: shift & unshift
# shift removes first element from array and returns that element
# unshift pushes new element into front of array & returns modified array
# array = [1,2,3,4]
# array.shift
# # => 1
#
# array
# # => [2,3,4]
#
# array.unshift(5)
# # => [5,2,3,4]

## use a stack to reverse a string
# use String#split & Array#join

# arrays to strings: join
# join takes in a parameter called the separator
# cool_things = ["race cars", "lasers", "aeroplanes"]
# "Things I like include #{cool_things.join(", ")}."
# # => "Things I like include race cars, lasers, aeroplanes."
# # string interpolation to execute code inside #{}

# finding elements
# small_primes = [1, 2, 3, 5, 7, 11]
# small_primes.include?(9)
# # => false
# # index() returns the position of the first occurrence of item in array
# small_primes.index(3)
# # => 2
# small_primes.index(9)
# # => nil

# safe vs unsafe
# ! usually unsafe and faster and modifies original
# safe returns new --- always use this one until necessary to use other


# sorting an array
# arr = [3, 2, 1]
# # returns a new sorted array
# sorted_arr = arr.sort
# sorted_arr # => [1, 2, 3]
# arr # => [3, 2, 1]
# # sort array in place, modifying existing array
# arr = [3, 2, 1]
# # unsafe method
# arr.sort!
# arr # => [1, 2, 3]


# shuffling array
# [1, 2, 3].shuffle
# # => [2, 1, 3]

# access first & last elem in Arrays
# die = [1,2,3,4,5,6]
# die.first
# # => 1
# die.last
# # => 6

# random (discrete uniform) sampling from arrays
# sample selects an element at random from array where each has an
# equal probability of being selected
# die = [1,2,3,4,5,6]
# roll1 = die.sample
# roll2 = die.sample


# give meaningful names and keep them one kind each
# cool_things = ["Race cars", "lasers", "aeroplanes"]
# lucky_numbers = [3, 7, 42]
# animals = [
#   {:name => "Gizmo", :species => "cat"},
#   {:name => "Maurice", :species => "fish"}
# ]
