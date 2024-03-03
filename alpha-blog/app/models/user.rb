class User < ApplicationRecord 
  has_many :articles
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {minimum:3,maximum: 50}
  validates :email, presence: true,  uniqueness: { case_sensitive: false }, length: {maximum: 105}
end
