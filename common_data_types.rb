#TODO: Identify common data types in Ruby:language

#FIXME: Strings

"I'm a string" #double quotes
'Me Too!' #single quotes

# String class constructor method (this is not common you'd ever need to do this)
String.new("I'm a string made with a class constructor method")

# Ruby : String Interpolation
dog_name = "Lucy"
#puts "Say hello to my dog #{dog_name}" # In Ruby we use DOUBLE QUOTES for interpolation

=begin

// JavaScript
const dogName = "Lucy";
console.log(`Say hello to my dog ${dogName}`);

=end

# In Ruby backticks return the standard output of the operation.
# https://www.bigbinary.com/blog/backtick-system-exec-in-ruby

output = `ls`
puts "output is #{output}"

=begin #output of above is as below

output is common_data_types.rb
error_types.rb
getting_started.rb
run.rb

=end

# IRB examples with strings

=begin 

"hello"
# => "hello"
"hello".upcase
# => "HELLO"
"HELLO".downcase
# => "hello"
"hello".capitalize
# => "Hello"
"hello".reverse
# => "olleh"
"hello" + "world"
# => "helloworld"
"hello" * 3
# => "hellohellohello"

=end

#You'll often hear it said that "in Ruby, everything is an object". 
# All of the methods that we called on strings above are available because the string literal "hello" is an instance of the String class. 
# Thanks to Ruby's introspection features
# https://www.leighhalliday.com/ruby-introspection-metaprogramming

# Metaprogramming is the writing of computer programs with the ability to treat programs as their data. It means that a program could be designed to read, generate, analyse and/or transform other programs, and even modify itself while running.

# In Ruby, introspection is when our code asks questions about itself.

# In Ruby we have a " methods " method!

"hello".methods 

=begin

[:unicode_normalize, :unicode_normalize!, :ascii_only?, :unpack, :unpack1, :to_r, :encode!, :%, :include?, :*, :+, :count, :partition, :+@, :-@, :<=>, :<<, :==, :===, :sum, :=~, :next, :[], :casecmp, :casecmp?, :insert, :[]=, :match,
:match?, :bytesize, :empty?, :eql?, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :getbyte, :setbyte, :scrub!, :scrub, :undump, :byteslice, :to_c, :freeze, :inspect, :capitalize, :upcase, :dump, :downcase!, :swapcase,
:downcase, :hex, :capitalize!, :upcase!, :lines, :length, :size, :codepoints, :succ, :split, :swapcase!, :bytes, :oct, :prepend, :grapheme_clusters, :concat, :start_with?, :reverse, :reverse!, :to_str, :to_sym, :crypt, :ord, :strip,
:end_with?, :to_s, :to_i, :to_f, :center, :intern, :gsub, :ljust, :chars, :delete_suffix, :sub, :rstrip, :scan, :chomp, :rjust, :lstrip, :chop!, :delete_prefix, :chop, :sub!, :gsub!, :delete_prefix!, :chomp!, :strip!, :lstrip!,
:rstrip!, :squeeze, :delete_suffix!, :tr, :tr_s, :delete, :each_line, :tr!, :tr_s!, :delete!, :squeeze!, :slice, :each_byte, :each_char, :each_codepoint, :each_grapheme_cluster, :b, :slice!, :rpartition, :encoding, :force_encoding,
:valid_encoding?, :hash, :unicode_normalized?, :encode, :clamp, :between?, :<=, :>=, :>, :<, :dup, :itself, :yield_self, :then, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, 
:protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :clone,
:display, :class, :singleton_class, :public_send, :method, :public_method, :singleton_method, :define_singleton_method, :extend, :to_enum, :enum_for, :!~, :nil?, :respond_to?, :object_id, :send, :__send__, :!, :!=, :equal?, :__id__, :instance_eval, :instance_exec]

=end

# Look at all those methods!

p String.ancestors # [String, Comparable, Object, Kernel, BasicObject]

# running .ancestors on String will return an array of all the parent classes the String class inherits from! INHERITANCE


#TODO: Notation

# In Ruby there are two different kinds of methods: Instance Methods and Class Methods.

#FIXME: An instance method means a method that's called on an instance (one unique object) of a class

# When a method starts with a ( # ) in documentation, it's an instance method


#FIXME: A class method are methods that are defined inside the class, public class methods can be accessed with the help of objects.

# When a method starts with a ( . ) in documentation, it's a class method


#TODO: Numbers

# In Ruby there are two types of numbers: Integers and Floats

# Integers == whole numbers such as: 4

# Floats == decimal numbers such as: 4.20

# In Ruby there exists a "number" (haha pun) of methods available to you for operating on or manipulating integers.

# https://ruby-doc.org/core-2.7.3/Integer.html
# https://ruby-doc.org/core-2.7.3/Float.html

# Here are some examples!

puts 7.5.floor # 7

