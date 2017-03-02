module SessionsHelper
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def login
        @user = User.find_by(email: params[:email].downcase)

        respond_to do |format|
            
            format.html
            
            if @user.nil? or not @user.authenticate(params[:password])
                format.js {
                    flash.now[:error] = ["Invalid email or password"]
                    render('./layouts/alert')
                }
            else
                session[:user_id] = @user.id
                
                format.js { render('login') }
                
                redirect_to :back
            end
            
        end
        
    end
end
