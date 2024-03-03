class ArticlesController < ApplicationController
  def index 
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title,:description)) 
      redirect_to articles_path 
    else 
      render "edit"
    end
  end
end
