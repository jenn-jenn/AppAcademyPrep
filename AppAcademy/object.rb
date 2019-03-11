## Everything in Ruby is an Object, meaning that everythng has methods unlike other languages where they have non-object primitive types that do not have methods

# powerful methods on basic types
"to low a case".upcase # => "TO LOW A CASE"
3.times do
  puts "Three times round!" # print this three times
end
(3.3).round # => 3

## Every class inherits from a single, root class object

## to_s - converts value to string
3.to_s # => "3"
[1, 2, 3].to_s # => "[1, 2, 3]"
"my_string".to_s # => "my_string" (already a string)
nil.to_s # => "" (nil represented as nothing, or emptiness)

## inspect - returns a debugging string that represents the Ruby object, meant to be used in the interpreter or to print out debugging information - returns valid Ruby code
3.inspect # => "3" (same as to_s)
[1, 2, 3].inspect # => "[1, 2, 3]" (same as to_s)
"my_string".inspect # => '"my_string"' (notice the quotes)
nil.inspect # => "nil"

## puts vs p - Kernel methods that calls to_s & inspect on their argument for you
puts "my string!" # prints "my string!"
p "my string!" # prints '"my string!"'
puts nil # => prints a blank line
p nil # => prints "nil"

## Kernel module - methods defined at the top level scope; mixed into every class; global methods

## nil - represents nothingness, it is often returned from methods when there is no answer
[1, 2, 3].index(42) # find the position of 42 in the array
# => nil (nil isn't in the array)
puts "Couldn't find answer" if [1, 2, 3].index(42) == nil
# should use include? method, but this is an example

## return value of nil? is false as designed in Object
## in MilClass is the only class which defines nil? to return true

## class - tells you what kind of object it is
"string".class # => Stringw
3.class # => Fixnum
some_mystery_variable.class # will tell me what kind of class this is

## is_a? - tells you if an object is an instance of a class (or a subclass)
"string".is_a?(String) # => true
"string".is_a?(Object) # => true (everyth

## == compares 2 objects & returns true if they are equal
2 == 2 # => true
2 == 4 # => false
s1 = "this"
s2 = "this" # different string, same value
s1 == s2 # => true

## Object doesn't know how to compare itself to other objects
## example
class Fraction
  attr_reader :numerator, :denominator
  def initialize(numerator, denominator)
    @numerator, @denominator = [numerator, denominator]
  end
end
Fraction.new(3, 6) == Fraction.new(1, 2) # => false
## class Fraction does not konw that these two fractions are equal, but only knows they are of two different objects; we can add checks
class Fraction
  # ...
  def ==(other)
    # first, check if we're comparing two fractions, comparing two
    # different types of objects should return false
    return false unless (other.is_a?(Fraction))
    (numerator / denominator) == (other.numerator / other.denominator)
  end
end
