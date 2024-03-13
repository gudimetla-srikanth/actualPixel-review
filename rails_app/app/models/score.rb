class Score < ApplicationRecord 
  belongs_to :student 
  belongs_to :teacher
end