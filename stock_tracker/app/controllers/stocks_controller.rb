class StocksController < ApplicationController
  def search
    @tracked_stocks = current_user.stocks
    if params[:stock].present?
      @stock = Sampledb.find_by(ticker_symbol:params[:stock])
      if @stock.nil?
        flash[:notice] = "You stock is symbol data is not present in our database"
        puts "=========================NILLLL=================="
        session[:data] = nil
        redirect_to my_portfolio_path
      else
         puts "=========================#{@stock.last_price}=================="
         session[:data] = @stock
         redirect_to my_portfolio_path
      end 
    else
      flash[:notice] = "You did not entered any stock symbol"
      redirect_to my_portfolio_path
    end
  end 
end