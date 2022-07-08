# Let's start off with looking at a JavaScript example of $map

=begin

const upcased = ["this", "is", "JavaScript"].map((str) => {
  return str.toUpperCase();
});

upcased;
// => ["THIS", "IS", "JAVASCRIPT"]

=end

# Now let's turn this example into a Ruby example of using #map

upcased = ["this", "is", "ruby"].map do |str|
    str.upcase!
end

# p upcased
# => ["THIS", "IS", "RUBY"]

# The important thing to remember is that in Ruby, methods like #times or #map take a BLOCK OF CODE as an argument. 
# This block can be thought of as having similiar functionality as the callback function in JavaScript's $map method. 

# The block start with ( do ) and ends with ( end )
# it takes one argument in the pipes ( || ), known as a BLOCK PARAMETER, that represents each element in the array

# In the case of #map, whatever the return value of the block is will be added to a NEW array, which is returned by #map


# What exactly is a BLOCK?

# A block is a chunk of code between braces{} or between do/end keywords that you can pass to a method, almost exactly like how you can pass an argument to a method.
# There are some methods, like iterator methods, that can be called with a BLOCK, i.e. accompanied by a block denoted with {} or do/end.


# What are PIPES? ( || )

# Pipes || is the symbolic representation, in the form of a variable name, that acts as an argument being passed into the block
# This method will pass or yield each element of the collection on which it is called to the block

# Call, or run, the code in the block once for each element of the collection.
# Pass a single element of the collection into the block every time the code in the block is called, or run. Start with the first element in the collection, and then move on to the second element, then the third, etc.
# Every time you call the code in the block and pass in an element from the collection, set the variable name from between the pipes equal to that element.

def pipes_params
    array =  %w[build up an array for iterating please].map.with_index do |str,i|
        p "#{str} : index #{i}"
    end
        end

        # pipes_params

# notices in the pipes_params method we use ( .map.with_index ) 
# this let's us calculate the index of our mapping in Ruby
# Could be used for .each_with_index as well



# Variations on Enumerable Syntax

# There are a couple of additional ways to write the #map method above.

def curly_map
     array = %w[Time for A new Array to Be built And iteration To begin].each_with_index.map { |str, i| puts "#{str.upcase} : index #{i}"}
end

curly_map

# It's considered best practices to only use this syntax for single-line blocks (https://rubystyle.guide/#single-line-blocks).

# Take note of the &ampersand hack! https://www.honeybadger.io/blog/how-ruby-ampersand-colon-works/

p ["my", "name", "is", "bigboyyo"].map(&:upcase)

# p ["this", "is", "Ruby"].map(&:upcase + "!")
# => NoMethodError (undefined method `+' for :upcase:Symbol)

p ["this", "is", "bigboyyo"].map { |str| str.upcase + "!" }

# If we needed to do more work in the block, like uppercase every string and add an exclamation mark, we'd need to use block syntax instead


# Enumerating with Hashes

# In Ruby enumerable methods can be used with other data types beyond arrays. 
# For example you can use enumerable methods with hashes to iterate over all the key value pairs

book_of_souls = {prisoners:{alive: 3452, dead: 117}, soulkeeper: "Balrog the Despicable", location: "4th Layer of Hell"}
pp book_of_souls

book_of_souls.each do |key, value|
    puts "Key: #{key}"
    puts "Value: #{value}"
end

p book_of_souls[:prisoners][:alive] # 3452
p book_of_souls[:soulkeeper] # "Balrog the Despicable"

