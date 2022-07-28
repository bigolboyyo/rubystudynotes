require 'pry'

class Person
    attr_accessor :name, :age, :email
  
    def initialize(name, age, email)
      @name = name
      @age = age
      @email = email
    end
  end
  
  bob = Person.new("Bob", 29, "bob@flatironschool.com")
  avi = Person.new("Avi", 28, "avi@flatironschool.com")
  adam = Person.new("Adam", 28, "adam@flatironschool.com")

  # We can imagine the above us creating a class to coordinate with a database entry

  # So each entry(instance) of the class will provide details

  # Then suppose you want to keep track off each instance and their activities
  #  ie: number of clicks, most visited pages, upvotes, likes, etc.

  # We can create additional (classes/database entries) to subnest and create add datasets

  
  # There is a lot of SQL convention we should stick too for easier readability

  # When we name columns we will always use LOWERCASE letters. Although SQL isn't case, sensitive
    # this will help the readability and comms between devs.
  # Another conv is we link multiple words with underscores rather than spaces (snake_case)

# DATATYPES

# NULL

# In a database, NULL represents "no value", like null in JS or nil in Ruby


# TEXT

# Any alphanumeric characters which we want to represent as plain text. The key
#   to remember is PLAIN TEXT. your name or email address. Not your height, weight, or age


# INTEGER

# For anything we want to represent as a whole number. No letters, decimals, or special characters
#  Think of math comparisons. SUM, ADD, etc...


# REAL

# Plain old decimals like 1.3 or 2.25. SQL stores decimals up to 15 chars long.
# In other systems this is known as "double precision"


# BLOB (Binary Large Object)

# Generally used for holding binary data. Or think of like a description, or multiple lines of user input


# BOOLEANS ARE STORED AS INTEGERS (0 for false, 1 for true)
