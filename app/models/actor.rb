class Actor < ApplicationRecord
    has_many :mov_actors
    has_many :movies, through: :mov_actors
end
