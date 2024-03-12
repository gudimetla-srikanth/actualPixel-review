class News < ApplicationRecord 
  has_many :comments ,as: :able
end