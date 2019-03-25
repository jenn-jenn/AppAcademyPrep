# Loop through all the numbers, stopping when you encounter a number that is (a) >250 and (b) divisible by 7. Print this number down!

def loopingNumbers
  i = 251
  while i > 250
    if i % 7 == 0
      puts i.to_s
      break
    end
    i += 1
  end
end

# Print out all the factors for each of the numbers 1 through 100.


def factors
  (1..100).each do |num|
    factors = []
    i = 1
    factor = num
    while factor > i
      if num % i ==  0
        factor = num / i
        factors << factor
        factors << i
      end
      i += 1
    end
    puts "#{num} : " + factors.to_s
  end
end

# Implement Bubble sort in a method #bubble_sort that takes an Array and modifies it so that it is in sorted order. Bubble sort visualization.

def bubbleSort(arr)
  arr.each_with_index do |num, i|
    # each iteration I need to reset i = 0 to start from the beginning again
    i = 0
    while i < arr.count - 1
      # check for the largest and swap until it gets to the end of the arrary where it belongs
      if arr[i] > arr[i+1]
        temp = arr[i+1]
        arr[i+1] = arr[i]
        arr[i] = temp
      end
      # each time i swap i will need to i++ to get to the next index to move the element to the end of the array
      i += 1
    end
  end
end

bubbleSort([14, 33, 27, 35, 10])

# Write a method substrings that will take a String and return an array containing each of its substrings.
# Example output: substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]

def substrings(string)
  i = 0
  substring = []
  while i < string.length
    str = ""
    j = i
    while j < string.length
      str = str + string[j]
      substring << str
      j += 1
    end
    i += 1
  end
  return substring
end

substrings("bird")
