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
  def export_csv
    respond_to do |format|
      format.csv { send_data Blog.generate_csv,filename: "(#{Time.now})BlogsCsvData.csv",type: 'text/csv'}
    end
  end
  def import
    if params[:file].present?
      if params[:file].content_type == "text/csv"
        @duplicate_val=0
        file = params[:file].read
        csv = CSV.parse(file,headers: true)
        expected_values = ['title','description']
        csv_headers = csv.headers.map(&:strip)
        if expected_values != csv_headers
          flash[:alert] = "The file does not have header values so it is not valid"
          return redirect_to root_path
        end
        csv.each do |row|
          puts row["title"]
          @current_obj = Blog.find_by(title:row["title"])
          if @current_obj.nil?
            Blog.create(title:row["title"],description:row['description'],user:current_user)
          else
            @duplicate_val+=1
          end
        end
        if @duplicate_val>0
          flash[:alert] = "Found #{@duplicate_val} duplicate records but not saved in database"
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