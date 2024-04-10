class Stock < ApplicationRecord
  has_many :user_stocks,dependent: :destroy
  has_many :users,through: :user_stocks, dependent: :destroy
  validates :ticker,:name,:last_price,presence: true
end
