## NameError: when you try to use a variable or method that hasn't been defined
class NumbersClass
  def answer_number
    42
  end

  def loneliest_number
    1
  end

  def favorite_number
    3
  end

  def numbers
    [favorite_nmber, loneliest_number] # mispelled
  end
end

## Uninitiallized Constant: Ruby tried to find a class/constant but didn't find it; either class name typo or forgot to "require" the Ruby file that loads the class (happens if name starts with upper-case letter; Ruby variables/methods start with lower case letters & classes start with upper case letters)

## NoMethodError: subclass of NameError; user wanted to call a method (didn't try to look up a variable) that doesn't exist - common when a variable is "nil"; nil is an instance of class NilClass, which doesn't have method we want

## ArgumentError: wrong number of arguments - when method is not given the correct # of arguments needed

## TypeError: passing wrong type of thing to a method
# > [] + ""
# > [] + 2
# > "" + 2
# > "" + []
# all above will throw a TypeError
# Fixnum is the standard integer class

## LoadError: trying to load a file that is provided by a gem but you haven't installed the gem yet; trying to load another soure file in your project but forgot the initial './'; "Relative" includes are used to include files that are inside your project, i.e. './primes.rb' or in subdirectory ./path/to/source/file/primes.rb'


## SyntaxError: ungrammatical Ruby code meaning Ruby doesn't undestand your code
# most common is forgetting to close quotes, parentheses, or do-end blocks
# [1, 2, 3].each do |num|
#   puts num
# end should go here
# '$end' means the end of the source file
# too many ends will also get you this error
