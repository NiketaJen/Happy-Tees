class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :favorited, polymorphic: true, null: false

      t.timestamps
    end
  end
end
