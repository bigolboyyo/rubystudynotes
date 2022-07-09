require 'pry'

# Take this string and reverse it

a_string = "Hello there, and how are you?"
b_string = "When will climate change finally end the world?"
c_string = "Bet you can't wait until we reach the letter G!"

def reverse_each_word(sentence)
    
    # Split the string on " " to get access to each word in the sentence
    split_words = sentence.split(" ")
    
    
    # Reverse each word, and add it to a new array
    reversed_words = []
    split_words.each {|word| reversed_words << word.reverse}
    

    # Join the array of words on " " to create one new string
    reversed_words.join(" ")

    #binding.pry
end


# When called it should look like this

pp reverse_each_word(a_string) # "olleH ,ereht dna woh era ?uoy"

puts reverse_each_word(b_string) # nehW lliw etamilc egnahc yllanif dne eht ?dlrow

p reverse_each_word(c_string) # "teB uoy t'nac tiaw litnu ew hcaer eht rettel !G"



# REFACTOR

# Thinking about the above code there must be a better way to refactor instead of using the #each method

# This is where the #map method comes in handy!

def map_reverse(sentence)
    words = sentence.split

    reversed_words = words.map do |word|
        word.reverse
    end

    reversed_words.join(" ")
end

# We wrote this out in the traditional do/end format but we don't have to create an empty array

#map RETURNS a new array the same length as the original!


# FIXME: 

# Ok this is not yet, A R T E S E N A L , so let's change that

def artesenal_reverse s
    s.split.map(&:reverse).join(" ")
end

puts artesenal_reverse("Only BRAND NEW sentences, hard coded for the CHAD TERNARY MAN can be passed into this A R T E S E N A L method")



# A NOTE: We could throw a binding.pry at the bottom of our file
#  Notice how we have a zero following though?
#   This is due to pry's quirky behavior, You can NOT use a breakpoint as the last line of code in a program. 
#    So the 0 is just arbitrary data on the line below to ensure we hit our breakpoint

# binding.pry
# 0