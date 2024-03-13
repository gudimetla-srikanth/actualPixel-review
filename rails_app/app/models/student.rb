class Student < ApplicationRecord 
  has_many :scores 
  has_many :teachers , through: :scores
end