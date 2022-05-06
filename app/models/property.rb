class Property < ApplicationRecord
    validates :name, :image1, :image2, :image3, presence: true  #Spaces cannot be empty
    validates :name, uniqueness: true       #each property has a unique name
    validates :image1, :image2, :image3, allow_blank: true, format: {  #allowed image formats
        with:  %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image'
    }
end
