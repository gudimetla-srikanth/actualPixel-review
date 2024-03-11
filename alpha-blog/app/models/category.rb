class Category < ApplicationRecord 
  validates :name,presence: true,length: { minimum:6, maximum:100 }
end