class UsersController < ApplicationController
  def signin 
  end 
  def login
    @user = User.find_by(username:params[:user][:username])

    if @user.password == params[:user][:password]
      session[:id] = @user.id
      redirect_to articles_path
    else 
      render :signin,status: :unprocessable_entity
    end
  end
end
