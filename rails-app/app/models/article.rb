class Article < ApplicationRecord 
  validates :name , presence: true
  validates :title,presence: true, length: {minimum:6,maximum:10}
end