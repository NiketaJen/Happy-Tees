class User < ApplicationRecord
    has_secure_password
    has_many :shopping_carts
    has_many :cart_products, through: :shopping_carts
    has_many :favorites
    has_many :products, through: :favorites
    validates :first_name, :last_name, :email, :password_digest, presence: true

end
