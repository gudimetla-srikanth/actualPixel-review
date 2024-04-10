class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_stocks
  has_many :stocks,through: :user_stocks
  has_many :friendships 
  has_many :friends,through: :friendships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def full_name
    return "#{first_name} #{last_name}" if first_name || last_name
    "Anonymous"
  end

  def self.find_users_with_first_name(friend_string)
    where("first_name like ?","%#{friend_string}%") 
  end

  def self.find_users_with_last_name(friend_string)
    where("last_name like ?","%#{friend_string}%")  
  end

  def self.find_users_with_email_name(friend_string)
    where("email like ?","%#{friend_string}%")  
  end

  def self.users_with_friend_string_matching(friend_string)
    friend_string.strip!
    user_data = (find_users_with_last_name(friend_string) + find_users_with_email_name(friend_string) + find_users_with_first_name(friend_string)).uniq
    return user_data
  end

end
