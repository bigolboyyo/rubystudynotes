# This is a comment in ruby using the # number sign/hashtag
# COMMENT TIME!!

# puts is the console.log() of Ruby. Outputs a string of text into the terminal
puts "Hello world!"


# using parentheses when invoking a method is optional in ruby. The above code could be written as follows
puts("Hello world with parentheses!") #This is optional and not needed



#TODO: Outputting Strings with "puts" and "print" 

puts "This is a puts method" # notice that puts WILL add a line break in the terminal

#print "This is a print method" # print will NOT add a line break in the terminal



#TODO: Inspecting data with p and pp

# puts and print are great when working with strings and displaying them in the terminal. What if we have an array?

puts [1,2,3] # when using puts on something that isn't a string it coerces the data to a string by essentially calling " .to_s " on it. with each element printed to a new line in the console


# this is where using the " p " method comes in handy

p [1, 2, 3] # essentially we are calling the " .inspect " method on our data (puts [1,2,3].inspect)



# we can use the " pp " method which stands for "pretty-printing" on complex data such as nested arrays and HASHES (hash is the Ruby equivalent of a JavaScript Object)

pp [{ id: 1, hello: "World" }, { id: 2, hello: "Ruby" }, { id: 3, hello: "Moon" }, { id: 4, hello: "Learner" }]

# we are essentially calling the " .pretty_inspect " method on our data



#TODO: Exploring Ruby with IRB (Interactive Ruby) which is a tool that runs a RUBY REPL (read-evaluate-print-loop) in the terminal

# To do this go into the terminal and type irb

# notice when you do you can type in something like ( puts "hello irb" )

# it will log hello irb and give a =>nil which indicates the return value. IN RUBY ALL METHODS HAVE A RETURN VALUE. NIL means "no value", similar to null in JavaScript

#FIXME: using =begin and =end will allow block commenting in Ruby

=begin

first_number = 7
7
first_number
7
puts first_number
7
nil

=end


# TAKE NOTE: puts method always return nil and you can EXIT IRB by typing exit or pressing ctrl + d



#TODO: Running RSpec tests - all lessons in the ruby curriculum use the RSpec Library for testing your Ruby Code 

# RSpec is a Ruby gem (The Ruby equivalent of an npm package) that provides a DOMAIN-SPECIFIC LANGAUGE (DSL) that makes it a very nice way to write tests.






