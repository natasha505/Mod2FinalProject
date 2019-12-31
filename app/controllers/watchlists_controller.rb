class WatchlistsController < ApplicationController

    def index
        @watchlists = Watchlist.all
    end 

    def show
        @watchlist = Watchlist.find(params[:id])
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
        @watchlist = Watchlist.find(params[:id])
    end 

    def update
        @watchlist = Watchlist.find(params[:id])
        if @watchlist.update(watchlist_params)
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
