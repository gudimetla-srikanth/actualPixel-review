class ChatroomsController < ApplicationController
  before_action :check_user
  def index 
    @messages = Message.custom_method
  end
  def create 
    @message = Message.new(params.require(:message).permit(:message_body))
    @message.user = current_user
    if @message.save 
      ActionCable.server.broadcast("chatroom_channel",{data: @message,data1:@message.user})
    else
      @messages = Message.all
      flash.now[:error] = 'sending message not done properly'
      render :index,status: :unprocessable_entity
    end
  end
end
