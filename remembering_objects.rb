# Our applications will need ways to store or remember a colletion of instances: ie. all the Users of a game, or their passwords. Or even the list of games available to a game pass subscription

class Song

    # This is our class variable, set to an empty array, we will use to store all of our class Song instances
    @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    # How about on init we go ahead and shovel the instance ( self ) into the array??
    # So when .new is called we'll go ahead and start storing our instances!!
    @@all << self
  end

  # We are creating a CLASS METHOD that returns our CLASS VARIABLE @@all
  def self.all
    @@all
  end

    # We can easily work off of our CLASS VARIABLE with a class method, such as iterating through and printing the song.name for each element of the array!
  def self.print_all_song_names
    @@all.each { |song| puts song.name }
  end

end

# We know we can create new songs with our simple Song class above as follows
trident_tail = Song.new("Trident Tail")
### pp trident_tail # #<Song:0x0000564d64d21628 @name="Trident Tail">

jelly_the_queen = Song.new("Jelly The Queen")
### pp jelly_the_queen # #<Song:0x0000564d64fb9818 @name="Jelly The Queen">

# But what if our user wants to browse songs and select one to play? 
# We currently have no way of keeping track of that in our Song class and display them to the user!

# Remember the concept of responsibility and the idea of "separation of concerns". 
# It probably isn't the individual songs responsibility to keep track of every other instance of a song

# We can create a class variable, commonly seen as @@all that we can use to store every instance of the Song class that is instantiated

## REMEMBER: IT TAKES TWO AT @@ symbols to declare a CLASS VARIABLE

# Notice in our initialize, init itself is technically an instance method. 
# And inside an instance method we are in our METHOD SCOPE and self refers to whichever instance the method is being called on

=begin

# But we can't access Song.all? What the flip?
pp Song.all # undefined method `all' for Song:Class (NoMethodError)

This is before we added our def self.all CLASS METHOD

=end

# WE NEED A CLASS METHOD TO ACCESS THE CONTENT OF THE ( @@all ) ARRAY!

### pp Song.all # [#<Song:0x0000562b901a8328 @name="Trident Tail">, #<Song:0x0000562b903b0f08 @name="Jelly The Queen">]

# REMEMBER: The reason we use self.all as a CLASS METHOD is because class Song is an object itself

# SYNTAX:  def self.method_name 

Song.print_all_song_names
# Trident Tail
# Jelly The Queen

