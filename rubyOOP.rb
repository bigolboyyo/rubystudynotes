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

# Instead it as an Object that references all the different attributes of said pipe

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

