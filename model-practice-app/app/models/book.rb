class Book < ApplicationRecord
  has_many :pens 
  has_many :authors,through: :pens
end
