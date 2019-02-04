class BooksController < ApplicationController
  def index
    if params[:sort]
      @books = Book.select_sort(params[:sort][:value])
    else
      @books = Book.all
    end
    @top_books = Book.top_books.limit(3)
    @worst_books = Book.worst_books.limit(3)
    @top_reviewers = User.top_reviewers.limit(3)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    author_names = params["book"]["authors"].split(",")
    authors = []
    author_names.each do |name|
      authors << Author.find_or_create_by(name: name.titleize.strip)
    end
    new_book_params = book_params
    new_book_params["authors"] = authors
    @book = Book.new(new_book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :year_pub, :pages, :image, :authors)
  end

end
