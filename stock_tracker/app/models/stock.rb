class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users,through: :user_stocks
  validates :ticker,:name,:last_price,presence: true
  # def self.new_lookup(ticker) 
  #   begin 
  #     client = IEX::Api::Client.new(publishable_token: '',secret_token: '',
  #     endpoint: 'https://cloud.iexapis.com/v1'
  #     )
  #     ticker_obj={ticker:ticker,company:client.company(ticker).company_name,last_price:client.price(ticker)}
  #   rescue => e 
  #     return nil
  #   end
  # end
  API_URL = "https://www.alphavantage.co/query"
  # MB80MSB00AEBIKYM
  def self.get_stock_data(symbol)
    response = Faraday.get(API_URL, {
      function: "SYMBOL_SEARCH",
      keywords: symbol,
      apikey: MB80MSB00AEBIKYM
    })

    parse_response(response)
  end

  private

  def parse_response(response)
    data = JSON.parse(response.body)
    return nil unless data["Best Matches"].any?

    # Extract company name and latest price
    company_name = data["Best Matches"].first["name"]
    latest_price = data["Best Matches"].first["3. adjusted closing price"]

    puts company_name
    "hiii"
  end
end
