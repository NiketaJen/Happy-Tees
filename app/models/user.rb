class User < ApplicationRecord
    has_secure_password
    has_many :shopping_carts
    has_many :cart_products, through: :shopping_carts
    has_many :favorites
    has_many :products, through: :favorites
    validates :first_name, :last_name, :email, :password, presence: true
    validates :username, presence: true, uniqueness: true

end
