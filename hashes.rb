# Hashes are Ruby's equivalent of a plain old JavaScript OBJECT. Composed of key/value pairs, Each key pointing to a specific value.
# https://ruby-doc.org/core-2.7.3/Hash.html

# There are a few ways of creating Hashes: see `common_data_types.rb`

my_hash = {key1: "value1", key2: "value2"}

# You can access data from the above has by using bracket notation and pass in the symbol for the key you are trying to access
puts my_hash[:key2] #value2

# Attemting to access a key that doesn't exist will return nil
puts my_hash[:key3] # nil

# you can use bracket notation to assign a new value to a key
my_hash[:key1] = 42

pp my_hash # {:key1=>42, :key2=>"value2"}

# you can also use it to assign a new key/value pair
my_hash[:key3] = true
pp my_hash # {:key1=>42, :key2=>"value2", :key3=>true}

# You can NOT use dot notation to access keys on hashes - ONLY bracket notation will work

# puts my_hash.key2 
# undefined method `key2' for {:key1=>42, :key2=>"value2", :key3=>true}:Hash (NoMethodError)

# In Ruby, dot notation is only used for calling methods on objects

# You can also create hashes as strings for keys. This is known as the HASH ROCKET syntax
string_hash = {"i'm a key" => "i'm a value", "keytwo" => "valuetwo"}
pp string_hash # {"i'm a key"=>"i'm a value", "keytwo"=>"valuetwo"

# In Ruby you can also create nested hashes, which is useful when representing complex data structures

user = {
  name: "Duane",
  address: {
    street: "123 Fake Street",
    city: "Queens",
    state: {
       location: "NY",
       being: {
        positive: "well",
        negative: "ions"
}
    }
  }
}

puts user[:address][:city] # Queens
puts user[:address][:state][:location] # NY
puts user[:address][:state][:being][:negative] # ions


# Common Hash Methods

# Ruby has a few common methods for working with hashes. 

# You can delete values from a hash with the #delete method

pizza_toppings = {
    flour: {
        gluten: ["white", "wheat"],
        non_gluten: ["corn", "chickpea"]
        }, 
        cheese: true, 
        topping1: "mushroom", 
        topping2: "sausage"
    }

pp pizza_toppings

puts pizza_toppings[:flour][:non_gluten][1] # chickpea

puts pizza_toppings.delete(:topping2)
puts pizza_toppings

puts pizza_toppings.keys
puts pizza_toppings[:flour].keys

puts pizza_toppings.values
puts pizza_toppings[:flour].values

#empty? is a method use to check if there are no key/value pairs defined on the hash

puts pizza_toppings.empty? # false
t_f = {}.empty? 
puts t_f # true

#merge is a method that, MERGES together multiple hashes

more_toppings = {topping2: "peppers", topping3: "onions"}
merged = pizza_toppings.merge(more_toppings)
puts merged



