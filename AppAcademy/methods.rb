## Methods are also known as functions

## Side-effects vs return values
## Every method has a return value, either a meaningful value or just nil

def square(num)
  num * num
end
## there is no return num * num (explicit return), but Ruby has implicit returns: the last evaluated expression in a method is the return value of that Methods
## use explicit returns when we want an early return :
def go_home
  return unless can_go_home? && wants_to_go_home?
  pack_bags
  get_tickets
  board_plane
end

## There are methods that don't return anything & we just want their side-effects, which is some sore of modification to a non-local variable or some sort of observable interaction with calling methods or the outside world
## for example, side-effect of puts and each. each returns the original array and thus is used exclusively for its side-effects

## good methods are short, simple, coherent, < 10 lines of codes
## break up codes into several shorter Methods
