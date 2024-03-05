class ArticlesController < ApplicationController
  before_action :find_article,only: [:show,:edit,:update,:destroy]
  def index 
    @article = Article.paginate(page: params[:page], per_page: 2)
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
      flash[:notice] = "Article updated successfully"
      redirect_to articles_path 
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @article.destroy 
    redirect_to articles_path 
  end

  def create 
    @article = Article.new(params.require(:article).permit(:title,:description))
    @article.user = User.last
    if @article.save 
      flash[:notice] = "Article created successfully"
      redirect_to articles_path 
    else
      render :new, status: :unprocessable_entity 
    end
  end 

  private 
   def find_article 
    @article = Article.find(params[:id])
   end
end
