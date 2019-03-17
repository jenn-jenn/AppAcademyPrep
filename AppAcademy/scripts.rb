## some source files are meant to be loaded while others are meant to be executed as a program (script)

## we invoke the file by typing ./script.rb if file name is script.rb
## we must add this line that tells the "shell" (bash or zsh) to use the Ruby interpreter to run the code

# !/usr/bin/env ruby
## if it was #!/usr/bin/env perl, it would run with Perl interpreter
## without this, the shell will interpret your program as a shell script by default

## second step, need to make the file executable which tells the shell that file is ok to be execute as a program; type:
# chmod +x script.rb
## "x" means executable

## Conditional execution: can write a Ruby file that can be used as a library and also invoked as a script; this is true if you'd like to "require" your script to test out in irb

# #!/usr/bin/env ruby
#
# def say_hello(name)
#   puts "Hey there, #{name}!"
# end
#
# if $PROGRAM_NAME == __FILE__
#   name = gets.chomp
#   say_hello(name)

## __FILE__ : special variable that holds Ruby source file name
## $PROGRAM_NAME : special variable that containes name of executing program
## if you invoke ./hello.rb as a sccript, this $PROGRAM_NAME = ./hello.rb

## if you run ./hello.rb then the two will be equal and therefore the script code will run

## if you load script from pry, $PROGRAM_NAME = "pry"; then the two != and script code will not be ran; only say_hello method will be defined

## desirable if you just want to load the code in pry so you can test. this way it won't execute right away
