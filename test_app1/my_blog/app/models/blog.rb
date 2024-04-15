class Blog < ApplicationRecord
  validates :title,:description,presence: true 
  has_one_attached :image
  belongs_to :user
end
