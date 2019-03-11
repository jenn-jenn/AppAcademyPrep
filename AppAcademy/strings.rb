# Strings

# use opposite versions of quotes
#'"Yesterday" has been covered >2,200 times'
# "I didn't know that!"

# careful with complicated sentences with multiple quotes
# use string interpolation
# worst_day = "Monday"
# "#{worst_day}s are the hardest."
# # => "Mondays are the hardest."
# MURDER = "redrum".reverse.upcase
# "#{MURDER}! #{MURDER}!"
# inside {} can just be variable with maybe a method call
# only with ""

# likes = "race cars, lasers, aeroplanes"
# dislikes = "harmonicas"
#
# "I like " + likes + ". I don't like " + dislikes + "."
# # => "I like race cars, lasers, aeroplanes. I don't like harmonicas."

# use shovel operator to concatenate strings
# count_in = ""
# count_in << "One, "
# count_in << "two, "
# # ...

# accesing substring by indexing the position of start to end
# "this is my sentence"[5..6]
# # => "is"

# count # of characters in string
# "words words words".length
# # => 17

# split strings into parts of arrays with .split()
# ice_creams = "Bi-Rite, Humphrey Slocum, Mitchell's"
# ice_creams.split(", ")
# #=> ["Bi-Rite", "Humphrey Slocum", "Mitchell's"]
#
# [1] pry(main)> motto = "We all scream for ice cream!"
# => "We all scream for ice cream!"
# [2] pry(main)> motto.split(" ")
# => ["We", "all", "scream", "for", "ice", "cream!"]

# nil.to_s
# => ""

# chomp - returns a new string w/ given record separator removed from end of str
# "hello".chomp            #=> "hello"
# "hello\n".chomp          #=> "hello"
# "hello\r\n".chomp        #=> "hello"
# "hello\n\r".chomp        #=> "hello\n"
# "hello\r".chomp          #=> "hello"
# "hello \n there".chomp   #=> "hello \n there"
# "hello".chomp("llo")     #=> "he"

# strip - returns a copy of str with leading & trailing whitespace removed
# "    hello    ".strip   #=> "hello"
# "\tgoodbye\r\n".strip   #=> "goodbye"

# gsub
# "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
# "hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
# "hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
# "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
# 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"

# downcase - returns a new_str
# "hEllO".downcase   #=> "hello"

# upcase - returns a new_str
# "hEllO".upcase   #=> "HELLO"

# to_i - returns the integer
# "12345".to_i             #=> 12345
# "99 red balloons".to_i   #=> 99
# "0a".to_i                #=> 0
# "0a".to_i(16)            #=> 10
# "hello".to_i             #=> 0
# "1100101".to_i(2)        #=> 101
# "1100101".to_i(8)        #=> 294977
# "1100101".to_i(10)       #=> 1100101
# "1100101".to_i(16)       #=> 17826049

# to_sym - creates symbol corresponding to str
# "Koala".intern         #=> :Koala
# s = 'cat'.to_sym       #=> :cat
# s == :cat              #=> true
# s = '@cat'.to_sym      #=> :@cat
# s == :@cat             #=> true

# str*integer - returns a new string of integer times
# "Ho! " * 3   #=> "Ho! Ho! Ho! "


## how to wrap around a certain area
# if you just want numbers from 26, mod with 26
# wrapping around ASCII
# shifting (Caesar Cipher)
# first substract the first letter (a)
# then add shift and together mod 26
# to get actual letter, add first letter back (a)
