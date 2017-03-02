class SessionsController < ApplicationController
    
    attr_accessor :showingSignupModal
    attr_accessor :showingForgotPasswordModal
    attr_accessor :showingAuthenticationPopover
    
    def initialize
        super
        self.showingSignupModal = false
        self.showingForgotPasswordModal = false
        self.showingAuthenticationPopover = false
    end
    
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
        self.showingSignupModal = !self.showingSignupModal
        
        respond_to do |format|
            
            format.html
            format.js { render 'signup', locals: { shouldToggle: self.showingSignupModal } }
            
        end
    end
    
    def display_forgot_password
        self.showingForgotPasswordModal = !self.showingForgotPasswordModal
        
        respond_to do |format|
            
            format.html
            format.js { render('forgot-password', locals: { shouldToggle: self.showingForgotPasswordModal }) }
            
        end
    end
    
    def login
        @user = User.find_by(email: params[:email].downcase)

        respond_to do |format|
            
            if @user.nil? or not @user.authenticate(params[:password])
                format.html
                format.js {
                    flash.now[:error] = ["Invalid email or password"]
                    render('./layouts/alert')
                }
                
            else
                self.showingAuthenticationPopover = !self.showingAuthenticationPopover
                format.js { render('login', locals: { shouldToggle: self.showingAuthenticationPopover }) }
                
                format.html { redirect_to :back }
            end
            
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
