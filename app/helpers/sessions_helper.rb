module SessionsHelper
    def current_user
        if not @current_user.nil?
            @current_user
        elsif session[:user_id] and User.find_by(id: session[:user_id])
            @current_user = User.find_by(id: session[:user_id])
        end
    end
    
    def logged_in?
        not current_user().nil?
    end
    
    def is_admin?
        current_user().accountType == 3
    end
end