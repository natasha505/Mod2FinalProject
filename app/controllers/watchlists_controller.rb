class WatchlistsController < ApplicationController

    def index
        @w = Watchlist.all
        # @w = Watchlist.includes(:movie).where(user_id: 3)
        # @w = Watchlist.includes(:movie).where(user_id: params[:id])
    end 

#   Watchlist.find{ |wl| wl.movie_id == @movie.id && wl.user_id == @user.id}
    def show
        # @watchlist = Watchlist.find(params[:id])
        # @w = Watchlist.includes(:movie).where(params[:id])
        # @w = Watchlist.includes(:movie).where(user_id: params[:id])
        find_watchlist
    end 

    def new
        @watchlist = Watchlist.new
    end 

    def create
        # byebug
        if params[:movie_id]
            @watchlist = Watchlist.create(user_id: session[:user_id], movie_id: params[:movie_id])
            redirect_to user_path(User.find(session[:user_id]))
        else    
            @watchlist = Watchlist.new(watchlist_params)
            # if @watchlist.save  
            #     redirect_to @watchlist
            if @watchlist.valid?
                @watchlist.save
            redirect_to @watchlist   
            else  
                render :new
            end 
        end
    end 

    def edit
        # @watchlist = Watchlist.find(params[:id])
        find_watchlist
    end 

    def update
        find_watchlist
        # @this_watchlist = Watchlist.find(params[:id])
        if @watchlist.update(watchlist_params)
            redirect_to @watchlist
        else  
            render :edit
        end 
    end 

    # def destroy
    #     @watchlist = Watchlist.find(params[:id])
    #     @watchlist.delete
    #     #redirect_to root#
    # end 

    private

    def watchlist_params
        params.require(:watchlist).permit(:user_id, :movie_id, :rating, :review)
    end 

    def find_watchlist
        @watchlist = Watchlist.includes(:movie).where(user_id: params[:id])
    end 
end
