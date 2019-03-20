## While loops: repeats a section of code repeatedly as long as condition is tru
while true
  puts "Infinite loop!"
end

i = 0
while i < 5
  puts "Repeat 5 times!"
  puts "This is time #: #{i}"
  i += 1
end
puts "Merry Christmas, loop is over!"
## i = index and keeps track of how many times we've gone through the loops

i = 1
while i <= 5
  puts "Repeat 5 times!"
  puts "This is time #: #{i}"
  i += 1
end
## this is the same as the previous one

def process_user_input
  command = get_user_input
  while command != "quit"
    perform_command(command)
    command = get_user_input
  end
  puts "Good bye!"
end
## this loops until something makes it exit the loop; use this when we don't know how many times it will need to loop
## update the loop variable of the condition

## Break : jumps out of the loop
my_favorite_number = 42
numbers_to_search = [1, 5, 7, 42, 8, 42]

i = 0
while i < numbers_to_search.count
  current_number = numbers_to_search[i]
  if my_favorite_number == current_number
    puts "List contains favorite number!"
    break
    # end the method once the break line is reached
  end
  i += 1
end


## Iterating through arrays with each : each method goes through every item
musicians = ['George', 'Paul', 'John', 'Ringo']
i = 0
while i < musicians.length
  puts musicians[i]
  i += 1
end
## use this instead; no need to keep track of index
musicians.each do |musician|
  puts musician
end


## each vs. for : for is not recommended for use
for item in items
  # ...
end
## variable item still exists after loop ends; each doesn't

## each_with_index : iterate and also use index
my_favorite_number = 42
numbers = [42, 3, 42, 5]
favorite_indices = []
i = 0
while i < numbers.count
  if numbers[i] == my_favorite_number
    favorite_indices << i
  end
  i += 1
end
## use this instead:
my_favorite_number = 42
numbers = [42, 3, 42, 5]
favorite_indices = []
numbers.each_with_index do |number, index|
  if number == my_favorite_number
    favorite_indices << index
  end
end

## Iterating with times : repeats a code for several times
5.times do
  puts 'King of the streets; child at play'
end

## Range : from small to large values
(1..10)
## this represents # from 1 through 19
## .. inclusive of the 2nd number
## ... exclusive of the 2nd number
(0...10)
## goes from 0 to 9
(1..10).each do |i|
  puts i * i
end

(1..10).to_a.reverse.each do |i|
  puts i
end
## makes range to an array, then reverse each item

(-10..-1).map(&:abs)
=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
## can use negative numbers and absolute them


## Nesting loops : loops within a loop
(1..10).each do |i|
  multiples = []
  (1..10).each do |j|
    multiples << i * j
  end
  p multiples
end
## this prints out a times table
## Avoid deep nesting
def multiples(i)
  ms = []
  (1..10).each do |j|
    ms << i * j
  end
  ms
end
(1..10).each do |i|
  p multiples(i)
end
## can do this as well to get times table
