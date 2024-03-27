class Stock < ApplicationRecord
  def self.new_lookup(ticker) 
    client = IEX::Api::Client.new(
    publishable_token: '',
    secret_token: '',
    endpoint: 'https://cloud.iexapis.com/v1'
    )
    client.price(ticker)
  end
end
