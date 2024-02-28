class ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:edit,:update,:destroy]
  def index
    @article = Article.all
  end
  def show 
  end
  def new
  end
  def edit 
  end
  def update 
    if @article.update(param_caller)
      flash[:notice] = "Article was updated successfully!"
      redirect_to @article
    else
      flash[:notice] = "Articles was declined by database for updation"
      render 'edit'
    end
  end
  def create
    @article = Article.new(param_caller)
    if @article.save
      flash[:notice] = "Article was created successfully!"
      redirect_to @article
    else
      flash[:notice] = "Articles was declined by database for creation"
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
