# Learning Goals
# Define "design" in the context of coding
# Explain why design principles are important for you as a programmer
# Learn some of the basic design principles that object-oriented programmers employ

#TODO: What is code design and why implement it?

# A program's design refers to the manner in which YOU, the programmer, organizes and arranges it's code.

# The reason we care about design, and not just "it works" or it's functionality is because we want to ensure our code works in the F U T U R E ! ! !
    # Inevitably our programs will grow and require change, like what if you write a program that blows up, gets more users/traffic and requires additional needs for those users
    # Or even a client decides last minute they need different functionality?

# This is also why we should value OUR OWN HAPPINESS when we code!

#FIXME: 
=begin 

"We are modern craftspeople, building structures that make up present-day reality, and no less than bricklayers or bridge builders, we take justifiable pride in our accomplishments."

-Sandi Metz, Practical Object-Oriented Design in Ruby


"Design is not the act of following a fixed set of rules, it’s a journey along a branching path wherein earlier choices close off some options and open access to others. 
During design you wander through a maze of requirements where every juncture represents a decision point that has consequences for the future. 
Just as a sculptor has chisels and files, an object-oriented designer has tools — principles and patterns."

-Sandi Metz, Principles of Object-Oriented Design

# https://sandimetz.com/courses

=end


#TODO: Basic Design Principles

# The Single Responsibility Principle
    # This is the idea that classes in object-oriented programming should have ONE JOB, one responsibility, and their services should align with that responsibility.

# Separation of Concerns
    # The idea that the various responsibilites, or concerns, of a computer program should be separated out into discrete sections

# Let's look at an example: 

class MyStore

    def sign_in(user)
      @user = user
    end
  
    def current_user
      @user
    end
  
    def item(item)
      @item = item
    end
  
    def item_price=(price)
      @item_price = price
    end
  
    def shopping_cart
      @shopping_cart = []
    end
  
    def add_item_to_cart(item)
      @shopping_cart << item
    end
  
    # etc...
  
  end

# You can already see how our code starts getting out of control very quickly

# We can see our store has a variety of functions/responsibilites, or concerns, to keep track of. What if we need a new feature, Coupons?
# We shouldn't keep adding our code to this one file, it'll get ridiculous really fast and not be very human readable. 

# Just think, we have a bug somewhere in our vast file of methods and now we have to weed through crazy amounts of data to figure it out

# So instead of the above user sign in, items and their prices, and shopping carts, etc.

# We could have a User class, an Item class, a ShoppingCart class, or even a Coupon class.

# By separating our concerns you can easily see how we can navigate through our program much more easily and cleanly. We're able to narrow down bugs, and additional features needed.


#TODO: Abstraction and DRY code (Don't Repeat Yourself)
# Programmers are lazy, we hate doing things more than once

# If we find ourselves re writing the same functionality over and over, well most likely we can refactor.

# Let's look at an example of "smelly code"

def checkout(discount=0)
    total = 0
    #the shopping_cart method holds an array of all the user's items
    shopping_cart.each do |item|
      total += item.price
    end
  
    if discount == 10
      total = total - total * 10 / 100.00
    elsif discount == 20
      total = total - total * 20 / 100.00
    elsif discount == 50
      total = total - total * 50 / 100.00
    end
  
    total
  
  end

  # We can see how our checkout method has to roll through multiple if/elsif statements to determine each discount. And what if our coupons come into play? We have to do another set of if/elsif statements to account for the coupon


  class ShoppingCart
    attr_accessor :coupon
  
    def checkout
      total = 0
      #the shopping_cart method holds an array of all the user's items
      shopping_cart.each do |item|
        total += item.price
      end
  
      if coupon
        total = total - total * coupon / 100.00
      end
  
      total
  
    end
  end


# Notice above by making the :coupon an attr_accessor and accessing the items in the ShoppingCart we have the items needed and don't need all those if/elsifs
  # Then we can have our single if coupon and add it whether or not it exists

# This also allows us to account for any variety of potential coupons: WE ARE A B S T R A C T I N G our data to make it cleaner, simpler, and more readable

# This also makes our coupon method a helper method, meant to assist our checkout method, which is all nested in our ShoppingCart functionality. Everything is working towards the same goal with the same concerns


#TODO: Line Limits on Methods and Classes

# Another OOP principle states that METHODS SHOULD NOT EXCEED 5 LINES OF CODE and CLASSES SHOULD NOT EXCEED 100

# There will always be outlier problems and issues to confront, but we should seek to stick within these guidlines as much as possible.


# Look back on our checkout method

=begin
def checkout
    total = 0
    #the shopping_cart method holds an array of all the user's items
    shopping_cart.each do |item|
      total += item.price
    end
=end

# That's a lot of code for figuring out the total
# We set a total variable and start it at 0
# We then iterate through our shopping cart and add each price to the total 
# We also have multiple end points to work through

total = shopping_cart.sum { |item| item.price }

# Ahh look at that. We know we need the total. 
# We have a built in .sum method. Our total will be the sum of our shopping_cart and each of its item's prices. 
# We use block statements here and wallah, so clean.


#TODO: Domain Modeling

# Another important concept to help organize your OO code is the idea of domain modeling

# A Domain Model is a representation of real-world concepts in software. 
  # So in OO we think of our classes as templates for objects
    # The instances of our classes are thought of as objects
      # For example a Person class produces people objects that have attributes(data) and behaviors as described and enacted by instance methods

# Think about this on a larger scale though, like if we were writing a program for a automobile manufacturer to help manage their plants/factories.

# Our DOMAIN MODEL here would be something like an AutoPlant class that produces individual cars, houses employees, and has instance and class methods for things like take_inventory, paint_cars, submit_payroll, hours_clocked, etc...
    # We are taking the concept of our auto factory and mapping the entire environment and all it's individual parts needed to make up the program


    # https://www.poodr.com/