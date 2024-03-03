class UsersController < ApplicationController
  def new 
  end
  def create
    @user = User.new(params.require(:user).permit(:username,:email))
    if @user.save 
      redirect_to articles_path
    else 
      render "new" 
    end
  end
end
