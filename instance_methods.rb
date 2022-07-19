require 'pry'

class Dog
attr_accessor(:name)

def initialize(name = "default dog")
    @name = get_name
end

def get_name
    puts "Enter dog name"
gets.chomp 
end


end

fido = Dog.new
spot = Dog.new

binding.pry

pp [fido, spot]

