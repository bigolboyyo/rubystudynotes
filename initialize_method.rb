require 'pry'

# Creating our Dog class
class Dog
    # Getter and Setter shortcut for :name
attr_accessor(:name)

# Initializing our name with a default name
def initialize(name = "default dog")
    # @ for our instance variable to escape local scope
    # We are setting our name to a method we create below get_name
    @name = get_name
end

def get_name
    # Prompt the user to enter the Dog name
    puts "Enter dog name"
    # gets.chomp will take the user input and pass it up to our init
gets.chomp 
end


end

# fido = Dog.new
# spot = Dog.new

# binding.pry

# pp [fido, spot]

#TODO: Let's try another example

class Recipe
    # initialize is our method
    def initialize(name)
        # here we our setting our variable to the passed in method parameter
        @name = name
    end

    # here we our getting our name method
    def name
        @name
    end

end

# So down here we can create a new instance of our Recipe class

grild_chkn = Recipe.new("Grilled Chicken")

puts grild_chkn # #<Recipe:0x00005567bfa08120>
puts grild_chkn.name # Grilled Chicken


#FIXME: Look back at our first example where we used the attr_accessor and let's refactor our Recipe class


class RecipeBook
    # attr_reader lets us pass the :name symbol to be read by our methods
    # These are MACROs
attr_reader :name
attr_writer :name

# So now when we init we don't need our second name method

def initialize(name, spicy, cost)
    @name = name
    # we can add additional params such as spicy and cost
    @spicy = spicy
    @cost = cost
end

# def name=(new_name)
#     @name = new_name
#   end
end

# lasagna = RecipeBook.new("Lasagna") # initialize_method.rb:65:in `initialize': wrong number of arguments (given 1, expected 3) (ArgumentError)
# puts lasagna.name # Lasagna

# NOTICE we have given the wrong number of arguments because our .new method is expecting 2 more params

lasagna = RecipeBook.new("Lasagna", "Mild", "$$$")
pp lasagna # #<RecipeBook:0x000055eed8174810 @cost="$$$", @name="Lasagna", @spicy="Mild">


#FIXME: Let's hop into our binding.pry and try to rename our lasagna
# binding.pry

# [1] pry(main)> lasagna.name = "Anything but"
# NoMethodError: undefined method `name=' for #<RecipeBook:0x00005590cc8a0798>
# Did you mean?  name
# from (pry):1:in `<main>'

# notice we get an undefined method 'name='

# REFERENCE LINES 73 - 75 where we have added our setter method name=
# This allows us to "SET" a new name

# so now if we hop in our pry again and set a new name to lasagna we will see the following 

# [1] pry(main)> lasagna.name = "Anything but"
# => "Anything but"
# [2] pry(main)> 

# Of course we have a MACRO just like attr_reader
# This new setter macro is attr_writer

# We have now commented out our def name=(new_name) but let's hop in pry again and see if it works with our attr_writer

# [1] pry(main)> lasagna.name = "FETTUCINI ALFREDO"
# => "FETTUCINI ALFREDO"
# [2] pry(main)> 

#TODO: Very cool but what if we want to assign both reader/writer

# In that case we can reference our first Dog class with the attr_accessor

# attr_accessor gives us the ability to BOTH READ/WRITE or GET/SET


#FIXME: Let's tie it all together with one more class example using Coffee

class Coffee
    attr_reader :name
    # attr_writer :price
    attr_accessor :price

    def initialize(name, price = 2.50)
        @name = name
        @price = price
    end
end

customer1 = Coffee.new("Wes")
# [1] pry(main)> customer1
# => #<Coffee:0x00005577eee89c78 @name="Wes", @price=2.5>
# [2] pry(main)> 

# We can see that since we didn't pass in a price it reverted to the default price set


customer2 = Coffee.new("Emma", 6.66)
# [1] pry(main)> customer2
# => #<Coffee:0x0000555708a79b58 @name="Emma", @price=6.66>
# [2] pry(main)> 

# Here we can see the price of our expensive coffee (Emma likes custom drinks, Wes takes it black!)


# Notice that our name has the attr_reader macro which allows us to READ the name, but not alter it

# [2] pry(main)> customer1.name = "No name"
# NoMethodError: undefined method `name=' for #<Coffee:0x000055932e8d1b68 @name="Wes", @price=2.5>
# Did you mean?  name
# from (pry):2:in `<main>']


# Here we can check out our new price for Emma because :price has the attr_writer MACRO

# [3] pry(main)> customer2.price = 7.77
# => 7.77


# notice on line 127 we have marked out our attr_writer because we actually want to be able to both READ and WRITE | GET and SET our price
binding.pry