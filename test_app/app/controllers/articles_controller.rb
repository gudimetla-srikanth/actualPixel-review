class ArticlesController < ApplicationController

  before_action :auth,except: [:index]
  # /articles  articles
  def index
    @article = Article.all
  end 

  # /articles
  def create 
    byebug
    redirect_to articles_path
  end

  # /articles/new  new_article
  def new 
  end

  # /articles/:id/edit    edit_article
  def edit
    @article = Article.find(params[:id])
  end

  # /articles/:id  article
  def show 
    @article = Article.find(params[:id])
  end

  # /articles/:id
  def update
    @article = Article.find(params[:id])
    @article.update(params.require(:article).permit(:article_name)) 
    redirect_to @article
  end

  # /articles/:id
  def destroy 
    @article = Article.find(params[:id]) 
    @article.destroy 
    redirect_to articles_path
  end

end
