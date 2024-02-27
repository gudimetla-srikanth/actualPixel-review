class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end
  def show 
    @article = Article.find(params[:id])
  end
  def new
  end
  def edit 
    @article = Article.find(params[:id])
  end
  def update 
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      redirect_to @article
    else
      render 'edit'
    end
  end
  def create
    @article = Article.new(params.require(:article).permit(:title,:description))
    @article.save 
    redirect_to @article
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to "/articles"
  end
end
