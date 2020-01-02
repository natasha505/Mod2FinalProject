class ApplicationController < ActionController::Base
    helper_method :logged_in

    def loggin_in?
        !!session[:user_id]
        redirect_to signup_path
    end 

    def current_user
        @user = User.find(session[:user_id])
    end

    def require_login
        if !session[:user_id]
            flash[:message] = "Please LOG-IN"
            redirect_to login_path
        end
    end 

end
