class CreateCartProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_products do |t|
      t.integer :shopping_cart_id
      t.integer :product_id

      t.timestamps
    end
  end
end
