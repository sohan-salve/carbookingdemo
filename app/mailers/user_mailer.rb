class UserMailer < ApplicationMailer
  default from:'sohan@webkorps.com'
  
  def welcome_email(user)
    @user = user
    @url  = 'http://carbooking.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
