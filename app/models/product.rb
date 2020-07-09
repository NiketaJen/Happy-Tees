class Product < ApplicationRecord
    has_many :favorites
    has_many :cart_products
    has_many :shopping_carts, through: :cart_products
    has_many :users, through: :favorites
end
