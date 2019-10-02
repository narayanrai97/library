class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception

  def new
  end

  def create
    book = Book.new   # an instance of Book
    # data = params.permit(:title, :description, :year, :isbn, :location, :author, :genre)
    # book.attributes = data
    book.title = params['title']
    book.description = params['description']
    book.year = params['year']
    book.isbn = params['isbn']
    book.author = params['author']
    book.genre = params['genre']
    book.location = params['location']
    book.image = params['image']
    book.picture = params['picture']
    book.save
    redirect_to '/'
  end

  def search_form
    @books = Book.all
  end

  def search
    title = params[:title]
    @books = Book.where("title like ?", "%#{title}%")
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    @book.title = params['title']
    @book.description = params['description']
    @book.year = params['year']
    @book.isbn = params['isbn']
    @book.author = params['author']
    @book.genre = params['genre']
    @book.location = params['location']
    @book.image = params['image']
    @book.picture = params['picture']

    @book.save

    redirect_to '/'
  end

end
