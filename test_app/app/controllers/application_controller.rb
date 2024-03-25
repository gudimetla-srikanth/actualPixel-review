class ApplicationController < ActionController::Base
   before_action :new_method
  def auth
     if session[:id] == nil
        redirect_to signin_path 
     end
  end
  def new_method
   render html: "hi bro! where are you"
  end
end
