class AuthController < ApplicationController

    def login
    end 

    def verify
        user = User.find_by(username: params[:auth][:username])
        if user
            session[:user_id] = user.id 
            redirect_to user_path(user.id)
        else  
            flash[:message] = "Invalid input. Try again."
            render :login
        end 
    end 


end