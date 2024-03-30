class StocksController < ApplicationController
  def search 
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render "users/my_portfolio" 
      else
        flash.now[:alert] = "Enter inavlid symbol"
        render "users/my_portfolio"
      end
    else 
      flash.now[:alert] = "Entered empty symbol"
      render "users/my_portfolio"
    end
  end 
end