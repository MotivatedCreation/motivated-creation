class SessionsController < ApplicationController

    def authenticate
        if params[:login]
            self.login()
        elsif params[:display_login]
            self.display_login()
        elsif params[:display_signup]
            self.display_signup()
        elsif params[:display_forgot_password]
            self.display_forgot_password()
        end
    end
    
    def display_login
        respond_to do |format|
            
            format.html
            format.js { render('login') }
            
        end  
    end
    
    def display_signup
        respond_to do |format|
            
            format.html
            format.js { render('signup') }
            
        end
    end
    
    def display_forgot_password
        respond_to do |format|
            
            format.html
            format.js { render('forgot-password') }
            
        end
    end
    
    def forgot_password
        @user = User.find_by(email: params[:email])
        
        respond_to do |format|
            
            format.html
            format.js {
                if @user
                    flash.now[:success] = ["Recovery email successfully sent!"]
                else
                    flash.now[:error] = ["Invalid email"]
                end
                render('./layouts/alert')
            }
            
        end
        
    end
    
    private
    
    def user_params
      params.require(:user).permit(:email, :password)
    end
    
end
