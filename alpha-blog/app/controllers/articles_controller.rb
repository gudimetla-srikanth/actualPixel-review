class ArticlesController < ApplicationController
  before_action :find_article,only: [:show,:edit,:update,:destroy]
  def index 
    @article = Article.all
  end

  def show
  end

  def new
    @article = Article.new 
  end

  def edit
  end

  def update
    if @article.update(params.require(:article).permit(:title,:description)) 
      redirect_to articles_path 
    else 
      render "edit"
    end
  end

  def destroy 
    @article.destroy 
    redirect_to articles_path 
  end

  def create 
    @article = Article.new(params.require(:article).permit(:title,:description))
    if @article.save 
      redirect_to articles_path 
    else
      render "new" 
    end
  end 

  private 
   def find_article 
    @article = Article.find(params[:id])
   end
end
