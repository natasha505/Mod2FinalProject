class UsersController < ApplicationController
    # skip_before_action :redirect_user, only: [:new, :create]
   
    def index       
        @users = User.all
    end 

    # check  if session[:user_id] == to params[:id]
    #     if ! set flash[:msg] "no access"
    def show    
        find_user
        # if !session[:user_id] == params[:id]
        #     flash[:message] = "Restricted Access!!!"
    end 


    def new
        @user = User.new
    end 


    def create
        # byebug
        @user = User.new(user_params)
        # @user = User.new
        # @user.username = user_params["username"]
        # @user.name = user_params["name"]
        # @user.age = user_params["age"]
        # @user.bio = user_params["bio"]
        # byebug
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else   
            render :new
        # if @user.valid?
        #     flash[:login_message] = "Account already exists. Please login."
        #     redirect_to login_path
        #     byebug
        # else  
        #     redirect_to user_path
        end 
        # add_more_images(user_params[:image])
    end 

    def edit
        find_user
    end

    def update
        find_user
        if @user.update(user_params)
            redirect_to user_path
        else
            render :edit
        end 
    end 

    def destroy
        @user = find_user
        @user.delete #destroy
        redirect_to welcome_path
    end 

    
    private
    
    def add_more_images(new_image)
        image = @user.image 
        image += new_image
        @user.image = image
    end

    def user_params
        # byebug
        # params["auth"]
        params.require(:user).permit(:username, :name, :age, :bio, :profile_pic, :image, :password, :password_confirmation)   
                    
    end 

    def find_user
        if session[:user_id]
            flash[:message] = "Welcome to your show page."
            @user = User.find(session[:user_id])
        else
            @user = User.find(params[:id])
        end
    end
end


