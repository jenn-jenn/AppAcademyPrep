# A Hash is a collection of key-value pairs.

## Creating Hash
# empty_hash = Hash.new
another_empty_hash = {} # shorter and preferred
# capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }

## Loop up values in hash by key Hash#[]
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals['New York'] # => 'Albany'
# Any object can be used as a key in a Ruby hash. However, "strings" and :symbols are most common.

# somethings about symbols
# Symbols are like strings
# Symbols are preferred over strings for keys in a hash
# Symbols are written with a leading colon.

## Hash#each iterate through items, each entry has both key & value
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals.each do |state, capital|
  puts "#{capital} is the capital of #{state}"
end

## Hash#[]=  add a new key * value to Hash
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals['Texas'] = 'Austin'
puts capitals
# => { 'New York' => 'Albany', 'California' => 'Sacramento', 'Texas' => 'Austin' }


## Hash#delete delete key/value pair
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals.delete('California')
puts capitals
# => { 'New York' => 'Albany' }

## Hash#delete_if  iterates through the hash while deleting everything that returns true
test_hash = {'a' => 100, 'b' => 25}
test_hash.delete_if {|key, value| value <= 50}
puts test_hash
# => {'a'=>100}


## Hash#merge   merges two hashes together
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
more_capitals = { 'Texas' => 'Austin', 'Alaska' => 'Fairbanks' }
capitals.merge(more_capitals)
# => { 'New York' => 'Albany', 'California' => 'Sacramento', 'Texas' => 'Austin', 'Alaska' => 'Fairbanks' }

# Notice that hash1.merge(hash2) is the same as hash2.merge(hash1) here. This isn’t always the case; if you have two hashes with the same keys, duplicate entries in the merged Hash take precedence over the ones in the calling Hash:
h1 = {:a => 'apple', :b => 'bat'}
h2 = {:b => 'bravo', :c => 'charlie'}
h1.merge(h2) # => {:a => 'apple', :b => 'bravo', :c => 'charlie'}
# "bravo" writes over "bat"
## CREATES A NEW HASH INSTEAD
## merge! modifies original


## Hash#keys  get all of the keys in a hash as an array
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals.keys # => ['New York', 'California']

## Hash#values  gets all of the values in a hash as an array
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals.values # => ['Albany', 'Sacramento']


## Hash#has_key?   use to check if a hash has a specific key
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals.has_key?('New York') # => true
capitals.has_key?('France') # => false
