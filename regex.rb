# Patterns and regular expressions ("RegEx")

# Imagine working with and creating a set of rules to filter out invalid email addresses for a sign up form

# You would have lots of rules to keep track of!!

# Numbers, letters, dashes, underscores, uppercase, lowercase are ok
    #But % , ? , $ , ! , * are NOT ok
        # There must be an @ sign separating the local from domain
            # There must be at least one period in the domain part
                # BUT you can NOT have two periods in a row or even start with a period

# If we were dealing with a scenario like above we could make this easy by turning it into a RegEx

regex = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i

# https://en.wikipedia.org/wiki/Email_address#Domain_part


#TODO: A little RegEx history before getting into the nitty gritty: 

    # In the 50s & 60s is when we started to see the many forms and variations of RegEx

    # Specifically dating back to the first appearances in program form with Ken Thompson, took Stephen Cole Kleene's notation into the editor QED as a means to match patterns in text files

    # https://en.wikipedia.org/wiki/Stephen_Cole_Kleene
    # https://en.wikipedia.org/wiki/QED_(text_editor)


# RegEx is commonly used for data validation, searching, mass file renaming, and finding records in a database.
# TAKE NOTE: They should be used very carefully (Think of them like a surgeon's scalpel)
# Can be very good or very bad depending on how skillfully they are wielded

# In Ruby regular expressions are generally written between forward slashes ( /your regex/ ). 

# There is a "literal" alternative to creating a RegEx object using the following syntax : Regexp.new('your regex')

# Let's reference RUBULAR for our RegEx creations: https://rubular.com/

# Metacharacters are used with RegEx and allow you to use a "PRE DEFINED" shorthand to match specific characters.
# https://coderpad.io/blog/development/the-complete-guide-to-regular-expressions-regex/


# RANGES - much like with Ruby Range we can declare ranges with RegEx. i.e. instead of /[abcdefghij]/ we can do /[a-j]/

