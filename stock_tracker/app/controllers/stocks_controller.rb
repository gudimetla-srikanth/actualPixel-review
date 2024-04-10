class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Sampledb.find_by(ticker_symbol:params[:stock])
      if @stock.nil?
        flash[:alert] = "The data is not present you are searching for"
        session[:data] = nil
        redirect_to my_portfolio_path
      else
         session[:data] = @stock
         redirect_to my_portfolio_path
      end 
    else
      flash[:alert] = "You did not entered any stock symbol"
      session[:data] = nil
      redirect_to my_portfolio_path
    end
  end 
end