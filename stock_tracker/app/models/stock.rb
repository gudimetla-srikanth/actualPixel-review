class Stock < ApplicationRecord
  def self.new_lookup(ticker) 
    client = IEX::Api::Client.new(publishable_token: '',secret_token: '',
    endpoint: 'https://cloud.iexapis.com/v1'
    )
    ticker_obj={ticker:ticker,company:client.company(ticker).company_name,last_price:client.price(ticker)}
  end
end
