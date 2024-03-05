class Aticle < ApplicationRecord
  validates :title, presence: true, length: { minimu:6 ,maximum: 50 }
  validates :description, presence: true, length: { minimu:6 ,maximum: 50 }
  validates :user_id, presence: true
end
