class Category < ApplicationRecord 
  has_and_belongs_to_many :articles
  validates :name,presence: true,length: { minimum:6, maximum:100 }
end