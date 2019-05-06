# Write a method same_char_collapse that takes in a string and returns a
# collapsed version of the string. To collapse the string, we repeatedly
# delete 2 adjacent characters that are the same until there are no such
# adjacent characters. If there are multiple pairs that can be collapsed,
# delete the leftmost pair. For example, we take the following steps to
# collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zydef same_char_collapse(str)

def same_char_collapse(str)
  i = 0
  while i < str.length
    if i == 0
      new_str = ""
    end

    if i != str.length-1
      if str[i] == str[i+1]
        new_str += str[i+2..-1]
        str = new_str
        i = 0
      else
        new_str += str[i]
        i += 1
      end
    else
      new_str += str[i]
      i += 1
    end

  end
  return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
