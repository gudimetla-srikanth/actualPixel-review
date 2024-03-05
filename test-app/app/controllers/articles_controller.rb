class ArticlesController < ApplicationController
  def view 
  end
  def new 
  end
  def mine
    puts "This executed"
    redirect_to "/view"
  end
end
