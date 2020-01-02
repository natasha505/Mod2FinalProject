class UsersController < ApplicationController
    
    def index       
        @users = User.all
    end 

    def show    
        find_user
    end 

    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        # @user = User.new
        # @user.username = user_params[:username]
        # @user.name = user_params[:name]
        # @user.age = user_params[:age]
        # @user.bio = user_params[:bio]
        # @user.image = user_params[:image]
        if @user.valid?
            flash[:login_message] = "Account already exists. Please login."
            redirect_to login_path
        else  
            render :new
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
        @user.delete
        redirect_to welcome_path
    end 

    
    private
    
    def add_more_images(new_image)
        image = @user.image 
        image += new_image
        @user.image = image
    end

    def user_params
        params.require(:user).permit(:username, :name, :age, :bio, :profile_pic, :image)
    end 

    def find_user
        @user = User.find(params[:id])
    end
end
