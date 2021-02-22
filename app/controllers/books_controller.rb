class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  end

  def index
    @books = Book.all
  end

  def show
  end

  def destroy
  end
end
