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


