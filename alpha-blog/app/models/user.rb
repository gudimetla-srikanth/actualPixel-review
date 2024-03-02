class User < ApplicationRecord
  validates :username, presence: true, length: {minimum:3,maximum: 50}
  VALID_EMAIL_ADDRES = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},format: { with: VALID_EMAIL_ADDRES }
  validates :password, presence: true, length: {minimum:8,maximum: 50}
  
end
