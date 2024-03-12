class One < ApplicationRecord 
  has_many :threes
  has_many :twos , through: :threes
end