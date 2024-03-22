class ApplicationController < ActionController::Base
  def auth
     if session[:id] == nil
        redirect_to signin_path 
     end
  end
end
