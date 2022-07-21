# In Ruby, a class can inherit the behaviors of another class, referred to as the SUPERCLASS
# We have two very similar classes below, Cat and Dog that have very similar functionality
# Well they are both animals, so why not an animal class?

require 'pry'


class Animal
    
    attr_accessor :name, :age
    
    @@all_animals = []
    
    
    def initialize(name, age)
        @name = name 
        @age = age
        @@all_animals << self.name
    end
    
    # A Class Variable to store all of our instances!
    def self.all_animals 
        pp @@all_animals
    end
    
    # Here we have created a class method to pass on!
    def self.what_class_am_I?
        puts self
    end
end

# We have our Animal class, so we can init different animals with a :name and :age
# And each individual class can have it's own methods to work with
# We do this by using the < (less_than) symbol. Essentially extends in JS.

# Cat class extends Animal class
class Cat < Animal
    def speak
        puts "mowwww"
    end
end

# Dog class extends Animal class
class Dog < Animal
    def speak
        puts "wooof"
    end
end

# Because we have a Cat and Dog class now that extends our Animal class we can init instances of each class with their separate functionality

catto = Cat.new("Catto", 3)
catto.speak # mowwww
pp [catto.name, catto.age] # ["Catto", 3]

doggo = Dog.new("Doggo", 5)
doggo.speak # wooof
pp [doggo.name, doggo.age] # ["Doggo", 5]

# You can see above that catto and doggo have their name and age assigned to them based on the init in our Animal class!
# They can also use their individual functionality to speak either mowwww or woooof


Animal.what_class_am_I? # Animal
Cat.what_class_am_I? # Cat
Dog.what_class_am_I? # Dog

Animal.all_animals # ["Catto", "Doggo"]
# We created a class variable to hold all of our instances of our classes and their assigned names!

# A final example with a Bird class

class Bird < Animal
    def speak
        puts "squawkk"
    end
end

birdo = Bird.new("Birdo", 26)
birdo.speak # squawkk
pp [birdo.name, birdo.age] # ["Birdo", 26]

Animal.all_animals # ["Catto", "Doggo", "Birdo"]