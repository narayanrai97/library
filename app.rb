def add
    print "Title: "
    title = gets.chomp
    print "Description: "
    description = gets.chomp
    print "Year: "
    year = gets.chomp
    print "ISBN: "
    isbn = gets.chomp
    print "Author: "
    author = gets.chomp
    print "Genre: "
    genre = gets.chomp
    print "Location: "
    location = gets.chomp

    book = Book.new   # instance of class Book
    book.title = title
    book.description = description
    book.year = year
    book. isbn = isbn
    book. author = author
    book. genre = genre
    book. location = location

    book.save
end


def search
    print "Please enter the book title: "
    title = gets.chomp
    puts ""
    book = Book.find_by({:title => title})
    #puts book.inspect                    # in general, the to_s method of the object is called by inspect method

    if book == nil
        puts "     Book not found!"
    else
        puts "     Title: #{book.title}"
        puts "     Description: #{book.description}"
        puts "     Year: #{book.year}"
        puts "     ISBN: #{book.isbn}"
        puts "     Author: #{book.author}"
        puts "     Genre: #{book.genre}"
        puts "     Location: #{book.location}"
    end
end

puts "Welcome To Library"

puts "1) Add a Book"
puts "2) Search Books"
puts ""
print ">   "

option = gets.chomp

if option == '1'
    #puts "Add book"
    add
elsif option == '2'
    #puts "Search book"
    search
else
    puts "Wrong entry. Please enter 1 or 2"
end
