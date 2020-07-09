class Product < ApplicationRecord
    belongs_to :favorite
    has_many :cart_products
    has_many :shopping_carts, through: :cart_products
    has_many :users, through: :favorites
end
