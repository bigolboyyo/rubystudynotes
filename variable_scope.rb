# Scope refers to the areas of your program in which certain data is available to you.
# Any local variable created outside of a method will be unavailable inside of a method.
# Local variables created inside of a method (between def and end) "fall out of scope" once you're outside the method

name = "Wes"

def greeting name
    puts "Hello, #{name}" # we don't have access to our name = "Wes"
end

# greeting  ( variable_scope.rb:7:in `greeting': wrong number of arguments (given 0, expected 1) (ArgumentError) )

=begin 
FIXME: In JavaScript we would have access, take a look at this example.

const evilMonster = "Bowser";

function princessPeachesCastle() {
  console.log(`${evilMonster} is trying to kidnap Princess Peach!`); // Bowser is trying to kidnap Princess Peach!
}

=end

# TODO: So the KEY DIFFERENCE between Ruby and JavaScript is that LOCAL VARIABLES are ONLY available within the scope of the method they are defined in.

# Question?: How would we create a Ruby method that allows access to the evilMonster

evil_monster = "Bowser"

def princess_peaches_castle evil_monster
    puts "#{evil_monster} is trying to kidnap Princess Peach!"
end

princess_peaches_castle(evil_monster) # by passing the variable name as an argument to our method on invocation we can access it
# Bowser is trying to kidnap Princess Peach!

greeting evil_monster # Although parentheses are not required in Ruby, it is convention when declaring parameters. Also this is a prime example of how it would make it more "human readable"
# Hello, Bowser

# The reason the above works is because our actual METHOD CALL (invocation) happens outside the method definition and therefore has access to the scope of the defined variable 

def peach_is_stuck
    p im_trapped_in_the_castle = "Help, you can only save me from within the castle! (method)"
end

# im_trapped_in_the_castle # variable_scope.rb:46:in `<main>': undefined local variable or method `im_trapped_in_the_castle' for main:Object (NameError)

peach_is_stuck # "Help, you can only save me from within the castle! (method)"


#TODO: Variable Types

# Local Variables: must start with a lowercase letter or an underscore ( _ ) : name = "Mario"
# Global Variables: must start with a dollar sign ( $ ) : $name = "Luigi"
# Instance Variables: must start with an AT symbol ( @ ) : @name = "Toad"
# Class Variables: msut start with TWO AT symbols ( @@ ) : @@name = "Daisy"

# We can refactor our above princess_peaches_castle method to have access to a Global Variable!

$bowser = "Bowser"

def global_castle 
    puts "#{$bowser} is trying to kidnap Princess Daisy now!"
end

global_castle # Bowser is trying to kidnap Princess Daisy now!

# You should almost never need to use global variables in your code. Having a lot of global variables makes your code unpredictable and challenging to debug, so you should reserve them for special cases (like application-wide configuration).

# Recap: A local variable defined inside a method can't leave that method. It is not available to your program outside of the method. 
 # A local variable defined outside of a method can only be made available to the code inside the method if you pass that variable in to the method as an argument.
