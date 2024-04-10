class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :check_stock_associted_with_user
  helper_method :check_friend_associated_with_user
  
  def check_stock_associted_with_user(stock)
    current_user.stocks.each do |cu_stock|
      if cu_stock.ticker == stock["ticker_symbol"]
        return false
      end
      puts "+++++++++++++++++++++++ #{cu_stock.ticker}+++++++++++++++++++++++#{stock["ticker_symbol"]}"
    end
    puts "++++++++++++==============#{stock["ticker_symbol"]}======++++++++++++"
    true
  end
  def check_friend_associated_with_user(friend_id)
    current_user.friends.each do |friend|
      if friend.id == friend_id
        return true 
      end
    end 
    return false
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name])
  end
end
