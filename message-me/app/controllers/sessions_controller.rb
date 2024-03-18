class SessionsController < ApplicationController
 before_action :check_user,only: [:destroy]
 before_action :custom,only:[:login,:create]
  def login 
  end
  def create 
    @user = User.find_by(username:params[:user][:username])
    if @user.authenticate(params[:user][:password]) 
      session[:id] = @user.id 
      flash[:notice] = 'User logined successfully'
      redirect_to '/'
    else 
      flash.now[:error] = 'Unknown user'
      render :login ,status: :unprocessable_entity 
    end
  end
  def destroy
    session[:id] = nil if session[:id]
    redirect_to '/login'
  end
  private 
  def custom
    if logined_user 
      redirect_to '/' 
    end
  end
end
