class Message < ApplicationRecord
  belongs_to :user
  validates :message_body, presence: true,length: {minimum:1,maximum:100}
end
