class ArticleController < ApplicationController
  def index
    
  end
  def show
    @articles = Articles.find(params[:id])
  end
end
