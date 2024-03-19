class Teacher < ApplicationRecord 
  # has_and_belongs_to_many :students
  # # has_many :todos
  # has_many :todos 
  # has_many :students,through: :todos
  has_many :todos,as: :image
end