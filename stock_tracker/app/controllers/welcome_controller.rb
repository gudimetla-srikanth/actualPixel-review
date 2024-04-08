class WelcomeController < ApplicationController
  def index
    puts "+++++++++++++++++++++++++++++#{current_user.email}+++++++++++++++++"
  end
end
