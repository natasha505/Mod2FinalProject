class User < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    has_many :watchlists
    has_many :movies, through: :watchlists

    has_secure_password
    
    # mount_uploaders :image, ImageUploader
    # serialize :image, JSON
end
