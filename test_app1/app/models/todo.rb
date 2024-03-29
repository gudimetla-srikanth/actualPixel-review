class Todo < ApplicationRecord 
  validates :title,presence: true,length: {minimum:6,maximum:10}
  validates :description,presence: true,length:{minimum:15,maximum:35}
end