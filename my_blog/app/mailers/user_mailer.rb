class UserMailer < ApplicationMailer
  def welcome_mail
    @greeting = "Hi"
    mail(to: "197r1a05e0@gmail.com",subject:"Welcome to the blog app")
  end
end
