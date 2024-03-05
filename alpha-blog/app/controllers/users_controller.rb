class UsersController < ApplicationController
  before_action :find_user,only: [:show,:edit,:update,:destroy]
  def index 
    @user = User.paginate(page: params[:page], per_page: 2)
  end

  def show
    @article = @user.articles.paginate(page: params[:page], per_page: 2)
  end

  def new
    @user = User.new 
  end

  def edit
  end

  def update
    if @user.update(param_controller) 
      flash[:notice] = "User updated successfully"
      redirect_to users_path 
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @user.destroy 
    redirect_to users_path 
  end

  def create 
    @user = User.new(param_controller)
    if @user.save 
      flash[:notice] = "User created successfully"
      redirect_to users_path 
    else
      render :new, status: :unprocessable_entity 
    end
  end 

  private 
   def find_user 
    @user = User.find(params[:id])
   end
   def param_controller 
    params.require(:user).permit(:username,:email,:password)
   end
end
