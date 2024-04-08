module ApplicationHelper
  def stocks_count 
    current_user.stocks.count
  end
end
