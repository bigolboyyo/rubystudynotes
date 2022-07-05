# Let's talk about creating methods in ruby (much like functions in JavaScript)


# use ( def ) and ( end ) to declare the start/stop of the method

def one 
    1 # our return value
end

#     1  +  1
puts one + one # 2


# we can add params to our methods, in this example our param is "num"

def math num
    puts num
    num
end

#        float + float
puts math(4.0) + math(0.2) # 4.2


# let's refactor with a 2nd param - notice the comma seperating the params

def addition num1, num2
    pp [num1, num2]
    num1 + num2
end

puts addition(52, 8) + addition(3, 6) # 69



# practice re-writing a JS function into a Ruby method

=begin

function myFunction(param) {
  console.log("Running myFunction");
  return param + 1;
}


Let's do a little JS recap before advancing: 

    - the function keyword identifies this code as a function
    - myFunction is a variable name we can use to refer to the function from somewhere else in our code, camelCase by convention in JS
    - the parentheses () after the function name give a space where we can define our PARAMETERS for our function
    - the param is teh variable name given to our functions parameters, it will be assigned a value whe nthe function is invoked and passed as an argument
    - to define the BODY of the function we use CURLY BRACKETS {}
    - console.log() is a method that will output info to the terminal, THIS IS DIFFERENT FROM A FUNCTION'S RETURN VALUE
    - the RETURN keyowrd is needed when we want our function to return a value when it is called, in the above instance: return our param variable plus 1

    you would need to invoke this for it to actually run

    myFunction(2) // return 3

=end

# now here's that same function re-written as a Ruby METHOD

def my_method(param)
    puts "Running my_method"
    param + 1
  end

  puts my_method(1)

# let's go over the differences now that we have re-written 

=begin

  - we use the ( def ) keyword to identify this code as a method
  - write the name of the method in snake_case by convention
  - parameters are still defined in parentheses (but do not have to be) after the method name
  - instead of curly parentheses, we use the ( end ) keyword to identify where the methods ends
  - in Ruby whatever the LAST LINE OF A METHOD IS WILL BE ITS RETURN VALUE. (You can use the return keyword to explicity identify the return value of a method, but Rubyists tend to rely on the implicit return instead)

=end


#FIXME: A grand question of why we say METHODS in Ruby and not functions. 

# If you think back to Object Oriented JavaScript, the difference between a method and a function is that a METHOD is a special sub-category of functions that must be called on some object.

# In Ruby, EVERY METHOD WE DEFINE - even when it's not defined explicity "on an object" or as part of a class definition, 
# is still actually defined on a built-in Ruby object: the global main object, which you'll see referenced in error messages. 
# ex: NameError(undefined local variable or method 'my_var' for main:Object)

# a note to remember: Parentheses are Optional in Ruby

# The convention in Ruby (https://rubystyle.guide/#method-parens) is to use parentheses as part of a method definition when it takes parameters, and to omit them when it has no parameters.

# ?? "Is this a variable, or is this a method?" ?? #


#TODO: Method Arguments - Ruby vs JavaScript

=begin

Let's take a look at a JS example

const sayHi = (name) => { console.log(`Hi there, ${name}!`)}
sayHi(); // Hi there, undefined!

=end

# In Ruby when we run a method wtihout passing in the required arguments it will give us an error message

def say_hi(name)
    puts "Hi there, #{name}!"
  end
  
  # say_hi
  # => ArgumentError (wrong number of arguments (given 0, expected 1))

  say_hi("Wes") # Hi there, Wes!


# A note to remember: Error messages are GOOD for us developers, it ensures we are using methods as they are intended. This is one of Ruby's strong points, where as in JS our functions/methods try to "Fail Gracefully"


#TODO: Default Arguments 

# Just like in JS we can provide a default argument to fix our "undefined", "gracefully failed" function call

def say_bye(name = "Rubyist")
    puts "See ya later, #{name}!"
  end

  say_bye # See ya later, Rubyist!

  say_bye "Wes" # See ya later, Wes!



#TODO: Return Values

# You can GENERALLY categorize all functions/methods that you write as useful for one (or both) of these things:

# - what RETURN VALUE they have
# - What side effects they have (what other parts of the application they cahnge, or what ehy output to the terminal, or wht they wrtie to a file, etc)

# Writing output to the terminal using console.log or #puts is a side effect of a function: it's distinct from the function's return value.


# Every method in Ruby returns a value by default. This returned value will be the value of the last statement

def add_and_log(num1, num2)
    puts num1 + num2
end

def add_and_return(num1, num2)
     num1 + num2
end

pp sum1 = add_and_log(2, 2) # => nil

pp sum2 = add_and_return(2, 2)  # => 4


# a futher example of logging

# def print_name
#     puts "Bob Ross"
# end

# print_name # Bob Ross

# # setting the name as a return value

# def return_name
#     "Bob Ross"
# end

# return_name # nothing is logged in the console

# # we can assign the return value to a variable and print the variable name itself!

# bob_ross = return_name
# pp bob_ross # "Bob Ross"


# to do both

def print_and_return_name
    puts "Bob Ross"
    "Bob Ross"
end

# print_and_return_name #Bob Ross in console
log_bob_ross = print_and_return_name

pp log_bob_ross

# What if we mix up our puts and return value ?

def broken_print_and_return_name
    "Bob Ross"
    puts "Bob Ross"
end

broken_ross = broken_print_and_return_name
pp broken_ross # Bob Ross && nil


# lots of variations are possible as we can see with our Bob Ross examples

# Remember you can IMPLICITY RETURN a value in Ruby with the "return" keyword

def stylish_painter
    best_hairstyle = "Bob Ross"
    return "Jean-Michel Basquiat"
    best_hairstyle
  end
  
  stylish_painter # "Jean-Michel Basquiat"

  # the "return" keyword will disrupt the execution of your method and prevent Ruby from running any lines of code after the return keyword (This is generally avoided by most Rubyists)
  # there are cases in which you would implicity return though, although not as common, one example is a Guard Clause (https://devblast.com/b/what-are-guard-clauses)


  def reverse_name(name)
    if name.class != String
      return nil
    end
  
    name.reverse
  end

  reverse_name("Bob Ross") #Bob Ross (it is a String!)

  reverse_name(123) # nil (not a String as required in our method above)

  

