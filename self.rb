# In Ruby each object has a class and the keyword ( self ) is a special variable that points to the object that "owns" the currently executing code.

# Ruby is asking, "who am I right now?" and is very similar to the ( this ) keyword in JavaScript

require 'pry'

class Coffee
    attr_reader :name
    attr_accessor :price, :ingredients

    def initialize(name, price = 2.50)
        @name = name
        @price = price
        @ingredients = []
    end

    def add_ingredient(ingredient)
        self.price += 0.50
        self.ingredients << ingredient
        #  binding.pry
    end

end

c1 = Coffee.new("Wes", 3.00)
c2 = Coffee.new("Emma")

# This method call is to enter our binding.pry in our add_ingredient method
c2.add_ingredient("extra shot")

# [1] pry(#<Coffee>)> self
# => #<Coffee:0x000056439143b5e0 @ingredients=["extra shot"], @name="Emma", @price=3.0>

# [2] pry(#<Coffee>)> self.add_ingredient("milk")

# pry(#<Coffee>)> self
# => #<Coffee:0x000056439143b5e0 @ingredients=["extra shot", "milk"], @name="Emma", @price=3.5>

# [2] pry(#<Coffee>)> self.ingredients
# => ["extra shot", "milk"]


# REMEMBER: An object is a bundle of code that contains both data and behaviors

class Dog

    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  
    def bark
      puts "Woof!"
    end
  
  end

# So for example in our above Dog class we could create a new instance as follows:
fido = Dog.new("Fido")
# We have the name parameter marked down with a macro

# We could access fido's name as follows
fido.name
# We are able to do this once again because of our macro attr_accessor which references the instance variable as the passed in parameter for init

# Our Dog class, or specifically our instance of a Dog, fido has access to certain behaviors like bark
fido.bark # Woof!

# So our individual Dog, or instance, Fido that we created has a number of methods we can call on it that will reveal its attributes, such as his name or his ability to enact certain behaviors such as bark

# EVERY OBJECT IS AWARE OF ITSELF and we can define methods in which we tell objects to operate on themselves. 

# This is the afformentioned ( self ) keyword

# Let's further show our self keyword with a Cat class

class Cat
    attr_accessor :name, :owner, :cat

    def initialize name
        @name = name
    end

    def meow
        puts "Meow!"
    end

    def show_catself
    puts self
    end

    def adopted(cat, owner_name)
        # you will pass in the class instance of our kitty and the declare an owner
        cat.owner = owner_name
    end
end

# notice our show_catself method we have defined that will puts self

kitty = Cat.new("Kitty")

# Just like with our dog class we have a new instance that is an object that was created by our class blueprint

kitty.meow # Meow!

kitty.show_catself # #<Cat:0x0000560c27416cc8>
# We are puts'ing the object reference! Showing the object's self awareness
# The self keyword refers to the instance, or object, that the #show_catself method is being called on.

#TODO: Operating on self in an Instance Method

# look up at our Cat class and we will be adding the :owner attr_accessor
# and although it is not initialized with an owner, we can declare one

kitty.owner = "Dr. Evil"
puts kitty.owner # Dr. Evil

kitty.adopted(kitty, "Austin Powers")
pp kitty # #<Cat:0x000055e2501be698 @name="Kitty", @owner="Austin Powers">

# What if we wanted to represent this with a method? Let's create an adopted method

# REMEMBER: In Ruby, when we use self keyword in an instance method, self refers to whatever instance that method was called on. It's like a special variable that changes meaning depending on the context.

# Here's a JavaScript reference showing the similar ( this ) keyword
=begin 

class Dog {
  showingThis() {
    console.log(this);
  }
}

const fido = new Dog();
fido.showingThis();
// => Dog {}

=end