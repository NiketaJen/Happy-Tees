class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :product

#   def add_product(product_params)
#     current_product = Favorite.find_by(product_id: product_params[:product][:product_id])
#     if current_product
#       current_product.quantity += product_params[:product][:quantity].to_i
#     current_product.save
#     else
#     # new_item = Favorite.create(product_id: product_params[:product][:product_id],
#       # user_id: product_params[:product][:quantity])
#     end
#     new_item
#   end
# end

end