puts 7.5.ceil # 8

puts 8.next # 9

#FIXME: You can convert some data types to integers or floats with the ( to_i ) and ( to_f ) methods

puts "1".to_i

puts "1.1".to_i

puts "1.1".to_f

# Unlike JavaScript, Ruby won't convert an Integer to a Float when performing math operations, unless one side of the operation is already a Float:

pp 4 / 3 # 1

pp 4 / 3.0 # 1.33~

pp 4/ 3.to_i # 1

pp 4/ 3.to_f # 1.33~


#TODO: Nil (Null in JS)

# Nil represents the absence of a value

puts "I return nil" # try this out in the IRB

# Unlike JavaScript, Ruby won't let you create a variable without assigning a value. You must explicitly assign a value of nil if you want an "empty" variable

#no_value
# NameError (undefined local variable or method `no_value' for main:Object)
no_value = nil
# => nil


#TODO: Booleans - True or False

# We know boolean data types have two values: true/false

# IN RUBY THOUGH: there is no such thing as a Boolean class. Instead, every appearance, or instance, of true and false in your program are instances of TrueClass and FalseClass

p true.class
# => TrueClass
p false.class
# => FalseClass


pp !!true # true

pp !!false # false

pp !true # false

pp !false # true

pp !0 # false

pp !!0 # true

p !nil # true

# In Ruby, only nil and false are falsy values. Everything else is truthy, even 0 and empty strings

# Contrast this with JavaScript, where null, undefined, false, 0, NaN, and "" are all falsy values


#TODO: Symbols

# A symbol is a representation of a piece of data. Symbols look like this :my_symbol
# Essentially you place a colon in front of the defined symbol name :another_symbol

#FIXME: If you make a symbol, :my_symbol, and then use that symbol later on in your code, your program will refer to the same area of memory in both cases. This is different from, for example, strings, which take up new areas of memory every time they are used

# we get the same id for each new instance of puts 
p :my_symbol.object_id # 992988
p :my_symbol.object_id # 992988

pp :new_symbol.object_id # 993308
pp :new_symbol.object_id # 993308


# remember that strings will take up new areas of memory every time they are used!! Ruby allocates new memory for each string
puts "my string".object_id # 60
puts "my string".object_id # 80

# The ( object_id ) method returns an internal identifier used by Ruby representing the object's identity



#TODO: Arrays

# Ruby uses arrays much like JavaScript. They are used for storing ordered lists of data. You can store any type of data in an array.

# Arrays have multiple ways of being created much like strings, you can use the LITERAL constructor or the CLASS constructor

my_array = []
p my_array # []

constructor_array = Array.new
p constructor_array # []

# Much like in JavaScript there are many ways to iterate over an array (such as .forEach, .map, etc in JS)

# Some examples are as follows: 

number_array = [1, 2, 3, 5, 7]
p number_array.length # 5

unordered_array = [2, 14, 5, 240, 34, 72, 3]
p unordered_array.sort # [2, 3, 5, 14, 34, 72, 240]

reverse_array = ["a", "b", "c"].reverse
p reverse_array

# https://ruby-doc.org/core-3.1.2/Array.html


#TODO: Hashes 

# In Ruby Hashes are the equivalent of a plain old JavaScript Object. They are composed of key/value pairs. Each key points to a specific value, like a word:definition in a dictionary

# There are a few ways of writing hashes in Ruby. 

# Key/Value pair with enclosed curly braces
my_hash = {key1: "value1", key2: "value2"}


# Using JSON-style syntax above will create a hash with Symbols for keys. To access data from this hash, you can use BRACKET NOTATION and pass in the symbol for the key you are trying to access
p my_hash[:key2] # "value2"

# UNLIKE JAVASCRIPT YOU CAN NOT USE DOT NOTATION TO ACCESS KEYS ON HASHES - ONLY BRACKET NOTATION


# You can also create hashes wit STRINGS for KEYS

my_string_hash = {"I'm a key" => "I'm a value", "key2" => "stringvalue2"}
# This syntax is known as the hash rocket syntax, and is useful if you need String keys for Symbols; however, in general, using Symbols for keys is preferred.

p my_string_hash["key2"] # "stringvalue2"


# Hash.new syntax is the final way we can create hashes in Ruby. The following will create an empty hash
empty_hash = Hash.new
p empty_hash # {}

# Like with arrays we have many methods for operating on hashes and their individual key/value pairs. 

# Will be deep diving into this later on, here's a few examples for now. 
# https://ruby-doc.org/core-2.7.3/Hash.html


empty_hash[:matz] = "The Master of Ruby!"

p empty_hash # {:matz=>"The Master of Ruby!"}

empty_hash[:bigboyyo] = "An aspiring fullstack dev!"

p empty_hash # {:matz=>"The Master of Ruby!", :bigboyyo=>"An aspiring fullstack dev!"}




