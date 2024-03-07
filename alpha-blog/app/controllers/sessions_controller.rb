class SessionsController < ApplicationController
  def login
  end
  def signup
  end
  def login_user
    @user = User.find_by(email:params[:user][:email])
    if @user
      if @user.password == params[:user][:password]
        session[:id] = @user.id
        flash[:notice] = "User logined"
        redirect_to users_path
      else
        flash.now[:notice] = "Some error occured while logging in"
        render :login,status: :unprocessable_entity 
      end
    else 
      flash[:notice] = "No user with this email id kindly register one for yourself"
      redirect_to signup_path
    end
  end
  def create 
    @user = User.new(param_controller)
    if @user.save 
      flash[:notice] = "User created successfully"
      session[:id] = @user.id
      redirect_to users_path 
    else
      flash.now[:notice] = "Some error occured while registering"
      render :login, status: :unprocessable_entity 
    end
  end
  def logout
    session[:id] = nil
    redirect_to articles_path
  end 
  private
  def param_controller 
    params.require(:user).permit(:username,:email,:password)
   end
end