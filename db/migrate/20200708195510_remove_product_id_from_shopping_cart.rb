class RemoveProductIdFromShoppingCart < ActiveRecord::Migration[6.0]
  def change
    remove_column :shopping_carts, :product_id, :integer
  end
end
