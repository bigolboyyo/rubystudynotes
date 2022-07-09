require 'pry'

# Additional practice with Iterating Over Nested Hashes

# A basic example of hash iteration

jon_snow = {
  name: "Jon",
  email: "jon_snow@thewall.we"
}

key_values_jon = jon_snow.each {|key, value| "Key: #{key} | Value: #{value}"}
# puts key_values_jon


# But what happens when we have nested data?

contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
    knows: nil
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}

contact_info = contacts.each { |person, data| "#{person}: #{data}" }
# pp contact_info


# nested_contact_info = contacts.each do |person, data|

#     data.each do |attribute, value|
#          puts "#{attribute}: #{value}"
#     end
# end



def fav_ice_cream(contacts)
contacts.each do |person, data|

    data.each do |attribute, value|

        if attribute == :favorite_ice_cream_flavors
            value.each do |flavor|
                puts "#{flavor}"
          end
        end
     end
  end
end

# fav_ice_cream(contacts)

# Grab the emails!

def contact_emails(contacts)
emails = []

contacts.each do |person, data|
    data.each do |attr, val|
        if attr == :email
            emails << val
        end
    end
end
emails
end

# puts contact_emails(contacts)



# Delete data from a nested hash


def corpo_slaves_err_employees
    employees = {
    "emp1" => {
            name: "Benny B. Wright",
            email: "benny_b@thebee.be",
            hobbies: ["crying in the bathroom", "telling his gf, 'It's not you, I just don't feel it tonight", "Making his boss Derrick happy"]
        },
    "emp2" => {
            name: "Susan Susanoo",
            email: "sasuke4lyfe@sasukun.io",
            hobbies: ["Sasuke", "NOT SAKURA", "Making fun of that idiot orphan Naruto"]
        },
    "emp3" => {
            name: "Frank Heberts",
            email: "hebertsFrank@yahoo.com",
            hobbies: ["Mowing his lawn", "Watching his kids play sports", "Sports!"]
        }
    }
    employees
end


def delete_hobby(employees)

    employees.each do |person, details_hash|

        if person == "emp3"
            details_hash.each do |attr, data|
                if attr == :hobbies
                    # binding.pry

                    #delete_if 
                    # so instead of directly accessing the elements and overwriting them with bracket notation
                    # we can use delete_if which we can delete if a certain criteria is met

                    data.delete_if { |hobby| hobby == "Sports!" } 
                end
                
                # pry(main)> details_hash[:hobbies][0] => "Mowing his lawn"
                # pry(main)> details_hash[:hobbies][0] = "Pestering his wife"
                # pry(main)> details_hash => {:name=>"Frank Heberts", :email=>"hebertsFrank@yahoo.com", :hobbies=>["Pestering his wife", "Watching his kids play sports", "Sports!"]}
                
                # notice in our pry example we at this point are grabbing the #details_hash and the key hobbies by using it's SYMBOL :hobbies
                # finally with bracket notation accessing the [0] element of the array and assigning it to a new string
                
                # pry(main)> data << "Test" => ["Mowing his lawn", "Watching his kids play sports", "Sports!", "Test"]
                # pry(main)> data.unshift("Pre Test") => ["Pre Test", "Mowing his lawn", "Watching his kids play sports", "Sports!", "Test"]
                
                # inside of our if attr == :hobbies the above are some examples of adding to an arrays end/front respectively
            end
            puts details_hash # {:name=>"Frank Heberts", :email=>"hebertsFrank@yahoo.com", :hobbies=>["Mowing his lawn", "Watching his kids play sports"]}
        end
    end
end

delete_hobby(corpo_slaves_err_employees)

