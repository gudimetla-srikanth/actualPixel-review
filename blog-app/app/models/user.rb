class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :blogs, dependent: :destroy
  devise :database_authenticatable, :registerable,:rememberable

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email,presence: true,format: {with:VALID_EMAIL_REGEX,message: "is not valid"}
  # validates :password, presence:true,format: { with: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)/, message: " must include at least one number, lowercase letter, uppercase letter, and special character" }
end
