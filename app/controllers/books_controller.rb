class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @author = Author.where(name = book_params[:authors]) || Author.create(name: book_params[:authors])
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "book added"
      redirect_to books_path
    else
      flash[:alert] = "error while saving book"
      redirect_to new_book_path
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :authors, :publisher, :date, :language_id, :amazon, :goodreads, :img, :description)
  end
end
