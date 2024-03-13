class Article < ApplicationRecord 
  belongs_to :user
  has_and_belongs_to_many :categories
  validates :title, presence: true, length: { minimum:6, maximum: 50 }
  validates :description, presence: true, length: { minimum:10, maximum: 200 }  
end
