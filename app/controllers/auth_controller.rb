class AuthController < ApplicationController

    # def login
    # end 

    # def verify
    #     user = User.find_by(username: params[:auth][:username])
    #     if user
    #         session[:user_id] = user.id 
    #         redirect_to user_path(user.id)
    #     else  
    #         flash[:message] = "Invalid input. Try again."
    #         render :login
    #     end 
    # end 


    # skip_before_action :redirect_user
    # def signup
    # end 

    def login
    end

    def verify
        # byebug
        @user = User.find_by(username: params[:auth][:username])
        if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            flash[:message] = "Incorrect credentials please try again"
            render :login
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end

    def current_user
        @user = User.find(session[:user_id])
    end

    
end
