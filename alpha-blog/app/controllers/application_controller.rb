class ApplicationController < ActionController::Base
  helper_method :current_user,:login
  def current_user
    user ||= User.find(session[:id]) if session[:id]
   end
   def login
     !!current_user
   end
   
   def check_user
    if !login 
       flash[:notice] = "Login Before accessing it"
       redirect_to articles_path
    end
   end
end
