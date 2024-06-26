class UserStocksController < ApplicationController
  def create
    @stock = Stock.find_by(ticker:params[:ticker_symbol])
    if @stock.present?
      current_user.stocks << @stock
      session[:data] = nil
      flash[:notice] = "Tracking the #{@stock.ticker} stock is successfull"
      redirect_to my_portfolio_path
    else 
      @stock=Stock.create(ticker:params[:ticker_symbol],name:params[:company_name],last_price:params[:last_price])
      current_user.stocks << @stock
      session[:data] = nil
      flash[:notice] = "Tracking the #{@stock.ticker} stock is successfull"
      redirect_to my_portfolio_path
    end 
  end


  def destroy
    @user_stock = UserStock.where(user:current_user,stock:params[:id]).first
    @stock_name = Stock.find_by(id:params[:id])
    if @user_stock.destroy
       flash[:alert] = "Untracking the #{@stock_name.ticker} stock is successfull"
       redirect_to my_portfolio_path
    else 
      flash[:alert] = "Untracking the  #{@stock_name.ticker} stock failed"
      redirect_to my_portfolio_path 
    end
  end
end
