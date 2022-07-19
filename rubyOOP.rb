require 'pry'

# Object Oriented Programming (OOP) is a type of programming based on the concept of "OBJECTS" which can contain data, in the form of fields
# (often known as attributes or properties) and code, in the form of procedures (often known as methods)

# OOP is all about being able to structure code so that its functionality can be shared throughout the application.

# This is opposed to "Procedural Programming" (PP), in which you build programs in sequential order and call methods when you want shared behavior between pages in the application

#TODO: Basics of OOP to be understood are as follows:

# - Classes and Instances

# - The (new) class method

# - Instance Methods

# - Local variables and Instance variables

# - Object Attributes

# - Setter and Getter Methods

# - Setting instance variables from initialize 


# Much like human language, OBJECTS in programming are nothing more than abstractions/representations of the physical form of our reference.
# IT COMMUNICATES THE IDEA OF A THING, NOT THE THING ITSELF

water_pipe = {
    length: "a length",
    diameter: "a diameter",
    material: "a material",
    manufacturer: "420 blaze it nerds inc"
}

pp water_pipe
#  {:length=>"a length",
#  :diameter=>"a diameter",
#  :material=>"a material",
#  :manufacturer=>"420 blaze it nerds inc"}

#FIXME: If we look at our above water_pipe object we see obviously it's not a real water_pipe sitting before us (sadly)

# Instead it is an Object that references all the different attributes of said pipe

# OOP does more than just bundle up individual pieces of data that represent a "thing"
# It also bundles customized functions/methods that can be performed on that data.

# So in short, an OBJECT in code is a "thing" with all the data and logic required to complete a task. They are models and metaphors for the problems we solve in code.

# For history of Object Oriented Programming check out Adele Goldberg and Alan Kay who developed an OO-Language called SmallTalk which was used in the first personal computer

# https://en.wikipedia.org/wiki/Adele_Goldberg_%28computer_scientist%29
# https://en.wikipedia.org/wiki/Alan_Kay


# Ruby comes with a few types of Objects to get us started, such as: Integer, String, Array, Hash, etc.
#  We call these base types of Objects "PRIMITIVES". 

# But what if we wanted to create a new type in our programming universe, a new kind of OBJECT for our code. 
#  This is where we introduce the CLASS keyword

class Recipe
    def recipe_name(name)
        puts name
        binding.pry
        # By putting our binding.pry inside we can see our name param which is "alfredo" passed into the method call below on r1
    end
end

r1 = Recipe.new
# r1.recipe_name("alfredo")


# Ok so if we run the file and check out our binding.pry we can see the new r1 Recipe that was created and stored with memory allocation

# pry(main)> r1
# => #<Recipe:0x000055c0411e84b0>


#TODO: Classes and Instances

# A Ruby class creates OBJECTS!!

# What if we were building a dog walking app? Our app's users might be the dog walkers and the dog owners and they use the app to manage the walks. Such an app would need to store LOTS of dog information
#  We would need a way to bundle up and operate on all the info about a particular dog, client, or walker. We'll also need to create new bundles of info.

# Let's create a Dog class that produces invdividual dog objects
#  We can think of a class like a blueprint that defines how to build an object.

# We can use the ( .new ) method on our Dog class to get a brand new dog object from our Dog assembly line!

class Dog
    # code that describes our dog 
end

# QUICK NOTE: CLASS NAMES BEGIN WITH CAPITAL LETTERS AND SHOULD BE CAMELCASED!!!

# Ex: class MyClass
   # YOUR AWESOME CODE
# end

# Ok let's create a .new instance of our Dog class

fido = Dog.new
puts fido #<Dog:0x000055c28ed3fa58>

# By declaring our fido variable and assigning it to Dog.new we create a new instance of our Dog class. We INSTANTIATE a new dog.
#  We are bringing a new object to life and if you notice our puts fido it has it's own internal memory allocation


snoopy = Dog.new
puts snoopy #<Dog:0x00005653bded39d0>
# Notice the different memory references!!

# The references, or the syntax you see, is called RUBY OBJECT NOTATION and it's the default way that Ruby communicates to you that your are dealing with an object or instance of a particular class.

# So even though these instances are totally unique, they are still born from the Dog class.

# IN SHORT: Classes are the blueprints that define the behavior and information our objects will contain. They let us manufacture and instantiate new instances.


#TODO: REMEMBER the ( class ) keyword and the ( .new ) method



#TODO: INSTANCE METHODS!

# So we have our new class instances Dog, fido and snoopy

# Using dot notation we can send objects messages asking them to perform an operation or task

puts fido.object_id #60

# You can see a full list of methods available to our class with the ( .methods ) method
#  Hop in pry and check it out

# binding.pry
# fido.methods =>
# [:pry,
#  :__binding__,
#  :pretty_print,
#  :pretty_print_inspect,
#  :pretty_print_instance_variables,
#  :pretty_print_cycle,
#  :dup,
#  :itself,
#  :yield_self,
#  :then,
#  :taint,
#  :tainted?,
#  :untaint,
#  :untrust,
#  :untrusted?,
#  :trust,
#  :frozen?,
#  :methods,
#  :singleton_methods,
#  :protected_methods,
#  :private_methods,
#  :public_methods,
#  :instance_variables,
# etc, etc.

# If we look back up to our fido.object_id we can see we are calling the method on the object name with dot notation. We are invoking our method!

#  object_id method simply tells you the object's identifier in your computer's memory.

# "I thought of objects being like biological cells and/or individual computers on a network, only able to communicate with messages." - Alan Kay


# In dot notation, we call the object that received the method the receiver, and we call the method the message.

# receiver  | dot |   message
#  OBJECT      .      METHOD

puts "This string is the receiver".reverse #reverse is the method

# Unlike JavaScript, Ruby does not require the () to be appended to a method's name when you call it.

#FIXME: Deeper dive into instance methods

# We can create our own instance methods and don't have to just rely on our build in methods (object.methods)


# A local variable that is defined inside one method cannot be accessed by another method:

def method_a
  my_local_variable = "I can only be used in method_a"
  puts my_local_variable
end

def method_b
  puts my_local_variable
end

# method_b
# NameError (undefined local variable or method `my_local_variable' for main:Object)

#TODO:FIXME: CHECK OUT THIS REPO FOR EXTENDED NOTES: https://github.com/bigolboyyo/phase-3-ruby-oo-basics-instance-variables-lab