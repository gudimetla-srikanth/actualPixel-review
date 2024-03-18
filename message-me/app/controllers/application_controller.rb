class ApplicationController < ActionController::Base
  helper_method :current_user,:logined_user
  def current_user
    user ||= User.find(session[:id]) if session[:id]
  end
  def logined_user 
    !!current_user
  end
  def check_user 
    if !logined_user 
      flash[:notice] = 'Login first' 
      redirect_to '/login' 
    end
  end
end
