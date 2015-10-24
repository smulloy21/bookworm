class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "book added"
      redirect_to books_path
    else
      flash[:alert] = "error while saving book"
      redirect_to new_book_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
