class SessionsController < ApplicationController
    
    def authenticate
        if params[:login]
            self.login()
        elsif params[:signup]
            self.display_signup()
        elsif params[:forgot_password]
            self.display_forgot_password()
        end
    end
    
    def display_signup
        respond_to do |format|
            
            format.html
            format.js { render 'signup' }
            
        end
    end
    
    def display_forgot_password
        respond_to do |format|
            
            format.html
            format.js { render 'forgot-password' }
            
        end
    end
    
    def login
        @user = User.find_by(email: params[:email], password: params[:password])

        respond_to do |format|
            
            format.html
            
            unless @user
                format.js {
                    flash[:error] = ["Invalid email or password"]
                    render 'login'
                }
            end
            
        end
        
        flash = nil
    end
    
    def forgot_password
        @user = User.find_by(email: params[:email])
        
        respond_to do |format|
            
            format.html
            format.js {
                if @user
                    flash[:success] = ["Recovery email successfully sent!"]
                else
                    flash[:error] = ["Invalid email"]
                end
                render 'login'
            }
            
        end
        
        flash = nil
    end
    
    private
    
    def user_params
      params.require(:user).fetch(:user, {})
    end
    
end
