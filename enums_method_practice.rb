# Practice using common methods with arrays and hashes

#TODO: 

#each  

# Use Case: For when you want to access each element of the array, but don't care about returning a new array.

game_array = ["Dark Souls", "Escape From Tarkov", "BugSnax"].each {|str| puts str.upcase}
# DARK SOULS
# ESCAPE FROM TARKOV
# BUGSNAX


#TODO:

#map / #collect

pp [1,2,3].map { |num| num * 2}
# [2, 4, 6]

do_end = [2, 4, 6].map do |num|
   num / 2
end

pp do_end 
# [1, 2, 3]

# Here we can see why using the curly brackets can be much simpler, cleaner, and easier to read

# Many of Ruby's enums have aliases to make them easier to remember for programmers coming from other languages. 


# For instance, we can use #collect instead of #map

pp [17, "Fish", nil].collect { |el| el}
# [17, "Fish", nil]



#TODO: 

#filter / #select / #find_all 

# Use Case: When you want to access every element of an array, 
#  check if it maches some criteria, and return a new array of all the values that match

pp filtered_array = [1,2,3,4,5,6,7,8,9,10].filter { |num| num.even?}
pp filtered_array.length

# Ruby's #filter method won't let you perform any transformation of elements, it will only
 # return the original elements based on whether a truthy or falsy value is returned from the block


words = ["never", nil, "gonna", "give", nil, "you", nil, "up"]
filtered =  words.filter do |word|
    if word != nil
        word.capitalize
    end
end 

pp filtered # ["never", "gonna", "give", "you", "up"]

# notice how our filtered elements are NOT capitalized!?
# filter does not transform the elements of the array!

# we would need to add a #map method to alter!

capitalized_words = filtered.map { |word| word.capitalize}
pp capitalized_words # ["Never", "Gonna", "Give", "You", "Up"]

# we could make this all very pretty thanks to method chaining

p words.filter { |word| word !=nil }.map(&:upcase)
#    #1        #2       #3         #4      #5

# 1 - Grab the words array and use the #filter method

# 2 - Declare in PIPES || our param name for each element

# 3 - For each param |word| check if it is NOT nil

# 4 - Now we can edit our filtered array with our #map method

# 5 - Using the &ampersan& hack we can imply the #upcase method by  ( &:method_name )


#Get real artesenal bruh 

p capitalized_words.compact.map(&:downcase)
# ["never", "gonna", "give", "you", "up"]



#TODO: 

#find / #detect

# Use Case: When you want to access every element of an array, check if it matches some criteria,
#  and return the FIRST element that matches

# The big difference here is that opposed to the #filter method we only return the FIRST matching element

p [11, 12, 13, 14, 15, 160].find { |num| num.even? }
# 12

users = [{ name: "Bob Ross", phone: "555-555-5555"}, {name: "Liza Thornberry", phone: "444-444-4444"}]
liza_phone =  users.find do |user|
    user[:phone] == "444-444-4444" 
end

p liza_phone
# {:name=>"Liza Thornberry", :phone=>"444-444-4444"}

bob_himself = users.detect { |user| user[:name] == "Bob Ross"}

p bob_himself
# {:name=>"Bob Ross", :phone=>"555-555-5555"}



#TODO: 

#sort 

# Use Case: return a new array where all the elements have been sorted based on some criteria

# In Ruby the #sort method can be called a couple different ways.

# If you have a simple array of strings or numbers, you can call #sort without a block

nums = [1, 3, 2, 7, 11, 8, 4]
p nums.sort
# [1, 2, 3, 4, 7, 8, 11]

string_arr = ["bog", "cat", "document", "justice", "array", "enough"]
p string_arr.sort
# ["array", "bog", "cat", "document", "enough", "justice"]


# When sorting more complex data, you can provide a block and write a sorting algorithm of your own
#  The block must return either ( -1 / 0 / 1 ) to determine the sort order


scavs = [
    { name: "Ivan Ivankov", phone: "633-645-6789"},
    { name: "Little Timmy", phone: "420-069-0666"},
    { name: "Cheeky Breeky", phone: "867-530-9000"}
]

sorted_scavs = scavs.sort do |u1, u2|
    if u1[:name] == u2[:name]
        0
    elsif u1[:name] < u2[:name]
        -1
    elsif u1[:name] > u2[:name]
        1
    end
end

pp sorted_scavs
# [{:name=>"Cheeky Breeky", :phone=>"867-530-9000"},
# {:name=>"Ivan Ivankov", :phone=>"633-645-6789"},
# {:name=>"Little Timmy", :phone=>"420-069-0666"}]

# This code can get a little nasty looking, but it can be simplified

# We can use the "SPACESHIP OPERATOR" ( <=> ) i.e. the combined comparison operator

spaceship_scavs = scavs.sort { |u1, u2| u1[:name] <=> u2[:name] }

p spaceship_scavs
# [{:name=>"Cheeky Breeky", :phone=>"867-530-9000"}, {:name=>"Ivan Ivankov", :phone=>"633-645-6789"}, {:name=>"Little Timmy", :phone=>"420-069-0666"}]


#sort_by is another method provided by Ruby

#sort_by instead of passing two elements to the block and requiring you to write the comparison logic
# it just passed one element to the block

scav_sort_by_phone = scavs.sort_by { |u1| u1[:phone] }

pp scav_sort_by_phone
# [{:name=>"Little Timmy", :phone=>"420-069-0666"},
# {:name=>"Ivan Ivankov", :phone=>"633-645-6789"},
# {:name=>"Cheeky Breeky", :phone=>"867-530-9000"}]


#FIXME: 

# There are more enumerable methods to explore!

# https://ruby-doc.org/core-2.7.3/Enumerable.html

# http://bicyclethief.github.io/cheatsheets/ruby-enumerables.html