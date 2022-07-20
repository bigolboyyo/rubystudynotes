# Class variables are used to store values related to a class in general rather than a particular instance. 
# Class methods are similarly used for implementing behavior that is related to a class in general rather than an instance.

# INSTEAD OF A SINGLE @ symbol for CLASS VARIABLES WE USE TWO @@ symbols
# With these you can NO LONGER use macros to get/set

require 'pry'

# class Album

#     # Our setter method
#   def release_date=(date)
#     @release_date = date
#   end

#   # Our getter method
#   def release_date 
#     @release_date
#   end

# end

# The above setter/getter methods will allow us to do the following

# album = Album.new
# album.release_date = 1991
# puts album.release_date # 1991

# We set our release date equal to our passed in date and say, hey @release_date is an instance variable
# We then declare our getter method saying, hey return @release date now so it has a hoisted scope in the class

# Something to remember though. The ALBUM CLASS ITSELF is also an OBJECT, and it can have it's very own variables and methods


#TODO: Why Use CLASS variables and methods?

# Well imagine you wanted to keep track of all of your albums in your entire music collection.
# The responsibility of our Album class currently is to produce individual albums and set a release_date.
# If we wanted to keep a running count of all of our individual albums, that certainly would not be the job of the individual albums themselves

#FIXME: NOTES BEFORE CONTINUING: 

# An INSTANCE VARIABLE is responsible for holding info regarding an INSTANCE. It is a variable that is available in scope for all instance methods in the class

# A CLASS VARIABLE is accessible to the entire class, it has CLASS SCOPE. A class method that is called on the class itself, NOT on the instances of that class
#  Typically Class Variables are use to store info regarding the class as a whole and class methods enact behaviors that belong to the whole class, not just individual instances

#TODO: Let's re write our album class with a class variable

class Album

    #See line 96: Class Constants
    GENRES = ["Hip-Hop", "Pop", "Jazz"]


    # NOTICE THE TWO AT @@ SYMBOLS THAT DENOTE A CLASS VARIABLE

    @@album_count = 0

    def initialize(genre)
        # So on init if our Constant GENRES includes the passed in genre, then init and @@album_count += 1
        if GENRES.include?(genre)
            
            # On init of a new instance, add 1 to our count!
        @@album_count += 1
        end
    end

    # We use self to reference the class in front of our method
    # so essentially, self(Album class) implicity returns @@album_count
    def self.count
        @@album_count
    end
  
    def release_date=(date)
      @release_date = date
    end
  
    def release_date
      @release_date
    end
  end

  # Notice now we can call the class Album with it's self.count method count
  puts Album.count # 0


  # Now we will init 3 new Albums and check the count again
  Album.new("Hip-Hop")
  Album.new("Pop")
  Album.new("Jazz")
  puts Album.count # 3



#TODO: Class Constants

# Class Variables and Class Constants have a lot in common:
  # - They are defined in the body of the class
  # - Can be accessed from within a class method
  # - Can be accessed from within an instance method

# We define Class Constants though with ALL CAPITAL LETTERS

class User
    ROLES = ["Admin", "Moderator", "Contributor", "Guest"]
end

# The key takeaway for when using Class Constants though is as follows:
    # CLASS CONSTANTS ARE USED TO STORE DATA THAT DOES NOT CHANGE (is constant)

# for example let's add a list of genres up into our Album class

# As far as scope goes, Class Constants can ALSO be accessed from outside of the class using this syntax
pp Album::GENRES

# A NOTE TO REMEMBER: Unlike in JavaScript, declaring a constant variable in Ruby doesn't actually prevent the variable from being reassigned (though it will give a warning message)