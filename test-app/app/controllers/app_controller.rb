class AppController < ApplicationController 
  def index
  end
  def new
    @book = Book.new
    puts "new book is : #{@book}"
  end
  def create
    @book = Book.new
    if @book.save 
      redirect_to  app_index_path
    else
      puts "The errors are : #{@book}"
      render :new, status: :unprocessable_entity
    end
  end
end
