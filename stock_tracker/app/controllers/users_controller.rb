class UsersController < ApplicationController
  def my_portfolio 
    @tracked_stocks = current_user.stocks
    @stock=session[:data]
  end
end