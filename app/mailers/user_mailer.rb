class UserMailer < ApplicationMailer
    
    default from: 'motivatedcreation@gmail.com'
   
   def welcome_email(user)
      @user = user
      @url  = 'http://www.motivated-creation.herokuapp.com'
      mail(to: @user.email, subject: 'Right on! You found us!')
   end
   
   def forgot_password(user)
      @user = user
      @url  = 'http://www.motivated-creation.herokuapp.com/'
      mail(to: @user.email, subject: 'Right on! You found us!')
   end
   
end
