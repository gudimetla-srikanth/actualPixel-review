class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :check_stock_associted_with_user

  def check_stock_associted_with_user(stock)
    @stock_in_stocks_table = Stock.find_by(ticker:stock["ticker_symbol"])
      if @stock_in_stocks_table.present?
          current_user.stocks.each do |cu_stock|
            if cu_stock.id == @stock_in_stocks_table.id
              return false
            end
            puts "+++++++++++++++++++++++ #{cu_stock.id}+++++++++++++++++++++++#{@stock_in_stocks_table.id}"
          end
          puts "++++++++++++==============#{@stock_in_stocks_table.id}======++++++++++++"
      end
    true
  end
end
