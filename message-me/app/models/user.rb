class User < ApplicationRecord
  scope :logged_users,->{where(logged_in: true)}
  has_many :messages,dependent: :destroy
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  has_secure_password
end
