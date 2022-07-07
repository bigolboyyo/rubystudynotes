# A basic whle loop in Ruby

def basic_while
    i = 1
    while i < 6
        puts "Looping #{i}"
        i += 1
    end
    end

    basic_while

    # A basic until loop in Ruby

    def until_loop
        counter = 1
        until counter == 11
            puts "Counting #{counter}"
            counter += 1
        end
    end
    
    until_loop

    # Looping with .times

    def times_loop
        10.times do |i|
            puts "Looping"
            puts "i is: #{i}"
        end

# you can use curlies to define blocks: 10.times { |i| puts "i is: #{i}" }

    end
    
    times_loop

    #times is a method in the integer class: https://ruby-doc.org/core-2.7.3/Integer.html#method-i-times


# Looping with .each
# This can be used with arrays and objects, but a common use case is to use it for a Range: https://www.rubyguides.com/2016/06/ruby-ranges-how-do-they-work/

def fizzbuzz(num)
    if num % 3 == 0 && num % 5 == 0
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end
  
  # Ruby creates these sequences using the ''..'' and ''...'' range operators. 
  # The two-dot form creates an inclusive range, 
  # while the three-dot form creates a range that excludes the specified high value.
  
  def fizzbuzz_printer
    # This is our range (1..100)
    (1..100).each do |num|
      puts fizzbuzz(num)
    end
  end

