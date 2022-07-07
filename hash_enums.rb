# Hashes have enumerable methods, something that JavaScript does not have

require 'pry'

book = {
    name: "book one",
    publisher: "publisher one",
    author: "author one",
    date: "date one",
    price: 1
    }

#each
def each book
    book.each do |b|
        p b
    end
end

each(book)


#each_key
def each_key book
    book.each_key do |b|
        p b
    end
end

each_key(book)


#each_value
def each_value book
    book.each_value do |b|
        p b
    end
end

each_value(book)


#select
def select_author book
    p book.select{|k,v| v=="author one"}
end

select_author(book)


#index
def index_of book
    p book.index("book one")
end

index_of(book)

