class BlogsController < ApplicationController 
  def index
    @blogs = current_user.blogs.paginate(page: params[:page], per_page: 6)
  end
  def search
    @searched_blogs =current_user.blogs.where("title like ?","%#{params[:search]}%").paginate(page: params[:page], per_page: 6) if params[:search].present? 
  end
  def new
    @blog = Blog.new 
  end
  def create
    @blog = Blog.new(params.require(:blog).permit(:title,:description,:image))
    @blog.user = current_user
    if @blog.save 
      flash[:notice] = 'Blog has been saved successfully'
      redirect_to @blog
    else 
      flash.now[:alert] = 'Blog is not saved'
      render :new,status: :unprocessable_entity
    end
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.user = current_user
    if @blog.update(params.require(:blog).permit(:title,:description,:image))
      flash[:notice] = 'Blog has been updated successfully'
      redirect_to @blog
    else
      flash.now[:alert] = 'Blog is not updated, fields missing'
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