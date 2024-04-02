class UsersController < ApplicationController
def sample
  # @val=1
  # render partial: "result",locals:{val:@val}
  # render partial: "result"
  # @users = User.all
end
def turn
#  respond_to do |format|
#   format.js { render partial: 'result.js' }
#  end
  render turbo_stream: turbo_stream.replace("counter",partial: "datas/data")
end
end