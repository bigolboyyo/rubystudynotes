require 'pry'

class Coffee
    attr_reader :name
    attr_accessor :price, :ingredients

    @@all = []

    def initialize(name, price = 6.66)
        @name = name
        @price = price
        @ingredients = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_ingredient(ingredient)
        self.ingredients << ingredient
    end

    def total
        # binding.pry
        # notice though we are in the class so we can add our tax to our sum

        # pry(#<Coffee>)> self.add_tax
        # => 6.8598
        sum = (self.ingredients.length * 0.50) + self.add_tax
    end


    # by declaring ( private ) within our class everything that follows will become so
    # this means we ONLY have access to it from within our class

    #for example if we try to call upon our add_tax method outside of our class we'll get an error

    private

    def add_tax
        self.price += self.price *  0.03
    end

end

# binding.pry


# Deeper Dive

class Bartender
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        pp @@all
    end

    def intro
        puts "Hello, my name is #{self.name}!"
    end

    # make_drink will be our public method that calls upon our private methods

    def make_drink
        @cocktail_ingredients = []
        choose_liquor
        choose_mixer
        choose_garnish
        puts "Here is your drink. It contains #{@cocktail_ingredients}."
    end

    # Declaring our private methods
    private

    def choose_liquor
        # we could obviously have a menu item that gets pushed based on user input, but for now whiskey
        @cocktail_ingredients << ["gin", "green chartreusse"]
    end

    def choose_mixer
        @cocktail_ingredients << "sour mix"
    end

    def choose_garnish
        @cocktail_ingredients << "luxardo cherry"
    end

end

wes = Bartender.new("Wes")
wes.intro # Hello, my name is Wes!

# Remember that intro is an instance method, we are calling it on an INSTANCE of our Bartender class
# Whereas a class method we would be calling on the Bartender class itself

emma = Bartender.new("Emma")
emma.intro # Hello, my name is Emma!

# Our class method here being self.all which when called on the class itself will return an array of our bartenders
# Also remember we had to create the self.all method as a setter because MACROS will NOT work with class variables/methods

Bartender.all # [#<Bartender:0x000055f563427f58 @name="Wes">, #<Bartender:0x000055f563427e18 @name="Emma">]

# All of these methods/variables so far, instance/class have been PUBLIC
# Meaning we can call them from outside the scope of the class declaration, like on the instance of the class or the class itself

# PUBLIC METHODS are called by an EXPLICIT RECEIVER, ie: the instance of wes explicity receives the method intro


#TODO: PRIVATE METHODS

# Private methods CAN NOTbe called by an explicit receiver. Meaning we can only call private methods within the context of the defining class
# Further meaning: THE RECEIVER OF A PRIVATE METHOD IS ALWAYS ( self )

# Why use private methods???
# We use them as a way to encapsulate functionality within a class.

# For ex: We have a bartender who can offer the customer a menu and the customer can pick from a list of drinks or ingredients.
# But the customer can't instruct the bartender on each step, like the functionality of cleaning the glass, grabbing the ice, and how much liquor is needed for a provided recipe

# PRIVATE METHODS also signal to other devs that this method is DEPENDED on by other methods in your program. "Hey if you remove this this method, you'll probably break everything, so don't do it."


# The initialize method is actually a private method by default. We don't invoke it directly, use use ClassName.new to create a new instance where the initialize method is called on that instance.

# Aside from our initialize method private methods are usually written with the word ( private ) above them


# if we tried to call #choose_liquor with an instance of a bartender we would get an error
# wes.choose_liquor 
# private method `choose_liquor' called for #<Bartender:0x000055e5efd7f2c8 @name="Wes"> (NoMethodError)

# Instead our class Bartender has access to our private methods, whereas our public method within the class (each instance has access to this public method make_drink) we'll see a drink get made
wes.make_drink
# Here is your drink. It contains [["gin", "green chartreusse"], "sour mix", "luxardo cherry"].
# https://en.wikipedia.org/wiki/Last_Word_(cocktail)

# Methods that are meant to be helper methods within your class, for example, are good candidates to be private methods.
