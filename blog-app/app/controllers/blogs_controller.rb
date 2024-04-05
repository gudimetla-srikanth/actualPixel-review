class BlogsController < ApplicationController 
  def index 
    @blogs = Blog.all
  end
  def new
    @blog = Blog.new 
  end
  def create 
    @blog = Blog.new(params.require(:blog).permit(:title,:description,:image))
    if @blog.save 
      redirect_to @blog
    else 
      flash[:notice] = 'Blog is not saved'
      render :new,status: :unprocessable_entity
    end
  end
  def update
    @blog = Blog.find(params[:id])
    if @blog.update(params.require(:blog).permit(:title,:description,:image))
      redirect_to @blog
    else
      flash[:notice] = 'Blog is not updated'
      render :edit,status: :unprocessable_entity
    end
  end
  def edit
    @blog = Blog.find(params[:id]) 
  end
  def show
    @blog = Blog.find(params[:id]) 
  end
  def destroy
    @blog = Blog.find(params[:id])
    if @blog.destroy
    redirect_to blogs_path
    else 
      flash[:notice] = 'Blog is not deleted'
      redirect_to @blog
    end
  end
end