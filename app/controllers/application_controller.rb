class ApplicationController < ActionController::Base
    # before_action :redirect_user
    helper_method :logged_in?, :logged_in_user
    def logged_in?
        !!session[:user_id]
    end
    def redirect_user
        if !logged_in?
            redirect_to login_path
        end
    end
    def logged_in_user
        if logged_in?
            User.find(session[:user_id])
        end
    end

#     before_action :redirect_user
#     helper_method :logged_in?, :logged_in_user

#     def loggin_in?
#         !!session[:user_id]
#  #       redirect_to signup_path
#         User.find(session[:user_id])
#     end 

#     def redirect_user
#         if !logged_in?
#             redirect_to login_path
#     end 

#     def logged_in_user
#         if logged_in?
#             User.find(session[:user_id])
#         end
#     end 

# #move to auth cont    
#     def current_user
#         @user = User.find(session[:user_id])
#     end

#     def require_login
#         if !session[:user_id]
#             flash[:message] = "Please LOG-IN"
#             redirect_to login_path
#         end
#     end 

# end


    # skip_before_action :redirect_user

    # def login
    # end

    # def verify
    #     @user = User.find_by(email: params[:auth][:email])
    #     if @user && @user.authenticate(params[:auth][:password])
    #         session[:user_id] = @user.id
    #         redirect_to '/welcome/index'
    #     else 
    #         flash[:message] = "Incorrect credentials please try again"
    #         render :login
    #     end
    # end

    # def logout
    #     session.clear
    #     redirect_to login_path
    # end

    # def current_user
    #     @user = User.find(session[:user_id])
    # end
end