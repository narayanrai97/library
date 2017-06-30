def add
    info= {};               # Using Hashe here
    print "Title: "
    info['title'] = gets.chomp
    print "Description: "
    info['description'] = gets.chomp
    print "Year: "
    info['year'] = gets.chomp
    print "ISBN: "
    info['isbn'] = gets.chomp
    print "Author: "
    info['author'] = gets.chomp
    print "Genre: "
    info['genre'] = gets.chomp
    print "Location: "
    info['location'] = gets.chomp

    book = Book.new(info)   # instance of class Book

    # book.title = title
    # book.description = description
    # book.year = year
    # book. isbn = isbn
    # book. author = author
    # book. genre = genre
    # book. location = location

    book.save
end


def search
    print "Please enter the book title: "
    title = gets.chomp
    puts ""
    books = Book.where("title LIKE ?", "%#{title}%")   # In Ruby, if the last thing that you're passing in method is a Hash,
                                                       # you don't have to write the braces{} for the Hash

    #puts book.inspect                                 # in general, the to_s method of the object is called by inspect method

    if books.length == 0
        puts "     Book not found!"
    else
        books.each do |book|
            puts "     Title:       #{book.title}"
            puts "     Description: #{book.description}"
            puts "     Year:        #{book.year}"
            puts "     ISBN:        #{book.isbn}"
            puts "     Author:      #{book.author}"
            puts "     Genre:       #{book.genre}"
            puts "     Location:    #{book.location}"
            puts ""
        end
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
