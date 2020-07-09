class AddProductToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :product_id, :integer
  end
end
