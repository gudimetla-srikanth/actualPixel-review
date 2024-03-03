class ArticlesController < ApplicationController
  def new 
    @article = Aticle.new
  end
  def view 
  end
  def create 
    @article = Aticle.new(params.require(:aticle).permit(:title,:description,:user_id))
    
    if @article.save 
      redirect_to "/" 
    else
      flash[:notice] = @article.errors.full_messages
      render "new"
    end
  end
end
