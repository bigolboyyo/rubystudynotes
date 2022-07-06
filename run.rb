#take note of differences between capitalization 

#ruby : program
#Ruby : language for ruby

# ruby run.rb 

# TODO: Using IRB we can mess around with mathematical operators (+, -, *, /)

# the single equal operator (=) allows us to assign something
# ex: 
p cat = "rose" #"rose"

# the double equal operator (==) is a comparison operator
# ex:

#boolean
pp "rose" == cat #true
pp "Rose" == cat #false


# identifying data types use the " .class " method (this is not all .class does)

p 1.class #integer

p 1.0.class #float

p "1".class #string

# symbol starts with a colon (:) followed by an identifying word such as: 
:rose #symbol
# we often see symbols in HASHES

{name:"rose"}.class #hash - (essentially an OBJECT in JS)


#Ruby also has arrays [] such as:
pp [1,2,3]

# When we assigned cat = "rose" we were using local variables. Like using LET in JavaScript. Notice it's lowercased

# if we instead use UPPERCASED variables it is assigning as a constant, or like using CONST in JavaScript

DOG = "Woofers"

p DOG #"Woofers"

# p dog      # run.rb:48:in `<main>': undefined local variable or method `dog' for main:Object (NameError)

#FOR GLOBAL VARIABLES ADD A DOLLAR SIGN ($)

$bird = "flappy"

p $bird #"flappy"



