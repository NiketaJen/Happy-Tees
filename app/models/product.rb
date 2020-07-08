class Product < ApplicationRecord
    belongs_to :category
    has_many :shopping_carts
    has_many :users, through: :shopping_carts
    has_many :favorites, as: :favorited
end
