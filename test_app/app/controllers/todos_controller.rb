class TodosController < ApplicationController
  before_action :sever
  def new 
    render json: @message[:name]
  end
  private 
  def sever
    @message = {name:"srikanth gudimetla"}
  end
end
