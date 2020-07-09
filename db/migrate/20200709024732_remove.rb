class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :favorite_id, :integer
  end
end
