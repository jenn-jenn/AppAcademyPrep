## a typical source file contains the definition of a single class
## when code is in files, load them with "require" method
# ~$ irb
# [1] pry(main)> require 'set'
# => true
# [2] pry(main)> Set.new([1, 2, 3]) # let's me use the `Set` class
# => #<Set: {1, 2, 3}>
## this is only possible with code in installed-gems (bundles of code distributed on the internet), can be loaded without first giving a path
# [2] pry(main)> require './test'
# => true
## "." means source file named "test" can be found in the current directory
## Ruby addes .rb when you use "require"
## after "require" used "load" to reload >>> use this only in REPL, not in files, needs .rb
