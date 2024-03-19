class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
