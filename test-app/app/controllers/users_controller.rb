class UsersController < ApplicationController
def sample  
end
def turn
#  respond_to do |format|
#   format.js { render partial: 'users/result' }
#  end
  render turbo_stream: turbo_stream.replace("counter",partial: "result")
end
end