class TodosController < ApplicationController
  before_action :sever
  def new 
    ActionCable.server.broadcast 'chat_channel',{data:"hi"}
  end
  private 
  def sever
    @message = {name:"srikanth gudimetla"}
  end
end
