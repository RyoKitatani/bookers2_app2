class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    flash[:notice] = "You have created book successfully."
    redirect_to book_path(@book.id)
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = current_user
    @book = Book.new
    @books = Book.find(params[:id])
  end
  
  def edit 
    @book = Book.find(params[:id])
    if @book.user != current_user
      redirect_to books_path
    end
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = "You have updated book successfully."
    redirect_to book_path
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end 
end
