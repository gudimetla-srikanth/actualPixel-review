class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_stocks,dependent: :destroy
  has_many :stocks,through: :user_stocks,dependent: :destroy
  has_many :friendships,dependent: :destroy
  has_many :friends,through: :friendships,dependent: :destroy
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

  def self.users_with_friend_string_matching(friend_string,current_user_id)
    friend_string.strip!
    user_data = (find_users_with_last_name(friend_string) + find_users_with_email_name(friend_string) + find_users_with_first_name(friend_string)).uniq
    puts "++++++++++++++++++++++++#{current_user_id}++++++++++++++++++++++++++"
    user_data = user_data.reject {|user| user.id == current_user_id}
    return user_data
  end

end
