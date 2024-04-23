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
  def bulkdata
  end
  def import
    if params[:file].present?
      if params[:file].content_type == "text/csv"
        file = File.open(params[:file])
        csv = CSV.parse(file,headers: true,col_sep:",")
        csv.each do |row|
          Blog.create(title:row[0],description:row[1],user:current_user)
        end
        redirect_to root_path
      else 
        flash[:alert] = "only '.csv' type is valid"
        redirect_to root_path
      end
    else 
      flash[:alert] = "Choosing a file is required"
      redirect_to root_path
    end
  end
end