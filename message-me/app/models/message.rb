class Message < ApplicationRecord
  belongs_to :user
  validates :message_body, presence: true,length: {minimum:1,maximum:100}
  scope:custom_method,->{order(:created_at).last(10)}
end
