class WatchlistsController < ApplicationController

    def index
        @w = Watchlist.all
        # @w = Watchlist.includes(:movie).where(user_id: 3)
        # @w = Watchlist.includes(:movie).where(user_id: params[:id])

        # @w = Watchlist.includes(:movie).where(@user.id)
    end 

#   Watchlist.find{ |wl| wl.movie_id == @movie.id && wl.user_id == @user.id}
    def show
        # @watchlist = Watchlist.find(params[:id])
        # @w = Watchlist.includes(:movie).where(params[:id])
        @w = Watchlist.includes(:movie).where(user_id: params[:id])
    end 

    def new
        @watchlist = Watchlist.new
    end 

    def create
        @watchlist = Watchlist.new(watchlist_params)
        if @watchlist.save
            redirect_to @watchlist
        else  
            render :new
        end 
    end 

    def edit
        # @watchlist = Watchlist.find(params[:id])

        @this_watchlist = Watchlist.includes(:movie).where(user_id: params[:id])

    end 

    def update
        @this_watchlist = Watchlist.includes(:movie).where(user_id: params[:id])

        # @this_watchlist = Watchlist.find(params[:id])
        if @this_watchlist.update(watchlist_params)
            redirect_to watchlist_path
        else  
            render :edit
        end 
    end 

    def destroy
        @watchlist = Watchlist.find(params[:id])
        @watchlist.delete
        #redirect_to root#
    end 

    private

    def watchlist_params
        params.require(:watchlist).permit(:user_id, :movie_id, :rating, :review)
    end 
end
