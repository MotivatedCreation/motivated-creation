class SessionsController < ApplicationController
    
    def authenticate
        if params[:login]
            self.login()
        elsif params[:signup]
            self.signup()
        elsif params[:forgot_password]
            self.forgot_password()
        end
    end
    
    def login
        @user = User.find_by(email: params[:email], password: params[:password])

        respond_to do |format|
            
            format.html
            
            unless @user
                format.js {
                    render 'login'
                    flash[:error] = ["Invalid email", "Invalid password"]
                }
            end
            
        end
    end
    
    def signup
        respond_to do |format|
            
            format.html
            format.js { render 'signup' }
            
        end
    end
    
    def forgot_password
        respond_to do |format|
            
            format.html
            format.js { render 'forgot_password' }
            
        end
    end
    
end
