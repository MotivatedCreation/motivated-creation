class Authentication
    
    # POST /users
    # POST /users.json
    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                format.html {
                flash[:success] = ""
            }
            else
                format.html {
                    flash[:error] = @user.errors.full_messages
                    render template: './home/home', partial: './layouts/alert'
                    #redirect_to :background
                }
            end
        end
    end
  
 end