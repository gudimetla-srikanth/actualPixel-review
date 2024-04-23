class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # <%= render "devise/shared/error_messages", resource: resource%>
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  has_many :blogs, dependent: :destroy   
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,presence: true,format: {with:VALID_EMAIL_REGEX,message: "is not valid"} 
  validates :password, presence: true, length: { minimum: 8 },confirmation: true,
                       format: { with: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/,
                                 message: "must include at least one lowercase letter, one uppercase letter, and one digit" }
  validates :password_confirmation,presence: true
  validates :first_name,presence: true,length:{minimum:3}
  validates :last_name,presence: true,length:{minimum:2}

end
