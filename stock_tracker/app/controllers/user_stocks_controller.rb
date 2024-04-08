class UserStocksController < ApplicationController
  def create
    @user = current_user
    @stock=Stock.create(ticker:params[:ticker_symbol],name:params[:company_name],last_price:params[:last_price])
    @user.stocks << @stock
    redirect_to my_portfolio_path
  end
  def destroy 
    @stock = Stock.find(params[:id])
  end
end
