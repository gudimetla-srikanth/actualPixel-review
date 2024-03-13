class Teacher < ApplicationRecord 
  has_many :scores 
  has_many :students , through: :scores
end