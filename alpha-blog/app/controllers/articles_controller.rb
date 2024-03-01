class ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:edit,:update,:destroy]
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
    if @article.update(param_caller)
      redirect_to @article
    else
      render 'edit'
    end
  end
  def create
    @article = Article.new(param_caller)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
  def destroy
    @article.destroy
    redirect_to "/articles"
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end
  def param_caller
    params.require(:article).permit(:title,:description)
  end
end
