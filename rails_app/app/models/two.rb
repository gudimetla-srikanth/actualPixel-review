class Two < ApplicationRecord 
  has_many :threes
  has_many :ones, through: :threes
end