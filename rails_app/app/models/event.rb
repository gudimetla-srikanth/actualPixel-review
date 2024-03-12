class Event < ApplicationRecord 
  has_many :comments,as: :able
end