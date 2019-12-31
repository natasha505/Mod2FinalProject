class MoviesController < ApplicationController

    def index
        # @movies = Movie.all
        @movies = Movie.search(params[:search])
    end 

    def show 
        @movie = Movie.find(params[:id])
    end 

    def new
        @movie = Movie.new
    end 

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to @movie
        else
            render :new
        end
    end 

    def edit
        @movie = Movie.find(params[:id])
    end 

    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to movie_path
        else  
            render :edit
        end 
    end 

    private

    def movie_params
        params.require(:movie).permit(:title, :year, :genre, :plot, :poster, :search)
    end 
end