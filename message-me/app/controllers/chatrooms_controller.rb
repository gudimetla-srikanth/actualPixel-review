class ChatroomsController < ApplicationController
  before_action :check_user
  def index 
    @messages = Message.all
  end
  def create 
    @message = Message.new(params.require(:message).permit(:message_body))
    @message.user = current_user
    if @message.save 
      flash[:notice] = 'message sent successfully'
      redirect_to '/'
    else
      @messages = Message.all
      flash.now[:error] = 'sending message not done properly'
      render :index,status: :unprocessable_entity
    end
  end
end