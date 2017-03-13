class SessionsController < ApplicationController

    def initialize
        super
        @session = Session.new
    end
    
    def authenticate
        if params[:login]
            self.login()
        elsif params[:logout]
            self.logout()
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
    
    def login
        respond_to do |format|
            
            format.html
            
            begin
                @user = @session.login(params[:email], params[:password])
                session[:user_id] = @user.id
            
                #format.js { render('login') }
                redirect_back(fallback_location: '/home')
            
            rescue ActiveRecord::RecordNotFound
            
                format.js {
                    flash.now[:error] = ["Invalid email or password"]
                    render('./layouts/banner')
                }
                
            rescue Session::InvalidPasswordError
                
                format.js {
                    flash.now[:error] = ["Invalid password"]
                    render('./layouts/banner')
                }
                
            end
        end
    end
    
    def logout
        session.delete(:user_id)
        redirect_back(fallback_location: '/home')
    end
    
    def forgot_password
        respond_to do |format|
            
            format.html
            format.js {
                begin
                    @session.forgot_password(params[:email])
                
                    flash.now[:success] = ["Recovery email successfully sent!"]
                
                rescue ActiveRecord::RecordNotFound
                
                    flash.now[:error] = ["Invalid email"]
                
                end
                
                render('./layouts/banner')
            }
        end
    end
    
    private
    
    def user_params
      params.require(:user).permit(:email, :password)
    end
    
end
