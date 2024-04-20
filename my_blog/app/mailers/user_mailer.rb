class UserMailer < ApplicationMailer
  def welcome_mail
    @user = params[:user]
    mail(to: @user.email,subject:"Welcomming the new user")
  end
end
