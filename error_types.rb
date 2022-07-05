#Reading error messages and the 4 common types


#FIXME: this gives us a NameError

=begin

lib/a_name_error.rb is the file the error occurred in.
3 is the line of code with the error.
<main> is the scope of the error

=end


#FIXME: Syntax Errors

# every do keyword must be followed by some code and then an end keyword

=begin

2.times do
    puts "hi"

    studynotes.rb:27: syntax error, unexpected end-of-input, expecting `end'


2.times do
    puts "hi"
end

By adding the end keyword above we puts (console.log) the string "hi" twice

=end


#FIXME: Type Errors

# These occur when trying to do a mathematical operation on two objects of a different type

#An example: Attempting to add a string to an integer


=begin

1 + "1"

1: from studynotes.rb:43:in `<main>'
studynotes.rb:43:in `+': String can't be coerced into Integer (TypeError)

=end


#FIXME: DIVISION ERRORS: YOU CAN NOT DIVIDE BY ZERO

# puts 10 / 0

# studynotes.rb:56:in `/': divided by 0 (ZeroDivisionError)