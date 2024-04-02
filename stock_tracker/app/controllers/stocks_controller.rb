class StocksController < ApplicationController
  def search
    @tracked_stocks = current_user.stocks 
    if params[:stock] != ""
      @stock = Stock.new_lookup(params[:stock])
      if @stock.nil?
        flash[:alert] = "The symbol is not valid"
        redirect_to my_portfolio_path
      else
        render "users/my_portfolio"
      end
    else 
      flash[:alert] = "The symbol is empty"
      redirect_to my_portfolio_path
    end
  end 
end