class FriendshipsController < ApplicationController 
  def my_friends
    @user_friends = current_user.friends
    @friend = session[:friend]
  end
  def add_new_friend
   @user_friend = User.find(params[:id])
   current_user.friends << @user_friend
   @user_friend.friends << current_user
   session[:friend] = nil
   flash[:notice] = "You are following him"
   redirect_to my_friends_path
  end
  def remove_existing_friend 
    session[:friend] = nil
    @my_con_friend = Friendship.where(user:current_user,friend:params[:friend]).first
    if @my_con_friend.destroy
       flash[:alert] = "Unfollowed your friend"
       redirect_to my_friends_path
    end
  end

  def search_user
    if params[:friend_string].present?
      @user_data = User.users_with_friend_string_matching(params[:friend_string],current_user.id)
      session[:friend] = @user_data
      redirect_to my_friends_path
    else 
      session[:friend] = nil
      flash[:alert] = "Enter a string to search"
      redirect_to my_friends_path
    end 
  end
  def viewprofile 
    @user = User.find_by(id:params[:friend])
    puts "+++++++++++++++++++++++++++++++#{@user.email}++++++++++++++"
    @friend_user_stocks = @user.stocks
  end
end