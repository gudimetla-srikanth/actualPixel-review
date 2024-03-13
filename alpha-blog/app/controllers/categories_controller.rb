class CategoriesController < ApplicationController
  before_action :require_admin,except: [:index]
  def new 
    @category = Category.new
  end
  def index 
    @category = Category.paginate(page: params[:page], per_page: 2)
  end
  def create 
    @category = Category.new(params.require(:category).permit(:name))
    if @category.save 
      flash[:notice] = "Category is created successfully"
      redirect_to categories_path
    else 
      render :new, status: :unprocessable_entity
    end
  end
  def show 
    @category = Category.find(params[:id])
  end
  def edit
    @category = Category.find(params[:id])
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
  def update 
    @category = Category.find(params[:id])
    if @category.update(params.require(:category).permit(:name)) 
      flash[:notice] = "Category updated successfully"
      redirect_to categories_path 
    else 
      render :edit, status: :unprocessable_entity
    end
  end
  private 
  def require_admin
    if !(login && current_user.admin) 
      flash[:alert] = "You do not have access" 
      redirect_to categories_path
    end
  end
end
