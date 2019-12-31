class Movie < ApplicationRecord
    has_many :watchlists
    has_many :mov_actors
    has_many :actors, through: :mov_actors 



    def self.search(search)
        if search
            movie_title = Movie.find_by(title: search)
            # byebug
            if movie_title 
                self.where(title: movie_title)
            else
                Movie.all
            end
        else 
            Movie.all
        end 
    end 



end

