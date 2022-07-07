# An array is used to store lists of data (which can be any data type, and even multiple types of data within the same array) in a specific order.
# https://ruby-doc.org/core-2.7.3/Array.html

# ARRAY CRUD (Create, Read, Update, and Delete)


shopping_list = ["Cookies", "Ice Cream", "Snickers"] 

# You can access elements of the array using bracket notation by providing the index of the element

puts shopping_list[0] # Cookies
puts shopping_list[1] # Ice Cream
puts shopping_list[2] # Snickers

# You can access elements starting from the end of an array by providing a negative index

puts shopping_list[-1] # Snickers
puts shopping_list[-3] # Cookies

# You can update elements within the array with bracket notation

shopping_list[-2] = "Totino's Pizza"
pp shopping_list

# Ruby has a couple methods for convenience for accessing elements at the beginning and end of arrays

puts shopping_list.first # Cookies
puts shopping_list.last # Snickers

# Ruby lets you determine the #length of an array. It has an alias of #size

p shopping_list.length # 3
p shopping_list.size # 3

# Like in JS, you can use the #slice method to access multiple elements from an array. 

p shopping_list.slice(-1) # "Snickers"
p shopping_list.slice(0,2) # ["Cookies", "Totino's Pizza"]

# You can pass a RANGE of index numbers using the bracket notation

p shopping_list[0..1] # ["Cookies", "Totino's Pizza"]
p shopping_list[0...1] # ["Cookies"]

# Ruby has the #push and #unshift methods tha can be used to add elements to the end or beginning of arrays respectively

p shopping_list.push("M&Ms") # ["Cookies", "Totino's Pizza", "Snickers", "M&Ms"]
p shopping_list.unshift("White Castle Burgers") # ["White Castle Burgers", "Cookies", "Totino's Pizza", "Snickers", "M&Ms"]

# Instead of #push we can use the SHOVEL method ( << )

p shopping_list << "Tums"

# Ruby has a couple of ways to combine multiple arrays with #concat

one_two_three = [1,2,3]
four_five_six = [4,5,6]

one_through_six = one_two_three.concat(four_five_six)
p one_through_six # [1, 2, 3, 4, 5, 6]

# Reverse Reverse!

p one_through_six.reverse # [6, 5, 4, 3, 2, 1]

#FIXME: #concat changes the data in the original array, if you want to combine arrays without changing the original you can use the + method

# p one_two_three + four_five_six


# Removing elements from an array can be done with the #pop and #shift methods from beginning or end respectively

p shopping_list.pop # Tums
p shopping_list

p shopping_list.shift # White Castle Burgers
p shopping_list

# Advanced Array Methods

#include can be used to check if a particular element is present in an array
# In Ruby, there's a convention that methods that return a boolean value are named with a question mark at the end, like #include?

letters = ["a", "b", "c"]
p letters.include?("a") # true
p letters.include?("e") # false

#reverse we saw earlier!

p letters.reverse # ["c", "b", "a"]
p letters # ["a", "b", "c"]

# it returns a new array in the reverse order. You can reverse the array in place (change the data in the array itself) with the #reverse! method : notice the exclamation mark

letters.reverse!
p letters # ["c", "b", "a"]

# In Ruby, there's a convention that methods that modify the object they're called on end with an exclamation mark, like #reverse!

#sum is method that will add every element in an array

p [1,2,3,4,5].sum # 15
#COMPARE THIS WITH JavaScript: // [1, 2, 3].reduce((sum, num) => sum + num);

#uniq is a method used to only return the unique elements within an array

p [1,1,2,2,3,3,4,4,5,5].uniq # [1, 2, 3, 4, 5]
#COMPARE THIS WITH JavaScript: // [1,1,2,2,3,3,4,4,5,5].filter((num, index, array) => array.indexOf(num) === index);

# Look we can combine methods!!

p [1,1,2,2,3,3,4,4,5,5].uniq.sum # 15

# Ruby supports a couple of Special Array Syntaxes for creating arrays

# For example you can create an array of strings (assuming each word is a string). For this use ( %w )
quick_array = %w[we are building an array of elements]
p quick_array.reverse

# You can take this same idea and create an array of symbols. For this use ( %i )
symbol_array = %i[each element of of this array is is now a a symbol]
p symbol_array.uniq


