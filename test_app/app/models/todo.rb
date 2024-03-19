class Todo < ApplicationRecord
  # belongs_to :teacher 
  # belongs_to :student
  belongs_to :image,polymorphic: true
end