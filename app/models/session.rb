class Session
    
    def login(email, password)
        
        @user = User.find_by!(email: email.downcase)
        
        if not @user.authenticate(password)
            raise InvalidPasswordError
        end
        
        return @user
    end
    
    def forgot_password(email)
        @user = User.find_by!(email: email.downcase)
        
        UserMailer.forgot_password(@user).deliver_later
    end
end

class InvalidPasswordError < StandardError
end