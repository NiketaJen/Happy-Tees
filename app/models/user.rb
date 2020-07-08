class User < ApplicationRecord
    has_many :shopping_carts
    has_many :products, through: :shopping_carts
    has_many :favorites, as: :favorited
    
end
