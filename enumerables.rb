# Enumerables are built in Ruby methods that allow us to search, sort, and traverse through arrays

books = [
    {
        name: "book one",
        publisher: "publisher one",
        author: "author one",
        date: "data one",
        price: 1
    },
    {
        name: "book two",
        publisher: "publisher two",
        author: "author two",
        date: "data two",
        price: 2
    },
    {
        name: "book three",
        publisher: "publisher three",
        author: "author three",
        date: "data three",
        price: 3
    },
    {
        name: "book four",
        publisher: "publisher four",
        author: "author four",
        date: "data four",
        price: 4
    },
    {
        name: "book five",
        publisher: "publisher five",
        author: "author five",
        date: "data five",
        price: 5
    }
]

#each
#loops through array
def each_book books
    books.each do |b|
        puts b
    end
end

# each_book(books)


#collect
#returns an array
def collect_books books
    authors = books.collect do |b|
        b[:author]
    end
    pp authors
end

# collect_books(books)


#select
#filters out elements based on a
def cheap_books books
    cheap = books.select do |b|
        b[:price] <= 3
    end
    pp cheap
end

# cheap_books(books)


#find
#finds first element matching condition
def find_book books
    author = books.find do |b|
        b[:author] == "author four"
    end
    pp author
end

# find_book(books)


#sum
#sums total
def sum_total books
    total = books.sum do |b|
        b[:price]
    end
    pp total
end

# sum_total(books)


#max
#finds highest value
def max_value books
    exspensivist = books.max do |b|
        b[:price]
    end
    pp exspensivist
end

# max_value(books)

#min
#finds lowest value
def min_value books
    cheapestist = books.min do |b|
        b[:price]
    end
    pp cheapestist
end

# min_value(books)



