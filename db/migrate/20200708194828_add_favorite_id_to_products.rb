class AddFavoriteIdToProducts < ActiveRecord::Migration[6.0]
  def change
    change_table :products do |t|
      t.remove :quantity
      t.integer :favorite_id
    end
  end
end
