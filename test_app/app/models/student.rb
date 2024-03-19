class Student < ApplicationRecord 
  # has_many :todos 
  # has_many :teachers,through: :todos
  # has_and_belongs_to_many :teachers
  has_many :todos,as: :image
end