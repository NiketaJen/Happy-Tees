class ShoppingCart < ApplicationRecord
    has_many :users
    has_many :products, through: :users
end
